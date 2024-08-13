Return-Path: <devicetree+bounces-93147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFBD94FD6D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 07:52:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD69FB20C41
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 05:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9942D03B;
	Tue, 13 Aug 2024 05:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVY2UeqN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC9422089;
	Tue, 13 Aug 2024 05:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723528334; cv=none; b=kcGSuxs+N+Rb6jAlnIwljT9IfRlil4CgLFBCBT8N7dLxMr7xtT9FsuLJ90TDM1tFqFL8ORoHpei/s2iANh8WmNAOWUkDMJpMdwJC2Jr5xmQ3z1tBG+b0O6Qox5T0yp6p/3aNuGNlLtcnwtFMpDRhc3zqLFtAuRMaTczNCcNkE90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723528334; c=relaxed/simple;
	bh=s2+peGEpCmoyEE62zvdTMei8JdWwi3ubuA8mOQ0Ag00=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tKaGAKzijkW3vT0OeAtaYzzctDLEqSWM/soEBodf9XpgmGRTDLODNkgCucPaGiEO/o1Wo/kjl+JO9rANzoLGBpNIbPcOydqav52j49CDYGOekIUPkaSirjArcc1Dcz92qQr5Rf/Foc5MmIGoAOAPRHjG6AlyJU8QqepkL1MDeFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVY2UeqN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD80C4AF0B;
	Tue, 13 Aug 2024 05:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723528333;
	bh=s2+peGEpCmoyEE62zvdTMei8JdWwi3ubuA8mOQ0Ag00=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KVY2UeqNdMuHtGV76yMUvrkmev0pvSijyYldg3aVBzai3Hz1nqJbYe/DoSTxLXhRQ
	 FDEeMoDXOSNg+Gz2iY+X64JXKxtDssmb/ojxGrjSNuU3Z/jsEFwxCcI3uL8XKse+Mz
	 hjiDZ1/dcZA7mLvBc5xWTADBf3iHfaOT+TFKP0w3xr1s4Yzpuzo3917woBRjLqUcqe
	 hKs+vpRMsU60HgcUHGad2PMdpEw9pZGHj54rLHuhWwoFoFoW58ywrXCJXYzKAqhJXt
	 +DvY0hQiZYrliSIqpsE2n+sDP37hGB+D8bbR8KFDOeqsGBxXG3lGCQfYLfy0kyw4wu
	 MHcsQr06sbo3Q==
Message-ID: <42311e08-44b0-4c00-a540-daf172be4eb1@kernel.org>
Date: Tue, 13 Aug 2024 07:52:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: sma1307: Add driver for Iron Device SMA1307
To: Kiseok Jo <kiseok.jo@irondevice.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240813025436.52410-1-kiseok.jo@irondevice.com>
 <20240813025436.52410-2-kiseok.jo@irondevice.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240813025436.52410-2-kiseok.jo@irondevice.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/08/2024 04:54, Kiseok Jo wrote:
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> ---
>  sound/soc/codecs/Kconfig   |    8 +
>  sound/soc/codecs/Makefile  |    2 +
>  sound/soc/codecs/sma1307.c | 2630 ++++++++++++++++++++++++++++++++++++
>  sound/soc/codecs/sma1307.h |  456 +++++++
>  4 files changed, 3096 insertions(+)
>  create mode 100644 sound/soc/codecs/sma1307.c
>  create mode 100644 sound/soc/codecs/sma1307.h
> 


...

