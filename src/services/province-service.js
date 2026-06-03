import ProvinceRepository from '../repositories/province-repository.js';
import { validateProvince } from '../helpers/validaciones-helper.js';

class ProvinceService {

    getAllAsync = async () => {
        return await ProvinceRepository.getAllAsync();
    }

    getByIdAsync = async (id) => {
        return await ProvinceRepository.getByIdAsync(id);
    }

    createAsync = async (province) => {
        const error = validateProvince(province);
        if (error) return { error };
        return await ProvinceRepository.createAsync(province);
    }

    updateAsync = async (province) => {
        const error = validateProvince(province);
        if (error) return { error };
        return await ProvinceRepository.updateAsync(province);
    }

    deleteByIdAsync = async (id) => {
        return await ProvinceRepository.deleteByIdAsync(id);
    }
}

export default new ProvinceService();