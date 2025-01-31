Return-Path: <devicetree+bounces-142089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 365F4A24105
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2A9E3A2AB9
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C111E503D;
	Fri, 31 Jan 2025 16:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yJZt1qL9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118F5335C7
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738342090; cv=none; b=NNOm3euK8hUpG9Tb21Hver+iArebZCCljXJh0KekWq5OiqQoDCqAyjyuu5zhcEZrSdXsrBHb6AJ+fespgzjUV2TVS7+Z8zPxzjyFailAAaSbPW07CGbb8L4sX7VETHOmaBFfXmVVXP+MlZ5/vcm/+562djMJ7QMHYHZd4zcxX0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738342090; c=relaxed/simple;
	bh=1iJtxayLdyit3kEZl6V5LIIeYfb5xqfs9aei4SwaltI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZxoJr4+WoEhXka/h0zGtaa/99T9EudvsxTmA//jiDjuTPUcMbVLqStBP2RjzV0Dx9fivLJVfnW+gImkWDLMUV0IXyQQz1ZvXMSXh5lhg4OxSS9emlzq5XrE65nBoP2f0Tz2KQpvvecPTUA3USfXs7zNxOYp+gBwMdaSxku1Xn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yJZt1qL9; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so1950587f8f.1
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 08:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738342085; x=1738946885; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=52PPbYsBn/2scyWL5/FOy0dBfUO9QtQgEvQaLwgW0/Q=;
        b=yJZt1qL9cQPgCTbOqfrTicPaMl3DVs55759m/eei1xrnHEpQrgYs8kfCPXf97HgOn/
         yWz2YNUBN2vkX2pId9IxX2f2NcaJNUBPGvy0IHbH4eXBM/xZOFulmE3jRyQQbSuqTe1t
         2k3RR/3AVqFofjE/N4D1WZ5d9eVGJSsKcMZN9oLFya1hk4cDVAJB3Vl6fQPbwAJ95jlx
         PD+y9CsQAOh0TJujwqOGLbUnt1eSXJXCCRJf4Uax3OD1/rr4oty3HGzVNTMEVSOknmWS
         tybTewPueiz9ieZ+9uoHCTmj3YSZdGVnnup6uSjuSQZrmiCwSoMnrQ99U3iwiX7/LamI
         u3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738342085; x=1738946885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=52PPbYsBn/2scyWL5/FOy0dBfUO9QtQgEvQaLwgW0/Q=;
        b=oXpUM1Vc0ESfDbABaZnexX8Rii2/EfAzAcb4Lzfm/u0VJQ6oxFXurq1Fyg+CtHilJp
         qz4dLi/9HENQvu0MnlbwmEhJ4GJmo36cqGChM5CDIaRsuoYNEb7dAUJawRLCuMUR4Ik+
         nEWd8znnfeaZfsnEavPUugYqa4lBESbaOjP2L5pvFduSPTfqBZMx2i/DrGiCxVZ+92gc
         bChdnd4wcO9nkgheWBciCNpWMtm0CKw/nVunIfGWwsnrZrGfYVASBB7VZSiRG3+Z6qjy
         YKT/BKieHHM3n4FXqTUkI6exwUWb9CD5XAOZLPZhfWmDecph2gsPTQwF0YH0pKVgGL3C
         Kd8g==
X-Forwarded-Encrypted: i=1; AJvYcCWT16Zz3zUHcVoVGtbLA4iuzd33lm20ldLPmDCOoNr56RF/tbS3eA+S5wkcO3zok8g8aDd85Fg2CSGg@vger.kernel.org
X-Gm-Message-State: AOJu0YxSUNAsqsUWCOojYki5/uILqdjPECpHSXVoSKXLT+1PLz/cIonZ
	KPmZvILhFw9/2L/COh5BkQfRtZlqjBDLdQht14+aFhl7acOANBTKPy1sR6Fl4ec=
X-Gm-Gg: ASbGncvU8stBTEFNjskG/4hxgau66w7B6EpRzs4pUoapVF1CJaL4SSDpHgolxsvz8vo
	dzAS3aPA9mbZgW6PWYY6S07SY28xI4xVWsrAzfF0KIJ8eh8rAd2OvjyGPOvvpezuteYWndJ35w1
	J04CGCtoQjvNBSo4W3Mj/pBp2P997ixyFkpDY0iGvHlH1byR06GlV3T76inTPvpJUnBVvs1Wzlq
	Qnb4L2aTM1L1T2bmAQ1nWZoKDIJN/RDLS92/Cv2CbfwPuGsIp5lY8ow69B4sxIj2K9EBYIxS6tT
	sBtKeby9U+evQ5qjFl53Ri2Ef/u8ZMdMLb+GlFCVGxu6FV4=
