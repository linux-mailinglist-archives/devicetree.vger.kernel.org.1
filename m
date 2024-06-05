Return-Path: <devicetree+bounces-72698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B2A8FC918
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 12:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38CC61C2305D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7323C19049A;
	Wed,  5 Jun 2024 10:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4G5NntM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ECE1946D2;
	Wed,  5 Jun 2024 10:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717583351; cv=none; b=cGWquWMVO9o7kWxKw1uclYVLTMM1tBdVelqjj6nbwwZhj9waj0xExio6OmZrK9GLWvtfi5MZA1K8Zu301n5t4YPDpmbnIOr1Uvp89kim/MGFuOM6l81SYxGRmAXzjCckepL4qN4Y4U57DNAuhDE/muOvWACy+zVXFYTRhaRKYqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717583351; c=relaxed/simple;
	bh=KJFx8mLLSIvcgUcKxYg+ceOAwzffFdULwa5Tt+9dI5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YsprxCRsrILFR79P9FuPh44G/cy4DuzYIXvRKnObilDUEilsha7nma6Vtkq6uu6bfE+tmf1MdEzgmoXPOx0npkPDoE+JN3jo18etvd1X/f3ZpdXh3drcfl0yNfz1SHiemM2GdIzJTSP7M4GH5Gy+pu72WmGLCn9tXXNL8KkdB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4G5NntM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FF68C3277B;
	Wed,  5 Jun 2024 10:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717583350;
	bh=KJFx8mLLSIvcgUcKxYg+ceOAwzffFdULwa5Tt+9dI5M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=u4G5NntMM2wDB31s4HGsO6c4LRBVahT/UZcCeSvfkSI3qnIVBk/TuPR/VAXBKqCrX
	 htmjEhYk2809GORu/1+2DNLEC+Ycf84OAsS4YBvEgXCvVdVbQU6RwzRrO8SsusqAyk
	 dXXUntteXLNzhz5rCGIFxi3leWQi6idIF4Ipn6szdaSgPTOuL/x7fD9V+cl3u0bD0Q
	 uogm4jFNQUwMf4s++43uh8IBeaXieCBzpIvZzqGLRH6K+JEPrTX6EWuNyAFaizG836
	 +iu6huLB4GWUWXvqZjwU97m7dwC2NWmo62fsKf1TTDhjwzOKUD4RbCmssPkNkUR6kv
	 1H+tWpapWYkdA==
Message-ID: <869a876f-6ad8-40ff-85f2-268fb49fd475@kernel.org>
Date: Wed, 5 Jun 2024 12:29:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/5] Add aw963xx series related interfaces to the
 aw_sar driver.
To: wangshuaijie@awinic.com, dmitry.torokhov@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jeff@labundy.com,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: liweilei@awinic.com, kangjiajun@awinic.com
References: <20240605091143.163789-1-wangshuaijie@awinic.com>
 <20240605091143.163789-5-wangshuaijie@awinic.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240605091143.163789-5-wangshuaijie@awinic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/06/2024 11:11, wangshuaijie@awinic.com wrote:
