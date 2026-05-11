Return-Path: <devicetree+bounces-295862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEOJMLxcAmosrgEAu9opvQ
	(envelope-from <devicetree+bounces-295862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:48:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E40517131
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E96F302A7D5
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E2A023EAA0;
	Mon, 11 May 2026 22:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jan54OtB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B26A1A680C;
	Mon, 11 May 2026 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778539704; cv=none; b=gQbRh8WHexLahTYLvtUe8bTjG6X6khhPx2qIHdN5SPCgMsONkrW4HpINt+gZVDs+CspY84qTu82DouCEBwHuttVocrYOuUREgc42MpuQp55jWsxogPs5XZqThhN6URS7S+c+LBo5J8ixu1Yt/HcDVBKLUylSi+DG6441JfztMv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778539704; c=relaxed/simple;
	bh=FsMwVeHJAW0zTZimcaugnSmJrV+YMPlPf7OhX82cAh0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=elt2A6KJXCh+AkTQmoAOxybQYI1t/3/g2aAvK8143rawi+3wYE/Wpj2kczlo7HAJaA7J3fXykRd/OtZBmMg/OJ4GMDeeUZrLx0GIdcjU/i5/6j5caX4P/hTabqNyCcCmLeCNA2/LuSjvo3ZZ1n1/hbThyQFPrgI9RDtpzy4mnSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jan54OtB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7658FC2BCB0;
	Mon, 11 May 2026 22:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778539703;
	bh=FsMwVeHJAW0zTZimcaugnSmJrV+YMPlPf7OhX82cAh0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jan54OtBPo/gBDI/4FUxA1M+iltFJ8eI+IIRt5fyjiLpCwFOSnrEWHz3CqYlme9hw
	 H6OgNOKGo6V5JfcBhbgWCxiVgcIEBx2daHoFyiKfAWCoYsRt4y8L2i6ZfxSw4eKm88
	 Wmmm5SrNsJ5pn2wJ3GF+AX3YvUwhYhnJ0M+jE6PK0xcWqn22/VxxEXa2gaCGz+YZ/P
	 JT+qJmN9h1g7MxX/TArhZixh+MNFgjPtHUdRvuRMnZLvZ9kPn2EsrI27qOYSzaHY2A
	 xJjKp9u9t49fBlvu7SGsXljIIdVOpls6G/txNMzk4D4tVmIaOjJmi+3J/nbkIEpY7g
	 WMSSOzuwzUSBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] arm64: dts: imx95: Increase PCIe outbound address
 space to 4GB
Reply-To: sashiko@lists.linux.dev
To: "Richard Zhu" <hongxing.zhu@nxp.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260511030751.3717935-1-hongxing.zhu@nxp.com>
References: <20260511030751.3717935-1-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 22:48:22 +0000
Message-Id: <20260511224823.7658FC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 34E40517131
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
	TAGGED_FROM(0.00)[bounces-295862-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,4c380000:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The updated 4GB PCIe outbound memory regions overflow the 32-bit P=
CI address space limit and unintentionally alter the CPU-to-PCI translation=
 offset.
--

commit 4cfadeebb855cc5a85fa1d6b78564d2c9f105cec
Author: Richard Zhu <hongxing.zhu@nxp.com>

arm64: dts: imx95: Increase PCIe outbound address space to 4GB

This commit increases the PCIe outbound memory region size to 4GB, which
is the hardware-supported memory space, fixing an issue where it was
incorrectly set to 256MB during bring-up.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index adcc0e1d3696b..7af25e880aa34 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1940,7 +1940,7 @@ pcie0: pcie@4c300000 {
>  			      <0 0x4c340000 0 0x4000>;
>  			reg-names =3D "dbi", "config", "atu", "app";
>  			ranges =3D <0x81000000 0x0 0x00000000 0x0 0x6ff00000 0 0x00100000>,
> -				 <0x82000000 0x0 0x10000000 0x9 0x10000000 0 0x10000000>;
> +				 <0x82000000 0x0 0x10000000 0x9 0x00000000 1 0x00000000>;

Does this overflow the 32-bit PCI address limit?

The updated size is 4GB (1 0x00000000) and the PCI base address is left at
0x10000000. This creates a PCI address range from 0x10000000 to 0x10FFFFFFF
which requires 33 bits.

The ranges entry continues to use the 0x82000000 flag, which designates a
strict 32-bit non-prefetchable memory space, causing the PCI core to
truncate the window.

Additionally, does this unintentionally alter the CPU-to-PCI translation
offset?

Originally, CPU 0x9_10000000 mapped to PCI 0x10000000 (a translation offset
of 0x9_00000000). Now, CPU 0x9_00000000 maps to PCI 0x10000000 (a translati=
on
offset of 0x8_F0000000).

Could the PCI base address be changed to 0x0 0x00000000 to restore the
original mapping offset and stay within 32 bits, or should the flag be
updated to 0x83000000 to declare a 64-bit PCI space?

[ ... ]

> @@ -2015,7 +2015,7 @@ pcie1: pcie@4c380000 {
>  			      <0 0x4c3c0000 0 0x4000>;
>  			reg-names =3D "dbi", "config", "atu", "app";
>  			ranges =3D <0x81000000 0 0x00000000 0x8 0x8ff00000 0 0x00100000>,
> -				 <0x82000000 0 0x10000000 0xa 0x10000000 0 0x10000000>;
> +				 <0x82000000 0 0x10000000 0xa 0x00000000 1 0x00000000>;

Is the same 32-bit overflow and translation offset change occurring for pci=
e1
here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511030751.3717=
935-1-hongxing.zhu@nxp.com?part=3D1

