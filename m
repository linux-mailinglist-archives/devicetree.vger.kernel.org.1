Return-Path: <devicetree+bounces-171156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75036A9D92C
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 09:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7784C5A4CCD
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 07:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF6D21B9D6;
	Sat, 26 Apr 2025 07:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="luyXVycX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2551A9B24
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 07:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745653528; cv=none; b=u8AsdG2tGYZgsg1BG2o25hXByyCiKooo07DlpqgdX1837JNNtWAxHZUICbw2m3jEvP7cLsBWQcshgQi1hvz22Xyi4XInvpowqLyFQxgEIjRiaQZdmsUF8d0Nz2L7JUSBs7EFT6orer+DlCxhoqHRZhNYfOt0KvLOuSUYIp2szTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745653528; c=relaxed/simple;
	bh=w8RacVv7kD3lnn+AVvnyUBxmiCMUu8RBJaFo4l2EVyM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iupQp1ft4OtjnANtpGM0ZzchCeQnY608FsereojFRDfafFhJJ4EHj4s+b0p/66qvjJGrVPl1obApEsRvT7MFehoL8uRILR7oDv5Uj1UQR1lmlXna8YoleNEMD2SFbKVNCQSc6fA3f3qx11qMrbo/dkOgehzbN5ArX5XG5wrYT3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=luyXVycX; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 515033FE57
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 07:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1745653523;
	bh=xQG8aR91QUiXJqe0zGBSMh1PwbLabEkgq2LJTt+r2Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type;
	b=luyXVycXjIa2SO5y5jEa/CR1zX3NptRZrTjaACkyul+CJYlD0A9+6wjec1ZkUZ0Jp
	 iq0K6St3V54oJC5SdAVMO3oF7P2vZFOb9M2rC6SkNclDUK3TKkFEZ8gkozOQKcKzwH
	 V5V4JicU2ccRdYp0mgwgfau4hlm8OAkGcZJxBW6+BaRxBT3bdDjHAslcwKmOPiKu5g
	 3hsIfy329X2euI1nAllquTfUOS9ODt030zwBNLapZmSD8GIJebiXA7tfEGAkBHk62o
	 atMC+kOw1TLhEDErQEPTK8uF/h5DSFYCjsmUn/BFVC5EggmiGpZqveVgUXTvdco++N
	 QCzRUQ2cgo2Jw==
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-ace942ab877so4796266b.1
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 00:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745653522; x=1746258322;
        h=mime-version:organization:references:in-reply-to:message-id:subject
         :cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xQG8aR91QUiXJqe0zGBSMh1PwbLabEkgq2LJTt+r2Gg=;
        b=C8fH4Z1xyJIaTE+qAHyuYWpn59CUhzVu7qUoshta8MsY+FTXG+4AomhjihLAlKLxM5
         XhL2G249CSWZMIaoIpRnH5Dw37JFw19z0xgr6dmhQeR6kZIMDhoit7Zy6SP9YFSGMsSc
         ZPRO8mo/Dj1neSPjk0IrRD/s5Gin8USveb/QQanCFLAjJJd3BQFSsZ3Yuu+xK+kHwltO
         O4VZ42e6qbW3KspRLWIJny2YbG79mIsQmmfHEGAP0EfBm0MF+DKeCaqkzdeostjStlXw
         jyAYdtELeH4Wv1rouDXJsTOvHmnVr6Vo+7KRrrc7leHkh2OltxrVGPqV+9zz/gxjnSzx
         67uA==
X-Forwarded-Encrypted: i=1; AJvYcCWiIiRoicHuKXwLNzqsO0ukXhpj+/q+bIkLW7DxaIlnObVZnHT5Wsil0rkJXak4mr900CF5PUoSGyia@vger.kernel.org
X-Gm-Message-State: AOJu0YxUevYypGe6cDIW4f7AW2FYFSyA2Sowx0/Q6T0e74RqLMgjDoDa
	X1faGDw1vJh32VT3fgS2ugY1i02kECRsY5f8uSOfKFYLdQhPx1VIHn1CI4LDLzlqO5n3v3DpUI2
	tQw2VjPxnwlrSMPJ7IyAkB2xPapPR+spLk1C33vOCuzLr2Fo6eCAymu8LPZlkR2kKUYFFrne9dH
	c=
X-Gm-Gg: ASbGnct/jic9x20BRLCqEYriUI/b5OnSu/oVoIVnKTOdOJIiIjGEAXyZsoyNOlZNhke
	wnZm0+iucyBn3n3hsyBtTbOR9q0ONDMOjiU8MSOrsI0W0YhF6ZzDgn53u2lakrhvLDm98F+Ecqh
	muku/2yTtDwscs8tO3OncVvLfV2BZXrKrMKY1CO7VtuRhG5nqLQ+2E0C2dvUH94G63whLkERHFK
	OnQWSxBhC5Y+LNA4wCXMPLOa7N9ELiHmYPtdEM+i6H1DfUy8P/xMsdZxNydOaKtMFdtK8Z4ZoLb
	SabfcEPOuwiUrrg+vOBgB0ibr3lmsSDQIuO2uNCIIA8ohd4OwmySRw==
