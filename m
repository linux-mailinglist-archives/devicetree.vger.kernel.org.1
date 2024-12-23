Return-Path: <devicetree+bounces-133621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F95D9FB0C0
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37E5F1881D31
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B735F13BAE3;
	Mon, 23 Dec 2024 15:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zN3DJmJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F8182BC
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 15:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734967924; cv=none; b=F0UNyaSCa4LEn9/d84CHqGieBdhwh7pkK/1RXL3Mj2guskBRzM0KiTFamvYxbs58rpziCD6mejwxNzkunEldmizQeWFiBBy3mfdRWs08HnNCbHRcWSh3m6FDSMs5SxTn6Hj7evgN692Q8+JDUM7yQr/3vNusM1FEFp72YinPmjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734967924; c=relaxed/simple;
	bh=Fpb65OEeZ6TamvLcRuiv694nWon/qJBWUIsG3/yJUzQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QCtH/ob4fSEUrXjIBperhggHopdgl00qNWQYCZkMOulIf+kbM4hWZECTeAxNt6KBBcs8FTyjJIhvx0gfMpoaB5SwsI/NJx+hOR66690jlpYbdXukKEEO4FJfANNj6qwA2pjCOEUtErsZANxFkKNZsb+KV9HgnHrJdEkZ1jGHFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zN3DJmJX; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43624b2d453so46159595e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 07:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734967921; x=1735572721; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+MUwOgRUnhXT5bm369Orj5PQynMd7SVyypJ/rGIX8VU=;
        b=zN3DJmJXnpr9Qxquj/zcV/awlF+rvmb3gd5x7aJRFKd84bjt7Bkorj11Y1+x3ZxHcn
         XHdHohADToH9ut8DHs56n6/wV1OETPtPtB52N+jJMo0twXGNI41ZIB2Cc5iXRdOUu2Zg
         XlMiFHlsMisUOGejCiljoxp1r508zLgqGv6ezlsdh0zoeaAEE0mQKT5l6VqJpVfTXzb7
         ausSaRlkGDrw1EQY+pcLxDdK/iSo/76/ycc/vZQdnrBkDYsplFO3mtyqojolV6AFLMCO
         sLBZcv09ZI7UkcEAz2SdqgHAzs2kjjjokjqNTsLQImap7sNo7dedctgbdMCqQy26tUV1
         qeLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734967921; x=1735572721;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+MUwOgRUnhXT5bm369Orj5PQynMd7SVyypJ/rGIX8VU=;
        b=U7p/HAqVkfzseHoq+xDzuEa59/0aGKCwjeGkQMROmGxZ9dAPSX222gi4c+JgiQDjYS
         RkMBlXqoo3mSzXYyU+9KqNx23Eva7vJmQayqgnJGQL8ViSpOINtA4UzXQsXg/BTvasFs
         kTUNeIyvhTiBEwb+nxHK6IFj1FGN6ANyEZx9VSkOBNUuVLS70InhLn06spS4GcIoGETX
         vbkV790Mit/6ZbUTCoXc3S8DOYbTOy2rfUzrh/gPjESyx8zl08LaU5Ly/1ZN0iJXLRMM
         VSSWIVEl7HyrF4N7GbpELDj+ptsBAI2Ew3Y2ZxKykumtR24oIZJsdMYkT5isXeR+8ASt
         X2uA==
X-Forwarded-Encrypted: i=1; AJvYcCUXXM74Ey/ttmoKvob1bixxVEvSVgRIAB0FswDdbbPHjZ0INJvlL+xYfMhSis0iHVjIP5NsMHUz1NFE@vger.kernel.org
X-Gm-Message-State: AOJu0YyiXNYBMS3iJqmX+bTb24/Pnr3qi5+bQnPEx5cZpXFZUCkJw9cT
	gfY7bTtObiRwPB10rsTzIf4EHiWhZuJuCnfUIs39fZlBSrkzfxrNkbIXYGRdgHM=
X-Gm-Gg: ASbGncul0+uG6xinU6DS6bQ7VxAY1XGVwU/jX+foXfLrsaL2HgL7BeWTkO6aaiHfCc6
	7ym0+KQBnxINCemeQt1GAJ1L5r7s9RxSF5UDFRB+MYVkBZ5K2iXeEydMubQHIZaQ2/xqmu75reB
	LeaetE4gX2tU1rP93ca8RwBmNrE7bEuuM864y2Y8Co+OIAPD4ct8Ycmse8phoX4/sCCHRyOkaDT
	tMN3uRN33Zipu/LmFw9I8akPwqMzOL8O6yUwwsg6Gb56atBXAo14SA7/SeAew==
X-Google-Smtp-Source: AGHT+IE2PUKcy1CT4BX1kJYJ+FDVyKDT8Nzp8yzBmGcj8sTdsMxOqequomdtYBNo7dbt4pR218lSTQ==
X-Received: by 2002:a05:600c:5246:b0:434:a781:f5d9 with SMTP id 5b1f17b1804b1-4366854c073mr112846465e9.11.1734967921077;
        Mon, 23 Dec 2024 07:32:01 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436612008b1sm138466205e9.15.2024.12.23.07.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 07:32:00 -0800 (PST)
