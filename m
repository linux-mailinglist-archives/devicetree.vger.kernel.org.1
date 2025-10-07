Return-Path: <devicetree+bounces-224270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 690C6BC259D
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 20:14:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B2973AC12D
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 18:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F022E8B8A;
	Tue,  7 Oct 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="GHskeJ5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6712E888A
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 18:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759860773; cv=none; b=r/u+5aLO6fKK6hss9Lq/FQJnHwBD5U0Lo0ummPbcXYXNmBQIYdIepqDqyXAG2haF1+FRxAk3cQIcoFGnJW4mgcylXYcSsrb6elgVXrISjF+DUtZaIsNbrcBqe2U5jAIYIQ7awPykdnJfbRRextvTqJ9STUp9ZHdulHr51OOvOCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759860773; c=relaxed/simple;
	bh=8SHmDoHdQmKTfiI5PMccAlbyA1V46slp40pEW9LImx8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=P9ikKv+/KmZKUy3shZIPdOkKs1oD1o3zQMVqafGZo5XVhRXq/iPs2yabBEry+DEexbA5qCEMbLX2WNPieLXwcqFWAeuqgJihElrS/MfL6lNjiNkrlWiI50aLkCBvFy1XLrZwTUR0/CVq76w/OSfNKxZzDT10rOXc9HiG1BFuEEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=GHskeJ5i; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-863fa984ef5so802046985a.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 11:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759860770; x=1760465570; darn=vger.kernel.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8SHmDoHdQmKTfiI5PMccAlbyA1V46slp40pEW9LImx8=;
        b=GHskeJ5iOGKUF0EhQL5GEL/fKpWwQO2j5EZT4v+Xghzwol/ZHwKO9XTIDVndG9KvFt
         lpoQvb5UfDCGsrTvZIawsNbC/tBSVgz7zj6kRKw7Dz5ItsuvgwqewY+IhqrfPACLLisn
         f2AIjKn9EQjXiCH4O4orSGZ7NaOL6KmP2884P+Zlzbo0q/AIp4g3jLpg0fa4+e3UjNjj
         rd8q0/rLhx3cTYRl1swLVrvo3Gibnq4bzOW6keffIjCuAPgz6NJJ/MzL7SvTXcQZN6+C
         X7WgxzpKqdCdgNUpYcAQUbOIs02WnasJCbIjfAygCi7mOPTXEJA1RVZkYfQiEL7YSnbe
         Fm5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860770; x=1760465570;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SHmDoHdQmKTfiI5PMccAlbyA1V46slp40pEW9LImx8=;
        b=kE0wvE85EFornHQPO29hQOFeHe2RHc+FX2KUVgXANHlD8aE1VL+LuAwTT03ouri9+N
         C3Mk67vpQk0k2I6MsSstn1XLlQ6701bXS5UiE6lRGw4UATNH0qEGrTcjAz/9dlNtkFok
         o3zZcmLa0CWfWC/NvG6Eeaa8x4GMf86+bQH8JMyVu7gb9Lo6Efmr6nOLXFb2FR/+Q5DA
         8CqsxBZJzdCW3r3HBEAbrzr1v2cF/rYQh0gCn/NXEehyc+qy+pC9mRcsL9S3La4YJpAb
         wP/o0PiZFGwO4jxTgAmNSHlKx81fMQZLo+Md6QZu8Gwy6U77sgfeUnSHcEfkpULhE5rz
         irgg==
X-Forwarded-Encrypted: i=1; AJvYcCVSnfiG6KgZEsDBp01RMXIUtEcKGAhpfitJoAeFrPqkD1c+VxS1HP4jkgcjlfMc1FukHlFTrGI4b4Ix@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8D8zW0xw9MxMTkY9oU1zBnQYs7gu2mIBwe9vYGdQdZwMOFqjp
	DyI+vJ+ja2uiy/8k/A2x/Tho1Izp1a8w/mN5Qurcj6Pqt1wvxrmqLqrlg0/yWvjSUHI=
