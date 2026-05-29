Return-Path: <devicetree+bounces-304144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEknJh1WGWrTvQgAu9opvQ
	(envelope-from <devicetree+bounces-304144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:02:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ED10B5FFA9F
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:02:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D6AC30422EA
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 09:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771203BCD05;
	Fri, 29 May 2026 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYmraARg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCCD3BB114
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780045306; cv=none; b=R1oGueLzqLV4fRHO5kxeFacFkpCqU0Wyho5x1Xg6vSkek6kxOh0g6lEVpgYc+Q+qW/cuX3rOw/dlcl0Q0z80eWjTeVppSmWnii16V/TesuKj8WdRkISj000SCbQ7d/wE2ww/3H+ql/CGwcs9OLZ1koA6TEMFt1fMFNnOKOfHoSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780045306; c=relaxed/simple;
	bh=RiwrfMfK+9HwM3snI59RTZqkgGajThFQsD73EMIB4as=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sVNmTfUxxae6j3jVvtTtzLEfVGWCSseSA08g604DsK6kX90EbQN2XdmD8PUv91tpX4cPLly+phHXrcF2+fuSVRXeN8tEkQ7IGKvVUxjpBodlvgX74mV27cQ6cZo0irkxH9kzfi5n6GJM7F1t6QrkvqF63Hp3ieb/yGs5Gbr3b2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYmraARg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334F81F00893;
	Fri, 29 May 2026 09:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780045302;
	bh=f+RXrnz7H9BHCDJU0Zq3nzEXhVXwcApnBnPAfI54uQ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cYmraARgsszF2F4BJtjzqR4j/+hq1oGJ+Kl97sXun/8lzxtyrbX/jTkhpidy1T3xa
	 X5/hkR+XYFLK8KbHEmdOYd0WLn6Pr7thIfdkJyol5SwsNeF7ghA4ggj2yFmEJu8sFO
	 K5OTnL3blr8s5VR7Hq0KU9mtVagUcKVVZw9DLZNWdT4h42bpJ9gQGVb0Af5mStZKs3
	 VIIhHuc6lA9ajahQv50da+3ljaiV6gN46qmfNcStDAUFePrO+d4l1gfz2IDV7IDA9o
	 gdf95KbPOxqthu6CN9BqvHUSIJB1kpIiYK7MNJtO6MmffkSGe0Ua5JiIlcGYXmDzXP
	 czMpapezGCvgw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 2/2] ARM: tegra: Add device-tree for Motorola Atrix
 4G and Droid X2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260529083752.44796-3-clamor95@gmail.com>
References: <20260529083752.44796-3-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 09:01:41 +0000
Message-Id: <20260529090142.334F81F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304144-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: ED10B5FFA9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Makefile entries are not sorted in alphabetical order.
--

commit 603a9b9432cb122e3832a30e5f3ca3092b240477
Author: Svyatoslav Ryhel <clamor95@gmail.com>

ARM: tegra: Add device-tree for Motorola Atrix 4G and Droid X2

This commit adds device-tree files for the Motorola Atrix 4G and Droid X2,=
=20
which are NVIDIA Tegra20-based smartphones.

> diff --git a/arch/arm/boot/dts/nvidia/Makefile b/arch/arm/boot/dts/nvidia=
/Makefile
> index faf591485ada7..3075f26131d4c 100644
> --- a/arch/arm/boot/dts/nvidia/Makefile
> +++ b/arch/arm/boot/dts/nvidia/Makefile
> @@ -21,6 +21,8 @@ dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) +=3D \
>  	tegra20-colibri-eval-v3.dtb \
>  	tegra20-colibri-iris.dtb \
>  	tegra20-medcom-wide.dtb \
> +	tegra20-motorola-olympus.dtb \
> +	tegra20-motorola-daytona.dtb \

[Severity: Low]
This isn't a bug, but should these Makefile entries be sorted alphabeticall=
y?
Placing tegra20-motorola-daytona.dtb before tegra20-motorola-olympus.dtb
would maintain the existing order of the list.

>  	tegra20-paz00.dtb \
>  	tegra20-plutux.dtb \
>  	tegra20-seaboard.dtb \

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529083752.4479=
6-1-clamor95@gmail.com?part=3D2