> +
> +static int sma1307_sw_ot1_prot_put(struct snd_kcontrol *kcontrol,
> +				   struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +	    snd_soc_kcontrol_component(kcontrol);
> +	struct sma1307_priv *sma1307 = snd_soc_component_get_drvdata(component);
> +	bool change = false, val = (bool)ucontrol->value.integer.value[0];
> +
> +	if (sma1307->sw_ot1_prot == val)
> +		change = false;
> +	else {
> +		change = true;
> +		sma1307->sw_ot1_prot = val;
> +	}
> +	dev_dbg(sma1307->dev,
> +		 "%s: Over Temperature Level 1 Software Protection %s\n",
> +		 __func__, sma1307->sw_ot1_prot ? "ON" : "OFF");
> +
> +	return change;
> +}
> +
> +static int sma1307_reset_get(struct snd_kcontrol *kcontrol,
> +			     struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +	    snd_soc_kcontrol_component(kcontrol);
> +	struct sma1307_priv *sma1307 = snd_soc_component_get_drvdata(component);
> +
> +	ucontrol->value.integer.value[0] = (int)sma1307->reset;
> +	dev_dbg(sma1307->dev, "%s:  ready\n", __func__);

Drop all such simple function success messages.

> +
> +	return 0;
> +}
> +
> +static int sma1307_reset_put(struct snd_kcontrol *kcontrol,
> +			     struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +	    snd_soc_kcontrol_component(kcontrol);
> +	struct sma1307_priv *sma1307 = snd_soc_component_get_drvdata(component);
> +	bool val = (bool)ucontrol->value.integer.value[0];
> +
> +	if (sma1307->reset == val)
> +		return false;
> +
> +	sma1307->reset = val;
> +	if (ucontrol->value.integer.value[0] != 0
> +	    && ucontrol->value.integer.value[0] != 1) {
> +		dev_err(sma1307->dev, "%s: Invalid value\n", __func__);
> +		return false;
> +	}
> +	sma1307_regmap_update_bits(sma1307, SMA1307_00_SYSTEM_CTRL,
> +				   SMA1307_RESET_MASK, SMA1307_RESET_ON);
> +	sma1307_reset(component);
> +	dev_dbg(sma1307->dev, "%s:  reset complete\n", __func__);

Drop

> +
> +	return true;
> +}
> +
> +static int sma1307_binary_mode_get(struct snd_kcontrol *kcontrol,
> +				   struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct sma1307_priv *sma1307 = snd_kcontrol_chip(kcontrol);
> +
> +	ucontrol->value.enumerated.item[0] = (unsigned int)sma1307->binary_mode;
> +
> +	dev_dbg(sma1307->dev,
> +		 "%s: binary mode is %s\n",
> +		 __func__, sma1307_binary_mode_text[sma1307->binary_mode]);

Why do you debug every sound-API call?

> +
> +	if (!sma1307->set.status) {
> +		dev_dbg(sma1307->dev,
> +			 "%s: no information has been read, try reset control again\n",
> +			 __func__);
> +	}
> +
> +	return 0;
> +}


...


> +
> +static void sma1307_setting_loaded(struct sma1307_priv *sma1307, char *file)

This was never properly build and tested. That's a string, but you pass
here 'struct sma1307_setting_file'.

Do not send code which does not pass W=1 builds, smatch and sparse checks.

Also, thagt's a const char *.

