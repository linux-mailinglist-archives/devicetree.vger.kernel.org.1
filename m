Return-Path: <devicetree+bounces-318398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dcj9CoT3RGrU4AoAu9opvQ
	(envelope-from <devicetree+bounces-318398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC6C6ECB1D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 13:18:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RMpWLqAi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318398-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318398-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21E8B30AE603
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 11:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E202043637D;
	Wed,  1 Jul 2026 11:14:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCB142EEAC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 11:14:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782904490; cv=none; b=iQQgwpLM0Tb2WEJZlP78Cj2geC/JYtZjHobt3gj7i05AAifcsAMjyAUyoWwor+7oc+6RGwKSY0oqsGunUKspiVP2UiauTHrW3t5/OIRVfqOAxUfg0nVyatuqj7oDdNzeQUAO+9Sav6aNYkTKT7c0ny+pYTL5L1Mx8vs27qB2+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782904490; c=relaxed/simple;
	bh=k0xgMjeN9v9yssEMVqNl2D808IlahkrdQuJTDGZU/go=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TsiZJidRxtcmQQyc+IQtpN61aqARrv3joLKlh6ok1P5hWWmBf8BhNq/VdZgN8Hp/W8Tx+WneubbsLC6EcdaxEnx6sHBfdQP3wLeBNfxREFLnUAnQbr4LSi5CPSoWD/6m5SSTYpj0OXqea6cgGv2oF2NSQbmLMCMfgG1c/M5zfzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMpWLqAi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14C6D1F000E9;
	Wed,  1 Jul 2026 11:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782904489;
	bh=oNrf7lC9jUXK6BtN5F1AxxpX+nebIxHHtjHwaxUIcYw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RMpWLqAiK4R4b4yhmSbWSuG78t0Xsv0yiNAPxi8Pp90BgrDjBmCdNBXiXBehOcUWy
	 YymDKrkJ+sT9kJZZ02qn1AMv2PVhmex7n801hbh9820OcLF3ejYcBm3zE6pdveAXgm
	 AASqnxedpESZ3k75U7LMUpcB7q2FXJ/qp+kU1IuYIkG/Zbs5JY5K/CO+5GsEDDnoWH
	 S/7GCW4QINxv/p6KBDKcKWpNkyco4KRkcpYpdTcJ7upZsTjwgwI4NRBk+OU3KK5d9k
	 /IPllhs3e8z9pfUqvNB2whnEF+irs4G9yyMCermkBXbKfmBHKbN5Gwu1Jh/ji98DL+
	 lD5T33s4Soj1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/11] ASoC: qcom: Add QAIF AIF DAI ops
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701105757.2779738-6-harendra.gautam@oss.qualcomm.com>
References: <20260701105757.2779738-1-harendra.gautam@oss.qualcomm.com>
 <20260701105757.2779738-6-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 11:14:48 +0000
Message-Id: <20260701111449.14C6D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318398-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AEC6C6ECB1D

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Clock reference tracking bugs leading to unbalanced clk_disable an=
d power management failure.
- [High] Silent failure on stream trigger (START) due to overwritten error =
code and missing hardware rollback.
- [High] The CPU DAI directly configures the Codec DAI with hardcoded slots=
, causing out-of-bounds array reads and violating ASoC component architectu=
re.
- [High] Concurrent playback and capture streams on the same MI2S interface=
 will overwrite and corrupt shared hardware registers and clock rates.
- [Low] Useless NULL check on an inline array element address.
--

commit d1f7f6e70f39b363c15c95838477463b38010acc
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>
Subject: ASoC: qcom: Add QAIF AIF DAI ops

This commit adds CPU DAI operations and regmap field setup needed to use the
QAIF AIF (MI2S) path. This allows QAIF to route playback through RDDMA
channels and capture through WRDMA channels to external serial audio devices
over MI2S.

