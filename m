Return-Path: <devicetree+bounces-263833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OYuNNGDiWl8+QQAu9opvQ
	(envelope-from <devicetree+bounces-263833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:50:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F19D10C3A9
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:50:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 05C6A300231E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3022427586E;
	Mon,  9 Feb 2026 06:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="O54HLMzR"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B322AD0C;
	Mon,  9 Feb 2026 06:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619854; cv=none; b=jo5PImdte/QXP1xfuqa4kdK7O70vfiFoNHTIjhZsPw5ykUTaNH7cvHJDqsER/MEz6zC6tgCG4WT6zdQDBo819gtqtEoBAC4uDPlCCOyJfMSsanz6BIJhmjN4rya9sAT8HoMmHCnIfYvvlBYgsQcf7I2s0346sFvBqo7IxrI9tlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619854; c=relaxed/simple;
	bh=qHiOLe1DnXTNLlNSklLYpdWwiSvdSAgpdhr68wbPwIw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=G7/we2r9Nwgzt1XkYhFF2EJ6JtX0c3GBd/jeW2USUdrFKRNyPMyFVIDPBxuFWeZ1cOWMibP7HZNtYvoCi6U0tmaLHh6twiy+H6Fr7faUI5Jvfi54mZqXm3ZfUT17P/Gk2fzB2Lgmno7fIXyI5d50pxPi5ZWwH6BYooSrMbMLIzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=O54HLMzR; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770619851;
	bh=poCMUc6ncGDkSxtBbaNgSNy0CoVls03/5wrD6+V4Erw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=O54HLMzRquZ8qKT0tjg0p5jbTItro6bjE/LGtpFHgxUinpjAojCiHCcFlJfOnyG3s
	 96MRyX51rypqhITZbn0jgNmKHsLCvEIyKEGAwLyMiG3IpqtP2pMQhrAeOa/VDSfaTe
	 Zsc8rlnnKE1Vl2Ua9AdSr1P0BOrltYHCisHca1BldzxM+KMVVqa6ZVjnzMTaBFNcos
	 2aJ6AKRUSVMa6m3gjvQr2tUQTI1e4TrURYzrkiTe+2r820MwXSN64YQ26+JHp8TjcQ
	 08tWfAg7FnZYmLoxTWiyKsVtTzXTxfMNyMGC8J3e30OuL8T1y7cxJSfsLCZi+ja1Cc
	 r4gkrU3gdHeag==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5E95B602DE;
	Mon,  9 Feb 2026 14:50:51 +0800 (AWST)
Message-ID: <324adcf0cbf87ef1186c70f09ab0e0ee2e29017c.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: dirkchen@amd.com, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Mon, 09 Feb 2026 17:20:51 +1030
In-Reply-To: <20260202-b4-anacapa-dts-fix-v1-1-20d4b0114854@amd.com>
References: <20260202-b4-anacapa-dts-fix-v1-1-20d4b0114854@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263833-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.50:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.988];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,0.0.0.3:email]
X-Rspamd-Queue-Id: 8F19D10C3A9
X-Rspamd-Action: no action

On Mon, 2026-02-02 at 10:29 +0800, Dirk Chen via B4 Relay wrote:
> From: Dirk Chen <dirkchen@amd.com>
>=20
> Add Atmel 24C2048 EEPROMs on i2c0 and i2c1 to support retimer
> configuration. Follow the same compatible string usage as the
> Facebook Harma platform to maintain consistency across Meta boards.

This description seems surprising.

Does the change reflect the hardware or not? What's the significance of
the consistency comment if so?

Andrew

>=20
> Signed-off-by: Dirk Chen <dirkchen@amd.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 12
> ++++++++++++
> =C2=A01 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 221af858cb6b..b8d248d99d7c 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -328,6 +328,12 @@ i2c0mux0ch3: i2c@3 {
> =C2=A0			#size-cells =3D <0>;
> =C2=A0		};
> =C2=A0	};
> +
> +	eeprom@50 {
> +		compatible =3D "atmel,24c2048";
> +		reg =3D <0x50>;
> +		pagesize =3D <128>;
> +	};
> =C2=A0};
> =C2=A0
> =C2=A0// R Bridge Board
> @@ -362,6 +368,12 @@ i2c1mux0ch3: i2c@3 {
> =C2=A0			#size-cells =3D <0>;
> =C2=A0		};
> =C2=A0	};
> +
> +	eeprom@50 {
> +		compatible =3D "atmel,24c2048";
> +		reg =3D <0x50>;
> +		pagesize =3D <128>;
> +	};
> =C2=A0};
> =C2=A0
> =C2=A0// MB - E1.S
>=20
> ---
> base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
> change-id: 20260202-b4-anacapa-dts-fix-207ffe9a3b0c
>=20
> Best regards,

