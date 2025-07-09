Return-Path: <devicetree+bounces-194548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 835F3AFE782
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08BD46E08FB
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D41C2C376B;
	Wed,  9 Jul 2025 11:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="EZug0f5S"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C592900AF
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752059866; cv=none; b=P0gtgwF4jwaT/8JWzFD6lgOUxeIQRPOt9WwT0FhiclZMQ14cRtihnDFKk+M1tEpLPlS1AspwhdfuoRmsbuhWvcDXId4FpVT+fXo/Waihlx2neUx62bDuBI7Ukv+I3wUcbZrNsVIvpfoEzO0S8NHQc1/jMzABZOvViQPkrTB8MBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752059866; c=relaxed/simple;
	bh=mAnIvJccH9bZYuNZ2FHma//yo1cWk2Hl4jldUa3rwQQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=kQL44nydcMT3DUDUVyZo7gkDGvd53JdWcNuLsZubfpqiq1J/Q9Cem94uL9L4p+YwsriYGzZ5heMla1dOT7hmXoH+OfXp19kMY3AYPxAlWDcR3SyEOkoANCtymzZ4vvoAHcEd2MLmvjLuXT3kEztn1jyGIxU9pP7M3kwdLMpr28E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=EZug0f5S; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752059852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2jiUrJWIjrS/zl54Lua+tp5RGUjRBoaPMIxbNmfvQnk=;
	b=EZug0f5S+/AFz3Oz/SwVdCwV/oLCi9n3Ho1yrquCajDl1sjiNb71yHqETQh7MqlOSf2uoz
	psA3PKH5qYO+j+uDUSm0vloPFdNuC00n9oAK0Mf69vh9B9sD9XC9w21QHNRnGjRuDXqADX
	XZH7dniVfMA7lFA5MMj+d90SH8UWusVxqKBQSOBxyxq7txnToUjO9mINyjmOiZHISkHr2u
	LTDneFcGyq/7sBEViNnZsSPCsIMXNTRSAvwUsvGliPdu3kHee81sCLMbUJHN3df98ak4Uf
	KTL+Yiyt0S0wB2819QUPuNkL1Mtj3mg45N4jemDAPidBTxICYrtikgmOrm8npQ==
Content-Type: multipart/signed;
 boundary=a15b73511b44a3a7249de8bd0c977f6d60b982377015c90af4dbb343db1a;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 09 Jul 2025 13:17:23 +0200
Message-Id: <DB7HDOPFOQAE.3NG4SP67ES80J@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <649824ea-a420-437e-ace1-2f079235c604@kernel.org>
In-Reply-To: <649824ea-a420-437e-ace1-2f079235c604@kernel.org>
X-Migadu-Flow: FLOW_OUT

--a15b73511b44a3a7249de8bd0c977f6d60b982377015c90af4dbb343db1a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jul 9, 2025 at 1:05 PM CEST, Krzysztof Kozlowski wrote:
> On 09/07/2025 12:57, Diederik de Haas wrote:
>> +	gpio-keys {
>> +		compatible =3D "gpio-keys";
>> +		pinctrl-0 =3D <&gpio4_a0_k1>;
>> +		pinctrl-names =3D "default";
>> +
>> +		button-reset {
>> +			debounce-interval =3D <50>;
>> +			gpios =3D <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
>> +			label =3D "RESET";
>> +			linux,code =3D <KEY_RESTART>;
>> +		};
>> +	};
>> +
>>  	gpio-leds {
>>  		compatible =3D "gpio-leds";
>>  		pinctrl-names =3D "default";
>> @@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
>>  		};
>>  	};
>> =20
>> +	gpio-keys {
>> +		gpio4_a0_k1: gpio4-a0-k1 {
>
> Are you sure that this passes checks?

I did the following:

```sh
export PATH=3D~/dev/kernel.org/dt-schema-venv/bin/:$PATH CROSS_COMPILE=3Daa=
rch64-linux-gnu- ARCH=3Darm64
make distclean
make debarm64_defconfig
make CHECK_DTBS=3Dy W=3D1 rockchip/rk3568-nanopi-r5s.dtb
```

And it did not report any issues.
Then booted up my NanoPi R5S and verified that with the updated dtb the
reset button worked.

If it's about the 'weird' name/label, it is what is used in the
schematic document I have and I asked Heiko (on IRC) if using
``reset_button_pin: gpio4-a0-k1`` would not be better. That would make
it more descriptive while also having the schematic traceability in it.
The answer was no, use the form I used in this patch.

Am I missing checks I should've done as well?

Cheers,
  Diederik

--a15b73511b44a3a7249de8bd0c977f6d60b982377015c90af4dbb343db1a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaG5PxgAKCRDXblvOeH7b
bi3IAP0QZ6nrHeJEorK5zsrkL55Nlul5jDIYPBwehpDyDLT8BgD+JuPieM/qOX2V
t77WC+GEezyPZaeos/wdCAlTkGS+OA8=
=okS4
-----END PGP SIGNATURE-----

--a15b73511b44a3a7249de8bd0c977f6d60b982377015c90af4dbb343db1a--

