Return-Path: <devicetree+bounces-302943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGkhMAxoFWqyUwcAu9opvQ
	(envelope-from <devicetree+bounces-302943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:29:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0358C5D3566
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 564FB300275C
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13A43911B8;
	Tue, 26 May 2026 09:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NePOCBvD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF11359A89
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 09:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787460; cv=none; b=iGo+85kN9w/yX/mtN0zJTARWgxyzRyGU2PL5ITtYipKYfNeVqF1vnCluHuJbSAcG//cYvfVvQvsddrC+uH/lXjpzQVv871HAA2bPftKFHk3+I2RQQuQ+5XjKVIW9giUkwcM6Mu7nCUNSfaYS1Pn5DliiLOPfpa4A6xmAlWKODug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787460; c=relaxed/simple;
	bh=u9JDp64ZBU3eF18Yxq8s0l7z6aRefWMoRFuu2reX2go=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rPhaGsCDHfKrs7iNrzICvNk5eZZ1KOfdH2rrxXbJYPIlhBiEnWP3ppGSjLsbPfCqWCUzFVf4/v1CIzhl03vYjndULPSODYooKVpwZGfFE5KlvxOZzxI0pBHq9G2ic28PT23QNQMwt70iMkVpiNdltW2uGgcLJcFk/0v/XfjWQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NePOCBvD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 220931F000E9;
	Tue, 26 May 2026 09:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779787459;
	bh=4Tu4Be7WdjRr+KdhWLALF5Rvb+DVKhcVuTqdv8tkDxQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NePOCBvD8xRietHAADy7qVg0Z4XSl8jyXxQeLZ4ZCllX9m9lhvw2q3O63YKu5fjeQ
	 Oklzx53DYrYC+c3DjVyU+4pf0fwtXDOCKkfdnrDn6g8UatDPEx/fZ7e4yTztUet2oS
	 62t+PPOh5YodagKM3SInHQyEJgLsPCTwRqASZuatkDZBkGnqJqQeF23tkMwQV8IgHZ
	 WU44y+xqx3/KvgAM9BxXNxxDcvV/GSEmMo8DdFOz+SgdReVIQ0sU5QQblbCgtokRU9
	 PeIZX24B2uV5h8M5ljXxy4oD+LApZt/bFt6fdTuz8g1i9NmV3+jPrvyx0ixLxlbLBf
	 7cPva+t3E7oVA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: socfpga: agilex5: replace clocks
 reference with clock-frequency for dw-apb-timer
Reply-To: sashiko-reviews@lists.linux.dev
To: "Adrian Ng Ho Yin" <adrian.ho.yin.ng@altera.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <43d6d68a74340a5b513972e8b25c1369b31b130a.1779785788.git.adrian.ho.yin.ng@altera.com>
References: <43d6d68a74340a5b513972e8b25c1369b31b130a.1779785788.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 09:24:18 +0000
Message-Id: <20260526092419.220931F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-302943-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,sashiko.dev:url,10c03000:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 0358C5D3566
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Replacing 'clocks' with a static 'clock-frequency' property to w=
ork around a Linux driver probe ordering issue violates the principle that =
Device Tree describes hardware topology, not OS software state.
--

commit a7903d7afbf4e7139441f7d02ec41f33a88a0de2
Author: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>

arm64: dts: socfpga: agilex5: replace clocks reference with clock-frequency=
 for dw-apb-timer

This commit replaces the clocks and clock-names properties with a hardcoded
clock-frequency property for the dw-apb-timer nodes in the Agilex5 device
tree. This is done to bypass a Linux probe ordering issue where the timer
initialization runs before the clock manager driver.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/=
boot/dts/intel/socfpga_agilex5.dtsi
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -430,32 +430,28 @@ timer0: timer0@10c03000 {
>  			compatible =3D "snps,dw-apb-timer";
>  			reg =3D <0x10c03000 0x100>;
>  			interrupts =3D <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks =3D <&clkmgr AGILEX5_L4_SP_CLK>;
> -			clock-names =3D "timer";
> +			clock-frequency =3D <100000000>;
>  		};

[Severity: Medium]
Is this modifying the device tree to work around an OS software state issue
rather than describing the hardware topology? Replacing the physical clocks
reference with a static clock-frequency bypasses the actual hardware link.

Could the clock provider be registered early using CLK_OF_DECLARE instead
of removing the clocks property?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1779785788.gi=
t.adrian.ho.yin.ng@altera.com?part=3D1

