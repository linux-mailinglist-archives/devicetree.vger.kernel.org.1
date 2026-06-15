Return-Path: <devicetree+bounces-311639-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1xzRKYmUL2owCwUAu9opvQ
	(envelope-from <devicetree+bounces-311639-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:58:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F08F06839C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:58:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hZythfic;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311639-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311639-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21C7930097CD
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865BA30C16D;
	Mon, 15 Jun 2026 05:57:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4BA1A6816
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 05:57:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503036; cv=none; b=qBWLutTd6phml9lj638BT6s9J4nbaFKS0t4YsAyWrUejWf3Ebo9lff8aVlVdP6cMQXP05MDaO5DUg3bYWbU20q5iAXTEIQgIKsSgBqPO/lyTyxE186vsv4PW11SYm13kafAtHoHIh3S4FM5jMRacKP8o0UrTfOF7EovdW0WmGEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503036; c=relaxed/simple;
	bh=TJLQFY3A0pkS3cJVWxEKUhh+eLtfHcBG4sJU3T6oGU8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZUl5vIs/ve4u6u1Zw6nck2qNYggxtXfYQZg20kmFcddnv/8H751FoD1HG+YYGE5oxKrj/I599b65w2abF9bhcg5SEk8TmzjAQDPAqxdfbRJ8LLJRpynghg5Bp3nH5DdQoJDu9QWVWHG6lvqi5tAB3soJHfmItwlyc5rgzuamfFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZythfic; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87871F000E9;
	Mon, 15 Jun 2026 05:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503035;
	bh=R+k6vc3M1rq8waiprFnocGtgmE69JAynowKaLTQCrLw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hZythficFHk7VOWLJqMe79cIk2vaTK2iW9I3iit3ufZlMVeHGG9s3fvLe5PpPNa++
	 sGHiiXhnTHGfRi9h7rrsFBkXr6JmYmjk7NXjPs1kA/mZRp+8t+1zIXeuyOIcKazsG2
	 PUtDpHmS5tsFdceOnfen3prR24aSmSuxpkkzMbkGW2pL32gpVXiSvwdLftm4yNkJhP
	 ymfs/CyvRHTOIUqt3IfAOKkxWpqZ8lmdQtKPd44Z8PGaup/aOSKn3oV6pjYUpZ3CLc
	 V30ew8wqacGatCNpSsOcDUphQuQGa5/uX6kdfag+hX2hfEMkQXQpCI935KVOiqCaRd
	 IklbAOV0N/B1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260615054911.48821-3-a0987203069@gmail.com>
References: <20260615054911.48821-3-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 05:57:14 +0000
Message-Id: <20260615055714.B87871F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311639-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F08F06839C7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The unit addresses for EHCI1 and OHCI1 nodes use uppercase hexadeci=
mal characters.
--

commit 05d96a79d90d16847229b2f5b5cfd71d8eb6ef98
Author: Joey Lu <a0987203069@gmail.com>

arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node

This commit adds device tree nodes for the MA35D1 USB subsystem,
including a dual-port PHY node and nodes for the DWC2, EHCI, and OHCI
controllers. It also enables the corresponding nodes and configures
pinctrl in the board files.

> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dt=
s/nuvoton/ma35d1.dtsi
> index e51b98f5bdce4..73ff1d78d2848 100644
> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi

[ ... ]

> @@ -379,5 +388,62 @@ uart16: serial@40880000 {
>  			clocks =3D <&clk UART16_GATE>;
>  			status =3D "disabled";
>  		};

[ ... ]

> +		ehci1: usb@401C0000 {

[Severity: Low]
Should this unit address use lowercase hexadecimal characters?

The Devicetree specification requires unit addresses to be formatted using
lowercase hex. Using uppercase 'C' here (unlike the 'c' in the reg property
below) can trigger W_simple_bus_reg warnings when checking device trees.

> +			compatible =3D "generic-ehci";
> +			reg =3D <0x0 0x401c0000 0x0 0x1000>;
> +			interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk HUSBH1_GATE>;
> +			phys =3D <&usb_phy 1>;
> +			phy-names =3D "usb";
> +			companion =3D <&ohci1>;
> +			status =3D "disabled";
> +		};
> +
> +		ohci0: usb@40150000 {
> +			compatible =3D "generic-ohci";
> +			reg =3D <0x0 0x40150000 0x0 0x1000>;
> +			interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk HUSBH0_GATE>;
> +			phys =3D <&usb_phy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		ohci1: usb@401D0000 {

[Severity: Low]
Similarly, could this node be named usb@401d0000 to comply with the
standard Devicetree lowercase hex conventions?

> +			compatible =3D "generic-ohci";
> +			reg =3D <0x0 0x401d0000 0x0 0x1000>;
> +			interrupts =3D <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk HUSBH1_GATE>;
> +			phys =3D <&usb_phy 1>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615054911.4882=
1-1-a0987203069@gmail.com?part=3D2

