Return-Path: <devicetree+bounces-142841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6535BA26C80
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 08:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE9C716624C
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 07:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE5D204C2C;
	Tue,  4 Feb 2025 07:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="idF5xVtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E30E2046B1
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 07:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738653187; cv=none; b=gfJD0unu3jKwXdV2VWeOWUlpbYnxkn7Z7NdWBnnHYar9qsiCInz8YNvOpBUnf7pPSzftl1HkpfWMTH6onrDPVXhDOXcUzjJhsdDueqO5fBT+JoqamR13bzf0n3BIMXpf8Spv+J/1IQqXHkqb5PnlENU6t3VutsJ9qkzgVoyLogI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738653187; c=relaxed/simple;
	bh=KFABDXCSdsrd6uOQFOAccAAGvzed5qXZNHOtmv6ybdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PAGNcDJR+KMjlB0G1LePr5heMUL7QbdciE96J7JT5TrI2shwG3b4dk64nobJJlGKR8ELhDTyrRwdJPD2Z1mGTCB0OdU8KCBi+itgVaMM6YVKuZV8K0UgJeUIdBpK/jl9WbRLak2sxcoF3Jxx663I9sGkigb5Yb7g2atPE7gtMNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=idF5xVtW; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab6ed8a5a04so861211966b.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 23:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738653182; x=1739257982; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JFQ8QgaVc56ZWSK1ugpzWPCE6fH4oiEdiJ9FyYFmdnY=;
        b=idF5xVtW3Q+EzWs8WneAG6bHrlwLL5twm6fpV4wOB1nJldIJbEr3vIUZcj1TM5gODX
         j5iXtb8DittunYzC0bKYxts1qknTLPAu7OGJR/qDF2T4QZDFRyvcsVKvv3Xlloxyww17
         6qeNwSD6ohHnLUj7HLQ3ZbFc7mcxjS084ycGg526DXIw8lJHh53+asXPH+e89BLv0bZT
         KiRrTguZYwk2OqVJyPuvNSnm/pl2sq9FjLYBxkGLG+T4kkVVIXUctS2bcXr68Y9q+vfB
         BwM/Lb9tzmLILN72MFN1Zm4BcoLMIjt/UAaq57ZePWFjM5EpRnZLvnS4gPw4/g+0j4JZ
         jtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738653182; x=1739257982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFQ8QgaVc56ZWSK1ugpzWPCE6fH4oiEdiJ9FyYFmdnY=;
        b=PBirfjf8BCOixqY+/UgfvjKrchlzn+3fAXMgq3UsYSKv1JowaXHr9nYFzEKd80hkD8
         sOudNA71Djt/nFYac+8cMMgzY/HvhbGiuWdG//8NTFCFy+XK6X3JI2sV7aqetNIL/s25
         X9fikzIW4mcsCTLflF73tmzk0LpmByBhijMa8dmSsz/RdMcH580uyH4ADP0MLnsyaIhE
         yVEQSyChrnxD9PbBuqrgVHCV1srvMB+W/zwmk23FKPR0L+AU3OpVgpLD9EAwWkyajU4N
         i5n3oqZjsrVFpbtxrua2j1DXxEwt4JdNb2V3YXG2vwcFgyFi2HsSYn/0ql6nLEsksSc1
         wVog==
X-Forwarded-Encrypted: i=1; AJvYcCX3THUA+Wtf88z+9f4hsrKkTXS1lxJj3ShJbMkVAby6sqEcrsWgrvetwJ/EFC1Kc++HTmGSkQ5oeW+x@vger.kernel.org
X-Gm-Message-State: AOJu0YxjQR737N0hcqTuvJGqnqDEdWyNu8YgwoB7IxZOmXbN9+D0v8vv
	bActvlxqSrDPVYmSDVdt82va6Okx+k5dJjhi4PbNQF32mcIQtN70BKt1DWTqYpA=
X-Gm-Gg: ASbGncu9Cj756RCT62uiq9Z+hsiF8Wimb8vRV3ZIRDOgTbUCrtwN5zchyPA3CGf3CtW
	zMItfs6MKGn8ep9RXStRj85zIAi59Wu2EucO6ANRNDrs+P7S4A7EAO0HkXl1ntZWdt9qECrraXJ
	32KVFOO1A5I6RK9kMuHcRQnH/EXjMq5g7rqMT6llD3dcTdaH4FXjjNFCzqmpUJQYLY+4DDFOsW6
	gTEZEedf9FlcOlr5CFWtOocQJ2Kz7kS9erM60jgErVWsy2sr3y+bvoLvRjVjJ2iIhwrHk8j9t2T
	9LsIlKu/XWmAUwk9/ynQ