X-Received: by 2002:a17:907:7f92:b0:ac7:4f1:65c5 with SMTP id a640c23a62f3a-ace84b4c6f6mr175862666b.54.1745653522571;
        Sat, 26 Apr 2025 00:45:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFac88syXkSEHa373nY7+k8VjAiVo/ZD5gaPuEp01MgkPmzBDXRMO1qk5C5k/b8KxWKQSeAw==
X-Received: by 2002:a17:907:7f92:b0:ac7:4f1:65c5 with SMTP id a640c23a62f3a-ace84b4c6f6mr175860966b.54.1745653522112;
        Sat, 26 Apr 2025 00:45:22 -0700 (PDT)
Received: from smeagol (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edb1a48sm256429866b.179.2025.04.26.00.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 00:45:21 -0700 (PDT)
Date: Sat, 26 Apr 2025 09:45:15 +0200
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add
 sound label and pull out the model
Message-ID: <20250426094515.193e5f59@smeagol>
In-Reply-To: <mit327e4qp3hch4xy6qmqmks35tq5w35rw4ybvs5s3q7osxbkv@bzvon2u3jsmn>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
	<20250416094236.312079-1-juerg.haefliger@canonical.com>
	<20250416094236.312079-2-juerg.haefliger@canonical.com>
	<mit327e4qp3hch4xy6qmqmks35tq5w35rw4ybvs5s3q7osxbkv@bzvon2u3jsmn>
Organization: Canonical Ltd
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/bs8.Q+hsXAsnuniQCI/K9Ru";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/bs8.Q+hsXAsnuniQCI/K9Ru
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 25 Apr 2025 22:44:42 +0300
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:

> On Wed, Apr 16, 2025 at 11:42:34AM +0200, Juerg Haefliger wrote:
> > Add a label to the sound node and pull out the model name to make it
> > explicit and easier to override it from other nodes.
> >=20
> > Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/ar=
ch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > index cd860a246c45..9595ced8b2cc 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > @@ -174,9 +174,8 @@ linux,cma {
> >  		};
> >  	};
> > =20
> > -	sound {
> > +	sound: sound {
> >  		compatible =3D "qcom,x1e80100-sndcard";
> > -		model =3D "X1E80100-HP-OMNIBOOK-X14";
> >  		audio-routing =3D "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> >  				"SpkrRight IN", "WSA WSA_SPK2 OUT",
> >  				"IN1_HPHL", "HPHL_OUT",
> > @@ -1691,3 +1690,7 @@ &usb_mp_qmpphy0 {
> > =20
> >  	status =3D "okay";
> >  };
> > +
> > +&sound {
> > +	model =3D "X1E80100-HP-OMNIBOOK-X14";
> > +}; =20
>=20
> Usually the DT don't use this idea. Could you please bring the model
> back to the node? The label is fine.

Hm. Maybe I misunderstood but isn't that what Krzysztof requested here?
https://lore.kernel.org/linux-arm-msm/bb95af7c-5e88-4c6a-87db-2ddd1fe211a5@=
kernel.org/

...Juerg


>=20
> > --=20
> > 2.43.0
> >  =20
>=20


--Sig_/bs8.Q+hsXAsnuniQCI/K9Ru
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEEhZfU96IuprviLdeLD9OLCQumQrcFAmgMjwsACgkQD9OLCQum
Qrd7LQ/4+q4xmthISwE892TSn8RgxS/c7Ti1v75eDFMPcuMXBPnbzt7ZLrRKksFf
jILKVaqj/wxNrGx9xcZPy4KLMY3IQL2mSdgsEYtEKE5F0HxasMpFCo3caHZHR4+Z
q5zuBLw0nOpOrDKSatHjlLefxWQdYOWhZlkzullTZrouh2IJ8jrIAVRGk/EJDyym
6dSXwczKPhX3VLyuEdTNnwSpkSS68avDHHxhwc9Hm/ORbY6N91BR+OABZsJ9mGKR
m7jDQUQkWeiqzNJWpyvE/0LmRUBOvHXA9xSEPX1NP5lyieCP6zjLmEfLYp7/wNN7
4JAye09lIYZPKxf+ZiFPIQkzH00+eFC7k+1Gg80PXMJShHU+JzMXbfMp15e3VSVy
hWhso40J6qAaLAuaMwEMR7Gs7Ozxgjzph2E0/oKyft78Sbx5eyHIRDlPoEkCyPP6
8D5dOBXQprpB1YViCsjBekcfye0PqKRqZnZu1d/dQSDbOYk7Uevw2EmGfzSWZ1cc
alfzejgVtLrnzAinWdr0A2YzzV5gqt2l0D/WZ4Ac2zaQC82oXeCCS0Ia8W9nTpIY
WdmwZkJMyf+Pg1aCy9YZ307vltIPDkKitY2NPyoHlS/184AEQuMp9P7dYcUi1Wdw
eKv4spD6t6WZtwJKU0b7xu8bQznbVXt8wXxjP3SFuZtR0GOLvw==
=nqY8
-----END PGP SIGNATURE-----

--Sig_/bs8.Q+hsXAsnuniQCI/K9Ru--

