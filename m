Return-Path: <devicetree+bounces-294681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iD8ONA1L/mllowAAu9opvQ
	(envelope-from <devicetree+bounces-294681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:43:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D434FB953
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:43:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C31C3037E52
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3F83ECBCE;
	Fri,  8 May 2026 20:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2gCCTsm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4773101A7
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 20:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778272958; cv=none; b=mtMqq7cVanz51oVDEF0f6IN1ZNq1CcsRSGDiDL01Y4KZNGxof9FHNKFkDCiKXLK1FqLel339JP+aUZCKaxNKmPYlKXaJUJc1FO558GpI37w6XjHH5LZ9wUnvm64pa/RkD7sdyPyZNAG7k3Qp6xgQ2Zp2iFKTXSJe93EQYCFGVSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778272958; c=relaxed/simple;
	bh=9Wt//LPMg7PGpk27xz9oWC+u1W58+gc60m5+aaUD910=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ITGtWN548gCO2sJNgrK+i2H1r6pnsjL5U423qnZgnI1Z5iONVdvMQUq19ysx0iXlKULeC8RRdmrvh7pMUSjtcE4XnUPYE0twH5UQSm+TT+EFQSZVd/LZ2NVQS/KIQCAxyqauFESkvaTK1e+Ry8pFjk1EUSTwQllq0D9nlSjZXFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2gCCTsm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADF26C2BCB0;
	Fri,  8 May 2026 20:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778272958;
	bh=9Wt//LPMg7PGpk27xz9oWC+u1W58+gc60m5+aaUD910=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=U2gCCTsm18x2ipFQZCZKZCfMl6XuCPDG8P5TcJ4xsT0lK4ZC02RUNbkDOypoeCkC5
	 +5lsAWS1vfdGDhnHh0+BnZdyt6mMqvU8fMWueG+H9jInZosFCgdcISTJ/0phJjFYf0
	 D0sSQQiAoh0sx0uvKGgbUdupvFpxSltPYQ4OZrCNEOrtjB8IZVd8tPfXcl9wteFoaJ
	 QR1aNiOByCCENbayJZtVaCw9JwvYxvlwXOemKqSMAHLa8Ows//lmKtiD6SD3Epwd+L
	 EN/ys1LJelsbIPUMRcgLtBgAnZKc1otIOG/i2Jh/zDNqnpBfBha1mp7AcF8f8jYbGp
	 sfFnHVz5IxT2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: agilex5: add support for debug daughter
 card
Reply-To: sashiko@lists.linux.dev
To: "Adrian Ng Ho Yin" <adrian.ho.yin.ng@altera.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <a42751b4c7eb9b4d58f2ef1db3591ff68385a562.1778237639.git.adrian.ho.yin.ng@altera.com>
References: <a42751b4c7eb9b4d58f2ef1db3591ff68385a562.1778237639.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:42:37 +0000
Message-Id: <20260508204237.ADF26C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 33D434FB953
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,0.0.0.0:email,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.498];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: add header
X-Spam: Yes

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Abuse of the 'rohm,dh2228fv' compatible string to force the 'spidev=
' driver to bind.
- [Low] Including a '.dts' file directly instead of using a '.dtsi' include=
 file.
--

commit 3916af69e58bdb9bf4d736172238dd0b03e9465b
Author: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>

arm64: dts: agilex5: add support for debug daughter card

This commit adds a new device tree for the Agilex 5 SoCDK when fitted with
the debug daughter card. It disables several peripherals such as gpio0 and
gmac2 while enabling gmac0 and spi0 for debugging purposes.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_debug.dts b/=
arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_debug.dts
> new file mode 100644
> index 0000000000000..3981a9e876b0a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_debug.dts
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier:     GPL-2.0
> +/*
> + * Copyright (C) 2026, Altera Corporation
> + */
> +#include "socfpga_agilex5_socdk.dts"

This isn't a bug, but does this include a final board .dts file instead of a
shared .dtsi include?

Standard Device Tree conventions typically involve refactoring shared
configurations into a common .dtsi file, as .dts files are meant to be the
final top-level compilation unit for a board.

[ ... ]

> +&spi0 {
> +	status =3D "okay";
> +	spidev@0 {
> +		compatible =3D "rohm,dh2228fv";

Is there actually a Rohm DH2228FV hardware device present on this debug
daughter card?

The commit message indicates this exposes the SPI interface for debugging.
Does this code use the 'rohm,dh2228fv' compatible string solely to force the
Linux spidev driver to bind?

The Device Tree is meant for describing hardware, and using fake hardware
compatible strings to instantiate userspace interfaces bypasses the kernel
warnings against using a bare 'spidev' compatible string.

> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778237639.gi=
t.adrian.ho.yin.ng@altera.com?part=3D2