X-Gm-Gg: ASbGncv/SHesiyWrz7ed3VJ8/McVlMzX0FxWl4MndS2aHGIpxz3x2kQrfUGVwbPPzwn
	/KZpFOlNN/MEHm/hK3bydJLFYXnv4yQP3bGJx/XAZymswhSqRKJOLMlgzljz+w/qe5MU550dqcu
	8GdAnE00Ek8hAty9WSlorrqc16JJ3dDA8nou39JfEPU44/TfdH8NMqMXwBwXe6hw5QteA8akAd+
	gbNIhW76r2w5Y8fL2XORfxnhWb987nSM6XA3o0U6rPF6GZdC9ZigVGtUc90FOAw+oVSDUPhtsYZ
	RoWfcjI+1/U2uswItfmD6yzIWS9cn2ewy/f2nKuFor37A5Nxc07NwY4AB7vwacy2u7d6Dhafgbr
	LuzT1p+FXdPwJr9nBhCsuTN+UoE1VgxJF5srPB13CjUZ756EfF0Kx
X-Google-Smtp-Source: AGHT+IFJwiFyqdn6vHfsVW5AqTzfPU59JdPTe9jsCTVyjegINt2FetoGEQEhtGUGJnu4FO7lY33Vsw==
X-Received: by 2002:a05:620a:1a8e:b0:878:671f:7395 with SMTP id af79cd13be357-8835410ff67mr108686985a.69.1759860770343;
        Tue, 07 Oct 2025 11:12:50 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-877794b8c0esm1649064985a.45.2025.10.07.11.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:12:49 -0700 (PDT)
Message-ID: <dd5f934f222116a29ef5ec19a52a9b3ae7433de9.camel@ndufresne.ca>
Subject: Re: [PATCH 13/16] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Krzysztof Kozlowski <krzk@kernel.org>, Sven =?ISO-8859-1?Q?P=FCschel?=	
 <s.pueschel@pengutronix.de>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel
 Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Tue, 07 Oct 2025 14:12:48 -0400
In-Reply-To: <c4b0f1d0-cebd-4381-b2c0-20c177c0732c@kernel.org>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-13-36ad85570402@pengutronix.de>
	 <c4b0f1d0-cebd-4381-b2c0-20c177c0732c@kernel.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-7gUIbCmFrGsfnm1LXQ2d"
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-7gUIbCmFrGsfnm1LXQ2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 07 octobre 2025 =C3=A0 17:38 +0900, Krzysztof Kozlowski a =C3=A9cr=
it=C2=A0:
> On 07/10/2025 17:32, Sven P=C3=BCschel wrote:
> > Add a new compatible for the rk3588 Rockchip SoC, which features an
> > RGA3, which is described in the TRM Part2.

Please write something here. You can't explain why RK did this, but at leas=
t
explain what are the differences and additional feature. It should also be =
super
clear through your patchset everything you didn't support, since when readi=
ng
your set, it really have nothing extra implemented.

> >=20
> > Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> > ---
> > =C2=A0Documentation/devicetree/bindings/media/rockchip-rga.yaml | 1 +
> > =C2=A01 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > index
> > ac17cda65191be047fc61d0c806f806c6af07c7b..11e86333c56aab55d9358dc88e45e=
7c1eb
> > faae9e 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > @@ -20,6 +20,7 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3288-rga
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3399-rga
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3588-rga3
>=20
> There is already rk3588-rga, so please explain in commit msg
> differences, including compatibility or lack thereof. I am confused why
> there are two completely different 2D accelerators simultaneously on
> that SoC.

It is quite strange hardware design, but this is really how the hardware is=
. I
personally don't expect an explanation from a third party. Its a mirror of =
the
VOP2 planes really.

Nicolas

>=20
> Best regards,
> Krzysztof

--=-7gUIbCmFrGsfnm1LXQ2d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVYIAAKCRDZQZRRKWBy
9Go6AP9e4y2IiSL2I+67c8y9Mn1TNSV8ucapX8SFj5r6BqkeaAD/ebUK9jFL041m
do23vyGkPpDC61NKSkX4f+0FGc9xDwc=
=HOjH
-----END PGP SIGNATURE-----

--=-7gUIbCmFrGsfnm1LXQ2d--

