Return-Path: <devicetree+bounces-145495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 473E7A31776
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 22:17:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D99DE1654C7
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73EB0266591;
	Tue, 11 Feb 2025 21:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="jE82wuKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D097266573;
	Tue, 11 Feb 2025 21:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.149.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739308640; cv=none; b=fDjE/GDZq5WVmABsubdGVoB7WvBIUxUcp1XSyMiNeXn8YgSCy8dHAFt3RbQB30sgz6lElctQQmkFGVnicfgJVtCDi5v4kHZpZdB+YOewXcMpB67yNSuNaJ1ELsP1EaehUS28hZ9lHXqrjJ/tJSbyq4ahbPRIZlNn4h+eOY85qEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739308640; c=relaxed/simple;
	bh=WST1rFYXOpIGTlAZP+5s+kcNl9LC28WLODWtbc03+u0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=anAQYOkr3r8ap0Hk0ETPcSSkeAgbyJaqkzD9BCwidSgcWEwpBCAH0ho12ioLwOg08xngS0bumYt65gSi/t0nLmzuLvabohw3ig0B/7vqKPWewM6bXX7axQHzdE/y27MoZ5eIxdKInQOzHtGSXaD0lwXz2g72NGUfV/7lrF0JM4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com; spf=pass smtp.mailfrom=opensource.cirrus.com; dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b=jE82wuKF; arc=none smtp.client-ip=67.231.149.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=opensource.cirrus.com
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B4t7P1017344;
	Tue, 11 Feb 2025 15:16:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	PODMain02222019; bh=yFTvWYtswL6Stag7MtQQ4DhpB+TBM1nS0tEOtGMa39I=; b=
	jE82wuKFuI0qb7jXycselz3zY/P6+IwWgQrtOvXbS6ex242hcj1SqQZ9DSOG8w5Y
	pOEWz6sUp68RWpRP992NUlPeSUcLiHyKSv7wKhRVzhDuJxF31Y0JcY6prhcug0bi
	d635KPPSwIAdK0QV7c/rJAoiCGQ3axnYdm7SzbBM5oJR4FGMVkOIGQVtXFfLp8+O
	3/mRxyAo3cxo2xfApmDaOIkAGGkyooIx2tGtueSE52siLA3Sz5wXzLbBfL5nGNxV
	M3NxqUK6gzD4faHx8QnaySL0I0+DIHl7lwv4UKhZZYmoRyd64YfsyDNXiJL9YZ7w
	OC11PEllU974ThnuJUOhKA==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 44p5j75dqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Feb 2025 15:16:25 -0600 (CST)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Tue, 11 Feb
 2025 21:16:22 +0000
Received: from ediswmail9.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1544.14 via Frontend Transport; Tue, 11 Feb 2025 21:16:17 +0000
Received: from [141.131.145.81] (ftrev.ad.cirrus.com [141.131.145.81])
	by ediswmail9.ad.cirrus.com (Postfix) with ESMTP id 880E5822563;
	Tue, 11 Feb 2025 21:16:13 +0000 (UTC)
Message-ID: <3bff0ff8-7397-414d-a701-011d5b5a41f4@opensource.cirrus.com>
Date: Tue, 11 Feb 2025 15:16:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 5/7] mfd: cs40l26: Add support for CS40L26 core
 driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        "Rob
 Herring" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Simon Trimmer <simont@opensource.cirrus.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Richard Fitzgerald
	<rf@opensource.cirrus.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        James Ogletree <jogletre@opensource.cirrus.com>,
        Ben Bright
	<ben.bright@cirrus.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
	<tiwai@suse.com>,
        David Rhodes <david.rhodes@cirrus.com>,
        Jeff LaBundy
	<jeff@labundy.com>, Heiko Stuebner <heiko@sntech.de>,
        Karel Balej
	<balejk@matfyz.cz>,
        Igor Prusov <ivprusov@salutedevices.com>,
        Jack Yu
	<jack.yu@realtek.com>,
        Weidong Wang <wangweidong.a@awinic.com>,
        Binbin Zhou
	<zhoubinbin@loongson.cn>,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        "Paul
 Handrigan" <paulha@opensource.cirrus.com>,
        Masahiro Yamada
	<masahiroy@kernel.org>, Nuno Sa <nuno.sa@analog.com>
CC: <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-input@vger.kernel.org>, <linux-sound@vger.kernel.org>
References: <20250204231835.2000457-1-ftreven@opensource.cirrus.com>
 <20250204231835.2000457-6-ftreven@opensource.cirrus.com>
 <4e5f0194-22bc-4e17-85f4-6dbc145a936b@kernel.org>