> From: shuaijie wang <wangshuaijie@awinic.com>
> 
> Signed-off-by: shuaijie wang <wangshuaijie@awinic.com>
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Reported-by: Dan Carpenter <error27@gmail.com>
> ---
>  drivers/input/misc/aw_sar/aw963xx/aw963xx.c | 974 ++++++++++++++++++++
>  drivers/input/misc/aw_sar/aw963xx/aw963xx.h | 753 +++++++++++++++
>  2 files changed, 1727 insertions(+)
>  create mode 100644 drivers/input/misc/aw_sar/aw963xx/aw963xx.c
>  create mode 100644 drivers/input/misc/aw_sar/aw963xx/aw963xx.h
> 
> diff --git a/drivers/input/misc/aw_sar/aw963xx/aw963xx.c b/drivers/input/misc/aw_sar/aw963xx/aw963xx.c
> new file mode 100644
> index 000000000000..7ce40174a089
> --- /dev/null
> +++ b/drivers/input/misc/aw_sar/aw963xx/aw963xx.c
> @@ -0,0 +1,974 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * AWINIC sar sensor driver (aw963xx)
> + *
> + * Author: Shuaijie Wang<wangshuaijie@awinic.com>
> + *
> + * Copyright (c) 2024 awinic Technology CO., LTD
> + */
> +#include "aw963xx.h"
> +#include "../aw_sar.h"
> +
> +#define AW963XX_I2C_NAME "aw963xx_sar"
> +
> +static void aw963xx_set_cs_as_irq(struct aw_sar *p_sar, int flag);
> +static void aw963xx_get_ref_ch_enable(struct aw_sar *p_sar);
> +
> +static int32_t aw963xx_read_init_over_irq(void *load_bin_para)
> +{
> +	struct aw_sar *p_sar = (struct aw_sar *)load_bin_para;
> +	uint32_t cnt = 1000;
> +	uint32_t reg;
> +	int32_t ret;
> +
> +	while (cnt--) {
> +		ret = aw_sar_i2c_read(p_sar->i2c, REG_IRQSRC, &reg);
> +		if (ret != 0) {
> +			dev_err(p_sar->dev, "i2c error %d", ret);
> +			return ret;
> +		}
> +		if ((reg & 0x01) == 0x01) {
> +			aw_sar_i2c_read(p_sar->i2c, REG_FWVER, &reg);
> +			return 0;
> +		}
> +		mdelay(1);
> +	}
> +
> +	aw_sar_i2c_read(p_sar->i2c, REG_FWVER, &reg);
> +
> +	return -EINVAL;
> +}
> +
> +static void aw963xx_convert_little_endian_2_big_endian(struct aw_bin *aw_bin)
> +{
> +	uint32_t start_index = aw_bin->header_info[0].valid_data_addr;
> +	uint32_t fw_len = aw_bin->header_info[0].reg_num;
> +	uint32_t uints = fw_len / AW963XX_SRAM_UPDATE_ONE_UINT_SIZE;
> +	uint8_t tmp1;
> +	uint8_t tmp2;
> +	uint8_t tmp3;
> +	uint8_t tmp4;
> +	int i;
> +
> +	for (i = 0; i < uints; i++) {
> +		tmp1 = aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 3];
> +		tmp2 = aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 2];
> +		tmp3 = aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 1];
> +		tmp4 = aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE];
> +		aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE]     = tmp1;
> +		aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 1] = tmp2;
> +		aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 2] = tmp3;
> +		aw_bin->info.data[start_index + i * AW963XX_SRAM_UPDATE_ONE_UINT_SIZE + 3] = tmp4;
> +	}
> +}
> +
> +/**
> + * @aw963xx_sram_fill_not_wrote_area()
> + *         |----------------code ram-----------------|
> + *       0x2000                                    0x4fff
> + *         |--- app wrote here ---|--fill with 0xff--|
> + *
> + *         if the size of app is less than the size of code ram, the rest of the
> + *         ram is filled with 0xff.
> + * @load_bin_para
> + * @offset the rear addr of app
> + * @return int32_t
> + */
> +static int32_t aw963xx_sram_fill_not_wrote_area(void *load_bin_para, uint32_t offset)
> +{
> +	uint32_t last_pack_len = (AW963XX_SRAM_END_ADDR - offset) %
> +						AW963XX_SRAM_UPDATE_ONE_PACK_SIZE;
> +	uint32_t pack_cnt = last_pack_len == 0 ?
> +			((AW963XX_SRAM_END_ADDR - offset) / AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) :
> +			((AW963XX_SRAM_END_ADDR - offset) / AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) + 1;
> +	uint8_t buf[AW963XX_SRAM_UPDATE_ONE_PACK_SIZE + 2] = { 0 };
> +	struct aw_sar *p_sar = (struct aw_sar *)load_bin_para;
> +	uint32_t download_addr_with_ofst;
> +	uint8_t *r_buf;
> +	int32_t ret;
> +	uint32_t i;
> +
> +	r_buf = devm_kzalloc(p_sar->dev, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE, GFP_KERNEL);
> +	if (!r_buf)
> +		return -ENOMEM;
> +
> +	memset(buf, 0xff, sizeof(buf));
> +	for (i = 0; i < pack_cnt; i++) {
> +		memset(r_buf, 0, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE);
> +		download_addr_with_ofst = offset + i * AW963XX_SRAM_UPDATE_ONE_PACK_SIZE;
> +		buf[0] = (uint8_t)(download_addr_with_ofst >> OFFSET_BIT_8);
> +		buf[1] = (uint8_t)(download_addr_with_ofst);
> +		if (i != (pack_cnt - 1)) {
> +			ret = aw_sar_i2c_write_seq(p_sar->i2c, buf,
> +					AW963XX_SRAM_UPDATE_ONE_PACK_SIZE + 2);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, write_seq error!", i);
> +				devm_kfree(p_sar->dev, r_buf);
> +				return ret;
> +			}
> +			ret = aw_sar_i2c_read_seq(p_sar->i2c, buf, 2, r_buf,
> +					AW963XX_SRAM_UPDATE_ONE_PACK_SIZE);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, read_seq error!", i);
> +				devm_kfree(p_sar->dev, r_buf);
> +				return ret;
> +			}
> +			if (memcmp(&buf[2], r_buf, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) != 0) {
> +				dev_err(p_sar->dev, "read is not equal to write ");
> +				devm_kfree(p_sar->dev, r_buf);
> +				return -EINVAL;
> +			}
> +		} else {
> +			ret = aw_sar_i2c_write_seq(p_sar->i2c, buf, last_pack_len + 2);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, write_seq error!", i);
> +				devm_kfree(p_sar->dev, r_buf);
> +				return ret;
> +			}
> +			ret = aw_sar_i2c_read_seq(p_sar->i2c, buf, 2, r_buf, last_pack_len);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, read_seq error!", i);
> +				devm_kfree(p_sar->dev, r_buf);
> +				return ret;
> +			}
> +			if (memcmp(&buf[2], r_buf, last_pack_len) != 0) {
> +				dev_err(p_sar->dev, "read is not equal to write ");
> +				devm_kfree(p_sar->dev, r_buf);
> +				return -EINVAL;
> +			}
> +		}
> +	}
> +
> +	devm_kfree(p_sar->dev, r_buf);
> +
> +	return 0;
> +}
> +
> +static int32_t aw963xx_sram_data_write(struct aw_bin *aw_bin, void *load_bin_para)
> +{
> +	uint8_t buf[AW963XX_SRAM_UPDATE_ONE_PACK_SIZE + 2] = { 0 };
> +	uint32_t start_index = aw_bin->header_info[0].valid_data_addr;
> +	uint32_t fw_bin_version = aw_bin->header_info[0].app_version;
> +	uint32_t download_addr = AW963XX_RAM_START_ADDR;
> +	uint32_t fw_len = aw_bin->header_info[0].reg_num;
> +	uint32_t last_pack_len = fw_len % AW963XX_SRAM_UPDATE_ONE_PACK_SIZE;
> +	struct aw_sar *p_sar = (struct aw_sar *)load_bin_para;
> +	uint32_t download_addr_with_ofst = 0;
> +	uint32_t pack_cnt;
> +	uint8_t *r_buf;
> +	int32_t ret = -EINVAL;
> +	uint32_t i;
> +
> +	r_buf = devm_kzalloc(p_sar->dev, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE, GFP_KERNEL);
> +	if (!r_buf)
> +		return -ENOMEM;
> +
> +	pack_cnt = ((fw_len % AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) == 0) ?
> +			(fw_len / AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) :
> +			(fw_len / AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) + 1;
> +
> +	dev_info(p_sar->dev, "fw_bin_version = 0x%x", fw_bin_version);
> +	for (i = 0; i < pack_cnt; i++) {
> +		memset(r_buf, 0, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE);
> +		download_addr_with_ofst = download_addr + i * AW963XX_SRAM_UPDATE_ONE_PACK_SIZE;
> +		buf[0] = (uint8_t)(download_addr_with_ofst >> OFFSET_BIT_8);
> +		buf[1] = (uint8_t)(download_addr_with_ofst);
> +		if (i != (pack_cnt - 1)) {
> +			memcpy(&buf[2], &aw_bin->info.data[start_index +
> +					i * AW963XX_SRAM_UPDATE_ONE_PACK_SIZE],
> +					AW963XX_SRAM_UPDATE_ONE_PACK_SIZE);
> +			ret = aw_sar_i2c_write_seq(p_sar->i2c, buf,
> +					AW963XX_SRAM_UPDATE_ONE_PACK_SIZE + 2);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, write_seq error!", i);
> +				goto err_out;
> +			}
> +			ret = aw_sar_i2c_read_seq(p_sar->i2c, buf, 2, r_buf,
> +					AW963XX_SRAM_UPDATE_ONE_PACK_SIZE);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, read_seq error!", i);
> +				goto err_out;
> +			}
> +			if (memcmp(&buf[2], r_buf, AW963XX_SRAM_UPDATE_ONE_PACK_SIZE) != 0) {
> +				dev_err(p_sar->dev, "read is not equal to write ");
> +				ret = -EIO;
> +				goto err_out;
> +			}
> +		} else { // last pack process
> +			memcpy(&buf[2], &aw_bin->info.data[start_index +
> +					i * AW963XX_SRAM_UPDATE_ONE_PACK_SIZE], last_pack_len);
> +			ret = aw_sar_i2c_write_seq(p_sar->i2c, buf, last_pack_len + 2);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, write_seq error!", i);
> +				goto err_out;
> +			}
> +			ret = aw_sar_i2c_read_seq(p_sar->i2c, buf, 2, r_buf, last_pack_len);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, read_seq error!", i);
> +				goto err_out;
> +			}
> +			if (memcmp(&buf[2], r_buf, last_pack_len) != 0) {
> +				dev_err(p_sar->dev, "read is not equal to write ");
> +				ret = -EIO;
> +				goto err_out;
> +			}
> +			/* fill 0xff in the area that not worte. */
> +			ret = aw963xx_sram_fill_not_wrote_area(load_bin_para,
> +					download_addr_with_ofst + last_pack_len);
> +			if (ret != 0) {
> +				dev_err(p_sar->dev, "cnt%d, sram_fill_not_wrote_area error!", i);
> +				goto err_out;
> +			}
> +		}
> +	}
> +
> +err_out:
> +	devm_kfree(p_sar->dev, r_buf);

