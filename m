Return-Path: <devicetree+bounces-305329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLxjGubWHWpsfQkAu9opvQ
	(envelope-from <devicetree+bounces-305329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 21:00:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C059F6245E4
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 21:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2973302C91F
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 18:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781F2351C2E;
	Mon,  1 Jun 2026 18:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npmdmCPN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64941356746
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 18:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780339814; cv=none; b=ou98++Nkzc9ez7zpGQXDYqlyHB45YbIdaPmxEcLxVcVtgZdbMFszqir1dlmN5gubOOeGROn7rccQpgusvmqdOjM7nkEBaA+xKfIvueXbpdyXlbc9zIWM4QJQIbnkFJkdEABAHG/OEgvXZ7v8z0NaxBMH7BAux8FEfsnXEe4e7bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780339814; c=relaxed/simple;
	bh=Tah74TqcGouj9/SR/JIXSsiyZ1iptAM89ZkuKtm50sU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z2iESDL0IzIcd792lKo2M5UbkOFFRafFeh5hf2s9KrIp0BzI/nOpldn9/alQCqGsOLg7+hCmoKUqcYwdXPtRhx/jYNJ0uKRrCeu9vL6sdNM9dvH40bArHbAn8O4OlTZVhq+UWwg77p93ySf3Q0ZMrxgyTVDP6aer5mHTZK/Bnaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npmdmCPN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3BE31F00893;
	Mon,  1 Jun 2026 18:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780339813;
	bh=yH7BHz9GOEpGVzvt+BViKnaMfPL0eX3cwjD1L+acCCs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=npmdmCPNkd6bMHkR4YFlaZjfRuKDJz2u5lsXFckB3QKgZuyzm4LjO7qmNd8th/tlO
	 RZK/UoyASJ3C0WDJpjwwu38qJZhVWJkyFe1INMuFgtphOBpLV3NTTo6L6bn3Xa2A7J
	 MLSCHkW7SbNVuNhpqMSsLrjWf74erkrHLEJ8GdbL00n0rXbQt1SZEwC0A11hfbtvJi
	 TqySaclvel54QLSX4/zLA1vRoJKzMM8TJ2m/W9nNWfmbLOCB3fEnlsFIVzlHD7KvhG
	 YcBA4HRdSsKSvaq8s8sbiGQlBmgzLk5n1bY5RZ0mCL7q2VG5016nFKgxtzGDeJVMuZ
	 YAoJDsYJ8MfuQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/12] clk: qcom: gcc-qcm2290: Keep the critical
 clocks always-on from probe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Imran Shaik" <imran.shaik@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-shikra-dispcc-gpucc-v3-1-61c1ba3735e8@oss.qualcomm.com>
References: <20260601-shikra-dispcc-gpucc-v3-1-61c1ba3735e8@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 18:50:12 +0000
Message-Id: <20260601185012.E3BE31F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305329-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: C059F6245E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Removing UAPI clock identifiers from the clock provider array shri=
nks the array size and removes mapped entries, breaking backward compatibil=
ity with existing device trees.
--

commit 70f7cf6dd1977dd3ca34d8d9a83d70fb0593afab
Author: Imran Shaik <imran.shaik@oss.qualcomm.com>

clk: qcom: gcc-qcm2290: Keep the critical clocks always-on from probe

Some GCC branch clocks are required to be kept always-on due to the
hardware requirements. Drop the modelling of those always-on QCM2290 GCC
clocks and use the latest .clk_cbcr convention to keep them enabled from
probe.

> diff --git a/drivers/clk/qcom/gcc-qcm2290.c b/drivers/clk/qcom/gcc-qcm229=
0.c
> index 6684cab63ae11..8d18bbbca0aaf 100644
> --- a/drivers/clk/qcom/gcc-qcm2290.c
> +++ b/drivers/clk/qcom/gcc-qcm2290.c

[ ... ]

> @@ -2887,13 +2747,11 @@ static struct clk_regmap *gcc_qcm2290_clocks[] =
=3D {
>  	[GCC_VCODEC0_AXI_CLK] =3D &gcc_vcodec0_axi_clk.clkr,
>  	[GCC_VENUS_AHB_CLK] =3D &gcc_venus_ahb_clk.clkr,
>  	[GCC_VENUS_CTL_AXI_CLK] =3D &gcc_venus_ctl_axi_clk.clkr,
> -	[GCC_VIDEO_AHB_CLK] =3D &gcc_video_ahb_clk.clkr,
>  	[GCC_VIDEO_AXI0_CLK] =3D &gcc_video_axi0_clk.clkr,
>  	[GCC_VIDEO_THROTTLE_CORE_CLK] =3D &gcc_video_throttle_core_clk.clkr,
>  	[GCC_VIDEO_VCODEC0_SYS_CLK] =3D &gcc_video_vcodec0_sys_clk.clkr,
>  	[GCC_VIDEO_VENUS_CLK_SRC] =3D &gcc_video_venus_clk_src.clkr,
>  	[GCC_VIDEO_VENUS_CTL_CLK] =3D &gcc_video_venus_ctl_clk.clkr,
> -	[GCC_VIDEO_XO_CLK] =3D &gcc_video_xo_clk.clkr,
>  	[GPLL0] =3D &gpll0.clkr,
>  	[GPLL0_OUT_AUX2] =3D &gpll0_out_aux2.clkr,
>  	[GPLL1] =3D &gpll1.clkr,

[Severity: High]
Does removing these clocks from the array break backward compatibility with
existing device trees?

By removing GCC_VIDEO_XO_CLK (which is the highest index defined in the DT
bindings) and other clocks from gcc_qcm2290_clocks, the array size
implicitly shrinks.

When consumer drivers attempt to acquire these clocks via clk_get(), the
bounds check in qcom_cc_clk_hw_get() will now fail or return NULL, returning
-EINVAL instead of a valid clock.

Will existing device trees referencing these clocks cause their consumer
drivers to fail to probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-shikra-dis=
pcc-gpucc-v3-0-61c1ba3735e8@oss.qualcomm.com?part=3D1

