Return-Path: <devicetree+bounces-312657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ewzjM9qRMWrumwUAu9opvQ
	(envelope-from <devicetree+bounces-312657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:11:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB49693DFB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:11:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EXhNfBSP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312657-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312657-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B8B4308AAE3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F743D5656;
	Tue, 16 Jun 2026 18:11:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A683D091A
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 18:11:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781633494; cv=none; b=CRFDgQhgvcIHZwF0ru8hkiwUwPeiG3MnU5iw1D1awvW2t5aWhF3dQTUDPo9/i0K2HQtonnE/T77Giz+WaT0VaR6NIOyeYDlqqsBrk937dyyCJ33d+Zbh1F8FEYDg5mK+dnLaZbRoPNs14rNaXxZKUknZDowuVHW8wjkBZ+I1iio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781633494; c=relaxed/simple;
	bh=2lPpk6G7mpUj1zhKB8gXWvyDQVP3BQbD0GtmMRJsTuc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QdEDw+2pVDBEwjGJpJX0xTq2ZL1xa2Q4m/O5j36IzO6hRH+7XKWt7z7zz81oOjEHUW9ShUV04WRAqaTG/sZ+nboqd99RzFFheb2WPPqZWIwR9CEfu9h4RFyObwAshBBNp5xujwYLBirfBp8SqTzbVeSI5XRZP2Jv9RUniUoyHIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXhNfBSP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B461F00A3A;
	Tue, 16 Jun 2026 18:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781633493;
	bh=ONO+boQul0ynwIclZ0kLdB+897vInAujLlhGJN9Vwy8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EXhNfBSPhzOKed4PxSmIgWaldm2TMtpkG2jU3GmwjnTCntc8F4CoGhTjfUUE5d0V7
	 b08dQGnLq1BAxCn5I0ZfcwGDOYzK7jUM7HAyfxFmC6QghUiP7bhDF+dWawMG02Zi4x
	 JDEskU2QUkb3pVYZPxrBjXJXMzdbVd7GYegFc0QXc3WWN/ytj+xvmaur8SGi6h54Of
	 Xnqx6nnHepR0LnEJA0+l29xe9a/px6psjevvmzIZ0gGstUlBm4Xvtl24e1dJL03xEF
	 j1WxsZSdziwtkCxdB7YJr9vk6PzgHTk2ACGmN7Q5869cyVNVG3lBH4FXI9a27t6FcI
	 FWxgTqPymD+dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: r8a77995: Add GE8300 GPU
 node
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260616175835.2109336-3-niklas.soderlund+renesas@ragnatech.se>
References: <20260616175835.2109336-3-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 18:11:32 +0000
Message-Id: <20260616181133.09B461F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-312657-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,ragnatech.se:email,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:niklas.soderlund@ragnatech.se,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AB49693DFB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added GPU node references core clock R8A77995_CLK_ZG a=
nd module clock 112, but neither is implemented in the R8A77995 CPG MSSR cl=
ock controller driver.
--

commit cb323f9d0762b84aa5d75f999bf135e4920caed4
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

arm64: dts: renesas: r8a77995: Add GE8300 GPU node

This commit describes the Imagination Technologies PowerVR Rogue GE8300 GPU
node for the Renesas R-Car R8A77995 D3 SoC.

> diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/=
dts/renesas/r8a77995.dtsi
> index 5f3fcef7560cb..c42d96540ce73 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1295,6 +1295,21 @@ gic: interrupt-controller@f1010000 {
>  			resets =3D <&cpg 408>;
>  		};
> =20
> +		gpu: gpu@fd000000 {
> +			compatible =3D "renesas,r8a77995-gpu",
> +				     "img,img-ge8300",
> +				     "img,img-rogue";
> +			reg =3D <0 0xfd000000 0 0x40000>;
> +			interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cpg CPG_CORE R8A77995_CLK_ZG>,
> +				 <&cpg CPG_CORE R8A77995_CLK_S3D1>,
> +				 <&cpg CPG_MOD 112>;

[Severity: Medium]
Will this result in a probe failure when the node is enabled by a board?

The newly added GPU node requests the core clock R8A77995_CLK_ZG and module
clock 112, but neither appears to be defined in the R8A77995 CPG MSSR clock
controller driver (drivers/clk/renesas/r8a77995-cpg-mssr.c).

If R8A77995_CLK_ZG is missing from r8a77995_core_clks and index 112 is
missing from r8a77995_mod_clks, the clock requests will return -ENOENT and
prevent the GPU driver from probing successfully.

> +			clock-names =3D "core", "mem", "sys";
> +			power-domains =3D <&sysc R8A77995_PD_ALWAYS_ON>;
> +			resets =3D <&cpg 112>;
> +			status =3D "disabled";
> +		};
> +

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616175835.2109=
336-1-niklas.soderlund+renesas@ragnatech.se?part=3D2

