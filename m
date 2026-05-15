Return-Path: <devicetree+bounces-298473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOZ1OcNaB2orzwIAu9opvQ
	(envelope-from <devicetree+bounces-298473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:41:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 586315556CF
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB0A930C9BBF
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB5430569E;
	Fri, 15 May 2026 16:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDwhw3sC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C83630569C
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778863060; cv=none; b=E2iguQB697KNX2MZPoP9VDI1yGBYZ6baSx7kP2K4CjeUdJSB8GKMzTxQe/qUzWZauePjyGrQPGvRMACSI9fj+om1OeEGPYCSk5UVcr1xk5Ny8M0LzOrdf3w+B6pYT1bTb8wy5DLevYUQNwzlba6MlTk6FmGxHpZ1vLpRWU8QOmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778863060; c=relaxed/simple;
	bh=RyWbNKtfkklrErXLZ2lmc7OeeVHzC7+ZTsVOdjNs+4o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Cd2FkN5ICSvxbRuc+1wqHv3CIjYxsfVi69tyt1AHxV9NNjtLsRtBaCL7EeMv+JUQh3sf5ICaQfH4ZysPhTfa6shrF2pijRef/177VAT3iTaa0GRpN/LpO6G4YTXb0d/zQ6w/WGoeoiYf6H9xOAfM8pFYsmUyIKkN8I5+90qjrKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDwhw3sC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DDE2C2BCB0;
	Fri, 15 May 2026 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778863060;
	bh=RyWbNKtfkklrErXLZ2lmc7OeeVHzC7+ZTsVOdjNs+4o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=aDwhw3sCG5a7GL6kFXf9rMC6J0qwWvCp2ISA0aXv28pSPiiJXgGgO0Z1MCY2XNbCR
	 LNacqevGXfGVUcZho8v3sxXn+szk2EBk5Buo13wclmRp3FvGSLdlDyU8KVc9ENnUsZ
	 satcizlX8PcbHhj/iONxNNLt/2m34X5odtOGZgbMTN4YlCGmth1UjsH0PBwYkq5JHH
	 HNQ1ObMu7mAH30SU5hP7d1VeQzz/fZo39lOROxcfsCgJnVbU8RINeXsI+b1HzdPZIl
	 YunQcpt66iuUZK4FskivW1wKUKIcl3qam7/mM9I88Ot7WHpWeZ4ojV35wHXlnb1Tnn
	 kMZzg0ci+AEnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] ASoC: simple-card-utils: support system-clock-id
 DT property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sen Wang" <sen@ti.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260515161358.1462453-3-sen@ti.com>
References: <20260515161358.1462453-3-sen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:37:38 +0000
Message-Id: <20260515163739.5DDE2C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 586315556CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298473-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The commit introduces asymmetric sysclk configuration by failing t=
o update `clk_id` in the shutdown path, leading to incorrect hardware state=
s and resource leaks.
--

commit fb04cb3ea63c6e1c03c9835d2530dab5d343394b
Author: Sen Wang <sen@ti.com>

ASoC: simple-card-utils: support system-clock-id DT property

This commit adds an optional system-clock-id DT property to the cpu/codec
sub-nodes. It updates simple_util_parse_clk(), simple_util_hw_params(),
and simple_init_dai() to read and use this clock ID instead of hardcoding 0.

> diff --git a/sound/soc/generic/simple-card-utils.c b/sound/soc/generic/si=
mple-card-utils.c
> index e5cb602fd2487..441f68df85220 100644
> --- a/sound/soc/generic/simple-card-utils.c
> +++ b/sound/soc/generic/simple-card-utils.c

[ ... ]

> @@ -506,14 +509,16 @@ int simple_util_hw_params(struct snd_pcm_substream =
*substream,
>  			/* CPU first */
>  			for_each_rtd_cpu_dais(rtd, i, sdai) {
>  				pdai =3D simple_props_to_dai_cpu(props, i);
> -				ret =3D snd_soc_dai_set_sysclk(sdai, 0, mclk, pdai->clk_direction);
> +				ret =3D snd_soc_dai_set_sysclk(sdai, pdai->clk_id,
> +						mclk, pdai->clk_direction);

Does the teardown path in simple_util_shutdown() also need to be updated to
use clk_id?

It currently hardcodes 0 when disabling the clock:

sound/soc/generic/simple-card-utils.c:simple_util_shutdown() {
	...
	for_each_prop_dai_cpu(props, i, dai) {
		struct snd_soc_dai *cpu_dai =3D snd_soc_rtd_to_cpu(rtd, i);

		if (props->mclk_fs && !dai->clk_fixed && !snd_soc_dai_active(cpu_dai))
			snd_soc_dai_set_sysclk(cpu_dai, 0, 0, dai->clk_direction);
	...
}

If a device is configured with a non-zero system-clock-id, will the shutdown
path disable the wrong clock, leaving the intended clock running?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515161358.1462=
453-1-sen@ti.com?part=3D2

