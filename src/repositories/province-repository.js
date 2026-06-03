import pkg from 'pg';
const { Client } = pkg;
import DBConfig from '../configs/db-config.js';

class ProvinceRepository {

    getAllAsync = async () => {
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `SELECT * FROM provinces`;
            const result = await client.query(sql);
            return result.rows;
        } catch (error) {
            console.error(error);
        } finally {
            await client.end();
        }
    }

    getByIdAsync = async (id) => {
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `SELECT * FROM provinces WHERE id=$1`;
            const result = await client.query(sql, [id]);
            if (result.rows.length > 0) return result.rows[0];
            return null;
        } catch (error) {
            console.error(error);
        } finally {
            await client.end();
        }
    }

    createAsync = async (province) => {
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `INSERT INTO provinces (name, full_name, latitude, longitude, display_order) VALUES ($1, $2, $3, $4, $5)`;
            const values = [province.name, province.full_name, province.latitude, province.longitude, province.display_order];
            await client.query(sql, values);
            return true;
        } catch (error) {
            console.error(error);
        } finally {
            await client.end();
        }
    }

    updateAsync = async (province) => {
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `UPDATE provinces SET name=$1, full_name=$2, latitude=$3, longitude=$4, display_order=$5 WHERE id=$6`;
            const values = [province.name, province.full_name, province.latitude, province.longitude, province.display_order, province.id];
            await client.query(sql, values);
            return true;
        } catch (error) {
            console.error(error);
        } finally {
            await client.end();
        }
    }

    deleteByIdAsync = async (id) => {
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `DELETE FROM provinces WHERE id=$1`;
            await client.query(sql, [id]);
            return true;
        } catch (error) {
            console.error(error);
        } finally {
            await client.end();
        }
    }
}

export default new ProvinceRepository();