> +{
> +	const struct firmware *fw;
> +	int *data, size, offset, num_mode, ret;
> +
> +	ret = request_firmware(&fw, file, sma1307->dev);
> +
> +	dev_dbg(sma1307->dev, "%s: %d\n", __func__, ret);

Drop

> +
> +	if (!fw) {
> +		dev_err(sma1307->dev, "%s: failed to read \"%s\"\n",
> +			__func__, setting_file);
> +		release_firmware(fw);
> +		sma1307->set.status = false;
> +		return;
> +	}
> +
> +	dev_dbg(sma1307->dev, "%s: load the \"%s\"\n", __func__, setting_file);
> +
> +	data = kzalloc(fw->size, GFP_KERNEL);
> +	size = fw->size >> 2;
> +	memcpy(data, fw->data, fw->size);
> +
> +	release_firmware(fw);
> +
> +	/* HEADER */
> +	sma1307->set.header_size = SMA1307_SETTING_HEADER_SIZE;
> +	sma1307->set.checksum = data[sma1307->set.header_size - 2];
> +	sma1307->set.num_mode = data[sma1307->set.header_size - 1];
> +	num_mode = sma1307->set.num_mode;
> +	sma1307->set.header = devm_kzalloc(sma1307->dev,
> +					   sma1307->set.header_size,
> +					   GFP_KERNEL);
> +	memcpy(sma1307->set.header, data,
> +	       sma1307->set.header_size * sizeof(int));
> +
> +	dev_dbg(sma1307->dev, "%s: ===== header =====\n", __func__);
> +	dev_dbg(sma1307->dev, "%s: header_size=%d\n",
> +		 __func__, (int)sma1307->set.header_size);
> +	dev_dbg(sma1307->dev, "%s: %s\n", __func__, sma1307->set.header);
> +	dev_dbg(sma1307->dev, "%s: checksum=%d\n",
> +		 __func__, sma1307->set.checksum);
> +	dev_dbg(sma1307->dev, "%s: num_mode=%d\n",
> +		 __func__, sma1307->set.num_mode);
> +
> +	if ((sma1307->set.checksum >> 8) != SMA1307_SETTING_CHECKSUM) {
> +		dev_err(sma1307->dev, "%s: failed by dismatch \"%s\"\n",
> +			__func__, setting_file);
> +		sma1307->set.status = false;
> +		return;
> +	}
> +
> +	dev_dbg(sma1307->dev, "%s: version = r%03d\n",
> +			 __func__, sma1307->set.checksum & 0xFF);
> +
> +	/* DEFAULT */
> +	sma1307->set.def_size = SMA1307_SETTING_DEFAULT_SIZE;
> +	sma1307->set.def
> +	    = devm_kzalloc(sma1307->dev,
> +			   sma1307->set.def_size * sizeof(int), GFP_KERNEL);
> +	memcpy(sma1307->set.def,
> +	       &data[sma1307->set.header_size],
> +	       sma1307->set.def_size * sizeof(int));
> +
> +	dev_dbg(sma1307->dev, "%s: ===== default =====\n", __func__);
> +	dev_dbg(sma1307->dev, "%s: default_size=%d\n",
> +		 __func__, (int)sma1307->set.def_size);
> +	for (int i = 0; i < sma1307->set.def_size; i++)
> +		dev_dbg(sma1307->dev, "%s: %08X:%08X\n", __func__,
> +			 i, sma1307->set.def[i]);
> +
> +	/* MODE */
> +	offset = sma1307->set.header_size + sma1307->set.def_size;
> +	sma1307->set.mode_size = DIV_ROUND_CLOSEST(size - offset, num_mode + 1);
> +	for (int i = 0; i < num_mode; i++) {
> +		sma1307->set.mode_set[i]
> +		    = devm_kzalloc(sma1307->dev,
> +				   sma1307->set.mode_size * 2 * sizeof(int),
> +				   GFP_KERNEL);
> +		for (int j = 0; j < sma1307->set.mode_size; j++) {
> +			sma1307->set.mode_set[i][2 * j]
> +			    = data[offset + ((num_mode + 1) * j)];
> +			sma1307->set.mode_set[i][2 * j + 1]
> +			    = data[offset + ((num_mode + 1) * j + i + 1)];
> +		}
> +	}
> +
> +	dev_dbg(sma1307->dev, "%s: ===== mode =====\n", __func__);
> +	dev_dbg(sma1307->dev, "%s: mode_size=%d\n",
> +		 __func__, (int)sma1307->set.mode_size);
> +	for (int i = 0; i < num_mode; i++) {
> +		for (int j = 0; j < sma1307->set.mode_size; j++) {
> +			dev_dbg(sma1307->dev, "%s: [Mode%d] %08X:%08X\n",
> +				 __func__, i,
> +				 sma1307->set.mode_set[i][2 * j],
> +				 sma1307->set.mode_set[i][2 * j + 1]);
> +		}
> +	}
> +
> +	kfree(data);
> +	sma1307->set.status = true;
> +
> +}
> +

...

