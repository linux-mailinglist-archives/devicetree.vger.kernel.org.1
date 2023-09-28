Return-Path: <devicetree+bounces-4085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 591497B133E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 458261C208E5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DE33262A3;
	Thu, 28 Sep 2023 06:43:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3578D1863F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:43:46 +0000 (UTC)
Received: from out28-195.mail.aliyun.com (out28-195.mail.aliyun.com [115.124.28.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 272C4E5;
	Wed, 27 Sep 2023 23:43:43 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07436259|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0023292-4.2477e-05-0.997628;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047205;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=29;RT=29;SR=0;TI=SMTPD_---.UqKxdRM_1695883411;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UqKxdRM_1695883411)
          by smtp.aliyun-inc.com;
          Thu, 28 Sep 2023 14:43:39 +0800
From: wangweidong.a@awinic.com
To: dan.carpenter@linaro.org
Cc: 13916275206@139.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
	broonie@kernel.org,
	ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	doug@schmorgal.com,
	fido_max@inbox.ru,
	harshit.m.mogalapalli@oracle.com,
	herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org,
	liweilei@awinic.com,
	perex@perex.cz,
	rf@opensource.cirrus.com,
	robh+dt@kernel.org,
	ryans.lee@analog.com,
	shumingf@realtek.com,
	tiwai@suse.com,
	trix@redhat.com,
	u.kleine-koenig@pengutronix.de,
	wangweidong.a@awinic.com,
	yang.lee@linux.alibaba.com,
	yijiangtao@awinic.com
Subject: Re: [PATCH V5 8/8] ASoC: codecs: Add aw87390 amplifier driver
Date: Thu, 28 Sep 2023 14:43:30 +0800
Message-ID: <20230928064330.104265-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <464ada20-072d-48f8-a270-155dfd4a06b9@kadam.mountain>
References: <464ada20-072d-48f8-a270-155dfd4a06b9@kadam.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Thank you very much for your review, but I have some questions
I would like to discuss with you

> On Wed, Sep 27, 2023 at 08:16:34PM +0800, wangweidong.a@awinic.com wrote:
>> @@ -668,6 +668,17 @@ config SND_SOC_AW88261
>>  	  boost converter can be adjusted smartly according to
>>  	  the input amplitude.
>>  
>> +config SND_SOC_AW87390
>> +	tristate "Soc Audio for awinic aw87390"

> Capitalize A in Awinic.

Thank you very much, but our company prefers to 
use awinic rather than Awinic

>> +	depends on I2C
>> +	select REGMAP_I2C
>> +	select SND_SOC_AW88395_LIB
>> +	help
>> +	  The awinic aw87390 is specifically designed to improve
>> +	  the musical output dynamic range, enhance the overall
>> +	  sound quallity, which is a new high efficiency, low

> s/quallity/quality/.

Thank you very much. I'll correct it

>> +	  noise, constant large volume, 6th Smart K audio amplifier.
>> +
>>  config SND_SOC_BD28623
>>  	tristate "ROHM BD28623 CODEC"
>>  	help

> [ snip ]

>> diff --git a/sound/soc/codecs/aw87390.c b/sound/soc/codecs/aw87390.c
>> new file mode 100644
>> index 000000000000..8efae3b73eea
>> --- /dev/null
>> +++ b/sound/soc/codecs/aw87390.c
>> @@ -0,0 +1,462 @@
>> +// SPDX-License-Identifier: GPL-2.0-only

> Checkpatch complains about this.  It should just be GPL-2.0, the "only"
> is assumed unless there is a + as in "GPL-2.0+".  You might want to
> run scripts/checkpatch.pl --strict on your patch.

Thank you very much.
Our company uses the GPL-2.0-only all the time, 
and I see a lot of GPL-2.0-only in other drivers.

>> +//
>> +// aw87390.c  --  AW87390 ALSA SoC Audio driver
>> +//
>> +// Copyright (c) 2023 awinic Technology CO., LTD
>> +//
>> +// Author: Weidong Wang <wangweidong.a@awinic.com>
>> +//
>> +
>> +#include <linux/i2c.h>
>> +#include <linux/firmware.h>
>> +#include <linux/regmap.h>
>> +#include <sound/soc.h>
>> +#include "aw87390.h"
>> +#include "aw88395/aw88395_data_type.h"
>> +#include "aw88395/aw88395_device.h"
>> +
>> +static const struct regmap_config aw87390_remap_config = {
>> +	.val_bits = 8,
>> +	.reg_bits = 8,
>> +	.max_register = AW87390_REG_MAX,
>> +	.reg_format_endian = REGMAP_ENDIAN_LITTLE,
>> +	.val_format_endian = REGMAP_ENDIAN_BIG,
>> +};
>> +
>> +static int aw87390_dev_reg_update(struct aw_device *aw_dev,
>> +					unsigned char *data, unsigned int len)
>> +{
>> +	int i, ret;
>> +
>> +	if (!data) {
>> +		dev_err(aw_dev->dev, "data is NULL\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	for (i = 0; i < len; i = i + 2) {
>> +		if (data[i] == AW87390_DELAY_REG_ADDR) {
>> +			usleep_range(data[i + 1] * AW87390_REG_DELAY_TIME,
>> +					data[i + 1] * AW87390_REG_DELAY_TIME + 10);
>> +			continue;
>> +		}
>> +		ret = regmap_write(aw_dev->regmap, data[i], data[i + 1]);

> This assumes that len is an even number...  Maybe write it as:
>
>	for (i = 0; i < len - 1; i += 2) {
>
>Although that assumes len can't be zero so maybe it's not a win...

Thank you very much. I will modify it.

>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int aw87390_dev_get_prof_name(struct aw_device *aw_dev, int index, char **prof_name)
>> +{
>> +	struct aw_prof_info *prof_info = &aw_dev->prof_info;
>> +	struct aw_prof_desc *prof_desc;
>> +
>> +	if ((index >= aw_dev->prof_info.count) || (index < 0)) {
>> +		dev_err(aw_dev->dev, "index[%d] overflow count[%d]\n",
>> +			index, aw_dev->prof_info.count);

...

>> +
>> +	/* update reg */
>> +	sec_desc = prof_index_desc->sec_desc;
>> +	ret = aw87390_dev_reg_update(aw_dev, sec_desc[AW88395_DATA_TYPE_REG].data,
>> +					sec_desc[AW88395_DATA_TYPE_REG].len);
>> +	if (ret) {
>> +		dev_err(aw_dev->dev, "update reg failed\n");
>> +		return ret;
>> +	}
>> +
>> +	aw_dev->prof_cur = aw_dev->prof_index;
>> +
>> +	return ret;

> Just "return 0;" here.  It's the same but zero is more clear.

Thank you very much. I will modify it.

>> +}
>> +
>> +static int aw87390_power_off(struct aw_device *aw_dev)
>> +{
>> +	int ret;
>> +
>> +	if (aw_dev->status == AW87390_DEV_PW_OFF) {
>> +		dev_info(aw_dev->dev, "already power off\n");
>> +		return 0;
>> +	}
>> +
>> +	ret = regmap_write(aw_dev->regmap, AW87390_SYSCTRL_REG, AW87390_POWER_DOWN_VALUE);
>> +	if (ret)
>> +		return ret;
>> +	aw_dev->status = AW87390_DEV_PW_OFF;
>> +
>> +	return ret;

> return 0;

Thank you very much. I will modify it.

>> +}
>> +
>> +static int aw87390_power_on(struct aw_device *aw_dev)
>> +{
>> +	int ret;
>> +
>> +	if (aw_dev->status == AW87390_DEV_PW_ON) {
>> +		dev_info(aw_dev->dev, "already power on\n");

> Change this dev_info() to dev_dbg().

Thank you very much. I will modify it.

>> +		return 0;
>> +	}
>> +
>> +	if (!aw_dev->fw_status) {
>> +		dev_err(aw_dev->dev, "fw not load\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	ret = regmap_write(aw_dev->regmap, AW87390_SYSCTRL_REG, AW87390_POWER_DOWN_VALUE);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = aw87390_dev_fw_update(aw_dev);
>> +	if (ret) {
>> +		dev_err(aw_dev->dev, "%s load profile failed\n", __func__);
>> +		return ret;
>> +	}
>> +	aw_dev->status = AW87390_DEV_PW_ON;
>> +
>> +	return ret;

> return 0;

Thank you very much. I will modify it.

>> +}
>> +
>> +static int aw87390_dev_set_profile_index(struct aw_device *aw_dev, int index)
>> +{
>> +	if ((index >= aw_dev->prof_info.count) || (index < 0))
>> +		return -EINVAL;
>> +
>> +	if (aw_dev->prof_index == index)
>> +		return -EPERM;
>> +
>> +	aw_dev->prof_index = index;
>> +
>> +	return 0;
> +}

...

>> +
>> +static const struct snd_kcontrol_new aw87390_controls[] = {
>> +	AW87390_PROFILE_EXT("AW87390 Profile Set", aw87390_profile_info,
>> +		aw87390_profile_get, aw87390_profile_set),
>> +};
>> +
>> +static int aw87390_request_firmware_file(struct aw87390 *aw87390)
>> +{
>> +	const struct firmware *cont = NULL;
>> +	int ret;
>> +
>> +	aw87390->aw_pa->fw_status = AW87390_DEV_FW_FAILED;
>> +
>> +	ret = request_firmware(&cont, AW87390_ACF_FILE, aw87390->aw_pa->dev);
>> +	if (ret)
>> +		return dev_err_probe(aw87390->aw_pa->dev, ret,
>> +					"load [%s] failed!\n", AW87390_ACF_FILE);
>> +
>> +	dev_dbg(aw87390->aw_pa->dev, "loaded %s - size: %zu\n",
>> +			AW87390_ACF_FILE, cont ? cont->size : 0);
>> +
>> +	aw87390->aw_cfg = devm_kzalloc(aw87390->aw_pa->dev, cont->size + sizeof(int), GFP_KERNEL);

> Use struct_size().
>
>	aw87390->aw_cfg = devm_kzalloc(aw87390->aw_pa->dev,
>				       struct_size(aw87390->aw_cfg, data, cont->size),
>				       GFP_KERNEL);
>

Thank you very much. I will modify it.

>> +	if (!aw87390->aw_cfg) {
>> +		release_firmware(cont);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	aw87390->aw_cfg->len = (int)cont->size;

> No need for this scary looking cast.

Thank you very much. I will modify it to
"aw87390->aw_cfg->len = cont->size;"

>> +	memcpy(aw87390->aw_cfg->data, cont->data, cont->size);
>> +	release_firmware(cont);
>> +
>> +	ret = aw88395_dev_load_acf_check(aw87390->aw_pa, aw87390->aw_cfg);
>> +	if (ret) {
>> +		dev_err(aw87390->aw_pa->dev, "load [%s] failed !\n", AW87390_ACF_FILE);

> No space before !.

Thank you very much. I will modify it.

>> +		return ret;
>> +	}
>> +
>> +	mutex_lock(&aw87390->lock);
>> +
>> +	ret = aw88395_dev_cfg_load(aw87390->aw_pa, aw87390->aw_cfg);

...

>> +static int aw87390_init(struct aw87390 **aw87390, struct i2c_client *i2c, struct regmap *regmap)
>> +{
>> +	struct aw_device *aw_dev;
>> +	unsigned int chip_id;
>> +	int ret;
>> +
>> +	/* read chip id */
>> +	ret = regmap_read(regmap, AW87390_ID_REG, &chip_id);
>> +	if (ret) {
>> +		dev_err(&i2c->dev, "%s read chipid error. ret = %d\n", __func__, ret);
>> +		return ret;
>> +	}
>> +
>> +	if (chip_id != AW87390_CHIP_ID) {
>> +		dev_err(&i2c->dev, "unsupported device\n");
>> +		return -ENXIO;
>> +	}
>> +
>> +	dev_info(&i2c->dev, "chip id = 0x%x\n", chip_id);

> Make this dev_dbg().

Thank you very much. I will modify it.

>> +
>> +	aw_dev = devm_kzalloc(&i2c->dev, sizeof(*aw_dev), GFP_KERNEL);
>> +	if (!aw_dev)
>> +		return -ENOMEM;
>> +
>> +	(*aw87390)->aw_pa = aw_dev;
>> +	aw_dev->i2c = i2c;
>> +	aw_dev->regmap = regmap;
>> +	aw_dev->dev = &i2c->dev;
>> +	aw_dev->chip_id = AW87390_CHIP_ID;
>> +	aw_dev->acf = NULL;
>> +	aw_dev->prof_info.prof_desc = NULL;
>> +	aw_dev->prof_info.count = 0;
>> +	aw_dev->prof_info.prof_type = AW88395_DEV_NONE_TYPE_ID;
>> +	aw_dev->channel = AW87390_DEV_DEFAULT_CH;
>> +	aw_dev->fw_status = AW87390_DEV_FW_FAILED;
>> +	aw_dev->prof_index = AW87390_INIT_PROFILE;
>> +	aw_dev->status = AW87390_DEV_PW_OFF;
>> +
>> +	aw87390_parse_channel_dt(*aw87390);
>> +
>> +	return ret;

> return 0;

Thank you very much. I will modify it.

>> +}
>> +
>> +static int aw87390_i2c_probe(struct i2c_client *i2c)
>> +{
>> +	struct aw87390 *aw87390;
>> +	int ret;

...

>> +static const struct i2c_device_id aw87390_i2c_id[] = {
>> +	{ AW87390_I2C_NAME, 0 },
>> +	{ }
>> +};
>> +MODULE_DEVICE_TABLE(i2c, aw87390_i2c_id);
>> +
>> +static struct i2c_driver aw87390_i2c_driver = {
>> +	.driver = {
>> +		.name = AW87390_I2C_NAME,
>> +	},
>> +	.probe = aw87390_i2c_probe,
>> +	.id_table = aw87390_i2c_id,
>> +};
>> +module_i2c_driver(aw87390_i2c_driver);
>> +
>> +MODULE_DESCRIPTION("ASoC AW87390 PA Driver");
>> +MODULE_LICENSE("GPL v2");

> This is another checkpatch thing.  It should just be
> MODULE_LICENSE("GPL");

Thank you very much, but our company follows the "GPL v2"
So I want to still use it

Best regards,
Weidong Wang

