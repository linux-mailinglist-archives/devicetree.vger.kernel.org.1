Return-Path: <devicetree+bounces-245152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9096ACACE0F
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 11:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADE393015154
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 10:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECCE3101DC;
	Mon,  8 Dec 2025 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="I2dttRsi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C6722D7A9
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 10:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765189844; cv=none; b=Dx6Oyt4FLx2cP6lhekcp9gWlnzODoHIo9bc7RTry8vSDmQXDFvTxlTrP2Of1taEKl4JI8+HS328KCeFecsxsx9y2llR93dBRM57qzKpVbUeZB/xNKzE+yIxu9iLFXevOp3DAeOaZe7bxx8t2vvttxsecVLusjCQvLUawoQWRHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765189844; c=relaxed/simple;
	bh=RLw9fFUPT6gJ5CGBMzrOruJpNjzbWJE4s01IusHbk/o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a/bMg+/6H7oWvhWrBbF6uSbdZV9TOmawiVtNCeKW68VTdDRsK0aUvxakuD1XooyphXa1qMoknfRMumv8VC9OUJ0mJSwF4d1FOd0pWje2lrUTV0JqF6ADGUHKCVDs4cp1la6xBw5GiNwPRJnQMUroJjaF/UUUHUDGZKmKDKQKNqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=I2dttRsi; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b735b89501fso514984566b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 02:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765189840; x=1765794640; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNvqYgBG7iSIMiizE0aJ/ECmeySIS6td2ZjzM3JB2Vg=;
        b=I2dttRsi9UI2sQb6l32Ht5UL7WYQLHqercIt6GSNW/9uFw4hk+pRVltkpZwSTHyKgV
         YZIF8PtFUwXKToEm/Fr4kbw2yoH5tbAdVGfV+PU+j0Sgr7tcpT0K3EluUNw6K32T29Ci
         G4FrUfu7WJrRPyLFw+DpJ2ACoXVefpUhTvB8rHJ4TtUQl2Z/IRZPzcal3gZvV++iGQ0s
         KkRFS6qCxmZqcF0mRwFVwmFxg76CbytQDNUDv3EsRrw5ssHgOllFF9MTdMCljiVeEECA
         uRxnQZDxMRv9EbqSlAY0VQ0YfJTJjrd5DGpa1Yb7qblufgbp6h4ln4sMil9/MY8ZJqo6
         /yUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765189840; x=1765794640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNvqYgBG7iSIMiizE0aJ/ECmeySIS6td2ZjzM3JB2Vg=;
        b=LGg586gew6FW8qa/UCE4RLRICy64mHzUYsZd960VzmWZywu/IkpOTyEZ6hDhIywMy6
         1bnk470Z6ksQqV6IZdS38ww4iJzQ39w2wqZI1b1684n7r/bzKXzi2RyA8eyZnXfZQpBu
         qvAyqmiLPvSa2saMRaH2pQGHWvjZA2wySEylOl+RuqhBleOdDvTDGjAb1o+0yYwCbRiS
         s3lsZ7QU1sjmVj/x4CGzJ/qqBQHm4vijcDEmqIQKSay/LWFlYEWNsEud7+XwTu8V0IQx
         TZxT/VGYoWddL5PF1Ii7z0kw2ywj3zRvHF71sHxi4HOKhbxbWWo0KWTWxU3Y/uHPLhNr
         7Rvg==
X-Forwarded-Encrypted: i=1; AJvYcCXnyCuQk3TmRltMEopcDDCPLZ+s5s7c1D9msm0nbT02C2qOmSWy6u6/rOoA3NDo+vah0CnkQbusy8sh@vger.kernel.org
X-Gm-Message-State: AOJu0YwstF9ANRGwG1ydcXackrHPiYp9tDmGhUaa4bsqOEgxyu5sNrKN
	79HER9WU/0/jtKJxJREoCh4hK9lOyCIvrlTSBNQ/lMUsUf4cB+01hUiDvDW5CbW+qa1Nb+4L/xW
	FekrgUUWXc2HsnTA4CvgQPXXvoJzIOLBg+yT4YhFyKw==
