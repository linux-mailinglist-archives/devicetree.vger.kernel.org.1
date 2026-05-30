Return-Path: <devicetree+bounces-304675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA49A57xGmre9wgAu9opvQ
	(envelope-from <devicetree+bounces-304675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:18:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6359A60D662
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:18:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AA673016904
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 14:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C849B2F8E98;
	Sat, 30 May 2026 14:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bz2HlhER"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69C32F83A0
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 14:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780150470; cv=none; b=qTADi24cBGj2fZiLky7D8Jq434BajebBy3a5wWX8asrnGJgzy870YcwUXh1i6fMzdiC6PeAsadHSIFu6mUIy40oMJq5iLy2luAQb4aiv88gG0rdby34DD5BsqkOtMLwDc3yNljvALHyqX45nmx8XrYeTTA9qJAc5uGabSW2R0As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780150470; c=relaxed/simple;
	bh=XkYW8wk7NpsERbAdUbN+dJ4476D7RNJJuMjQhy9Jf10=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=E7KcznLuN0e/IAl1FpNvN90EsDl3HAhUcd/GVNUYacF1GZoevQtGn6Q0Ldio7xa+91eknbphmZ/W0FcPVId6NAWzyenMupNWPt1WOrCmAICMlAHD38pyqHdhn+3DmYn3OsB9UqzujZUaiqK8BV1Q05wjJUQ/HTIzGRCAxa2J9bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bz2HlhER; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F39A51F00893;
	Sat, 30 May 2026 14:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780150469;
	bh=/eiCSVLrThmNX9kypnk/+5rgFRVOqfYfUsr+Mx5apCY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Bz2HlhER8ekbEJycxfnVZlN0HIsqjYoThS7fZC2z6aBoDD41aQk67bqUCeRqLO5sX
	 tqXbOne+heOFYNjdvPGJcx4XI5rX/pD60Q/mLoOiaSz2MDZEHznrD07bNBh6X0Rrr3
	 PKPVxFR5WS6HE6dHLBI8YGqDdxeiVGkiCumd0VjjE1s/lWT3wSqjn6kg0KtSGlZQ+5
	 6S3oF4Awg+fv6MrSi0DeWRHeuvGeiipWGYuSMXJ9F2lnBzniqFsiDk2p5xjSlUg97l
	 xaX2181VdTLRfJQLMinxvsTuEaAzeQJ8uRQhJ44XYL3j8f5y3jPxB1UoyBp9jm4l8W
	 HhoJuYHEpI8cA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: clock: qcom,gcc-msm8660: collision fixes +
 per-clock annotations
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260530135731.185313-1-github.com@herrie.org>
References: <20260530135731.185313-1-github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 14:14:28 +0000
Message-Id: <20260530141428.F39A51F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-304675-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,herrie.org:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 6359A60D662
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Critical ABI Breakage: The patch destroys Device Tree ABI back=
wards compatibility by shifting numeric IDs of over 150 existing clock bind=
ings. DT binding headers define the stable hardware-software ABI; changing =
these IDs invalidates existing compiled Device Tree Blobs (DTBs). The commi=
t claims to fix ID collisions, but the baseline values were already distinc=
t (e.g., `USB_HS1_H_CLK` and `USB_HS1_XCVR_SRC` were 110 and 111). By inser=
ting new clocks (like `CE2_P_CLK` at ID 78) and renumbering perceived "coll=
isions", the patch shifts all subsequent clocks. For example, `SDC1_H_CLK` =
shifted from 95 to 96, and `GSBI1_H_CLK` from 125 to 126.
--

commit 41cfc5d6ae5f24f8a2e508765d49af3a6921e1a7
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: clock: qcom,gcc-msm8660: collision fixes + per-clock annotatio=
ns

This commit adds trailing documentation comments to per-clock definitions a=
nd
attempts to fix perceived ID collisions. However, it alters the numeric
values of numerous existing clock definitions.

> diff --git a/include/dt-bindings/clock/qcom,gcc-msm8660.h b/include/dt-bi=
ndings/clock/qcom,gcc-msm8660.h
> index 4777c002711a1..354e9d8657b92 100644
> --- a/include/dt-bindings/clock/qcom,gcc-msm8660.h
> +++ b/include/dt-bindings/clock/qcom,gcc-msm8660.h

[ ... ]

> -#define CE1_H_CLK				76
> -#define CE2_H_CLK				77
> -#define SFPB_H_CLK_SRC				78
> -#define SFPB_H_CLK				79
> -#define SFAB_SFPB_M_H_CLK			80

[ ... ]

> +#define CE1_H_CLK                           76    /* header-only - CE1 (=
crypto engine 1) AHB */
> +#define CE2_H_CLK                           77    /* drv+dt - CE2 AHB */
> +#define CE2_P_CLK                           78    /* drv+dt legacy:HTC,S=
am,TP - CE2 APB */
> +#define SFPB_H_CLK_SRC                      79    /* header-only - SFPB =
AHB src */
> +/* header-only - SFPB (system peripheral bridge) AHB */
> +#define SFPB_H_CLK                          80

[Severity: Critical]
Does this cause a regression in DT ABI backwards compatibility by shifting
the numeric IDs of existing clock bindings?

It looks like inserting CE2_P_CLK at ID 78 shifts the values of subsequent
clocks. Device Tree bindings represent a stable ABI, and changing these IDs
means older compiled Device Tree Blobs (DTBs) running on this kernel will
request incorrect clocks.

[ ... ]

> -#define PMIC_SSBI2_CLK				94
> -#define SDC1_H_CLK				95
> -#define SDC2_H_CLK				96

[ ... ]

> +#define PMIC_SSBI2_CLK                      95    /* drv legacy:HTC,Sam,=
TP,Pre3 - PMIC SSBI2 */
> +#define SDC1_H_CLK                          96    /* drv+dt - eMMC1 AHB =
*/
> +#define SDC2_H_CLK                          97    /* drv+dt - eMMC2 AHB =
*/

[Severity: Critical]
Will this shift result in boot failures for older DTBs?

Because SDC1_H_CLK shifted from 95 to 96, a DTB requesting ID 95 will now
receive PMIC_SSBI2_CLK instead of SDC1_H_CLK.

When drivers attempt to access hardware registers without the correct clocks
enabled, it can trigger synchronous external aborts and system hangs.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530135731.1853=
13-1-github.com@herrie.org?part=3D1