X-Google-Smtp-Source: AGHT+IFoOvj0APUYqVIcX7Wv45PC/CJ7eVsrS5D9kApDpCu+Tt2rJbGbqowsoSxGkScrHKvOo9aWxg==
X-Received: by 2002:a17:906:dc8b:b0:ab2:b72e:cf44 with SMTP id a640c23a62f3a-ab6cfc8730fmr2899312066b.2.1738653182133;
        Mon, 03 Feb 2025 23:13:02 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc723e4ceasm8755845a12.21.2025.02.03.23.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 23:13:01 -0800 (PST)
Date: Tue, 4 Feb 2025 08:12:58 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <nq7bixxzabjkaa65icm2rh4ejumjm63tq3drqmvq27qdjrr5hy@cnean3edfbyq>
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
 <0cb54b0340ef021e309e49ca0de97809a8c8ee9c.1738600838.git.u.kleine-koenig@baylibre.com>
 <f3148bf2-952c-419d-9e83-b6c9f1d47d67@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wlj5wtagrjnpwtkb"
Content-Disposition: inline
In-Reply-To: <f3148bf2-952c-419d-9e83-b6c9f1d47d67@kernel.org>


--wlj5wtagrjnpwtkb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

On Mon, Feb 03, 2025 at 06:39:09PM +0100, Krzysztof Kozlowski wrote:
> On 03/02/2025 17:46, Uwe Kleine-K=F6nig wrote:
> > +
> > +	chosen {
> > +		stdout-path =3D "serial0:115200n8";
> > +	};
> > +
> > +	memory@0 {
> > +		/* 1 GiB */
> > +		device_type =3D "memory";
> > +		reg =3D <0x0 0x40000000>;
> > +	};
> > +
> > +	soc {
> > +		fpga: bus@ff200000 {
> > +			compatible =3D "simple-bus";
> > +			reg =3D <0xff200000 0x00200000>;
>=20
>=20
> Are you sure simple-bus allows this? IOW, no warnings from simple-bus
> schema? To my knowledge, simple-bus allows only objects, except the few
> allowed properties (and reg is not allowed because it is bus, not a devic=
e).

I double checked to have a recent dtschema[1] and removing the reg line
doesn't change the output of

	make [...] intel/socfpga/socfpga_cyclone5_de10nano.dtb CHECK_DTBS=3D1

But I agree that in the presence of

	ranges =3D <0x00000000 0xff200000 0x00200000>;

the reg property isn't useful.

I'll wait a bit for more comments and then will send a v4 without that
reg line. (Unless Dinh is happy with my patch otherwise and applies it
fixing up for this issue themselves. *hinthint* :-)

> Nice coincidence with other patchset from Intel also claiming FPGA with
> resources is the bus, although there it could be root port.

There results no action item for me from this statement, right?

Best regards
Uwe

[1] pip3 install dtschema --upgrade --user --break-system-packages

--wlj5wtagrjnpwtkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmehvfcACgkQj4D7WH0S
/k5p6Qf+NG5nI+S0uGoFSwIFogGlx57g1Gp9Bgn0L0+w09hnkYYeW8LBcD0HGmki
rlLH12jIrXeBTMJ9ay9/gNXySZ76o3RHI+3fbxhXjChNSBbmEx+rhOhz8q5vCFTU
6IUDpyEWv6mzQxORxbOpn6N4XOolW5yI4vXnVRNKUIvinCtcZbyN/v+PHHrCUjgb
sAkZ4G3xeN7DSLAk39kOT/sMV0RqxndVJarBtMTqKnhbsEp8KuAKbr65SdWwgpD+
j82BCvZUw+Yjd7JbUXQ+AB0S3nA6Rc/wtth0wZ1ThQDUVnrvcSi3bJqMzbQUCquR
kOOSbuaFLrfmxBaQlrdWYwA7UMTpcQ==
=42aF
-----END PGP SIGNATURE-----

--wlj5wtagrjnpwtkb--

