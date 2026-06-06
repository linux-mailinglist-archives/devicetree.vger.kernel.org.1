Return-Path: <devicetree+bounces-307656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fZv1J9cJJGqo2AEAu9opvQ
	(envelope-from <devicetree+bounces-307656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:51:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F125B64D4A4
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:51:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A7HAXDSX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307656-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307656-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4397302D087
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 11:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46BF838A70C;
	Sat,  6 Jun 2026 11:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F8A2C2374
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 11:49:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780746562; cv=none; b=k4bZv7WEcvqAM48/iw/is6bUkMqckFN1pu/oasEGnTRaMRSn8n1afSXto8T4rW47eA9aj80qgaoUStLn4lYjwiavu6DnAFdpprVY0JHuYNyGO02gsea7kVSaHJtp7aODvTLZ98CO717t5HL0kBMhjmpJwM+En999a2EK4/Fll2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780746562; c=relaxed/simple;
	bh=TXxaa0hr88gvaGYe3kubA2J2vzP3XFuWS1pRAn4alPE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J3n7ZTa3VXr8+L1kb/q8jmhOdxJQWd6MIqY5b+yOPBhPCwjBsq1J1R5oisDgn+B+MYq58bYi9nHfnqbMc+9eUooMpH1ds+hQF7yAKuyh0c95m8xhWz9MQe0WBN9JKsxjD4k0elZbGAmAcIeiaavI8zB7SlYy/oqf61DAJ1IJSso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7HAXDSX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9FFC1F00898;
	Sat,  6 Jun 2026 11:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780746561;
	bh=trNrhoulzt7edJycrHlDpACtdVsxW+An5cECgOXGgRw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A7HAXDSXKzXkIXvu+S5kP1j2ouvWOUoxj+gTbaqrEFvIdLmIHW0Qz2qneHcqKqJoo
	 UAw6KJUeDYr+/kk495uK9a5FxxsmEkEDqpIcuyHi/BO9wnEZ42fkkTYuxFd5RFZ+Fi
	 NzmCziUyOJBpyoS/ZLjPA4aly9WxLga4i3sYogofUSRJfTC+lpcJPNYhU9O7e+SqyI
	 FyovdRBW2uxRM5bhHgIFVYFTdC45JvRxfZ834n6FGvzieD4foC0J1UwGRfVr3AXU/m
	 99Uun2W+JSvAxfiTqAW7PYLuwRRHW7zl3uQUwGTZfTC0gbOELOIVfcgx7yYuh/SavR
	 ehuGDiABYLCoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: rockchip: describe PCIe RTL8125
 Ethernet on NanoPC-T6
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ricardo Pardini via B4 Relay" <devnull+ricardo.pardini.net@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-2-8a8857b39daf@pardini.net>
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-2-8a8857b39daf@pardini.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 11:49:20 +0000
Message-Id: <20260606114920.B9FFC1F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307656-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+ricardo.pardini.net@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ricardo.pardini.net,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pardini.net:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F125B64D4A4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect `bus-range` property in PCI root port nodes causes pri=
mary and secondary bus numbers to overlap.
--

commit a2c7d2bee242af770a15bcba84f406c04640467d
Author: Ricardo Pardini <ricardo@pardini.net>

arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on NanoPC-T6

The FriendlyElec NanoPC-T6 carries two on-board Realtek RTL8125 NICs.
This commit describes the fixed function nodes and attaches ethernet aliases
so U-Boot can inject stable MAC addresses.

> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi

[ ... ]

> @@ -635,6 +637,20 @@ &pcie2x1l0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pcie2_0_rst>;
>  	status =3D "okay";
> +
> +	pcie@0,0 {
> +		reg =3D <0x200000 0 0 0 0>;
> +		#address-cells =3D <3>;
> +		#size-cells =3D <2>;
> +		ranges;
> +		device_type =3D "pci";
> +		bus-range =3D <0x20 0x2f>;

[Severity: Medium]
Does this bus-range create an overlapping PCI topology?

The reg property places the PCI-to-PCI bridge on primary bus 0x20, but the
bus-range property specifies the downstream secondary and subordinate bus
numbers starting at 0x20. This claims that the secondary bus perfectly
overlaps the primary bus.

Since the child ethernet node uses bus 0x21 (reg =3D <0x210000 0 0 0 0>),
should the bus-range start at 0x21 instead, such as <0x21 0x2f>?

> +
> +		rtl_eth0: ethernet@0,0 {
> +			compatible =3D "pci10ec,8125";
> +			reg =3D <0x210000 0 0 0 0>;
> +		};
> +	};
>  };

[ ... ]

> @@ -651,6 +667,20 @@ &pcie2x1l2 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pcie2_2_rst>;
>  	status =3D "okay";
> +
> +	pcie@0,0 {
> +		reg =3D <0x400000 0 0 0 0>;
> +		#address-cells =3D <3>;
> +		#size-cells =3D <2>;
> +		ranges;
> +		device_type =3D "pci";
> +		bus-range =3D <0x40 0x4f>;

[Severity: Medium]
Is this bus-range similarly overlapping?

Like the node above, the bridge is on primary bus 0x40, but this sets the
secondary bus to also start at 0x40. Since the child node is at 0x41,
would it be more accurate to set this bus-range to <0x41 0x4f>?

> +
> +		rtl_eth1: ethernet@0,0 {
> +			compatible =3D "pci10ec,8125";
> +			reg =3D <0x410000 0 0 0 0>;
> +		};
> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-rk3588-dts=
-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net?part=3D2

