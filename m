Return-Path: <devicetree+bounces-280895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM4LMJjFxGmu3QQAu9opvQ
	(envelope-from <devicetree+bounces-280895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 06:35:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B47C832F6EE
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 06:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 89202301022F
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 05:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79AC739E166;
	Thu, 26 Mar 2026 05:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="VTgnUmto"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301BB39DBF9;
	Thu, 26 Mar 2026 05:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774503313; cv=none; b=Hr+RYvbnx1o45HTD7mk8Ko4/Be/NPV7sKnWzvT3sjmyWG5r/YjkM3ihNxcSTmfTqXEnaLcDHsS5cwS70JhgEKenG1HDtFobdi7mxp6SYTM+FU7WLBgDwt7Z7THGCgflUN5u8l6IJi8njGYYTxLGa2IGYTTQDIiGwmpkRCqLn3Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774503313; c=relaxed/simple;
	bh=fwEW/s/WlFG/QGbFNbp3U09gnsylxQg1DmuHUmprEuc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=J31ocftgtAsIXp+6FINR/8a7LipAcGe8jW0CIK3V7wSdZIq7b9+06Uo1DZBWCsjgZdItO60RWG001GaDPU9uy+4ULgLCtTesU6MGaqrnsoSArcCwT2CiwPTdOleEGz40TbD+/yGt9f9mdcv2vDtI2Vj4wWcLByQcX7Hia/C9LOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=VTgnUmto; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1774503310;
	bh=il3g8uMgmZyxfuqxE59MMwiS51z8GXa/F/F4aoMlsVI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=VTgnUmtoXWYE/vqR1G5jvE2cATbzQoH4Hd2dA7qzwHED0B/nhEVKPMpync81pfwRD
	 YGVzk7eBFgXMKfxap7NLscIG3TqecNGwQT2lPFb3oANLMo5vvooG0/qtkMEfggLU9Q
	 ObR7/76IWqPu8RLy11UNVj6lNpKi60h0AoA036fP98yvsw4SejcHUkngf46h0z7xM7
	 hjJhNMJI7kQU/AmLVhhaR8j3UHxBfYqjkZ1Oe3LaU5LDcs56w/w3R0bGoGdWu2fM+X
	 5gpPBUmv3t4BlxNNCqtzJGLZEgj3NXHuW64Ya+KxthZ8cRsP7jydqXMPwBmzrByRV4
	 O0b98Y6M9glCQ==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 81DEC6597C;
	Thu, 26 Mar 2026 13:35:09 +0800 (AWST)
Message-ID: <ec13c056cf74b4c7741e6f14cf9c49c159066f36.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite5: Add MP5998 power monitor
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Daniel Hsu <d486250@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, joel@jms.id.au
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Daniel Hsu
	 <Daniel-Hsu@quantatw.com>
Date: Thu, 26 Mar 2026 16:05:09 +1030
In-Reply-To: <20260305084650.24511-1-Daniel-Hsu@quantatw.com>
References: <20260305084650.24511-1-Daniel-Hsu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280895-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.47:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.45:email,0.0.0.46:email,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Queue-Id: B47C832F6EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Daniel,

On Thu, 2026-03-05 at 16:46 +0800, Daniel Hsu wrote:
> Add the MP5998 power monitor device on I2C bus with address 0x46
> for the Yosemite5 platform.

I would rather you describe the purpose of the power monitoring. Why is
this instance of an MP5998 necessary in the system design? The address
of the sensor is evident from the details in the patch and isn't
necessary to describe here.

>=20
> This allows the hwmon driver to probe the device and expose the
> power monitoring telemetry to userspace.

I would prefer you reword or remove this sentence. The purpose of the
devicetree is to describe the hardware. What the firmware/kernel
chooses to do with that information is a separate problem.

Andrew

>=20
> Signed-off-by: Daniel Hsu <Daniel-Hsu@quantatw.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 5 ++++=
+
> =C2=A01 file changed, 5 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-
> yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-
> yosemite5.dts
> index 2486981f3d6b..6287f80d70d9 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -422,6 +422,11 @@ power-sensor@45 {
> =C2=A0		shunt-resistor =3D <1000>;
> =C2=A0	};
> =C2=A0
> +	power-monitor@46 {
> +		compatible =3D "mps,mp5998";
> +		reg =3D <0x46>;
> +	};
> +
> =C2=A0	power-monitor@47 {
> =C2=A0		compatible =3D "ti,tps25990";
> =C2=A0		reg =3D <0x47>;