X-Gm-Gg: ASbGncspKgTHExwFbXTRnEOwhXihd18sqpHWQwC0ocKNP9Gzj+N84jwtFCmp/KaPNfb
	vLzPiC4Aapg2W+RBrCj3MciRXhpP2VogLqqjbqbuy9+Ko/Y1jDYgNbrnHLkPxWT/NpK8SyYJUgl
	nav2Ex3X1vDBOCjmKF6u5lvXB8yZHyinyvMW+JGJvwXPybKpMFgbzxCAHwi6ilQVT3SL1LkR0jZ
	qXRCSzq9/PF9SIkcTK3sHqYZx/sbmTEbiJ0V1mQmeZ3W2gmIGqfNzuhNt1x2pGVdchQbHU=
X-Google-Smtp-Source: AGHT+IGTGfVyoL064tKoONxhclX3UfjDWBItbzH79CNnYw055wrJS+DIVrLMSFgzEDdDe4VqLWZokTX1m+LMd5COg2g=
X-Received: by 2002:a17:907:2d9f:b0:b6f:9db1:f831 with SMTP id
 a640c23a62f3a-b7a2432665emr675738166b.23.1765189839808; Mon, 08 Dec 2025
 02:30:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
 <20251203122313.1287950-2-robert.marko@sartura.hr> <20251203-duly-leotard-86b83bd840c6@spud>
In-Reply-To: <20251203-duly-leotard-86b83bd840c6@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 8 Dec 2025 11:30:28 +0100
X-Gm-Features: AQt7F2rM1STFm1xLFXO9y7ZB3gww-XKs-PW-e-F3Xq1nOQlYXGXTztJZMADERPo
Message-ID: <CA+HBbNH6wO2VWOp1Dn52ArrYg6z89FgYnT3x-jsHsTVJ5xSBSA@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: arm: Document Microchip LAN969x
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, nicolas.ferre@microchip.com, 
	claudiu.beznea@tuxon.dev, mturquette@baylibre.com, sboyd@kernel.org, 
	richardcochran@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	daniel.machon@microchip.com, UNGLinuxDriver@microchip.com, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 8:19=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Wed, Dec 03, 2025 at 01:21:30PM +0100, Robert Marko wrote:
> > Microchip LAN969x is a series of multi-port, multi-gigabit switches bas=
ed
> > on ARMv8 Cortex-A53 CPU.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  .../bindings/arm/microchip,lan969x.yaml       | 32 +++++++++++++++++++
>
> This should not be in a unique file, put it in with the other microchip
> arm devices please. Also, the wildcard in the compatible is not
> permitted, only way it'd make sense is if these are different binnings
> of the same silicon. If that's the case, you need to explain why,
> because compatibles are meant to be soc-specific.

Hi Conor,
The issue is that there is no unique place for Microchip SoC-s,
LAN966x series is in the AT91 bindings
while SparX-5 has its own bindings file.

What would you suggest in this case?

As for the wildcard, I understand, will get rid of it in v2.

Regards,
Robert

>
> pw-bot: changes-requested
>
> >  1 file changed, 32 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/microchip,lan=
969x.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/microchip,lan969x.ya=
ml b/Documentation/devicetree/bindings/arm/microchip,lan969x.yaml
> > new file mode 100644
> > index 000000000000..3fa1d4ed40d1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/microchip,lan969x.yaml
> > @@ -0,0 +1,32 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/microchip,lan969x.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Microchip LAN969x Boards
> > +
> > +maintainers:
> > +  - Robert Marko <robert.marko@sartura.hr>
> > +
> > +description: |+
> > +   The Microchip LAN969x SoC is a ARMv8-based used in a family of
> > +   multi-port, multi-gigabit switches.
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: The LAN969x EVB (EV23X71A) is a 24x 1G + 4x 10G
> > +          Ethernet development system board.
> > +        items:
> > +          - const: microchip,ev23x71a
> > +          - const: microchip,lan969x
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: true
> > +
> > +...
> > --
> > 2.52.0
> >



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

