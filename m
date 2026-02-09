Return-Path: <devicetree+bounces-263826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGm8D9N8iWnk9wQAu9opvQ
	(envelope-from <devicetree+bounces-263826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:21:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1F510C006
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D787630071C5
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B332E62D9;
	Mon,  9 Feb 2026 06:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="bMcV/fEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91662D9EED;
	Mon,  9 Feb 2026 06:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618064; cv=none; b=Qfvlib5WaPZB4t/Y+dzAZo97GAqSDGzSEKB9dhFby7HeshMwKKPvAxIrCIpZ9EI9ZuVjL0Kcw2+Mso2kXmREPkh84fEu3FHdXXST15Y5+wAVCvNVRYAkZo4HNiLvA0g2tInOATh9d6LF4vy6/ZWejU6Q5eICLUOXepJbbFChgA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618064; c=relaxed/simple;
	bh=GQthucHqDIOnvHj9QJHaxiz6J7KCY1uXkd4lADQoWAQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Izr0P9miKuxy1sOLp9ZpavJnzgmxYj0obxcTk4emvikWvdUVUM+wJBZcfoBvOOHTrhjk5B3r9OCH793ed6HarZZBSHcKIEFhraJxWmkCYu6Rl31Aaj9kWK7eGqmu5IFMSudYujAUf+uqpgbax2vXzNFQYhBLf1k32JsqZReKi24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=bMcV/fEZ; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770618061;
	bh=y1YXR4/Tyv9LUkuxa8hny85fia7ireYDpMIuGkyTJqA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=bMcV/fEZkzK7rGBH/FYv8Y0leVnfLwAoi4PIVFj+oNgOgyq9TVRwGUSwbe1V7Ruwf
	 einFWiOE/WXcWYyuDnJXLbqXH6nMUAq2DNakHJZZIzCtgUn9I7qEDq8YmpIso9VVt6
	 ddWSmTMEKtJ2S6bpOfuGE/ummOa236s06qQrQRUR36GxZmRiNAHzunqx9wzc0onDsq
	 +zxuUjOEUzdz2VGmytqSGeenN6rEPINEmVzDa43X8X3UyGHJrm2bCShaAjPkqWfNtm
	 0n8qZBXTHHWc+CQVu7mnw0wrK2F8ReiMQs/Gnjql4CWjsV5Bzu2srl1a5h4CnmBsgi
	 uWrYSuG/TM1lg==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 109B06024E;
	Mon,  9 Feb 2026 14:21:01 +0800 (AWST)
Message-ID: <73c63bc2f5eaae2c931a4ced1462024bd5a24237.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 5/7] ARM: dts: aspeed: yosemite5: Correct power
 monitor shunt resistor
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>
Date: Mon, 09 Feb 2026 16:51:00 +1030
In-Reply-To: <20260130-yv5_revise_dts-v4-5-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
	 <20260130-yv5_revise_dts-v4-5-4d924455f3a7@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263826-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.57:email,0.0.0.21:email,0.0.0.41:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5b:email,0.0.0.44:email,0.0.0.40:email,0.0.0.59:email,codeconstruct.com.au:mid,codeconstruct.com.au:dkim,0.0.0.43:email,0.0.0.42:email,0.0.0.58:email]
X-Rspamd-Queue-Id: 7C1F510C006
X-Rspamd-Action: no action

Hi Kevin,

On Fri, 2026-01-30 at 16:20 +0800, Kevin Tung wrote:
> The shunt resistor value defined in the DTS was incorrect and did not
> reflect the resistor value populated on the board. As a result, power
> and current readings derived from this value were inaccurate.

Okay, but how did it come to be incorrect in the devicetree? Was the
documentation wrong and so someone entered the wrong value? Was the
documentation correct but there was a misunderstanding? Did the
hardware design change and the devicetree is now just inappropriate for
your needs?

Essentially, what's preventing this from happening again?

>=20
> This change=C2=A0
>=20

I'd rather you rephrase this to avoid using "This change ...".
Hopefully the commit message always refers to its change.

Generally, please write in the imperative mood (see [1])

[1]: https://docs.kernel.org/process/submitting-patches.html#describe-your-=
changes

> updates the DTS to use the correct shunt resistor value
> according to the hardware design, restoring accurate power and current
> measurements.
>=20
> Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 +++=
++++-------
> =C2=A01 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 84d3731b17f7c7c87338672bbcc859de2b89b722..524597a81365ef10cd03b67d3=
5eeb88a965cbe0a 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -415,7 +415,7 @@ power-sensor@42 {
> =C2=A0	power-monitor@43 {
> =C2=A0		compatible =3D "lltc,ltc4287";
> =C2=A0		reg =3D <0x43>;
> -		shunt-resistor-micro-ohms =3D <250>;
> +		shunt-resistor-micro-ohms =3D <100>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-sensor@44 {
> @@ -461,25 +461,25 @@ eeprom@57 {
> =C2=A0	power-monitor@58 {
> =C2=A0		compatible =3D "renesas,isl28022";
> =C2=A0		reg =3D <0x58>;
> -		shunt-resistor-micro-ohms =3D <1000>;
> +		shunt-resistor-micro-ohms =3D <10000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-monitor@59 {
> =C2=A0		compatible =3D "renesas,isl28022";
> =C2=A0		reg =3D <0x59>;
> -		shunt-resistor-micro-ohms =3D <1000>;
> +		shunt-resistor-micro-ohms =3D <10000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-monitor@5a {
> =C2=A0		compatible =3D "renesas,isl28022";
> =C2=A0		reg =3D <0x5a>;
> -		shunt-resistor-micro-ohms =3D <1000>;
> +		shunt-resistor-micro-ohms =3D <10000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-monitor@5b {
> =C2=A0		compatible =3D "renesas,isl28022";
> =C2=A0		reg =3D <0x5b>;
> -		shunt-resistor-micro-ohms =3D <1000>;
> +		shunt-resistor-micro-ohms =3D <10000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	psu@5c {
> @@ -723,13 +723,13 @@ gpio-expander@21 {
> =C2=A0	power-sensor@40 {
> =C2=A0		compatible =3D "ti,ina230";
> =C2=A0		reg =3D <0x40>;
> -		shunt-resistor =3D <2000>;
> +		shunt-resistor =3D <1000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-sensor@41 {
> =C2=A0		compatible =3D "ti,ina230";
> =C2=A0		reg =3D <0x41>;
> -		shunt-resistor =3D <2000>;
> +		shunt-resistor =3D <1000>;
> =C2=A0	};
> =C2=A0
> =C2=A0	power-sensor@42 {

The way the commit message is written suggests it was just one shunt
resistor, but that's clearly not the case.

Andrew

