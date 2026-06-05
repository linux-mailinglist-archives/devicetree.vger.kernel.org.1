Return-Path: <devicetree+bounces-307339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HgudIBStImoNcAEAu9opvQ
	(envelope-from <devicetree+bounces-307339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:03:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D430164799E
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:03:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jjCvxUfD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307339-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307339-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3DE83013A77
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 10:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8392B4BC03C;
	Fri,  5 Jun 2026 10:52:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D34F41361B
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 10:52:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656768; cv=none; b=p7jmj4/ks4e9XfrMkaIOsrKGKPWd5+OWiG8D+3XHB/ANgVOlEdg3YYJGGRWCUYaOlhp3cFHcM8u7qaKwdijorjhz3yLBdOAytaFolodNtwEW9CT4aTrhtuBDWayotmHAqQ2u46K+4F53MV4c5wNkKmxNrlhj+5zsuGjAz0cSE0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656768; c=relaxed/simple;
	bh=ZAluHVmi2wN4D3vOnccGmupFOlWhQSS3tGUfr6rE5oc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VMxy4gT+QmIMTDpsx7o0T8+NhN5FkjwFSOe9CB9QA/bURKifDDSpjGV+NMH3uwuDLdbOROhO+HFNkP2CW4Zix8Zeq6wYbjLo7Ls0GgC5gxAOjDOj2ViC3G0Zw9zGwSxz1WMQcct3p1YlG9XcefnTwJ/3EJ9U6M/oAH0WU9gtIJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjCvxUfD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBB1C1F00893;
	Fri,  5 Jun 2026 10:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780656767;
	bh=nWJXIMEuPH0kspEWuAkMZzyzJYOshIjd/EaXP2f1Au4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jjCvxUfD3mknLBcxRKnUkL8bi+as8AVTFiA71MYo/VJGLvm5l7BhaHeLZe19hUxaT
	 ZzOaBGz0yJUwJ5Mr7Uej1U7kseGXRlZ2FZBEFj3knPkK7+A61VQBP7dHtkIHqic9g9
	 6GTXS6zTpUVqceWckJBFXSA9t+AK5rFa5DeOt7p+YilFR2MKR9fjpn7d83X24tZxD9
	 pRMdhsT5e3QRzEAG/XH+4Uc3O5jUUz3WaHmWMRyLBE37J7dvU6iUUBGvGcTXsIbpGE
	 mNEoJVcCz1bxnG/G3kEHfHnf1c/QNVtA/BOYl1vPYN5m8RTA/JPQ7zpXMF8JyfwiLE
	 9bcee69dlI/oA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 7/13] ASoC: qcom: Add QAIF AIF DAI ops
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harendra Gautam" <harendra.gautam@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260605103739.3557573-8-harendra.gautam@oss.qualcomm.com>
References: <20260605103739.3557573-8-harendra.gautam@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 10:52:46 +0000
Message-Id: <20260605105246.BBB1C1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307339-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:harendra.gautam@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D430164799E

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Trigger error handling masks hardware enable failures and lacks ro=
llback for clock enable failures.
- [High] Shared AIF enable bit in loopback mode breaks concurrent streams.
- [Medium] The CPU DAI improperly configures the CODEC DAI directly with ha=
rdcoded TDM masks, ignoring dynamic configurations.
- [Medium] The MI2S bit clock is left enabled during system suspend and idl=
e periods due to unbalanced clock management.
- [Low] The pointer `aif_intf_cfg` is assigned the address of an inline arr=
ay element and will never be NULL, rendering the subsequent NULL check usel=
ess.
--

commit d50489b023d0ced9ef2bb2d6c594bbd9cf3884e8
Author: Harendra Gautam <harendra.gautam@oss.qualcomm.com>
Subject: ASoC: qcom: Add QAIF AIF DAI ops

Add the CPU DAI operations and regmap field setup needed to use the QAIF
AIF (MI2S) path. This allows QAIF to route playback through RDDMA channels
and capture through WRDMA channels to external serial audio devices.

> diff --git a/sound/soc/qcom/qaif-cpu.c b/sound/soc/qcom/qaif-cpu.c
> --- a/sound/soc/qcom/qaif-cpu.c
> +++ b/sound/soc/qcom/qaif-cpu.c

[ ... ]