> +
> +static int sma1307_i2c_probe(struct i2c_client *client)
> +{
> +	struct sma1307_priv *sma1307;
> +	struct device_node *np = client->dev.of_node;
> +	int ret = 0;
> +	unsigned int device_info;
> +
> +	dev_dbg(&client->dev, "%s: i2c client name: %s\n",
> +		 __func__, client->name);

Drop

> +
> +	sma1307 = devm_kzalloc(&client->dev,
> +			       sizeof(struct sma1307_priv), GFP_KERNEL);

sizeof(*)

> +	if (!sma1307)
> +		return -ENOMEM;
> +
> +	sma1307->regmap = devm_regmap_init_i2c(client, &sma_i2c_regmap);
> +	if (IS_ERR(sma1307->regmap)) {
> +		ret = PTR_ERR(sma1307->regmap);
> +		dev_err(&client->dev,
> +			"%s: failed to allocate register map: %d\n",
> +			__func__, ret);

return dev_err_probe() would be much smaller

> +
> +		return ret;
> +	}
> +
> +	/* set initial value as normal AMP IC status */
> +	sma1307->name = client->name;
> +	sma1307->force_mute_status = false;
> +
> +	sma1307->amp_mode = SMA1307_MONO_MODE;
> +
> +	sma1307->num_of_pll_matches = ARRAY_SIZE(sma1307_pll_matches);
> +	sma1307->retry_cnt = SMA1307_I2C_RETRY_COUNT;
> +
> +	sma1307->check_fault_period = CHECK_PERIOD_TIME;
> +	sma1307->check_fault_status = true;
> +	sma1307->isr_manual_mode = true;
> +
> +	sma1307->init_vol = 0x32;
> +	sma1307->cur_vol = sma1307->init_vol;
> +	sma1307->format = SND_SOC_DAIFMT_I2S;
> +	sma1307->frame_size = 0;
> +	sma1307->last_bclk = 0;
> +	sma1307->otp_trm2 = 0;

This is never read... Just like most of all other variables/members here
- totally useless.

> +	sma1307->otp_trm3 = 0;
> +	sma1307->reset = 0;
> +	sma1307->rev_num = 0;
> +	sma1307->sys_clk_id = SMA1307_PLL_CLKIN_BCLK;
> +	sma1307->tdm_slot0_rx = 0;
> +	sma1307->tdm_slot1_rx = 0;
> +	sma1307->tdm_slot0_tx = 0;
> +	sma1307->tdm_slot1_tx = 0;
> +	sma1307->tsdw_cnt = 0;
> +
> +	sma1307->dapm_aif_in = 0;
> +	sma1307->dapm_aif_out0 = 0;
> +	sma1307->dapm_aif_out1 = 0;
> +	sma1307->dapm_amp_en = 0;
> +	sma1307->dapm_sdo_en = 0;
> +	sma1307->dapm_sdo_setting = 0;
> +	sma1307->set.status = false;
> +	sma1307->sw_ot1_prot = true;
> +	sma1307->binary_mode = 0;
> +
> +	mutex_init(&sma1307->default_lock);
> +
> +	INIT_DELAYED_WORK(&sma1307->check_fault_work,
> +			  sma1307_check_fault_worker);
> +
> +	sma1307->dev = &client->dev;
> +	sma1307->kobj = &client->dev.kobj;
> +
> +	i2c_set_clientdata(client, sma1307);
> +
> +	sma1307->pll_matches = sma1307_pll_matches;
> +
> +	ret = sma1307_regmap_read(sma1307,
> +				  SMA1307_FF_DEVICE_INDEX, &device_info);
> +
> +	if ((ret != 0) || ((device_info & 0xF8) != SMA1307_DEVICE_ID)) {
> +		dev_err(&client->dev,
> +			"%s: device initialization error (%d 0x%02X)", __func__,
> +			ret, device_info);
> +		return -ENODEV;
> +	}
> +	dev_dbg(&client->dev, "%s: chip version 0x%02X\n",
> +		 __func__, device_info);
> +
> +	if (of_property_read_bool(np, "use-binary")) {
> +		dev_dbg(&client->dev,
> +			 "%s: Use binary file for setting\n", __func__);
> +		sma1307->amp_set = SMA1307_BINARY_FILE_SET;
> +	} else {
> +		dev_dbg(&client->dev, "%s: Use default setting\n", __func__);
> +		sma1307->amp_set = SMA1307_DEFAULT_SET;
> +	}
> +
> +	if (!strcmp(sma1307->name, DEVICE_NAME_SMA1307)) {
> +		sma1307->irq = client->irq;
> +		dev_dbg(&client->dev,
> +			 "%s: sma1307->irq=%d\n", __func__, sma1307->irq);

Drop, pretty obvious thus useless debug.

> +		dev_dbg(&client->dev, "%s: interrupt Enable\n", __func__);

Drop

> +		/* Request system IRQ for SMA1307 */
> +		ret = devm_request_threaded_irq(&client->dev,
> +						sma1307->irq,
> +						NULL,
> +						sma1307_isr,
> +						IRQF_ONESHOT |
> +						IRQF_SHARED |
> +						IRQF_TRIGGER_FALLING,
> +						dev_name(&client->dev),
> +						sma1307);

Way too wrapped.

> +		if (ret < 0) {
> +			dev_err(&client->dev,
> +				"%s: failed to request IRQ(%u) [%d]\n",
> +				__func__, sma1307->irq, ret);
> +			i2c_set_clientdata(client, NULL);
> +			sma1307->irq = 0;

Why? Drop both and just return dev_err_probe

> +			return ret;
> +		}
> +		if (sma1307->irq)
> +			disable_irq(sma1307->irq);
> +	} else {
> +		sma1307->irq = 0;
> +	}
> +	i2c_set_clientdata(client, sma1307);
> +
> +	ret = devm_snd_soc_register_component(&client->dev,
> +					      &sma1307_component, sma1307_dai,
> +					      1);
> +
> +	if (ret) {
> +		dev_err(&client->dev, "%s: failed to register component\n",
> +			__func__);
> +
> +		return ret;
> +	}
> +
> +	sma1307->attr_grp = &sma1307_attr_group;
> +	ret = sysfs_create_group(sma1307->kobj, sma1307->attr_grp);

You need to document sysfs ABI.



Best regards,
Krzysztof


