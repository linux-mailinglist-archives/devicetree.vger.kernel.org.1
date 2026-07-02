Return-Path: <devicetree+bounces-319273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZBGwAFY+RmqoMgsAu9opvQ
	(envelope-from <devicetree+bounces-319273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:32:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E65A56F5F40
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:32:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F51u8RUG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319273-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319273-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC12D32FF238
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A3048B375;
	Thu,  2 Jul 2026 09:55:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD82306774;
	Thu,  2 Jul 2026 09:55:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986125; cv=none; b=T32LlNpl+MkyWGKgFdzUvs3rWh1ZG1b5xeUEwwPY1JX80GW3sYMY9EZglBHcccGxdRbuWDeS+OQjXGQnfYvEUm8MTy4dxhEvXRssb+HykrC5o3+ioV1cYW2nI3LCCSGOsONARw3g8uF95PPVY7bhvp5UgsfqcOnof0umRgr70b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986125; c=relaxed/simple;
	bh=nrsSXByDeB/cR8BunGHXfc5bl61AMiqMeJEiWiKt0Gc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R53XsufKG4ZR/sJYjlgGcjRQ9KO/LdIhlzO+hiovL9ke8F9OOlG6Hju/AtCRrHoShMAsh4joqGnZFb7bnQwTl2+LwkfeLdPasP6Pw2QI/XPX3WTmqNenOBaU35Gokcaxu4PO4mnFXQVgCs2eZ9D+1wKYwcu+hlBBKhIqJRkOxeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F51u8RUG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CADBC1F000E9;
	Thu,  2 Jul 2026 09:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782986124;
	bh=+j8pUhCV99LuUf8tIvIbLdu3rz20xnRwraVDd76JB+Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F51u8RUGuhQGE72aiWIMrMTNhZsCBHFdD4p3EBN6fi00E7Cl+uR35FQ/t4O/au/rq
	 8vcAjtD4eDwGb/eluE2gPCVi1iRaC5dfWG6jzLUkBlCsuzAz70W0ZlEXyjjQbolwNM
	 J+ULXdAO89MtNwJjosOrY83wNeG67Q/rKtIgSYddFwtFFrWkv8Uvl2CqIdr2w7Ych5
	 fEj1ZbnE9SRtlxbknVIdArwmSy0DYTan2Ibu/FJkaAbmcaVK/EAf0yNxcJEMMo+HaC
	 zHDc9pRrrPlmqO5x+x1J1yreX8a+aFBo14GTYY2bxHVto7ZeciOoxzVthhQ36VaYNV
	 jOdHSJI+yL77Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 15/18] arm64: dts: ti: k3-j721s2: Add overlay for
 DS90UB954-Q1EVM
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260702093123.1048575-16-y-abhilashchandra@ti.com>
References: <20260702093123.1048575-1-y-abhilashchandra@ti.com>
 <20260702093123.1048575-16-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:55:23 +0000
Message-Id: <20260702095523.CADBC1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319273-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E65A56F5F40

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing build target for the J784S4 EVM using the UB954 overlay.
--

commit ad82842381a6b0a7a7dca389cbef513840daf997
Author: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>

arm64: dts: ti: k3-j721s2: Add overlay for DS90UB954-Q1EVM

This commit adds a device tree overlay for the DS90UB954-Q1EVM deserializer
board. It enables connecting FPDLink-III based sensors to TI EVMs by
aggregating data from up to two cameras. The overlay is integrated to suppo=
rt
the J721S2-EVM.

Link: https://www.ti.com/tool/DS90UB954-Q1EVM

> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Mak=
efile
> index aba187384009f..697d13b13b19e 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
[ ... ]
> @@ -346,6 +347,8 @@ k3-j721s2-evm-fpdlink-fusion-dtbs :=3D k3-j721s2-evm.=
dtb \
>  	k3-j721s2-evm-fusion.dtbo
>  k3-j721s2-evm-pcie1-ep-dtbs :=3D k3-j721s2-common-proc-board.dtb \
>  	k3-j721s2-evm-pcie1-ep.dtbo
> +k3-j721s2-evm-ub954-dtbs :=3D k3-j721s2-evm.dtb \
> +	k3-j721s2-evm-ub954.dtbo
>  k3-j721s2-evm-usb0-type-a-dtbs :=3D k3-j721s2-common-proc-board.dtb \
>  	k3-j721s2-evm-usb0-type-a.dtbo

[Severity: Low]
Does this Makefile omit a combined build target for the J784S4 EVM?

Looking at the newly added overlay file, the comment explicitly mentions
support for the J784S4 EVM as well:

arch/arm64/boot/dts/ti/k3-j721s2-evm-ub954.dtso:
    /*
     * DT Overlay for DS90UB954-Q1EVM FPDLink-III deserializer board on J72=
1S2 and J784S4 EVM
     * https://www.ti.com/tool/DS90UB954-Q1EVM

Without a corresponding k3-j784s4-evm-ub954-dtbs target here in the Makefil=
e,
the overlay is not validated against the J784S4 base DTB during the build.
Should a build target for the J784S4 be added to match the intent stated in
the overlay header?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093123.1048=
575-1-y-abhilashchandra@ti.com?part=3D15