> @@ -495,12 +495,12 @@ static int qaif_aif_cpu_daiops_hw_params(struct snd=
_pcm_substream *substream,
> =20
>  	idx =3D v->get_dma_idx(dai->driver->id);
> =20
>  	if (idx < 0) {
>  		dev_err(dai->dev, "%s: Invalid DMA index: %d\n", __func__, idx);
>  		return -EINVAL;
>  	}
> =20
>  	aif_intf_cfg =3D &drvdata->aif_intf_cfg[idx];
> =20
>  	if (!aif_intf_cfg) {
>  		dev_err(dai->dev, "AIF interface config not found\n");
>  		return -EINVAL;
>  	}

[Severity: Low]
Does this code assign the address of an inline array element? Since it takes
the address directly from the drvdata structure, won't this pointer never be
NULL, making the following check dead code?

[ ... ]

> @@ -603,17 +603,17 @@ static int qaif_aif_cpu_daiops_hw_params(struct snd=
_pcm_substream *substream,
>  	ret =3D clk_set_rate(drvdata->mi2s_bit_clk[idx],
>  			   rate * slot_width * aif_intf_cfg->bits_per_lane);
>  	if (ret) {
>  		dev_err(dai->dev, "error setting mi2s bitclk to %u: %d\n",
>  			rate * slot_width * aif_intf_cfg->bits_per_lane, ret);
>  		return ret;
>  	}
>  	dev_dbg(dai->dev, "setting IBIT clock to %u\n",
>  		rate * slot_width * aif_intf_cfg->bits_per_lane);
> =20
>  	ret =3D clk_enable(drvdata->mi2s_bit_clk[idx]);

[Severity: Medium]
Since this clock is enabled here and also in the trigger callback for
SNDRV_PCM_TRIGGER_START, does this double enable sequence mean the reference
count stays elevated during system suspend? ALSA does not call hw_free on
suspend, so it seems the clock might physically remain active.

>  	if (ret) {
>  		dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
>  		return ret;
>  	}
>  	snd_soc_dai_set_tdm_slot(codec_dai, 0x0f, 0b11, aif_intf_cfg->bits_per_=
lane, slot_width);
>  	snd_soc_dai_set_sysclk(codec_dai, 0, rate * aif_intf_cfg->bits_per_lane=
 * slot_width, 0);

[Severity: Medium]
Is it intentional for a CPU DAI's hw_params to configure the codec DAI
directly with hardcoded values? This seems to force a mismatch by overriding
dynamic configurations like slot_en_tx_mask and tightly couples the CPU
driver to a specific codec.

[ ... ]

> @@ -638,28 +638,28 @@ static int qaif_aif_cpu_daiops_trigger(struct snd_p=
cm_substream *substream,
>  	case SNDRV_PCM_TRIGGER_START:
>  	case SNDRV_PCM_TRIGGER_RESUME:
>  	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
>  		if (aif_intf_cfg->loopback_en)
>  			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable, idx, QAIF_A=
IF_CTL_ENABLE_ON);
>  		else if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK)
>  			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable_tx, idx, QAI=
F_AIF_CTL_ENABLE_ON);
>  		else
>  			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable_rx, idx, QAI=
F_AIF_CTL_ENABLE_ON);
>  		if (ret)
>  			dev_err(dai->dev, "error writing to AIF CTL reg: %d\n", ret);
> =20
>  		ret =3D clk_enable(drvdata->mi2s_bit_clk[idx]);

[Severity: High]
If the regmap_fields_write call fails, won't the error code in ret be
overwritten by clk_enable here? Also, if clk_enable fails, it looks like
the function returns an error but leaves the AIF interface active without
rolling back the hardware state.

>  		if (ret) {
>  			dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
>  			return ret;
>  		}
>  		break;
>  	case SNDRV_PCM_TRIGGER_STOP:
>  	case SNDRV_PCM_TRIGGER_SUSPEND:
>  	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> =20
>  		if (aif_intf_cfg->loopback_en)
>  			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable, idx, QAIF_A=
IF_CTL_ENABLE_OFF);

[Severity: High]
If loopback is enabled and a user stops one substream during full-duplex
operation, won't writing QAIF_AIF_CTL_ENABLE_OFF to the global enable
register disrupt the other running stream? Should this global register state
be reference-counted to support concurrent streams?

>  		else if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK)
>  			ret =3D regmap_fields_write(drvdata->aif_intfctl->enable_tx, idx, QAI=
F_AIF_CTL_ENABLE_OFF);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605103739.3557=
573-1-harendra.gautam@oss.qualcomm.com?part=3D7

