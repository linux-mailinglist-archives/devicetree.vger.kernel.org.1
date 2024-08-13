Return-Path: <devicetree+bounces-93324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EA79507E9
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 16:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EC7B1F21130
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 14:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C20A19E7F0;
	Tue, 13 Aug 2024 14:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uL+BlkYz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731CA19DF7B;
	Tue, 13 Aug 2024 14:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723559953; cv=none; b=sjds0le6mVLHkeQ/Pl4Qi4ehQFk8D6jRlWCC5GHztS7C6pY1AZmH7nTAo4I0EJigCrRSR6acxmeZPJjDAI1vOeiiSgCeozb2bMYuvX75Nwbr38hrhVlQ+iu6fN285XllOVW5NvqSuvyBMPAIjFUgAYse5NVsj6DMW6BJ22Uk4Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723559953; c=relaxed/simple;
	bh=WUyyusUuKpd71jIPKul8SZpFm3Xz8Da5VLdbjqsAtAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9e+NtJaxS/UlRVMbv8XIPZO2cmltEwYXRrQ8W6n9axJXDuGoPdf4YK4+wZxYpGS3g0LA1R4oCTS4DBIoW7I0w2b9GfTGWUgPgdYCEIlW1sAyHjZxm+otnd8UOe7mhHwlWyx9ztanmKvRugfmg7w7kWMPu1ZYwR/SG8IZ43HwCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uL+BlkYz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C344DC4AF0B;
	Tue, 13 Aug 2024 14:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723559953;
	bh=WUyyusUuKpd71jIPKul8SZpFm3Xz8Da5VLdbjqsAtAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uL+BlkYz4vmcgeaXxXonswfO9KI97YYCmQun16TmCtfb/Gdhx72sg2xT4Qpr6Q6IP
	 H2u4arFaHLbN4r3cqvksYNlLmVHV83sVQy60bl/4uFCzOkLvKTfAdLIwsqGHX7ilig
	 zAyYLx8nmNuYZqADDtpatuCSRSSfInJsIvg6vV5LEHrisJL+7wLx5Myldbq+VNpz5G
	 m4KhxiFCrBxHS98qi+cIRWiWwOOcx5tTAGV87MyiKQgAXof0WQSsqxCa7KpSl6g/eB
	 rLc0X4zhc3XXpBrr1AKlmTLZmpVLItwddl95dGznYSO+vlxZ51Gn8eVUdDcpDLF0CO
	 LsttrUEJN8mHw==
Date: Tue, 13 Aug 2024 15:39:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Kiseok Jo <kiseok.jo@irondevice.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] ASoC: sma1307: Add driver for Iron Device SMA1307
Message-ID: <66113ea5-11a7-41a9-8e28-af0394d7ded7@sirena.org.uk>
References: <20240813052609.56527-1-kiseok.jo@irondevice.com>
 <20240813052609.56527-2-kiseok.jo@irondevice.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VoMZtvDYR0feKM9Z"
Content-Disposition: inline
In-Reply-To: <20240813052609.56527-2-kiseok.jo@irondevice.com>
X-Cookie: Say no, then negotiate.


--VoMZtvDYR0feKM9Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 13, 2024 at 02:26:08PM +0900, Kiseok Jo wrote:

> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>

Overall this looks pretty good, there's a bunch of issues below but most
of them are stylistic.  There's a few more substantial things, but for
the most part those look like debug features which should probably be
dropped for mainline rather than things that need substantial rework.

> +	case SMA1307_3B_TEST1 ... SMA1307_3F_ATEST2:
> +	case SMA1307_8B_PLL_POST_N ... SMA1307_9A_OTP_TRM3:
> +	case SMA1307_A0_PAD_CTRL0 ... SMA1307_BE_MCBS_CTRL2:
> +		result = true;
> +		break;
> +	default:
> +		result = false;
> +		break;
> +	}
> +	return result;

You could just return true/false directly.

