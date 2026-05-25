Return-Path: <devicetree+bounces-302577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBkhFvMkFGrfKAcAu9opvQ
	(envelope-from <devicetree+bounces-302577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:31:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA25C941C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FAF3301017C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 956FF2FD68B;
	Mon, 25 May 2026 10:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ43GHZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7578F17BA2
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 10:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779705031; cv=none; b=GDsHgBzf53eu0esIuln4k8cK4VNH4zQBvo5bBGHMEWB4Baip6hJEHABmiqh4mNKRpcQobsrr5pEfN2hcWPkwLKze01oiIg0isWEVQMRPdDav2MVI1wQpcu+L01TaaPt5nTBFfTPyLZF0LlySdUcsUVVZimAatQ6AnLRO9/sLFvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779705031; c=relaxed/simple;
	bh=BkUEbcQoId0aCXkK0bB4LlyHZPF+3GnCJg6n1jzoHk8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l1GVB4kwd/4wVBo/+zuDvm3JeDEMR7VBboconl5VGJ2cDlLnCjFOOVPCf7RV99/OHZdMUNVY9XJPal+CFzHK/QM6gjOJuX6g+Rm6fjMwPm49+88IjsxCso9xGAC8GsQx9F4Ae/Eb5a8jieM1/TF2FJot8/B8HkZxPUuPiYE1xt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ43GHZ5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E46451F000E9;
	Mon, 25 May 2026 10:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779705030;
	bh=YcuEzsmVAWwrmspf6eK5QHSgxUAjrdmjgGIFVDAHATQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AQ43GHZ5iZ51YIv3rAhepFHEyXhmMqn3GenPo2927mZylVAaoBmyAg7cTY/5MpmsL
	 4dl4+em4vZPq0RkEz1Rvz11TntkPbdO7sojS45dlsp1/9qdT5u9vptNm9XixYhxDsU
	 zPkWjhcjWdU9Td2+jFb6LSxsrZ9FVG42QUO5pe7nm72ekLJ3DmhuiYd8/qjcEXOyGx
	 jhk5aw6QZWjSQ5n/cQ9u31rUVxcxae2ljGtQXYZlW5fX0S9KTqYrzEfn0kO3efGbZX
	 nWUjziDEnJKcqHP+9ShP33KsfUT8oV0a7kuc94a08VAMx0H5s6hk/1E3uK2LENJpHs
	 4JozlU0Bv119Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: describe PCIe Ethernet
 controllers on NanoPC-T6
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ricardo Pardini via B4 Relay" <devnull+ricardo.pardini.net@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260525-rk3588-dts-rtl-eth-describe-dt-alias-v1-1-a6fcda563ac7@pardini.net>
References: <20260525-rk3588-dts-rtl-eth-describe-dt-alias-v1-1-a6fcda563ac7@pardini.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 10:30:29 +0000
Message-Id: <20260525103029.E46451F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302577-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ricardo.pardini.net,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: C1CA25C941C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect PCI bus address and bus range assignment for the `pcie=
2x1l1` root port and its subordinate Ethernet child node due to a copy-past=
e error.
--

commit 156420583537dc113009b35ecedada60caabe190
Author: Ricardo Pardini <ricardo@pardini.net>

arm64: dts: rockchip: describe PCIe Ethernet controllers on NanoPC-T6

This commit describes the fixed PCI function nodes for the two on-board
Realtek RTL8125BG NICs on the FriendlyElec NanoPC-T6. It attaches
ethernet0/ethernet1 aliases to provide the kernel with DT handles for
the two NICs.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/ar=
m64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 84b6b53f016ab..5d28c74847c58 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
[ ... ]
> @@ -643,6 +645,20 @@ &pcie2x1l1 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pcie2_1_rst>;
>  	status =3D "okay";
> +
> +	pcie@0,0 {
> +		reg =3D <0x200000 0 0 0 0>;

[Severity: Medium]
Is this the correct bus range and register address for the pcie2x1l1
controller?

In rk3588-base.dtsi, the pcie2x1l1 host bridge is defined with
bus-range =3D <0x30 0x3f>. It looks like this node uses bus 0x20
and 0x21 (<0x200000 0 0 0 0>, <0x210000 0 0 0 0>, and
bus-range =3D <0x20 0x2f>), which corresponds to pcie2x1l0.

Will this mismatch cause the PCI core to fail to match the DT nodes with
the enumerated devices, leaving the Realtek NIC without its DT node?

> +		#address-cells =3D <3>;
> +		#size-cells =3D <2>;
> +		ranges;
> +		device_type =3D "pci";
> +		bus-range =3D <0x20 0x2f>;
> +
> +		rtl_eth0: ethernet@0,0 {
> +			compatible =3D "pci10ec,8125";
> +			reg =3D <0x210000 0 0 0 0>;
> +		};
> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525-rk3588-dts=
-rtl-eth-describe-dt-alias-v1-1-a6fcda563ac7@pardini.net?part=3D1

