Return-Path: <devicetree+bounces-1233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4217A5737
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 04:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 103731C20BB1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 02:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5722F5392;
	Tue, 19 Sep 2023 02:04:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B7B1FAB
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 02:04:13 +0000 (UTC)
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3742810D;
	Mon, 18 Sep 2023 19:04:07 -0700 (PDT)
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1978099:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Tue, 19 Sep 2023 10:03:40 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.25; Tue, 19 Sep
 2023 10:03:40 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1118.25 via Frontend
 Transport; Tue, 19 Sep 2023 10:03:40 +0800
Date: Tue, 19 Sep 2023 10:03:40 +0800
From: ChiYuan Huang <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Allen Lin
	<allen_lin@richtek.com>, <alsa-devel@alsa-project.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] ASoC: codecs: Add Richtek rtq9128audio amplifier
 support
Message-ID: <20230919020340.GA12496@linuxcarl2.richtek.com>
References: <1695086301-10376-1-git-send-email-cy_huang@richtek.com>
 <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:18:21AM +0800, cy_huang@richtek.com wrote:
Hi,
  After the patch sent, I just found this patch title problem.
Should be 'rt9128 audio' and it already includes in my next revision
change list.

Thanks.

> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add Richtek rtq9128 automotive audio amplifier.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  sound/soc/codecs/Kconfig   |  15 +
>  sound/soc/codecs/Makefile  |   2 +
>  sound/soc/codecs/rtq9128.c | 742 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 759 insertions(+)
>  create mode 100644 sound/soc/codecs/rtq9128.c
> 
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index f1e1dbc509f6..dfa7ea7782cc 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -218,6 +218,7 @@ config SND_SOC_ALL_CODECS
>  	imply SND_SOC_RT1316_SDW
>  	imply SND_SOC_RT1318_SDW
>  	imply SND_SOC_RT9120
> +	imply SND_SOC_RTQ9128
>  	imply SND_SOC_SDW_MOCKUP
>  	imply SND_SOC_SGTL5000
>  	imply SND_SOC_SI476X
> @@ -1636,6 +1637,20 @@ config SND_SOC_RT9120
>  	  Enable support for Richtek RT9120 20W, stereo, inductor-less,
>  	  high-efficiency Class-D audio amplifier.
>  
> +config SND_SOC_RTQ9128
> +	tristate "Richtek RTQ9128 45W Digital Input Amplifier"
> +	depends on I2C
> +	select REGMAP
> +	help
> +	  Enable support for Richtek RTQ9128 digital input 4-channel
> +	  automotive audio amplifier.  It is a ultra-low output noise,
> +	  high-efficiency, four-channel class-D audio power amplifier
> +	  that can deliver over 87% power efficienty at 4x75W into 4Ohm,
> +	  25V supply in automotive applications.
> +
> +	  To compile this driver as a module, choose M here: the module
> +	  will be called snd-soc-rtq9128.
> +
>  config SND_SOC_SDW_MOCKUP
>  	tristate "SoundWire mockup codec"
>  	depends on EXPERT
> diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
> index a87e56938ce5..678b41c09210 100644
> --- a/sound/soc/codecs/Makefile
> +++ b/sound/soc/codecs/Makefile
> @@ -245,6 +245,7 @@ snd-soc-rt715-objs := rt715.o rt715-sdw.o
>  snd-soc-rt715-sdca-objs := rt715-sdca.o rt715-sdca-sdw.o
>  snd-soc-rt722-sdca-objs := rt722-sdca.o rt722-sdca-sdw.o
>  snd-soc-rt9120-objs := rt9120.o
> +snd-soc-rtq9128-objs := rtq9128.o
>  snd-soc-sdw-mockup-objs := sdw-mockup.o
>  snd-soc-sgtl5000-objs := sgtl5000.o
>  snd-soc-alc5623-objs := alc5623.o
> @@ -627,6 +628,7 @@ obj-$(CONFIG_SND_SOC_RT715)     += snd-soc-rt715.o
>  obj-$(CONFIG_SND_SOC_RT715_SDCA_SDW)     += snd-soc-rt715-sdca.o
>  obj-$(CONFIG_SND_SOC_RT722_SDCA_SDW)     += snd-soc-rt722-sdca.o
>  obj-$(CONFIG_SND_SOC_RT9120)	+= snd-soc-rt9120.o
> +obj-$(CONFIG_SND_SOC_RTQ9128)	+= snd-soc-rtq9128.o
>  obj-$(CONFIG_SND_SOC_SDW_MOCKUP)     += snd-soc-sdw-mockup.o
>  obj-$(CONFIG_SND_SOC_SGTL5000)  += snd-soc-sgtl5000.o
>  obj-$(CONFIG_SND_SOC_SIGMADSP)	+= snd-soc-sigmadsp.o
> diff --git a/sound/soc/codecs/rtq9128.c b/sound/soc/codecs/rtq9128.c
> new file mode 100644
> index 000000000000..acae89c42c26
> --- /dev/null
> +++ b/sound/soc/codecs/rtq9128.c
> @@ -0,0 +1,742 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2023 Richtek Technology Corp.
> + *
> + * Author: ChiYuan Huang <cy_huang@richtek.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <sound/pcm_params.h>
> +#include <sound/soc.h>
> +#include <sound/tlv.h>
> +
> +#define RTQ9128_REG_SDI_SEL	0x00
> +#define RTQ9128_REG_SDO_SEL	0x01
> +#define RTQ9128_REG_I2S_OPT	0x02
> +#define RTQ9128_REG_MISC	0x03
> +#define RTQ9128_REG_STATE_CTRL	0x04
> +#define RTQ9128_REG_PLLTRI_GEN1	0x05
> +#define RTQ9128_REG_PLLTRI_GEN2	0x06
> +#define RTQ9128_REG_PWM_SS_OPT	0x07
> +#define RTQ9128_REG_DSP_EN	0x08
> +#define RTQ9128_REG_TDM_TX_CH1	0x21
> +#define RTQ9128_REG_TDM_RX_CH1	0x25
> +#define RTQ9128_REG_MS_VOL	0x30
> +#define RTQ9128_REG_CH1_VOL	0x31
> +#define RTQ9128_REG_CH2_VOL	0x32
> +#define RTQ9128_REG_CH3_VOL	0x33
> +#define RTQ9128_REG_CH4_VOL	0x34
> +#define RTQ9128_REG_EFUSE_DATA	0xE0
> +#define RTQ9128_REG_VENDOR_ID	0xF9
> +
> +#define RTQ9128_CHSTAT_VAL_MASK	GENMASK(1, 0)
> +#define RTQ9128_DOLEN_MASK	GENMASK(7, 6)
> +#define RTQ9128_AUDBIT_MASK	GENMASK(5, 4)
> +#define RTQ9128_AUDFMT_MASK	GENMASK(3, 0)
> +#define RTQ9128_MSMUTE_MASK	BIT(0)
> +#define RTQ9128_DIE_CHECK_MASK	GENMASK(4, 0)
> +#define RTQ9128_VENDOR_ID_MASK	GENMASK(19, 8)
> +
> +#define RTQ9128_SOFT_RESET_VAL	0x80
> +#define RTQ9128_VENDOR_ID_VAL	0x470
> +#define RTQ9128_ALLCH_HIZ_VAL	0x55
> +#define RTQ9128_ALLCH_ULQM_VAL	0xFF
> +#define RTQ9128_TKA470B_VAL	0
> +#define RTQ9128_RTQ9128DH_VAL	0x0F
> +#define RTQ9128_RTQ9128DL_VAL	0x10
> +
> +struct rtq9128_data {
> +	struct gpio_desc *enable;
> +	int tdm_slots;
> +	int tdm_slot_width;
> +};
> +
> +struct rtq9128_init_reg {
> +	unsigned int reg;
> +	unsigned int val;
> +};
> +
> +static int rtq9128_get_reg_size(unsigned int reg)
> +{
> +	switch (reg) {
> +	case 0x5C ... 0x6F:
> +	case 0x98 ... 0x9F:
> +	case 0xC0 ... 0xC3:
> +	case 0xC8 ... 0xCF:
> +	case 0xDF ... 0xE5:
> +	case 0xF9:
> +		return 4;
> +	case 0x40 ... 0x4F:
> +		return 3;
> +	case 0x30 ... 0x35:
> +	case 0x8C ... 0x97:
> +	case 0xC4 ... 0xC7:
> +	case 0xD7 ... 0xDA:
> +		return 2;
> +	default:
> +		return 1;
> +	}
> +}
> +
> +static int rtq9128_i2c_write(void *context, const void *data, size_t count)
> +{
> +	struct device *dev = context;
> +	struct i2c_client *i2c = to_i2c_client(dev);
> +	u8 reg = *(u8 *)data;
> +	int rg_size;
> +
> +	BUG_ON(count != 5);
> +
> +	rg_size = rtq9128_get_reg_size(reg);
> +	return i2c_smbus_write_i2c_block_data(i2c, reg, rg_size, data + count - rg_size);
> +}
> +
> +static int rtq9128_i2c_read(void *context, const void *reg_buf, size_t reg_size, void *val_buf,
> +			    size_t val_size)
> +{
> +	struct device *dev = context;
> +	struct i2c_client *i2c = to_i2c_client(dev);
> +	u8 reg = *(u8 *)reg_buf;
> +	u8 data_tmp[4] = {};
> +	int rg_size, ret;
> +
> +	BUG_ON(reg_size != 1 || val_size != 4);
> +
> +	rg_size = rtq9128_get_reg_size(reg);
> +	ret = i2c_smbus_read_i2c_block_data(i2c, reg, rg_size, data_tmp);
> +	if (ret < 0)
> +		return ret;
> +	else if (ret != rg_size)
> +		return -EIO;
> +
> +	memset(val_buf, 0, val_size - rg_size);
> +	memcpy(val_buf + val_size - rg_size, data_tmp, rg_size);
> +
> +	return 0;
> +}
> +
> +static const struct regmap_bus rtq9128_regmap_bus = {
> +	.write = rtq9128_i2c_write,
> +	.read = rtq9128_i2c_read,
> +	.max_raw_read = 4,
> +	.max_raw_write = 4,
> +};
> +
> +static bool rtq9128_is_readable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case 0x00 ... 0x2B:
> +	case 0x30 ... 0x35:
> +	case 0x40 ... 0x56:
> +	case 0x5C ... 0x76:
> +	case 0x80 ... 0xAD:
> +	case 0xB0 ... 0xBA:
> +	case 0xC0 ... 0xE5:
> +	case 0xF0 ... 0xFB:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool rtq9128_is_writeable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case 0x00 ... 0x1F:
> +	case 0x21 ... 0x2B:
> +	case 0x30 ... 0x35:
> +	case 0x40 ... 0x56:
> +	case 0x5C ... 0x76:
> +	case 0x80 ... 0x8B:
> +	case 0xA0 ... 0xAD:
> +	case 0xB0 ... 0xBA:
> +	case 0xC0:
> +	case 0xD0 ... 0xDE:
> +	case 0xE0 ... 0xE5:
> +	case 0xF0 ... 0xF3:
> +	case 0xF6 ... 0xF8:
> +	case 0xFA ... 0xFB:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool rtq9128_is_volatile_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case 0x0F ... 0x17:
> +	case 0x20:
> +	case 0x53:
> +	case 0x55:
> +	case 0x5C ... 0x6F:
> +	case 0x8C ... 0x9F:
> +	case 0xC0 ... 0xCF:
> +	case 0xDF:
> +	case 0xF0 ... 0xF1:
> +	case 0xF4 ... 0xF5:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static const struct regmap_config rtq9128_regmap_config = {
> +	.name = "rtq9128",
> +	.reg_bits = 8,
> +	.val_bits = 32,
> +	.val_format_endian = REGMAP_ENDIAN_BIG,
> +	.cache_type = REGCACHE_RBTREE,
> +
> +	.readable_reg = rtq9128_is_readable_reg,
> +	.writeable_reg = rtq9128_is_writeable_reg,
> +	.volatile_reg = rtq9128_is_volatile_reg,
> +	.num_reg_defaults_raw = RTQ9128_REG_VENDOR_ID + 1,
> +};
> +
> +static const DECLARE_TLV_DB_SCALE(dig_tlv, -10375, 25, 0);
> +
> +static const DECLARE_TLV_DB_RANGE(spkgain_tlv,
> +	0, 3, TLV_DB_SCALE_ITEM(-600, 600, 0),
> +	4, 5, TLV_DB_SCALE_ITEM(1500, 300, 0),
> +);
> +
> +static const char * const source_select_text[] = { "CH1", "CH2", "CH3", "CH4" };
> +static const char * const pwmfreq_select_text[] = { "8fs", "10fs", "40fs", "44fs", "48fs" };
> +static const char * const phase_select_text[] = {
> +	"0 degree",	"45 degree",	"90 degree",	"135 degree",
> +	"180 degree",	"225 degree",	"270 degree",	"315 degree",
> +};
> +
> +static const struct soc_enum rtq9128_select_enum[] = {
> +	SOC_ENUM_SINGLE(RTQ9128_REG_SDI_SEL, 6, ARRAY_SIZE(source_select_text), source_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_SDI_SEL, 4, ARRAY_SIZE(source_select_text), source_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_SDI_SEL, 2, ARRAY_SIZE(source_select_text), source_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_SDI_SEL, 0, ARRAY_SIZE(source_select_text), source_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_PLLTRI_GEN1, 4, ARRAY_SIZE(pwmfreq_select_text),
> +			pwmfreq_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_PLLTRI_GEN1, 0, ARRAY_SIZE(phase_select_text),
> +			phase_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_PLLTRI_GEN2, 4, ARRAY_SIZE(phase_select_text),
> +			phase_select_text),
> +	SOC_ENUM_SINGLE(RTQ9128_REG_PLLTRI_GEN2, 0, ARRAY_SIZE(phase_select_text),
> +			phase_select_text),
> +};
> +
> +static const struct snd_kcontrol_new rtq9128_snd_ctrls[] = {
> +	SOC_SINGLE_TLV("MS Volume", RTQ9128_REG_MS_VOL, 2, 511, 1, dig_tlv),
> +	SOC_SINGLE_TLV("CH1 Volume", RTQ9128_REG_CH1_VOL, 2, 511, 1, dig_tlv),
> +	SOC_SINGLE_TLV("CH2 Volume", RTQ9128_REG_CH2_VOL, 2, 511, 1, dig_tlv),
> +	SOC_SINGLE_TLV("CH3 Volume", RTQ9128_REG_CH3_VOL, 2, 511, 1, dig_tlv),
> +	SOC_SINGLE_TLV("CH4 Volume", RTQ9128_REG_CH4_VOL, 2, 511, 1, dig_tlv),
> +	SOC_SINGLE_TLV("SPK Gain Volume", RTQ9128_REG_MISC, 0, 5, 0, spkgain_tlv),
> +	SOC_SINGLE("PBTL12 Switch", RTQ9128_REG_MISC, 5, 1, 0),
> +	SOC_SINGLE("PBTL34 Switch", RTQ9128_REG_MISC, 4, 1, 0),
> +	SOC_SINGLE("Spread Spectrum Switch", RTQ9128_REG_PWM_SS_OPT, 7, 1, 0),
> +	SOC_SINGLE("SDO Select", RTQ9128_REG_SDO_SEL, 0, 15, 0),
> +	SOC_ENUM("CH1 SI Select", rtq9128_select_enum[0]),
> +	SOC_ENUM("CH2 SI Select", rtq9128_select_enum[1]),
> +	SOC_ENUM("CH3 SI Select", rtq9128_select_enum[2]),
> +	SOC_ENUM("CH4 SI Select", rtq9128_select_enum[3]),
> +	SOC_ENUM("PWM FREQ Select", rtq9128_select_enum[4]),
> +	SOC_ENUM("OUT2 Phase Select", rtq9128_select_enum[5]),
> +	SOC_ENUM("OUT3 Phase Select", rtq9128_select_enum[6]),
> +	SOC_ENUM("OUT4 Phase Select", rtq9128_select_enum[7]),
> +};
> +
> +static int rtq9128_dac_power_event(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
> +				   int event)
> +{
> +	struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
> +	unsigned int shift, mask;
> +	int ret;
> +
> +	dev_dbg(comp->dev, "%s: %s event %d\n", __func__, w->name, event);
> +
> +	if (strcmp(w->name, "DAC1") == 0)
> +		shift = 6;
> +	else if (strcmp(w->name, "DAC2") == 0)
> +		shift = 4;
> +	else if (strcmp(w->name, "DAC3") == 0)
> +		shift = 2;
> +	else
> +		shift = 0;
> +
> +	mask = RTQ9128_CHSTAT_VAL_MASK << shift;
> +
> +	/* Turn channel state to Normal or HiZ */
> +	ret = snd_soc_component_write_field(comp, RTQ9128_REG_STATE_CTRL, mask,
> +					    event == SND_SOC_DAPM_POST_PMU ? 0 : 1);
> +	if (ret < 0)
> +		return ret;
> +
> +	/*
> +	 * For each channel turns on, HW will trigger DC load detect and DC
> +	 * offset calibration, the time is needed for all the actions done.
> +	 */
> +	if (event == SND_SOC_DAPM_POST_PMU)
> +		msleep(25);
> +
> +	return 0;
> +}
> +
> +static const struct snd_soc_dapm_widget rtq9128_dapm_widgets[] = {
> +	SND_SOC_DAPM_DAC_E("DAC1", NULL, SND_SOC_NOPM, 0, 0, rtq9128_dac_power_event,
> +			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
> +	SND_SOC_DAPM_DAC_E("DAC2", NULL, SND_SOC_NOPM, 0, 0, rtq9128_dac_power_event,
> +			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
> +	SND_SOC_DAPM_DAC_E("DAC3", NULL, SND_SOC_NOPM, 0, 0, rtq9128_dac_power_event,
> +			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
> +	SND_SOC_DAPM_DAC_E("DAC4", NULL, SND_SOC_NOPM, 0, 0, rtq9128_dac_power_event,
> +			   SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
> +	SND_SOC_DAPM_OUTPUT("OUT1"),
> +	SND_SOC_DAPM_OUTPUT("OUT2"),
> +	SND_SOC_DAPM_OUTPUT("OUT3"),
> +	SND_SOC_DAPM_OUTPUT("OUT4"),
> +};
> +
> +static const struct snd_soc_dapm_route rtq9128_dapm_routes[] = {
> +	{ "DAC1", NULL, "Playback" },
> +	{ "DAC2", NULL, "Playback" },
> +	{ "DAC3", NULL, "Playback" },
> +	{ "DAC4", NULL, "Playback" },
> +	{ "OUT1", NULL, "DAC1" },
> +	{ "OUT2", NULL, "DAC2" },
> +	{ "OUT3", NULL, "DAC3" },
> +	{ "OUT4", NULL, "DAC4" },
> +	{ "Capture", NULL, "DAC1" },
> +	{ "Capture", NULL, "DAC2" },
> +	{ "Capture", NULL, "DAC3" },
> +	{ "Capture", NULL, "DAC4" },
> +};
> +
> +static const struct rtq9128_init_reg rtq9128_tka470b_tables[] = {
> +	{ 0xA0, 0xEF },
> +	{ 0x0D, 0x00 },
> +	{ 0x03, 0x05 },
> +	{ 0x05, 0x31 },
> +	{ 0x06, 0x23 },
> +	{ 0x70, 0x11 },
> +	{ 0x75, 0x1F },
> +	{ 0xB6, 0x03 },
> +	{ 0xB9, 0x03 },
> +	{ 0xB8, 0x03 },
> +	{ 0xC1, 0xFF },
> +	{ 0xF8, 0x72 },
> +	{ 0x30, 0x180 },
> +};
> +
> +static const struct rtq9128_init_reg rtq9128_dh_tables[] = {
> +	{ 0x0F, 0x00 },
> +	{ 0x03, 0x0D },
> +	{ 0xB2, 0xFF },
> +	{ 0xB3, 0xFF },
> +	{ 0x30, 0x180 },
> +	{ 0x8A, 0x55 },
> +	{ 0x71, 0xC8 },
> +	{ 0x72, 0x00 },
> +	{ 0xB1, 0xE3 },
> +};
> +
> +static const struct rtq9128_init_reg rtq9128_dl_tables[] = {
> +	{ 0x0F, 0x00 },
> +	{ 0x03, 0x0D },
> +	{ 0x30, 0x180 },
> +	{ 0x8A, 0x55 },
> +	{ 0x71, 0xC8 },
> +	{ 0x72, 0x00 },
> +	{ 0xB1, 0xE3 },
> +};
> +
> +static int rtq9128_component_probe(struct snd_soc_component *comp)
> +{
> +	const struct rtq9128_init_reg *table, *curr;
> +	size_t table_size;
> +	unsigned int val;
> +	int i, ret;
> +
> +	pm_runtime_resume_and_get(comp->dev);
> +
> +	val = snd_soc_component_read(comp, RTQ9128_REG_EFUSE_DATA);
> +
> +	switch (FIELD_GET(RTQ9128_DIE_CHECK_MASK, val)) {
> +	case RTQ9128_TKA470B_VAL:
> +		table = rtq9128_tka470b_tables;
> +		table_size = ARRAY_SIZE(rtq9128_tka470b_tables);
> +		break;
> +	case RTQ9128_RTQ9128DH_VAL:
> +		table = rtq9128_dh_tables;
> +		table_size = ARRAY_SIZE(rtq9128_dh_tables);
> +		break;
> +	default:
> +		table = rtq9128_dl_tables;
> +		table_size = ARRAY_SIZE(rtq9128_dl_tables);
> +		break;
> +	}
> +
> +	for (i = 0, curr = table; i < table_size; i++, curr++) {
> +		ret = snd_soc_component_write(comp, curr->reg, curr->val);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	pm_runtime_mark_last_busy(comp->dev);
> +	pm_runtime_put(comp->dev);
> +
> +	return 0;
> +}
> +
> +static const struct snd_soc_component_driver rtq9128_comp_driver = {
> +	.probe = rtq9128_component_probe,
> +	.controls = rtq9128_snd_ctrls,
> +	.num_controls = ARRAY_SIZE(rtq9128_snd_ctrls),
> +	.dapm_widgets = rtq9128_dapm_widgets,
> +	.num_dapm_widgets = ARRAY_SIZE(rtq9128_dapm_widgets),
> +	.dapm_routes = rtq9128_dapm_routes,
> +	.num_dapm_routes = ARRAY_SIZE(rtq9128_dapm_routes),
> +	.use_pmdown_time = 1,
> +	.endianness = 1,
> +};
> +
> +static int rtq9128_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> +{
> +	struct rtq9128_data *data = snd_soc_dai_get_drvdata(dai);
> +	struct snd_soc_component *comp = dai->component;
> +	struct device *dev = dai->dev;
> +	unsigned int audfmt, fmtval;
> +	int ret;
> +
> +	dev_dbg(dev, "%s: fmt 0x%8x\n", __func__, fmt);
> +
> +	/* Only support bitclock & framesync as consumer */
> +	if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_BC_FC) {
> +		dev_err(dev, "Only support BCK and LRCK as consumer\n");
> +		return -EINVAL;
> +	}
> +
> +	fmtval = fmt & SND_SOC_DAIFMT_FORMAT_MASK;
> +	if (data->tdm_slots && fmtval != SND_SOC_DAIFMT_DSP_A && fmtval != SND_SOC_DAIFMT_DSP_B) {
> +		dev_err(dev, "TDM is used, format only support DSP_A or DSP_B\n");
> +		return -EINVAL;
> +	}
> +
> +	switch (fmtval) {
> +	case SND_SOC_DAIFMT_I2S:
> +		audfmt = 8;
> +		break;
> +	case SND_SOC_DAIFMT_LEFT_J:
> +		audfmt = 9;
> +		break;
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		audfmt = 10;
> +		break;
> +	case SND_SOC_DAIFMT_DSP_A:
> +		audfmt = data->tdm_slots ? 12 : 11;
> +		break;
> +	case SND_SOC_DAIFMT_DSP_B:
> +		audfmt = data->tdm_slots ? 4 : 3;
> +		break;
> +	default:
> +		dev_err(dev, "Unsupported format 0x%8x\n", fmt);
> +		return -EINVAL;
> +	}
> +
> +	ret = snd_soc_component_write_field(comp, RTQ9128_REG_I2S_OPT, RTQ9128_AUDFMT_MASK, audfmt);
> +	return ret < 0 ? ret : 0;
> +}
> +
> +static int rtq9128_dai_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
> +				    unsigned int rx_mask, int slots, int slot_width)
> +{
> +	struct rtq9128_data *data = snd_soc_dai_get_drvdata(dai);
> +	struct snd_soc_component *comp = dai->component;
> +	struct device *dev = dai->dev;
> +	unsigned int mask, start_loc;
> +	int i, frame_length, ret;
> +
> +	dev_dbg(dev, "%s: slot %d slot_width %d, tx/rx mask 0x%x 0x%x\n", __func__, slots,
> +		slot_width, tx_mask, rx_mask);
> +
> +	if (slots <= 0 || slot_width <= 0 || slot_width % 8) {
> +		dev_err(dev, "Invalid slot numbers (%d) or width (%d)\n", slots, slot_width);
> +		return -EINVAL;
> +	}
> +
> +	/* HW supported maximum frame length 512 */
> +	frame_length = slots * slot_width;
> +	if (frame_length > 512) {
> +		dev_err(dev, "frame length exceed the maximum (%d)\n", frame_length);
> +		return -EINVAL;
> +	}
> +
> +	if (!rx_mask || hweight_long(tx_mask) > slots || hweight_long(rx_mask) > slots ||
> +	    fls(tx_mask) > slots || fls(rx_mask) > slots) {
> +		dev_err(dev, "Invalid tx/rx mask (0x%x/0x%x)\n", tx_mask, rx_mask);
> +		return -EINVAL;
> +	}
> +
> +	for (mask = tx_mask, i = 0; i < 4 && mask; i++) {
> +		start_loc = (ffs(mask) - 1) * slot_width / 8;
> +		mask &= ~BIT(ffs(mask) - 1);
> +
> +		ret = snd_soc_component_write(comp, RTQ9128_REG_TDM_TX_CH1 + i, start_loc);
> +		if (ret < 0) {
> +			dev_err(dev, "Failed to assign tx_loc %d (%d)\n", i, ret);
> +			return ret;
> +		}
> +	}
> +
> +	for (mask = rx_mask, i = 0; i < 4 && mask; i++) {
> +		start_loc = (ffs(mask) - 1) * slot_width / 8;
> +		mask &= ~BIT(ffs(mask) - 1);
> +
> +		ret = snd_soc_component_write(comp, RTQ9128_REG_TDM_RX_CH1 + i, start_loc);
> +		if (ret < 0) {
> +			dev_err(dev, "Failed to assign rx_loc %d (%d)\n", i, ret);
> +			return ret;
> +		}
> +	}
> +
> +	data->tdm_slots = slots;
> +	data->tdm_slot_width = slot_width;
> +
> +	return 0;
> +}
> +
> +static int rtq9128_dai_hw_params(struct snd_pcm_substream *stream, struct snd_pcm_hw_params *param,
> +				 struct snd_soc_dai *dai)
> +{
> +	struct rtq9128_data *data = snd_soc_dai_get_drvdata(dai);
> +	unsigned int width, slot_width, bitrate, audbit, dolen;
> +	struct snd_soc_component *comp = dai->component;
> +	struct device *dev = dai->dev;
> +	int ret;
> +
> +	dev_dbg(dev, "%s: width %d\n", __func__, params_width(param));
> +
> +	switch (width = params_width(param)) {
> +	case 16:
> +		audbit = 0;
> +		break;
> +	case 18:
> +		audbit = 1;
> +		break;
> +	case 20:
> +		audbit = 2;
> +		break;
> +	case 24:
> +	case 32:
> +		audbit = 3;
> +		break;
> +	default:
> +		dev_err(dev, "Unsupported width (%d)\n", width);
> +		return -EINVAL;
> +	}
> +
> +	slot_width = params_physical_width(param);
> +
> +	if (data->tdm_slots) {
> +		if (slot_width > data->tdm_slot_width) {
> +			dev_err(dev, "slot width is larger than TDM slot width\n");
> +			return -EINVAL;
> +		}
> +
> +		/* Check BCK not exceed the maximum supported rate 24.576MHz */
> +		bitrate = data->tdm_slots * data->tdm_slot_width * params_rate(param);
> +		if (bitrate > 24576000) {
> +			dev_err(dev, "bitrate exceed the maximum (%d)\n", bitrate);
> +			return -EINVAL;
> +		}
> +
> +		/* If TDM is used, configure slot width as TDM slot witdh */
> +		slot_width = data->tdm_slot_width;
> +	}
> +
> +	switch (slot_width) {
> +	case 16:
> +		dolen = 0;
> +		break;
> +	case 24:
> +		dolen = 1;
> +		break;
> +	case 32:
> +		dolen = 2;
> +		break;
> +	default:
> +		dev_err(dev, "Unsupported slot width (%d)\n", slot_width);
> +		return -EINVAL;
> +	}
> +
> +	ret = snd_soc_component_write_field(comp, RTQ9128_REG_I2S_OPT, RTQ9128_AUDBIT_MASK, audbit);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = snd_soc_component_write_field(comp, RTQ9128_REG_SDO_SEL, RTQ9128_DOLEN_MASK, dolen);
> +	return ret < 0 ? ret : 0;
> +}
> +
> +static int rtq9128_dai_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
> +{
> +	struct snd_soc_component *comp = dai->component;
> +	struct device *dev = dai->dev;
> +	int ret;
> +
> +	dev_dbg(dev, "%s: mute (%d), stream (%d)\n", __func__, mute, stream);
> +
> +	ret = snd_soc_component_write_field(comp, RTQ9128_REG_DSP_EN, RTQ9128_MSMUTE_MASK,
> +					    mute ? 1 : 0);
> +	return ret < 0 ? ret : 0;
> +}
> +
> +static const struct snd_soc_dai_ops rtq9128_dai_ops = {
> +	.set_fmt = rtq9128_dai_set_fmt,
> +	.set_tdm_slot = rtq9128_dai_set_tdm_slot,
> +	.hw_params = rtq9128_dai_hw_params,
> +	.mute_stream = rtq9128_dai_mute_stream,
> +	.no_capture_mute = 1,
> +};
> +
> +#define RTQ9128_FMTS_MASK	(SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S18_3LE |\
> +				 SNDRV_PCM_FMTBIT_S20_LE | SNDRV_PCM_FMTBIT_S24_LE |\
> +				 SNDRV_PCM_FMTBIT_S32_LE)
> +
> +static struct snd_soc_dai_driver rtq9128_dai = {
> +	.name = "rtq9128-aif",
> +	.playback = {
> +		.stream_name = "Playback",
> +		.rates = SNDRV_PCM_RATE_8000_192000,
> +		.formats = RTQ9128_FMTS_MASK,
> +		.channels_min = 1,
> +		.channels_max = 4,
> +	},
> +	.capture = {
> +		.stream_name = "Capture",
> +		.rates = SNDRV_PCM_RATE_8000_192000,
> +		.formats = RTQ9128_FMTS_MASK,
> +		.channels_min = 1,
> +		.channels_max = 4,
> +	},
> +	.ops = &rtq9128_dai_ops,
> +	.symmetric_rate = 1,
> +	.symmetric_sample_bits = 1,
> +};
> +
> +static int rtq9128_probe(struct i2c_client *i2c)
> +{
> +	struct device *dev = &i2c->dev;
> +	struct rtq9128_data *data;
> +	struct regmap *regmap;
> +	unsigned int venid;
> +	int ret;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->enable = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> +	if (IS_ERR(data->enable))
> +		return dev_err_probe(dev, PTR_ERR(data->enable), "Failed to get 'enable' gpio\n");
> +	else if (data->enable)
> +		usleep_range(10000, 11000);
> +
> +	i2c_set_clientdata(i2c, data);
> +
> +	/*
> +	 * Due to the bad design to combine SOFT_RESET bit with other function,
> +	 * directly use generic i2c API to trigger SOFT_RESET.
> +	 */
> +	ret = i2c_smbus_write_byte_data(i2c, RTQ9128_REG_MISC, RTQ9128_SOFT_RESET_VAL);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to trigger software reset\n");
> +
> +	/* After trigger soft reset, have to wait 10ms for digital reset done */
> +	usleep_range(10000, 11000);
> +
> +	regmap = devm_regmap_init(dev, &rtq9128_regmap_bus, dev, &rtq9128_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap), "Failed to init regmap\n");
> +
> +	ret = regmap_read(regmap, RTQ9128_REG_VENDOR_ID, &venid);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get vendor id\n");
> +
> +	venid = FIELD_GET(RTQ9128_VENDOR_ID_MASK, venid);
> +	if (venid != RTQ9128_VENDOR_ID_VAL)
> +		return dev_err_probe(dev, -ENODEV, "Vendor ID not match (0x%x)\n", venid);
> +
> +	pm_runtime_set_active(dev);
> +	pm_runtime_mark_last_busy(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to enable pm runtime\n");
> +
> +	return devm_snd_soc_register_component(dev, &rtq9128_comp_driver, &rtq9128_dai, 1);
> +}
> +
> +static int __maybe_unused rtq9128_pm_runtime_suspend(struct device *dev)
> +{
> +	struct rtq9128_data *data = dev_get_drvdata(dev);
> +	struct regmap *regmap = dev_get_regmap(dev, NULL);
> +
> +	/* If 'enable' gpio not specified, change all channels to ultra low quiescent */
> +	if (!data->enable)
> +		return regmap_write(regmap, RTQ9128_REG_STATE_CTRL, RTQ9128_ALLCH_ULQM_VAL);
> +
> +	gpiod_set_value_cansleep(data->enable, 0);
> +
> +	regcache_cache_only(regmap, true);
> +	regcache_mark_dirty(regmap);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused rtq9128_pm_runtime_resume(struct device *dev)
> +{
> +	struct rtq9128_data *data = dev_get_drvdata(dev);
> +	struct regmap *regmap = dev_get_regmap(dev, NULL);
> +
> +	/* If 'enable' gpio not specified, change all channels to default Hi-Z */
> +	if (!data->enable)
> +		return regmap_write(regmap, RTQ9128_REG_STATE_CTRL, RTQ9128_ALLCH_HIZ_VAL);
> +
> +	gpiod_set_value_cansleep(data->enable, 1);
> +
> +	/* Wait digital block to be ready */
> +	usleep_range(10000, 11000);
> +
> +	regcache_cache_only(regmap, false);
> +	return regcache_sync(regmap);
> +}
> +
> +static const struct dev_pm_ops __maybe_unused rtq9128_pm_ops = {
> +	SET_RUNTIME_PM_OPS(rtq9128_pm_runtime_suspend, rtq9128_pm_runtime_resume, NULL)
> +};
> +
> +static const struct of_device_id rtq9128_device_table[] = {
> +	{ .compatible = "richtek,rtq9128" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, rtq9128_device_table);
> +
> +static struct i2c_driver rtq9128_driver = {
> +	.driver = {
> +		.name = "rtq9128",
> +		.of_match_table = rtq9128_device_table,
> +		.pm = pm_ptr(&rtq9128_pm_ops),
> +	},
> +	.probe = rtq9128_probe,
> +};
> +module_i2c_driver(rtq9128_driver);
> +
> +MODULE_AUTHOR("ChiYuan Huang <cy_huang@richtek.com>");
> +MODULE_DESCRIPTION("RTQ9128 4CH Audio Amplifier Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.34.1
> 