> diff --git a/sound/soc/qcom/qaif-cpu.c b/sound/soc/qcom/qaif-cpu.c
> index 072c1bec078aa..08c7aa4779382 100644
> --- a/sound/soc/qcom/qaif-cpu.c
> +++ b/sound/soc/qcom/qaif-cpu.c
[ ... ]
> +static int qaif_aif_cpu_daiops_hw_free(struct snd_pcm_substream *substre=
am,
> +				       struct snd_soc_dai *dai)
> +{
> +	struct qaif_drv_data *drvdata =3D snd_soc_dai_get_drvdata(dai);
> +	const struct qaif_variant *v =3D drvdata->variant;
> +	int idx =3D v->get_dma_idx(dai->driver->id);
> +
> +	if (idx < 0)
> +		return 0;
> +
> +	clk_disable(drvdata->mi2s_bit_clk[idx]);

[Severity: High]
If hw_params fails early, it might not enable the clock. Will the ALSA core
still call hw_free during stream cleanup? If so, does calling clk_disable()
on a clock that was never enabled cause a reference underflow and kernel
warning?=20

Also, since the clock is enabled in both hw_params and trigger(START), but
only disabled in trigger(STOP) and hw_free, could this lead to an unbalanced
enable count that prevents the clock from ever powering down?

> +	return 0;
> +}
> +
> +static int qaif_aif_cpu_daiops_hw_params(struct snd_pcm_substream *subst=
ream,
> +					 struct snd_pcm_hw_params *params,
> +					 struct snd_soc_dai *dai)
> +{
> +	struct qaif_drv_data *drvdata =3D snd_soc_dai_get_drvdata(dai);
> +	struct snd_soc_pcm_runtime *rtd =3D substream->private_data;
> +	struct snd_soc_dai *codec_dai =3D snd_soc_rtd_to_codec(rtd, 0);

[Severity: High]
Is it possible for the CPU DAI to be part of a link with no codecs, such as
certain dummy or hostless links? If rtd->dai_link->num_codecs is 0, will
snd_soc_rtd_to_codec(rtd, 0) read past the end of the rtd->dais array?

> +	const struct qaif_variant *v =3D drvdata->variant;
> +	struct qaif_aud_intfctl *aif_intfctl =3D drvdata->aif_intfctl;
> +	const struct qaif_aif_config *aif_intf_cfg =3D NULL;
[ ... ]
> +	idx =3D v->get_dma_idx(dai->driver->id);
> +
> +	if (idx < 0) {
> +		dev_err(dai->dev, "%s: Invalid DMA index: %d\n", __func__, idx);
> +		return -EINVAL;
> +	}
> +
> +	aif_intf_cfg =3D &drvdata->aif_intf_cfg[idx];
> +
> +	if (!aif_intf_cfg) {

[Severity: Low]
Does evaluating the address of the array element &drvdata->aif_intf_cfg[idx]
always result in a non-NULL pointer offset from the parent structure, making
this NULL check structurally impossible to fail?

> +		dev_err(dai->dev, "AIF interface config not found\n");
> +		return -EINVAL;
> +	}
> +	bitwidth =3D snd_pcm_format_width(format);
> +	if (bitwidth < 0) {
> +		dev_err(dai->dev, "invalid bit width given: %d\n", bitwidth);
> +		return bitwidth;
> +	}
> +
> +	/* SYNC_CFG: write all four sync fields */
> +	ret =3D regmap_fields_write(aif_intfctl->inv_sync, idx, aif_intf_cfg->i=
nvert_sync);

[Severity: High]
Since the hardware supports concurrent, full-duplex playback and capture on=
 the
same DAI physical index, what happens if one stream is actively playing whi=
le
the opposite stream is started? Does unconditionally overwriting shared
physical interface registers and resetting the clock rate corrupt the ongoi=
ng
audio stream?

> +	if (ret) {
> +		dev_err(dai->dev, "Failed to write inv_sync: %d\n", ret);
> +		return ret;
> +	}
[ ... ]
> +	ret =3D clk_set_rate(drvdata->mi2s_bit_clk[idx],
> +			   rate * slot_width * aif_intf_cfg->bits_per_lane);
> +	if (ret) {
> +		dev_err(dai->dev, "error setting mi2s bitclk to %u: %d\n",
> +			rate * slot_width * aif_intf_cfg->bits_per_lane, ret);
> +		return ret;
> +	}
> +	dev_dbg(dai->dev, "setting IBIT clock to %u\n",
> +		rate * slot_width * aif_intf_cfg->bits_per_lane);
> +
> +	ret =3D clk_enable(drvdata->mi2s_bit_clk[idx]);
> +	if (ret) {
> +		dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
> +		return ret;
> +	}
> +	snd_soc_dai_set_tdm_slot(codec_dai, 0x0f, 0b11, aif_intf_cfg->bits_per_=
lane, slot_width);
> +	snd_soc_dai_set_sysclk(codec_dai, 0, rate * aif_intf_cfg->bits_per_lane=
 * slot_width, 0);

[Severity: High]
Is it standard for a CPU DAI driver to directly configure the Codec DAI usi=
ng
snd_soc_dai_set_tdm_slot and snd_soc_dai_set_sysclk? This appears to bypass
the machine driver, which is typically responsible for linking and configur=
ing
both endpoints.

Additionally, since the return values of these configuration calls are igno=
red,
will the CPU DAI proceed incorrectly if the codec rejects these parameters?

> +
> +	return 0;
> +}
> +
> +static int qaif_aif_cpu_daiops_trigger(struct snd_pcm_substream *substre=
am,
> +				       int cmd, struct snd_soc_dai *dai)
> +{
[ ... ]
> +	switch (cmd) {
> +	case SNDRV_PCM_TRIGGER_START:
> +	case SNDRV_PCM_TRIGGER_RESUME:
> +	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
> +		if (aif_intf_cfg->loopback_en)
> +			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable,
> +						  idx, QAIF_AIF_CTL_ENABLE_ON);
> +		else if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK)
> +			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable_tx,
> +						  idx, QAIF_AIF_CTL_ENABLE_ON);
> +		else
> +			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable_rx,
> +						  idx, QAIF_AIF_CTL_ENABLE_ON);
> +		if (ret)
> +			dev_err(dai->dev, "error writing to AIF CTL reg: %d\n", ret);
> +
> +		ret =3D clk_enable(drvdata->mi2s_bit_clk[idx]);

[Severity: High]
If the regmap_fields_write() call fails and logs an error to 'ret', does
execution continue to clk_enable()? If clk_enable() succeeds and returns 0,
will it overwrite the previous error code in 'ret', causing the function to
return success while the hardware interface is left disabled?

Also, if the regmap write succeeds but clk_enable() fails, should the hardw=
are
state be rolled back to QAIF_AIF_CTL_ENABLE_OFF before returning the error?

> +		if (ret) {
> +			dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
> +			return ret;
> +		}
> +		break;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701105757.2779=
738-1-harendra.gautam@oss.qualcomm.com?part=3D5

