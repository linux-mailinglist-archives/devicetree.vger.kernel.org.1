Return-Path: <devicetree+bounces-310733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YQQVHAy2K2oMCgQAu9opvQ
	(envelope-from <devicetree+bounces-310733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:32:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D9F6773E5
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:32:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b="SB/fmF/U";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310733-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310733-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A274E300D769
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E11A3D75A0;
	Fri, 12 Jun 2026 07:32:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29F037CD52;
	Fri, 12 Jun 2026 07:32:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249543; cv=none; b=HaL0n8GnbjkYNRzvgri+I0OyqA5Yqf9mBYEKQZro3JSEFvHJPLN8JpGtNol7tenZrYfOqP6sg0p2QJXNb5KN7DgD9FRzTbbVpveY60DchYPu0OzdC96s62KH5JTBV2zOABap825nydcps4usTedVXN6XAA/0CY9s6BFUTvaVlkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249543; c=relaxed/simple;
	bh=9z2ksJY6bCL/WrmKwktsXoIFEcG/POOq9WrCZQlzx70=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pocXBOIGV1a2L5ma7AoxP/Pkdf3CfLXJS/lfG4EIodKDsKV8z7S002Od8wn+SQt2uyabL7pPATCtqRUMWRk3T97Rrx8918MJ01966aB54h4GjgjmJbi1Rv/ZA0xDF5AJPLO6xbELc+/4qgt/U+ZEaGqvvj53P+TID29EwdOvLsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=SB/fmF/U; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1781249539;
	bh=M6dhvhvt0XbgvJ4MiXah8HcXTJRguTuta/3Cu0D1xfk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=SB/fmF/UtpDABvxWo6CkMbOQiVJgrTCJ+PgUHfhT9n2Q6wdkGrGmoPR41KZYXVcmK
	 5GleojLO+whw8ZTjaCgkn+t3/2tdalhZaqEoDZZLkzLYFoBv1B8+0w3mkF7DjIxF84
	 4Djxk5Vm6hqpANJ1Z2ApD6AKiqk8/THeCsPJc3BTJAQDPu+sE/Y4wblmGap3TNvjlj
	 oO2mIhH7qlMCz+jIKB//L+bxPABiE50Erw7flw+qqD9pjHEaExY2qSY6HEe/q5nER3
	 3ZCpWszBKUH9wvaxqdNYD/paemGjIcsZZiQaZWRhFkJ6LD/C+YB7jVednY98G+MM84
	 EuhRD1Ycjov+A==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 6FA2860931;
	Fri, 12 Jun 2026 15:32:19 +0800 (AWST)
Message-ID: <e865e2e71a39c86a8afb6af49d9ebcf6839a9a2a.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/1] ARM: dts: aspeed: g6: Add AST2600 pwm tacho
 controller
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: =?ISO-8859-1?Q?Gr=E9goire?= Layet <gregoire.layet@9elements.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Fri, 12 Jun 2026 17:02:19 +0930
In-Reply-To: <20260612072341.278591-1-gregoire.layet@9elements.com>
References: <20260612072341.278591-1-gregoire.layet@9elements.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310733-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,codeconstruct.com.au:dkim,codeconstruct.com.au:mid,codeconstruct.com.au:from_mime,9elements.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67D9F6773E5

Hi Gr=C3=A9goire,

On Fri, 2026-06-12 at 07:23 +0000, Gr=C3=A9goire Layet wrote:
> It use the existing ast2600-pwm-tach driver.
> Placed according to bus adresses ordering.
>=20
> Signed-off-by: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-g6.dtsi | 9 +++++++++
> =C2=A01 file changed, 9 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/=
aspeed/aspeed-g6.dtsi
> index 189bc3bbb47c..818d486b94ac 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> @@ -102,6 +102,15 @@ ahbc: bus@1e600000 {
> =C2=A0			reg =3D <0x1e600000 0x100>;
> =C2=A0		};
> =C2=A0
> +		pwm_tach: pwm-tach-controller@1e610000 {
> +			compatible =3D "aspeed,ast2600-pwm-tach";
> +			reg =3D <0x1e610000 0x100>;
> +			clocks =3D <&syscon ASPEED_CLK_AHB>;
> +			resets =3D <&syscon ASPEED_RESET_PWM>;
> +			#pwm-cells =3D <3>;
> +			status =3D "disabled";
> +		};
> +
> =C2=A0		fmc: spi@1e620000 {
> =C2=A0			reg =3D <0x1e620000 0xc4>, <0x20000000 0x10000000>;
> =C2=A0			#address-cells =3D <1>;

Thanks for the patch, however:

https://git.kernel.org/pub/scm/linux/kernel/git/bmc/linux.git/commit/?h=3Da=
speed/arm/dt&id=3D6cf976b2728f2494215c51c7339dd50b154125ce

You can also find the commit in linux-next.git master and soc.git
soc/dt, queued for v7.2.

Andrew

