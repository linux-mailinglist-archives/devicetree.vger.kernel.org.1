Return-Path: <devicetree+bounces-325566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhHeHgDvVGr4hQAAu9opvQ
	(envelope-from <devicetree+bounces-325566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:58:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04974BFB6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:58:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dpy0vAXL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325566-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325566-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 643763001304
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB7D437472;
	Mon, 13 Jul 2026 13:57:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41F43712F;
	Mon, 13 Jul 2026 13:57:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783951021; cv=none; b=Z0tjajTllWRjU/QV3jKa3ySTV0jM14Iobu6makKnzf8nFG6tOg+oVnHn8zx15bG3bJBbVETEfRkQ44SRxRS8gcIDpTQFyklWq0W5cSav/vHlTDTn4ozbV7v5/7wJand+/dlpoGwNZ7FJpkXmFV1D+l2tH8CY4Kq2K28Z4vFqg3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783951021; c=relaxed/simple;
	bh=P6yxaomSNiaE++KfR5MuGM30KkzcWf5jlB4M5Cquz9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q5PSiFq9hQg57tEkYnp/40XP61LUpqB35RuoLt6EO6BBP/1aG6b0RhsGyvQAGzgghjDvz5wyCKVkepj5SEpXRZAQbBGyhnh7BqQKqNrfZASEDAvxy+y6s/ArYj8AlEraNwJ9Zv0QGmY8W5V4Xncb0FnGZ5yRumBXWplvgf2mRPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dpy0vAXL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D2751F000E9;
	Mon, 13 Jul 2026 13:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783951020;
	bh=zEDWIk6lLyra5HqUcesDwh+ikoWWZR0qs0eDO2jT9QM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Dpy0vAXL3SAJ1Joi2Obzxjaa039j1d2gE/akneZF+KFBc37UHojC1SbdMAj0etSRN
	 GOuKBVj7LAsL/iu/k0aJcmN2kPwqHKHORmFMmxoc2RWizMx/rWjOcUQhRAQnRQ5xHE
	 jruxQwu37HRysUwb9tITWTlFM3/C1mHzg09ZOGEPBDb3SZsS/g/mqRvyZ0DSAbHOnN
	 UeL9ft1OadwTnpOZtNuM/Y+XjkmLWA8oVRYY9f+nAb5Uv7CkMP3fwg1nl3dDNP7mnc
	 KxnxlNIDhMzTkkRZPUMJr4o/3s+bL4H4UbcOH/mfF9agG8X8OZJFTKsTX3Kg5c9t24
	 Oxz101MQX4n5A==
Date: Mon, 13 Jul 2026 14:56:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>, "Wang, Sen" <sen@ti.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ASoC: codecs: add TAS2557 mono smart amplifier
 driver
Message-ID: <f50d266e-401c-413e-b15b-2b1af6afb230@sirena.org.uk>
References: <20260711145722.188556-1-morf3089@gmail.com>
 <20260711145722.188556-3-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gOmi8XbcwV0jgBXP"
Content-Disposition: inline
In-Reply-To: <20260711145722.188556-3-morf3089@gmail.com>
X-Cookie: Courage is grace under pressure.
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:morf3089@gmail.com,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:shenghao-ding@ti.com,m:kevin-lu@ti.com,m:baojun.xu@ti.com,m:sen@ti.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325566-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,ti.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E04974BFB6


--gOmi8XbcwV0jgBXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 11, 2026 at 04:57:21PM +0200, Gianluca Boiano wrote:

> The TAS2557 is a mono Class-D smart amplifier with an on-chip DSP for
> speaker protection. Audio is received over I2S/TDM (ASI) and processed
> by DSP firmware before reaching the Class-D output stage.

> +static int tas2557_set_program(struct tas2557_priv *tas2557,
> +			       unsigned int prog_idx, int config_idx)
> +{

> +	/* Auto-select config: match program + sample_rate (0 = accept any) */
> +	if (config_idx < 0) {
> +		config_idx = -1;
> +		for (cfg_idx = 0; cfg_idx < fw->num_configs; cfg_idx++) {
> +			if (fw->configs[cfg_idx].program != prog_idx)
> +				continue;
> +			if (tas2557->sample_rate == 0 ||
> +			    tas2557->sample_rate ==
> +					fw->configs[cfg_idx].sample_rate) {
> +				config_idx = (int)cfg_idx;
> +				break;
> +			}
> +		}
> +		if (config_idx < 0) {
> +			dev_err(tas2557->dev,
> +				"no config for program %u at %u Hz\n",
> +				prog_idx, tas2557->sample_rate);
> +			return -EINVAL;

This will reject attempts to start audio based on the sample rates
supported by the firmware but there's nothing that validates these
sample rates in hw_params(), nor anything that tells userspace about the
constraints coming from the firmware.

Also does the fact that we're using a single firmware config mean that
the driver needs to flag symmetric_rates?

> +static int tas2557_volume_put(struct snd_kcontrol *kc,
> +			      struct snd_ctl_elem_value *ucontrol)
> +{

> +	tas2557->dac_gain = gain;
> +
> +	if (tas2557->powered)
> +		ret = tas2557_dev_update_bits(tas2557, TAS2557_SPK_CTRL_REG,
> +					      TAS2557_DAC_GAIN_MASK,
> +					      gain << TAS2557_DAC_GAIN_SHIFT);
> +
> +	mutex_unlock(&tas2557->lock);
> +
> +	if (ret < 0)
> +		return ret;

It'd be better to avoid updating the cached gain if the write failed,
keep things consistent as much as possible?

--gOmi8XbcwV0jgBXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpU7qUACgkQJNaLcl1U
h9BB5Af/XnTAm1YvgH/Ljj95fva0QXgm87yNpeLl667B1CyFSqjZByU8cbzKT0eb
Vf0xoIhMs+uDR91fnLiBcJWcnjP0z9NHUg4AXZpQmj5vqG9mvjbkBKIhraOrzReF
InXGXPRSgs0ogyOAs98E1EYC9YeQfCtIY35MAaN0N9bHO4JY+86l3GLyYNp5zLur
liFAKYCDNBdAZ+Ym3UtNx3dF96E2de6S8+NZnoiRgS2IQcyx9DJXeCqqyFlRg1AQ
KYuTw45GREAZ0mUgRoI4ugckBS1G0olnowWXejzwy4I5yDrvF3dUO33hsIoNLfzY
QeB11601CuBlG2R79ciCHMVUw61qsQ==
=6Mjx
-----END PGP SIGNATURE-----

--gOmi8XbcwV0jgBXP--