> +static int sma1307_regmap_write(struct sma1307_priv *sma1307,
> +				unsigned int reg, unsigned int val)
> +{
> +	int ret = 0;
> +	int cnt = sma1307->retry_cnt;
> +
> +	while (cnt--) {
> +		ret = regmap_write(sma1307->regmap, reg, val);
> +		if (ret < 0) {
> +			dev_err(sma1307->dev,
> +				"%s: Failed to write [0x%02X]\n",
> +				__func__, reg);

I guess there's some hardware issue which means I/O might fail - will
this trigger often enough that the dev_err() could get excessively noisy
in the logs?  It might be good to have a comment explaining what's going
on.

> +		} else
> +			break;

Kernel coding style is that if one side has { } both sides should.

> +static int sma1307_force_mute_get(struct snd_kcontrol *kcontrol,
> +				  struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +	    snd_soc_kcontrol_component(kcontrol);
> +	struct sma1307_priv *sma1307 = snd_soc_component_get_drvdata(component);
> +
> +	ucontrol->value.integer.value[0] = (int)sma1307->force_mute_status;
> +	dev_dbg(sma1307->dev, "%s: Force Mute %s\n", __func__,
> +		 sma1307->force_mute_status ? "ON" : "OFF");

Do we need to log this?  In general it seems like there's an awful lot
of logging triggerable from userspace, this can potentially be used by
someone for hiding issues.

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

We shouldn't allow userspace to spam error level logs like this.

> +		return false;
> +	}
> +	sma1307_regmap_update_bits(sma1307, SMA1307_00_SYSTEM_CTRL,
> +				   SMA1307_RESET_MASK, SMA1307_RESET_ON);
> +	sma1307_reset(component);

This is a very unusual thing to support - what's the motivation for it?
If we were going to support it then we'd need to handle what happens to
the controls, either generating events saying where they've changed or
rsyncing existing values.

> +static int sma1307_register_read(struct snd_kcontrol *kcontrol,
> +				 struct snd_ctl_elem_value *ucontrol)
> +{

> +	ret = sma1307_regmap_read(sma1307, reg, &val);
> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	ucontrol->value.bytes.data[1] = val;

We generally wouldn't offer controls like this, and since regmap has
debugfs support we already have facilities for looking at the current
device state.

> +static int sma1307_register_write(struct snd_kcontrol *kcontrol,
> +				  struct snd_ctl_elem_value *ucontrol)
> +{

Again, this seems better provided by the regmap debugging features.

> +static int sma1307_aif_in_event(struct snd_soc_dapm_widget *w,
> +				struct snd_kcontrol *kcontrol, int event)
> +{
> +	struct snd_soc_component *component =
> +	    snd_soc_dapm_to_component(w->dapm);
> +	struct sma1307_priv *sma1307 = snd_soc_component_get_drvdata(component);
> +	unsigned int mux = sma1307->dapm_aif_in;
> +	bool change = false;

> +
> +	return change;
> +}

DAPM events should just return an error code, the change thing isn't
needed at all.

> +static int sma1307_dai_hw_params_amp(struct snd_pcm_substream *substream,
> +				     struct snd_pcm_hw_params *params,
> +				     struct snd_soc_dai *dai)
> +{

> +		if (sma1307->irq) {
> +			irq_data = irq_get_irq_data(sma1307->irq);
> +			irq_desc = irq_data_to_desc(irq_data);
> +			dev_dbg(component->dev,
> +				 "%s: sma1307->irq = %d, desc->depth = %d\n",
> +				 __func__, sma1307->irq, irq_desc->depth);
> +			if (irq_desc->depth) {
> +				enable_irq(sma1307->irq);
> +				irq_set_irq_wake(sma1307->irq, 1);
> +
> +				if (device_may_wakeup(sma1307->dev))
> +					enable_irq_wake(sma1307->irq);
> +			}
> +		}



> +	if (mute) {
> +		dev_dbg(component->dev, "%s: %s\n", __func__, "MUTE");
> +		sma1307_regmap_update_bits(sma1307,
> +					   SMA1307_0E_MUTE_VOL_CTRL,
> +					   SMA1307_SPK_MUTE_MASK,
> +					   SMA1307_SPK_MUTE);
> +		/* Need to wait time for mute slope */
> +		msleep(55);

How essential is the mute here to performance?  That's a relatively long
delay for a mute operation, usually these callbacks are used to ensure
that any digital garbage that gets output by the SoC doesn't get played
back.  This feels a bit like it'd be a better fit for control by the
user, but I don't know how bad whatever issue is being handled here is.

> +	data = kzalloc(fw->size, GFP_KERNEL);
> +	size = fw->size >> 2;
> +	memcpy(data, fw->data, fw->size);
> +
> +	release_firmware(fw);

Any great reason to bother with the copy here?  Not really a problem but
it's a bit inefficient.

> +	/* HEADER */
> +	sma1307->set.header_size = SMA1307_SETTING_HEADER_SIZE;
> +	sma1307->set.checksum = data[sma1307->set.header_size - 2];
> +	sma1307->set.num_mode = data[sma1307->set.header_size - 1];

We didn't verify that the firmware is big enough to contain the header
(eg, if there's some filesystem corruption) or any of the other sizes or
counts.

> +	if ((sma1307->otp_trm2 & SMA1307_OTP_STAT_MASK) == SMA1307_OTP_STAT_1)
> +		dev_dbg(component->dev, "%s: SMA1307 OTP Status Successful\n",
> +			 __func__);
> +	else
> +		dev_dbg(component->dev, "%s: SMA1307 OTP Status Fail\n",
> +			 __func__);

Should this be a warning/error?

> +	/* Register Initial Value Setting */
> +	switch (sma1307->amp_set) {
> +	case SMA1307_DEFAULT_SET:
> +		sma1307_set_default(component);
> +		break;

Why aren't we just using the chip defaults here?

> +	case SMA1307_BINARY_FILE_SET:
> +		sma1307_setting_loaded(sma1307, setting_file);
> +		if (sma1307->set.status) {
> +			sma1307_set_binary(component);
> +		} else {
> +			sma1307->force_mute_status = true;
> +			sma1307_set_default(component);
> +		}
> +		break;

What's this for?  Usually any default setup would just be done through
the usual control interface.

> +	if (!strcmp(sma1307->name, DEVICE_NAME_SMA1307AQ_F)) {
> +		/* Guidelines for driving 4ohm load */
> +		/* Brown Out Protection */
> +		sma1307_regmap_write(sma1307, SMA1307_02_BROWN_OUT_PROT1, 0x62);
> +		sma1307_regmap_write(sma1307, SMA1307_03_BROWN_OUT_PROT2, 0x5D);
> +		sma1307_regmap_write(sma1307, SMA1307_04_BROWN_OUT_PROT3, 0x57);
> +		sma1307_regmap_write(sma1307, SMA1307_05_BROWN_OUT_PROT8, 0x54);
> +		sma1307_regmap_write(sma1307, SMA1307_06_BROWN_OUT_PROT9, 0x51);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_07_BROWN_OUT_PROT10, 0x4D);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_08_BROWN_OUT_PROT11, 0x4B);
> +		sma1307_regmap_write(sma1307, SMA1307_27_BROWN_OUT_PROT4, 0x3C);
> +		sma1307_regmap_write(sma1307, SMA1307_28_BROWN_OUT_PROT5, 0x5B);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_29_BROWN_OUT_PROT12, 0x78);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_2A_BROWN_OUT_PROT13, 0x96);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_2B_BROWN_OUT_PROT14, 0xB4);
> +		sma1307_regmap_write(sma1307,
> +				     SMA1307_2C_BROWN_OUT_PROT15, 0xD3);
> +		/* FDPEC Gain */
> +		sma1307_regmap_write(sma1307, SMA1307_35_FDPEC_CTRL0, 0x16);
> +		/* FLT Vdd */
> +		sma1307_regmap_write(sma1307, SMA1307_92_FDPEC_CTRL1, 0xA0);
> +		/* Boost Max */
> +		sma1307_regmap_write(sma1307, SMA1307_AB_BOOST_CTRL4, 0x0F);

OTOH things like this where there's more of an obviously correct setting
are fine to set in the driver.

> +static ssize_t check_fault_period_store(struct device *dev,
> +					struct device_attribute *devattr,
> +					const char *buf, size_t count)
> +{
> +	struct sma1307_priv *sma1307 = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = kstrtol(buf, 10, &sma1307->check_fault_period);
> +
> +	if (ret)
> +		return -EINVAL;
> +
> +	return (ssize_t) count;
> +}
> +
> +static DEVICE_ATTR_RW(check_fault_period);

Any reason this is in sysfs and not an ALSA control?

> +static const struct regmap_config sma_i2c_regmap = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +
> +	.max_register = SMA1307_FF_DEVICE_INDEX,
> +	.readable_reg = sma1307_readable_register,
> +	.writeable_reg = sma1307_writeable_register,
> +	.volatile_reg = sma1307_volatile_register,
> +
> +	.cache_type = REGCACHE_NONE,

_NONE is the default.

--VoMZtvDYR0feKM9Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAma7cAsACgkQJNaLcl1U
h9Dx2QgAhVuflp6Q6Z04oaSloLAr2+QBd3vVJD5BCe+P0ALfSFnVx96NEdxHdRcD
G0n9GTnL4lnukQFV5Fm6BAzlnnSb6yMIsQQD8BiOtFz/VUT3023UK+MpazZYxxMI
SSj0C0I42QPgkfItH1PjU2PlWHTTCiGW/TZSlb22UhsxLicNA/3bO+asx1oZGZIN
bGQnnna3sT1CuClbobWz3EJ2ovA6ZKsCgnVfhw+9w54/pcmyIkWb5GSbLcdKnots
q5DOa6soYlze9YkqLRycwJwi2XHcQoc296A2K25g3c9NhfEXalkglOEJLI8U5CzK
lxZcQtxdN3rgJjrE5ZegtW3CEcNqAQ==
=TZx7
-----END PGP SIGNATURE-----

--VoMZtvDYR0feKM9Z--

