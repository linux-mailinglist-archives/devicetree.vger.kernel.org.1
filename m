Return-Path: <devicetree+bounces-308458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sFYgD7cBJ2qApgIAu9opvQ
	(envelope-from <devicetree+bounces-308458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:53:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF716596E7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:53:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PfYWI+xA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308458-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308458-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4BDAC3044883
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7B736D9EA;
	Mon,  8 Jun 2026 17:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4B536C5B3
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 17:52:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941138; cv=none; b=Izkyv6rw7hUOcyfijPmA8RnTlEG7V3BAyuTlhnFfDHSCCrPV3om8cfwu7/KZgG3BZYrJrPka/KyJYxkrWdRiujb9gXEORvK7xklNm28xqpI3qcHcNMPYRGelVnR5cVGbLndF5e/HJiVLrC5hcKO0wDWxf7+JLZcPTIFYzeeGvrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941138; c=relaxed/simple;
	bh=vxNLeKKDHQA+BN0EVGrLkhfTQO18YuoSGFSYsO0AFiI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Gt2PGP3ZMGIJxRvDN//xiYZcK4BziRefMHFcF7e6qodj547XyDq0TQoZ/1FODMfVotZ68fdhodNyqkjlafTCY95SmfN22sUoakIFANFvVKS5EFmO4h3KPF53d/m3Hi2A9czOMtZHZ/fXlow8WsMiwRBowROLnKR0cJTRkvCihMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfYWI+xA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1AC31F00893;
	Mon,  8 Jun 2026 17:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780941137;
	bh=3mEe5QpNCiporWgxsk37/5ibdTmQDl/Fk+s1nbysfXU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PfYWI+xAeG2asvbsW/jdP74BjSFThePTbyy3ja9c0TFLty2TmlcPN1Kv2hDDjwsOF
	 rev0ktsUUa9YDMkjiglMn0FI+y2yhiqbhBuuEJQ5zgBNhTQQ7USla4FLA/6ucWCFeC
	 WEeMKwUE1KTEbaqgs0FUzKLil49PFN3P5pn4WLNa0GUio8TCUNNBW41QKji3JHojka
	 Lc/ThN/uZ/OX2FaHH1rsKum7CZ9L+69T/pmZkfwMTPVFccX95mOacQbsKtZvOhA1ly
	 71plWrmihfe4gCSCKFFUh2goAJx+0ou4Hh/uSZl62HPrFmLkIjs+b/CreKDrtijHd6
	 2CiUyDQhBIaeA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 3/3] ASoC: qcom: lpass-va-macro: Add shikra
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608172023.2965292-4-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260608172023.2965292-4-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 17:52:16 +0000
Message-Id: <20260608175216.F1AC31F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308458-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9FF716596E7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The max_register limit for the Shikra regmap is set to 0x0980, but=
 the default register array contains registers up to 0x09A4, leading to reg=
map initialization failure.
- [High] The newly added Shikra ADPT filter configuration registers (except=
 ADPT_CTRL) are missing from the register access whitelist, rendering them =
unwritable.
--

commit 440ac48eeb60479f95d4dd29234ca9afb10b5f8a
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

ASoC: qcom: lpass-va-macro: Add shikra compatible

This commit adds shikra specific VA macro data and register programming
needed by the LPASS codec v4.0 implementation. It includes a shikra regmap
table, new match data flags, and enables ADPT control programming.

> diff --git a/sound/soc/codecs/lpass-va-macro.c b/sound/soc/codecs/lpass-v=
a-macro.c
> index 528d5b167ecff..4a8daa07ec1c6 100644
> --- a/sound/soc/codecs/lpass-va-macro.c
> +++ b/sound/soc/codecs/lpass-va-macro.c
> @@ -155,7 +155,57 @@

[ ... ]

>  #define VA_MAX_OFFSET				(0x07A8)
> +#define VA_SHIKRA_MAX_OFFSET			(0x0980)

[Severity: High]
Does this offset limit need to be higher?

The max_register limit for the Shikra regmap is set to 0x0980 here, but
the va_shikra_defaults array contains registers up to 0x09A4
(CDC_VA_CDC_ADPT3_CUTOFF_FSM_CTRL_5).

During probe, devm_regmap_init_mmio() validates that all default registers
fall within the [0, max_register] range. Because 0x09A4 is greater than
0x0980, it seems regmap_init() will reject the defaults with -EINVAL,
causing the probe to fail.

> =20
>  #define VA_MACRO_NUM_DECIMATORS 4
>  #define VA_MACRO_RATES (SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\

[ ... ]

> @@ -424,6 +464,10 @@ static bool va_is_rw_register(struct device *dev, un=
signed int reg)
>  	case CDC_VA_TX3_TX_PATH_SEC4:
>  	case CDC_VA_TX3_TX_PATH_SEC5:
>  	case CDC_VA_TX3_TX_PATH_SEC6:
> +	case CDC_VA_CDC_ADPT0_ADPT_CTRL:
> +	case CDC_VA_CDC_ADPT1_ADPT_CTRL:
> +	case CDC_VA_CDC_ADPT2_ADPT_CTRL:
> +	case CDC_VA_CDC_ADPT3_ADPT_CTRL:
>  		return true;
>  	}

[Severity: High]
Should the other newly added Shikra ADPT filter configuration registers be
included in this whitelist?

The patch adds numerous adaptive filter configuration registers like
ADPT_GAIN_0, ADPT_GAIN_1, DH_FSM_CTRL, and CUTOFF_FSM_CTRL_*. However, only
the 4 base CDC_VA_CDC_ADPTx_ADPT_CTRL registers are whitelisted here.

Since this function is provided as the regmap's .writeable_reg callback, the
regmap core will likely consider the remaining 36 ADPT registers to be
inaccessible, preventing the hardware adaptive filters from receiving their
intended configuration.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608172023.2965=
292-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D3