Message-ID: <9507951f9ce4ee9d8c553d8964f00ef217f8ed1d.camel@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: google: add gs101-raven and
 generic gs101-pixel
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Mon, 23 Dec 2024 15:31:59 +0000
In-Reply-To: <d960e22e-01ad-406d-9616-d45edbef0232@kernel.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
	 <20241220-gs101-simplefb-v2-1-c10a8f9e490b@linaro.org>
	 <d0c1511f-b052-4690-aefb-3fb41e1e5875@kernel.org>
	 <cfdc5b1b03140e3d2ce3fb58e8b342dc2ac06d04.camel@linaro.org>
	 <d960e22e-01ad-406d-9616-d45edbef0232@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-12-23 at 15:14 +0100, Krzysztof Kozlowski wrote:
> On 23/12/2024 08:45, Andr=C3=A9 Draszik wrote:
> > Hi Krzysztof,
> >=20
> > On Sun, 2024-12-22 at 12:38 +0100, Krzysztof Kozlowski wrote:
> > > On 20/12/2024 12:27, Andr=C3=A9 Draszik wrote:
> > > > Raven is Google's code name for Pixel 6 Pro. Since there are
> > > > differences compared to Pixel 6 (Oriole), we need to add a separate
> > > > compatible for it.
> > > >=20
> > > > We also want to support a generic DT, which can work on any type of
> > >=20
> > > There are no such generic DT devices upstream, so we cannot add bindi=
ngs
> > > for them.
> >=20
> > Do you have a better suggestion for the wording?
> > How about 'gs101-based Pixel base board'?
>=20
> It's not exactly about the wording but the concept. We don't have
> generic devices, thus no generic DT (DTS). Period. Thus you cannot have
> such schema.

There is a Pixel base board, with different additions to it, e.g.
different displays. The boot loader can pick the right one.

Let's discuss that in the other thread to have things in one place :-)
>=20

> > > > gs101-based Pixel device, e.g. Pixel 6, or Pixel 6 Pro, or Pixel 6a=
 (as
> > > > a future addition). Such a DT will have certain nodes disabled / no=
t
> > > > added. To facilitate such a generic gs101-based Pixel device, also =
add
> > > > a more generic gs101-pixel compatible. We can not just use the exis=
ting
> > > > google,gs101 for that, as it refers to the SoC, not a board.
> > > >=20
> > > > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > > > ---
> > > > =C2=A0Documentation/devicetree/bindings/arm/google.yaml | 18 ++++++=
++++++++----
> > > > =C2=A01 file changed, 14 insertions(+), 4 deletions(-)
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Do=
cumentation/devicetree/bindings/arm/google.yaml
> > > > index e20b5c9b16bc..a8faf2256242 100644
> > > > --- a/Documentation/devicetree/bindings/arm/google.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/google.yaml
> > > > @@ -34,11 +34,21 @@ properties:
> > > > =C2=A0=C2=A0=C2=A0=C2=A0 const: '/'
> > > > =C2=A0=C2=A0 compatible:
> > > > =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Google Pixel 6 / Ori=
ole
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: Google GS101 Pixel d=
evices, as generic Pixel, or Pixel 6
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (Oriole), o=
r 6 Pro (Raven)
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItems: 2
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 3
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - google,gs101-oriole
> > > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: go=
ogle,gs101
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum:
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - google,gs101-oriole
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - google,gs101-raven
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - google,gs101-pixel
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 - google,gs101
> > >=20
> > > SoC cannot be a board in the same time.
> >=20
> > Can you please expand? google,gs101 is the SoC, the other ones are boar=
ds.
> > Is the commit message unclear?
>=20
> You now say that these are valid boards:
>=20
> compatible =3D "google,gs101", "google,gs101";

Sorry, I don't see how (apart from the fact that dtbs_check flags
non-unique elements anyway). The result of the patch is:

        minItems: 2
        maxItems: 3
        items:
          enum:
            - google,gs101-oriole
            - google,gs101-raven
            - google,gs101-pixel
            - google,gs101
        allOf:
          - contains:
              const: google,gs101-pixel
          - contains:
              const: google,gs101

So one can not have 'google,gs101' twice. And if I only add
    compatible =3D "google,gs101", "google,gs101";
to the .dts, then dtbs_check complains indeed.

> (although compatibles
>=20
> compatible =3D "google,gs101", "google,gs101-pixel";

OK, the schema doesn't flag incorrect ordering indeed.

> Both are wrong. SoC should not be before the board and SoC cannot be
> used alone. Your schema allows that and that's not good.
>=20
> I did not get what you want to achieve here, so tricky to advice.

The intention is to enforce either of the following three:

    compatible =3D "google,gs101-raven", "google,gs101-pixel", "google,gs10=
1";
    compatible =3D "google,gs101-oriole", "google,gs101-pixel", "google,gs1=
01";
    compatible =3D "google,gs101-pixel", "google,gs101";

I think this works (but I was aiming for something shorter,
possibly involving minItems):

  compatible:
    oneOf:
      - description: Google GS101 Pixel base board
        items:
          - const: google,gs101-pixel
          - const: google,gs101

      - description: Google GS101 Pixel 6 (Oriole), or 6 Pro (Raven)
        items:
          - enum:
              - google,gs101-oriole
              - google,gs101-raven
          - const: google,gs101-pixel
          - const: google,gs101


Cheers,
Andre'