From: Fred Treven <ftreven@opensource.cirrus.com>
Content-Language: en-US
In-Reply-To: <4e5f0194-22bc-4e17-85f4-6dbc145a936b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EPD800ZC c=1 sm=1 tr=0 ts=67abbe29 cx=c_pps a=uGhh+3tQvKmCLpEUO+DX4w==:117 a=uGhh+3tQvKmCLpEUO+DX4w==:17 a=IkcTkHD0fZMA:10 a=T2h4t0Lz3GQA:10 a=P-IC7800AAAA:8 a=IeTf_krrYSk4UIakRS0A:9 a=QEXdDO2ut3YA:10
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: 6XEI0Bz6LWfhen5hlc2gDBVmh52xfdfy
X-Proofpoint-ORIG-GUID: 6XEI0Bz6LWfhen5hlc2gDBVmh52xfdfy
X-Proofpoint-Spam-Reason: safe

On 2/5/25 04:34, Krzysztof Kozlowski wrote:
> On 05/02/2025 00:18, Fred Treven wrote:
>> Introduce support for Cirrus Logic Device CS40L26:
>> A boosted haptic driver with integrated DSP and
>> waveform memory with advanced closed loop algorithms
>> and LRA protection.
>>
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
> 
>> +
>> +#include <linux/cleanup.h>
>> +#include <linux/mfd/core.h>
>> +#include <linux/mfd/cs40l26.h>
>> +#include <linux/property.h>
>> +#include <linux/regulator/consumer.h>
>> +
>> +static const struct mfd_cell cs40l26_devs[] = {
>> +	{ .name = "cs40l26-codec", },
>> +	{ .name = "cs40l26-vibra", },
>> +};
>> +
>> +const struct regmap_config cs40l26_regmap = {
>> +	.reg_bits = 32,
>> +	.val_bits = 32,
>> +	.reg_stride = 4,
>> +	.reg_format_endian = REGMAP_ENDIAN_BIG,
>> +	.val_format_endian = REGMAP_ENDIAN_BIG,
>> +	.max_register = CS40L26_LASTREG,
>> +	.cache_type = REGCACHE_NONE,
>> +};
>> +EXPORT_SYMBOL_GPL(cs40l26_regmap);
>> +
>> +static const char *const cs40l26_supplies[] = {
>> +	"va", "vp",
>> +};
>> +
>> +inline void cs40l26_pm_exit(struct device *dev)
> 
> Exported function and inlined? This feels odd. Anyway, don't use any
> inline keywords in C units.
> 
>> +{
>> +	pm_runtime_mark_last_busy(dev);
>> +	pm_runtime_put_autosuspend(dev);
>> +}
>> +EXPORT_SYMBOL_GPL(cs40l26_pm_exit);
>> +
>> +static int cs40l26_fw_write_raw(struct cs_dsp *dsp, const char *const name,
>> +				const unsigned int algo_id, const u32 offset_words,
>> +				const size_t len_words, u32 *buf)
>> +{
>> +	struct cs_dsp_coeff_ctl *ctl;
>> +	__be32 *val;
>> +	int i, ret;
>> +
>> +	ctl = cs_dsp_get_ctl(dsp, name, WMFW_ADSP2_XM, algo_id);
>> +	if (!ctl) {
>> +		dev_err(dsp->dev, "Failed to find FW control %s\n", name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	val = kzalloc(len_words * sizeof(u32), GFP_KERNEL);
> 
> Looks like an array, so kcalloc
> 
>> +	if (!val)
>> +		return -ENOMEM;
>> +
>> +	for (i = 0; i < len_words; i++)
>> +		val[i] = cpu_to_be32(buf[i]);
>> +
>> +	ret = cs_dsp_coeff_write_ctrl(ctl, offset_words, val, len_words * sizeof(u32));
>> +	if (ret < 0)
>> +		dev_err(dsp->dev, "Failed to write FW control %s\n", name);
>> +
>> +	kfree(val);
>> +
>> +	return (ret < 0) ? ret : 0;
>> +}
>> +
>> +inline int cs40l26_fw_write(struct cs_dsp *dsp, const char *const name, const unsigned int algo_id,
>> +			    u32 val)
>> +{
>> +	return cs40l26_fw_write_raw(dsp, name, algo_id, 0, 1, &val);
>> +}
>> +EXPORT_SYMBOL_GPL(cs40l26_fw_write);
>> +
>> +static int cs40l26_fw_read_raw(struct cs_dsp *dsp, const char *const name,
>> +			       const unsigned int algo_id, const unsigned int offset_words,
>> +			       const size_t len_words, u32 *buf)
>> +{
>> +	struct cs_dsp_coeff_ctl *ctl;
>> +	int i, ret;
>> +
>> +	ctl = cs_dsp_get_ctl(dsp, name, WMFW_ADSP2_XM, algo_id);
>> +	if (!ctl) {
>> +		dev_err(dsp->dev, "Failed to find FW control %s\n", name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	ret = cs_dsp_coeff_read_ctrl(ctl, offset_words, buf, len_words * sizeof(u32));
>> +	if (ret) {
>> +		dev_err(dsp->dev, "Failed to read FW control %s\n", name);
>> +		return ret;
>> +	}
>> +
>> +	for (i = 0; i < len_words; i++)
>> +		buf[i] = be32_to_cpu(buf[i]);
>> +
>> +	return 0;
>> +}
>> +
>> +inline int cs40l26_fw_read(struct cs_dsp *dsp, const char *const name, const unsigned int algo_id,
> 
> All your exported functions should have kerneldoc.

I'm happy to add this, but I don't know where this directive comes from.
Could you share where in the kernel style guide (or elsewhere) this is stated?
There are also hundreds of examples in MFD in which exported functions
do not have kerneldoc which is why I'm curious.

> 
>> +			   u32 *buf)
>> +{
>> +	return cs40l26_fw_read_raw(dsp, name, algo_id, 0, 1, buf);
>> +}
>> +EXPORT_SYMBOL_GPL(cs40l26_fw_read);
>> +
>> +static struct cs40l26_irq *cs40l26_get_irq(struct cs40l26 *cs40l26, const int num, const int bit);
>> +
>> +static int cs40l26_gpio1_rise_irq(void *data)
>> +{
>> +	struct cs40l26 *cs40l26 = data;
>> +
>> +	if (cs40l26->wksrc_sts & CS40L26_WKSRC_STS_EN)
>> +		dev_dbg(cs40l26->dev, "GPIO1 Rising Edge Detected\n");
>> +
>> +	cs40l26->wksrc_sts |= CS40L26_WKSRC_STS_EN;
>> +
>> +	return 0;
>> +}
> 
> 
> ...
> 
>> +err:
>> +	dev_err(cs40l26->dev, "Invalid revision 0x%02X for device 0x%06X\n", cs40l26->revid,
>> +		cs40l26->devid);
>> +	return -EINVAL;
>> +}
>> +
>> +int cs40l26_set_pll_loop(struct cs40l26 *cs40l26, const u32 pll_loop)
>> +{
>> +	int i;
>> +
>> +	/* Retry in case DSP is hibernating */
>> +	for (i = 0; i < CS40L26_PLL_NUM_SET_ATTEMPTS; i++) {
>> +		if (!regmap_update_bits(cs40l26->regmap, CS40L26_REFCLK_INPUT,
>> +					CS40L26_PLL_REFCLK_LOOP_MASK,
>> +					pll_loop << CS40L26_PLL_REFCLK_LOOP_SHIFT))
>> +			break;
>> +	}
>> +
>> +	if (i == CS40L26_PLL_NUM_SET_ATTEMPTS) {
>> +		dev_err(cs40l26->dev, "Failed to configure PLL\n");
>> +		return -ETIMEDOUT;
>> +	}
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(cs40l26_set_pll_loop);
>> +
> 
> This looks way past simple MFD driver. Not only this - entire file. You
> configure there quite a lot and for example setting PLLs is not job for
> MFD. This should be placed in appropriate subsystem.
> 
I disagree here because the configuration being done in this file
is essential to the core operation of the part. For instance,
setting the PLL to open-loop here is required to prevent any
external interference (e.g. GPIO events) from interrupting
the part while loading firmware.

The other hardware configuration being done here is required for
both the Input and ASoC operations of the part.

Lastly, these need to be done in order and independently of which
child driver (ASoC or input) the user adds. If this is moved
to cs40l26-vibra.c (the input driver), for instance,
and that module is then not added, it will disturb the
required setup for use by the ASoC driver.

I would really like to get Lee's opinion here because it does not
make sense to me why this is inappropriate when the configuration
done in the core MFD driver is required for use by all of its
children.

> 
>> +
>> +static const struct cs_dsp_client_ops cs40l26_cs_dsp_client_ops = {
>> +	.pre_run = cs40l26_cs_dsp_pre_run,
>> +	.post_run = cs40l26_cs_dsp_post_run,
>> +};
>> +
>> +static void cs40l26_cs_dsp_remove(void *data)
>> +{
>> +	cs_dsp_remove((struct cs_dsp *)data);
>> +}
>> +
>> +static struct cs_dsp_coeff_desc cs40l26_coeffs[] = {
> 
> This cannto be const?

This cannot be const since coeff_firmware needs to be
requested and assigned at the time of .bin file loading.
Only the names are available beforehand.

> 
>> +	{ .coeff_firmware = NULL, .coeff_filename = "cs40l26.bin" },
>> +	{ .coeff_firmware = NULL, .coeff_filename = "cs40l26-svc.bin" },
>> +	{ .coeff_firmware = NULL, .coeff_filename = "cs40l26-dvl.bin" },
>> +};
>> +
>> +static int cs40l26_cs_dsp_init(struct cs40l26 *cs40l26)
>> +{
>> +	struct cs_dsp *dsp = &cs40l26->dsp;
>> +	int ret;
>> +
>> +	dsp->num = 1;
>> +	dsp->type = WMFW_HALO;
>> +	dsp->dev = cs40l26->dev;
>> +	dsp->regmap = cs40l26->regmap;
>> +	dsp->base = CS40L26_DSP_CTRL_BASE;
>> +	dsp->base_sysinfo = CS40L26_DSP1_SYS_INFO_ID;
>> +	dsp->mem = cs40l26_dsp_regions;
>> +	dsp->num_mems = ARRAY_SIZE(cs40l26_dsp_regions);
>> +	dsp->client_ops = &cs40l26_cs_dsp_client_ops;
>> +
>> +	ret = cs_dsp_halo_init(dsp);
>> +	if (ret) {
>> +		dev_err(cs40l26->dev, "Failed to initialize HALO core\n");
>> +		return ret;
>> +	}
>> +
> 
> ...
> 
>> +
>> +static int __maybe_unused cs40l26_suspend(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	guard(mutex)(&cs40l26->lock);
>> +
>> +	dev_dbg(dev, "%s: Enabling hibernation\n", __func__);
> 
> Drop. No need to re-implement tracing.
> 
>> +
>> +	cs40l26->wksrc_sts = 0x00;
>> +
>> +	/* Don't poll DSP since reading for ACK will wake the device again */
>> +	return regmap_write(cs40l26->regmap, CS40L26_DSP_QUEUE, CS40L26_DSP_CMD_ALLOW_HIBER);
>> +}
>> +
>> +static int __maybe_unused cs40l26_sys_suspend(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	dev_dbg(dev, "System suspend, disabling IRQ\n");
> 
> Drop.
> 
>> +
>> +	disable_irq(cs40l26->irq);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused cs40l26_sys_suspend_noirq(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	dev_dbg(dev, "Late system suspend, re-enabling IRQ\n");
> 
> 
> Drop.
> 
>> +
>> +	enable_irq(cs40l26->irq);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused cs40l26_resume(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	dev_dbg(dev, "%s: Disabling hibernation\n", __func__);
> 
> Drop.
> 
>> +
>> +	guard(mutex)(&cs40l26->dsp.pwr_lock);
>> +
>> +	return cs40l26_prevent_hiber(cs40l26);
>> +}
>> +
>> +static int __maybe_unused cs40l26_sys_resume(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	dev_dbg(dev, "System resume, re-enabling IRQ\n");
> 
> Drop.
> 
>> +
>> +	enable_irq(cs40l26->irq);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused cs40l26_sys_resume_noirq(struct device *dev)
>> +{
>> +	struct cs40l26 *cs40l26 = dev_get_drvdata(dev);
>> +
>> +	dev_dbg(dev, "Early system resume, disabling IRQ\n");
>> +
> 
> Drop.
> ...
> 
>> +
>> +static int cs40l26_spi_probe(struct spi_device *spi)
>> +{
>> +	struct cs40l26 *cs40l26;
>> +
>> +	cs40l26 = devm_kzalloc(&spi->dev, sizeof(struct cs40l26), GFP_KERNEL);
> 
> sizeof(*)
> 
> 
>> +	if (!cs40l26)
>> +		return -ENOMEM;
>> +
>> +	spi_set_drvdata(spi, cs40l26);
>> +
>> +	cs40l26->dev = &spi->dev;
>> +	cs40l26->irq = spi->irq;
>> +	cs40l26->bus = &spi_bus_type;
>> +
>> +	cs40l26->regmap = devm_regmap_init_spi(spi, &cs40l26_regmap);
>> +	if (IS_ERR(cs40l26->regmap))
>> +		return dev_err_probe(cs40l26->dev, PTR_ERR(cs40l26->regmap),
>> +				     "Failed to allocate register map\n");
>> +
>> +	return cs40l26_probe(cs40l26);
>> +}
>> +
>> +static const struct spi_device_id cs40l26_id_spi[] = {
>> +	{ "cs40l26a", 0 },
>> +	{ "cs40l27b", 1 },
> 
> What are these 0 and 1?

I will make it clear that these are enumerating the different possible
device variants.


> 
>> +	{}
>> +};
>> +MODULE_DEVICE_TABLE(spi, cs40l26_id_spi);
>> +
>> +static const struct of_device_id cs40l26_of_match[] = {
>> +	{ .compatible = "cirrus,cs40l26a" },
>> +	{ .compatible = "cirrus,cs40l27b" },
> 
> So devices are compatible? Or rather this is unsynced with other ID table.
I'm not sure what you mean by this.

> 
> Best regards,
> Krzysztof
> 

Thanks for your review.
I will include the agreed upon fixes in v2.

Best regards,
Fred