X-Google-Smtp-Source: AGHT+IFicYme3LZwXtohMbA3eIbgEmfoDSG155U21ZKpA+tc0C9mcCc8RrNh//OZFOv0YqvPg2xe4A==
X-Received: by 2002:a05:6000:1565:b0:385:f220:f779 with SMTP id ffacd0b85a97d-38c52095991mr10689812f8f.49.1738342085148;
        Fri, 31 Jan 2025 08:48:05 -0800 (PST)
Received: from localhost (ip-193-121-87-13.dsl.scarlet.be. [193.121.87.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1cfa2fsm5196070f8f.91.2025.01.31.08.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 08:48:04 -0800 (PST)
Date: Fri, 31 Jan 2025 17:47:59 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Dinh Nguyen <dinguyen@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
Message-ID: <qkruehkvdduotjzhut3w2fpbr364dtd2vztpewoy3h3j55bqxt@e5niklwtpuue>
References: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
 <173828013131.1872475.6879199940703724951.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i27xtr65u4mwcg7i"
Content-Disposition: inline
In-Reply-To: <173828013131.1872475.6879199940703724951.robh@kernel.org>


--i27xtr65u4mwcg7i
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
MIME-Version: 1.0

On Thu, Jan 30, 2025 at 05:38:08PM -0600, Rob Herring (Arm) wrote:
>=20
> On Thu, 30 Jan 2025 08:45:53 +0100, Uwe Kleine-K=F6nig wrote:
> > This dts is enough to make the board boot to Linux with the rootfs on
> > a micro SD card.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> > ---
> > Hello,
> >=20
> > changes since (implicit) v1 available at
> > https://lore.kernel.org/linux-arm-kernel/20250128172917.4565-2-u.kleine=
-koenig@baylibre.com/:
> >=20
> >  - Use rgmii-id for ethernet/mdio. (Andrew Lunn)
> >  - Add a compatible entry for the machine (only had the SoC before),
> >    fix compatible for accelerometer and various other small
> >    improvements, most of them pointed out by the dt checker.
> >    (Krzysztof Kozlowski)
> >=20
> > There are still warnings when the dtb is built, but they all originate
> > from the SoC dtsi.
>=20
> Except for the ones with the board compatible...

Yeah, understood that now. (My reference was a nearly empty dts file
with just the includes and the compatible. I checked that the full dts
doesn't create more warnings. That worked fine, but with that approach I
missed the compatible warning.) v3 will contain another patch adding
"terasic,de10-nano" to
Documentation/devicetree/bindings/arm/altera.yaml.=20
=20
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>=20
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>=20
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>=20
>   pip3 install dtschema --upgrade
>=20
>=20
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm/boot/dts/intel/' f=
or 20250130074553.92023-2-u.kleine-koenig@baylibre.com:

Maybe I can learn something here: Is there a command that only checks
this single dtb file?

> arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb: /: compati=
ble: 'oneOf' conditional failed, one must be fixed:
> 	['terasic,de10-nano', 'altr,socfpga-cyclone5', 'altr,socfpga'] is too sh=
ort
> 	['terasic,de10-nano', 'altr,socfpga-cyclone5', 'altr,socfpga'] is too lo=
ng

I couldn't suppress a smile when reading the above two lines :-)

Best regards
Uwe

--i27xtr65u4mwcg7i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmec/roACgkQj4D7WH0S
/k7XcAf+McmSrjqPldUUgwg9iMbi64MUaN1HDEQ50fhhewslrN0rh8wUiNt+yPRT
kTEoy/DgFFWCIeb1013BNgYeQrEyAKrIsKaOHf+BB0Fdxm7NWZb4lyN2PeWviU8b
Kd7SK6/j5TDx21fWVPXb00Ge3zXfOh5lgqDezZx9jF6wF5Cq/M9694G34FI/h2ho
03gdlRuEoPSXcILgmf+fG36U/0HJXHjYf2YUdNMmMYUZ5c2A5F9nvHt9FZgApkLs
vU6z9pYksuY9NwU+FCjAPsbUUU+o/bOOGJ63BlF5FW2GqJ/a5AUoYUayHMperKNf
gG+FzaP/ac7e28rFY4A042kIBrOSLA==
=q36O
-----END PGP SIGNATURE-----

--i27xtr65u4mwcg7i--