Why do you use managed interface?

> +
> +	return ret;
> +}
> +
> +static int32_t aw963xx_update_firmware(struct aw_bin *aw_bin, void *load_bin_para)
> +{
> +	struct aw_sar *p_sar = (struct aw_sar *)load_bin_para;
> +	struct aw963xx *aw963xx = (struct aw963xx *)p_sar->priv_data;
> +	struct i2c_client *i2c = p_sar->i2c;
> +	int32_t ret;
> +
> +	if (aw963xx->start_mode == AW963XX_ROM_MODE) {
> +		dev_info(p_sar->dev, "no need to update fw.");
> +		return 0;
> +	}
> +
> +	//step1: close coderam shutdown mode

Plaese fix your style to be consistent. There is a space after //.
Always, so fix all your patches.



...

> +
> +int32_t aw963xx_check_chipid(void *data)
> +{
> +	struct aw_sar *p_sar = (struct aw_sar *)data;
> +	uint32_t reg_val;
> +	int32_t ret;
> +
> +	if (!p_sar)
> +		return -EINVAL;
> +
> +	ret = aw_sar_i2c_read(p_sar->i2c, REG_CHIP_ID0, &reg_val);
> +	if (ret < 0) {
> +		dev_err(p_sar->dev, "read CHIP ID failed: %d", ret);
> +		return ret;
> +	}
> +
> +	switch (reg_val) {
> +	case AW96303_CHIP_ID:
> +		dev_info(p_sar->dev, "aw96303 detected, 0x%04x", reg_val);

Your driver is quite noisy. Reduce the severity of informational
messages, because driver should be quiet on success.

I don't understand why even having dev_info in 5 places instead of one
place.

> +		memcpy(p_sar->chip_name, AW96303, 8);
> +		ret = 0;
> +		break;
> +	case AW96305_CHIP_ID:
> +		dev_info(p_sar->dev, "aw96305 detected, 0x%04x", reg_val);
> +		memcpy(p_sar->chip_name, AW96305, 8);
> +		ret = 0;
> +		break;
> +	case AW96305BFOR_CHIP_ID:
> +		dev_info(p_sar->dev, "aw96305bfor detected, 0x%04x", reg_val);
> +		memcpy(p_sar->chip_name, AW96305BFOR, 8);
> +		ret = 0;
> +		break;
> +	case AW96308_CHIP_ID:
> +		dev_info(p_sar->dev, "aw96308 detected, 0x%04x", reg_val);
> +		memcpy(p_sar->chip_name, AW96308, 8);
> +		ret = 0;
> +		break;
> +	case AW96310_CHIP_ID:
> +		dev_info(p_sar->dev, "aw96310 detected, 0x%04x", reg_val);
> +		memcpy(p_sar->chip_name, AW96310, 8);

No, all these memcpy are just silly. You later compare strings instead
of comparing the detected chip id (integer).

> +		ret = 0;
> +		break;
> +	default:
> +		dev_info(p_sar->dev, "chip id error, 0x%04x", reg_val);
> +		ret =  -EIO;

Fix your style, just one space after =. This applies in multiple places.

> +		break;
> +	}
> +
> +	return ret;
> +}
> +

There are so many trivial issues in this driver that I think you should
start from huge cleanup from all these trivialities before sending to
review. You try to upstream a downstream, poor quality code. This is
always a pain. Instead you should take moderately recent driver, which
passed review, as a template and work on top of it with Linux coding
uniformed style.

Best regards,
Krzysztof


