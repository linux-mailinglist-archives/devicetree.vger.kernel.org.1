Return-Path: <devicetree+bounces-327002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LdIDEGiGV2oGWQAAu9opvQ
	(envelope-from <devicetree+bounces-327002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:08:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FB175E7B0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:08:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e5U4AWaC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327002-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-327002-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C3FC30AC2C7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD07E420490;
	Wed, 15 Jul 2026 12:52:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA6242048C
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:52:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119941; cv=none; b=f72TuLig+hz8juDcpcIi94yT3eFEx61JfKnrHx4OqKz6oQP/gWrAFMxk1MBw2FeKcu3QS826daACsqge4AOvLINQD+HQcCR/Au0Dja77ME5GQ7ivXIEeQBCwbEsQAz7kWtushuawkekhzhcsZGs4HjeyMxMdNbVm+avLXXcfIQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119941; c=relaxed/simple;
	bh=rNIsxKd0GKP6SJ2ugHLKW7Wtn6LL+5Hm/UsZ9ohPYRg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fpC2phGMLOz+GIWXFWWUuDr3+/MQbBGhl9ji+y89O6kIgXt6K+i/p/HvCnqiqhHf9JE4jxbPhfqkjELVDVACOkjFa4r89TUXn6zXH/zYvMAoXJdALEbjt/UYXmh9Me6XWRf99fTukSpNmD7UW+Y4momXZoTdqSGV9t+Nb/S6aFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5U4AWaC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E96D1F000E9;
	Wed, 15 Jul 2026 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119940;
	bh=1eywHst6CxVhIRGxK0t+B0z4bxgOvQhn8bXlHlZB3Ek=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e5U4AWaCQFaq0B/FdvcEbbxoFZjHWBaOKAPMROQMYzXtGu+wT+XDHLSJgqeKzxdIk
	 tLuXCcEcHZT30LXIuIenDyNoABYK8r/1Z8m6xvdHb126Yub6YXdUd8SHqdwcGFbV7Y
	 FjnCd2Fi8Qt4YbuJW1Z1qdhFnQUPTbewOhp/noOeIGvSRkcBQT3Stpo3H4mEUuu24y
	 zpQQqatEKJu7Cnaz+9yGM6B4Hp+IwbM0T8Jr83Q9mzvsLpES9nkrvj+o4nmylaTF3t
	 UragCQ5k0/AXkaMCaC5xn2amU7BSPZZ/7IEBY6KYcO9clSDcGJU3hlfc1N9VfasXn2
	 dER0uZlI8JhdQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] ARM: dts: aspeed-g6: add pcie-lpc and pcie-kcs4
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3LDqWdvaXJlIExheWV0?= <gregoire.layet@9elements.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <de49f2032f5b1f170161dcd6191c0daa48f0b0c2.1784117715.git.gregoire.layet@9elements.com>
References: <de49f2032f5b1f170161dcd6191c0daa48f0b0c2.1784117715.git.gregoire.layet@9elements.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:52:19 +0000
Message-Id: <20260715125220.0E96D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327002-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,9elements.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C0FB175E7B0
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The newly added `pcie_lpc` node's memory region overlaps complet=
ely with the upper half of the existing `lpc` node's memory region.
- [Low] The nodes `pcie_lpc` and `pcie_kcs4` use specific, non-generic node=
 names (`pcie-lpc` and `pcie-kcs`), violating Devicetree specification rule=
s.
--

--- Patch [1]: [PATCH] ARM: dts: aspeed-g6: add pcie-lpc and pcie-kcs4 ---
commit 2d0eb7dfc73068ee32b00e22cfaac3679c6e6dbd
Author: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

ARM: dts: aspeed-g6: add pcie-lpc and pcie-kcs4

This commit adds a pcie_lpc node and a pcie_kcs4 child node to the ast2600
common dtsi. It allows exposing a fully KCS-compatible interface over PCIe,
which can be used by the host for IPMI.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/=
aspeed/aspeed-g6.dtsi
> index 56bb3b0444f7e..ac351f01048fe 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi

[ ... ]

> @@ -658,6 +658,21 @@ ibt: ibt@140 {
>  				};
>  			};
> =20
> +			pcie_lpc: pcie-lpc@1e789800 {

[Severity: Low]
Is this node name aligned with Devicetree naming specifications?

Using "pcie-lpc" describes the specific bus connection rather than a generic
functional name like "lpc".

> +				compatible =3D "aspeed,ast2600-lpc-v2", "simple-mfd", "syscon";
> +				reg =3D <0x1e789800 0x800>;

[Severity: Medium]
Will this reg value cause a resource reservation conflict?

The existing lpc@1e789000 node is defined earlier in this file with a size =
of
0x1000:

			lpc: lpc@1e789000 {
				compatible =3D "aspeed,ast2600-lpc-v2", "simple-mfd", "syscon";
				reg =3D <0x1e789000 0x1000>;

This means the existing lpc node spans up to 0x1e78a000, which completely
overlaps the 0x1e789800 through 0x1e789fff memory range claimed by this
newly added node.

Could the original node's size be reduced to 0x800 to prevent the overlap?

> +				#address-cells =3D <1>;
> +				#size-cells =3D <1>;
> +				ranges =3D <0x0 0x1e789800 0x800>;
> +
> +				pcie_kcs4: pcie-kcs@114 {

[Severity: Low]
Does this child node also need a more generic node name like "kcs@114"
instead of "pcie-kcs@114"?

> +					compatible =3D "aspeed,ast2600-kcs-bmc";
> +					reg =3D <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
> +					interrupts =3D <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
> +					status =3D "disabled";
> +				};
> +			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/de49f2032f5b1f17016=
1dcd6191c0daa48f0b0c2.1784117715.git.gregoire.layet@9elements.com?part=3D1

