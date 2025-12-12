Return-Path: <devicetree+bounces-246099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FFCCB8938
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC2E7302EF78
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C99E22DFA3A;
	Fri, 12 Dec 2025 10:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="Zy5C2mH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0755C2494F0
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 10:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765534157; cv=none; b=bvJ7MzNNoQYh8yVSNg14POFCVCoVRlu9qt5sFGl3HWDZVnyNd9I9vxWbAIwARSvxSR4/RFhnnLgt1PdmvpwqQQj5vIYTvgtOOmuRuExlCrPbb6MjhNK7wxgUhe7b1FK10UYfjzNryqZR0ujT9pGx/WkYUO8zSb2XqVVqI7iy0qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765534157; c=relaxed/simple;
	bh=+CgqYVH9orNZOCijPAUqc+h3PhteR2BDiAlkPl93y2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n0jIxcwPrMALKEuaIK25rlOq2qVvkJgHHZzR4M+9f9huXQzTNLei2byl92N8Ye34KOY5W3OP5yyBOuFnBFY3hjgmB6gkiESqHjoAROYT0OyOj0pAA3Phg0G9FC/84nKCu+IoosxT3p1IlWHsWWQMFqysE8fyiJd3K/aU6PRTp9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=Zy5C2mH3; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b736d883ac4so176565166b.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765534153; x=1766138953; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=piKeicldVFohFnPgSVyUwsQHuUt89125myGk5tf25V8=;
        b=Zy5C2mH3YV3kmR8lWvRj8ihyBacWLyf8HZzakMAOQgEjFKxqUOQMQLlRSmB8qVh1R0
         W2M9hL6vEtna1D83xuWy5rYzO9keo72jTylMimmImti0eu6FonAXHdCIlGm76sYGZEw0
         /UKwjUsaUGcvqx17waTIfbZDmDlfhilMEraLQChb5RzE2/6hVEhJdpsr1BrNTz6+QEp1
         sGYGKWrwh0XaTtvs1nw3ZILQWbcmRUxOqkY942oB0YsTRQ67W/DIdAg4vOF5tbsDXhE6
         oghjsaETf666NTM5iqFHV7DDklMqNaD9uqQRn9XTTrZCjIe1y9xVVOX0JaTG00j4RH44
         cXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765534153; x=1766138953;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=piKeicldVFohFnPgSVyUwsQHuUt89125myGk5tf25V8=;
        b=gqyFe/X7+bz3MT/xkMxZj++ubutHu2RjyJIrhqPNxZ84BA4jjQhg/gteAOBP1NPk/A
         VACvAuP3wA5vLTkm3zG8Txi4z0+cL5dcfMJRshCvvs/01YxwESWYjHrFTFw0bXgmj/60
         Wjl0yASfx7yK+KG78LzORAVWrXh3T/KWxvK0gdi9iHZZBzkuQjq3DsDecAAe3FYO18LD
         eZBCwiRxry/SJ4RiO+RGCAGP/sDymHfIguxd+BH8lBl+ZbU6EKg5Mlx7TLHVdTcx5hUi
         IH7eWY0qVDoh0F6e3lqvOLL782OF8R8At1tKZ7wS/j7GoXL1Lgje/6WLSbbYaIyPgjWQ
         BHQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbtyLgyw8Dk4FojBISVHAm+9JNVlUbdLbC62Llb05JL5FS/leTSTgsAqpnp6pNiuDC+dTwAvdtMWSD@vger.kernel.org
X-Gm-Message-State: AOJu0YwIA/TshFrJh5Nrk/4yvj4FRWRaocWo9a8q1bgZ/LpqeNV3HGDs
	xLcSQpPx2wzVY2lerPMxV3x/0UOBIz+tV4SkVJcido/FhoY3KBKeUNTDyYpZJgyLBxNbKR67W2J
	OsDQca65yA7pg+KdhLzE0CXRH0ZRQR8w7rQXH+fMsfQ==
X-Gm-Gg: AY/fxX6LN1bFGUCzBNFmm7MhtKyoRcQLhvw5fQ2ul8amDWhe3mTrsZLb+3cQtOPxx8N
	vkViTMQEqr/OnHUD1tuXTp5jJA/gDJBEoJIeVJgzbeCiok9u4iVn1TM3pzsj+MkkkFWxXcBeRKl
	BLoRaCdcSCtAdt5gav3EcRN0S3ND6d2xanu82y5aplRoBDE3vqqoQYZmEEtMfuzdA+zaAXMnE1q
	QTGS81CzTQlRaC3MXnnZFOLSFa7qJCTA8RdPbOVjgOK5S5lpku8v3/qYPT5KDMoiMJny4U=
X-Google-Smtp-Source: AGHT+IGu9UDsKSPu1wQCEy9ZSntpZSOo/9V+U0kQrHcNkQAxG5oPTpTaMv6wXo2k7lZ0/X2pNnXrjg4sARyaZrNmc5Q=
X-Received: by 2002:a17:906:f5a9:b0:b76:8077:4eaa with SMTP id
 a640c23a62f3a-b7d23618a6dmr134378366b.6.1765534153256; Fri, 12 Dec 2025
 02:09:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
 <20251203122313.1287950-2-robert.marko@sartura.hr> <20251203-duly-leotard-86b83bd840c6@spud>
 <CA+HBbNH6wO2VWOp1Dn52ArrYg6z89FgYnT3x-jsHsTVJ5xSBSA@mail.gmail.com> <20251208-absolute-diploma-6575729ab43f@spud>
In-Reply-To: <20251208-absolute-diploma-6575729ab43f@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Fri, 12 Dec 2025 11:09:01 +0100
X-Gm-Features: AQt7F2qi9N_ckMGJFgowBcvF34rbB96zRSF2oUqF51CXmoKh0Qd3rJ2sqP-K-eQ
Message-ID: <CA+HBbNHuYCq9oV4ZjWGjwnJM=oz-O85p_tqB+UnTBmivzDoowg@mail.gmail.com>
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

On Mon, Dec 8, 2025 at 6:10=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Mon, Dec 08, 2025 at 11:30:28AM +0100, Robert Marko wrote:
> > On Wed, Dec 3, 2025 at 8:19=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> > >
> > > On Wed, Dec 03, 2025 at 01:21:30PM +0100, Robert Marko wrote:
> > > > Microchip LAN969x is a series of multi-port, multi-gigabit switches=
 based
> > > > on ARMv8 Cortex-A53 CPU.
> > > >
> > > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > > > ---
> > > >  .../bindings/arm/microchip,lan969x.yaml       | 32 +++++++++++++++=
++++
> > >
> > > This should not be in a unique file, put it in with the other microch=
ip
> > > arm devices please. Also, the wildcard in the compatible is not
> > > permitted, only way it'd make sense is if these are different binning=
s
> > > of the same silicon. If that's the case, you need to explain why,
> > > because compatibles are meant to be soc-specific.
> >
> > Hi Conor,
> > The issue is that there is no unique place for Microchip SoC-s,
> > LAN966x series is in the AT91 bindings
> > while SparX-5 has its own bindings file.
> >
> > What would you suggest in this case?
>
> Ideally, arm/atmel-at91.yaml and arm/microchip,sparx5.yaml would just
> become arm/microchip.yaml. The axi@600000000 thing in the sparx5 file
> looks pointless and can be deleted IMO.

Ok, I merged them all in one generic microchip.yaml binding, but I noticed =
that
arm/atmel-at91.yaml is licensed under GPL-2.0 while arm/microchip,sparx5.ya=
ml
is dual-licensed as its preferred for bindings.

Is that going to be an issue?

Regards,
Robert
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

