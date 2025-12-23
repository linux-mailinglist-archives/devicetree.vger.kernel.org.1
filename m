Return-Path: <devicetree+bounces-249058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1024FCD8D31
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8DF4B3009F5E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D158D352F96;
	Tue, 23 Dec 2025 10:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="GF2uS7wi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB7C34D907
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486112; cv=none; b=t6GuHvVcnjrJp1RIMitosdjA9YbDfEs9A5VOIlRdH3lHInx9yJS6SxTbJKbMH4CaEeKG+GJLyC709RLv7ZwljBlmKn9kMBay1w//YOtnxaM3QxfQN/Gg6/p9zgeePPW1oigDPy5hQDw5VRVbgeCfK05r2d8kn6zPX+vZyTEbytY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486112; c=relaxed/simple;
	bh=nhnhn/ujbA1yivMUlMSXRd1v6Sz4LmmXkvWUytEJhUI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IdbGl52mTif7g/LCUZah1w1CgHQKTx04XtczdVnV+WLpJ9K8cwWwu29AzAOqSUx66R1IY9AiziEeUn3EwLdxlXU4C9VoNVSSn6W1IqU3Mb1v+aX9GBrtLYcqo5857XNdIKjCbjl6oEd3N9oLh11RZGPQtzZlfkRuRsKoTYuksUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=GF2uS7wi; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b73a9592fb8so913593866b.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766486106; x=1767090906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SWwHgDUayFaSdSqe2T6d6UFJFmjd2ZLae5KHc+yXH7I=;
        b=GF2uS7wiRyhBmf1kLR0gIF3Rip3N0z7rurwMgvhBqXkpElhZHM//c4ztfkOfl34VXQ
         1X14GkorXLzezj84xr2Y/dQLW+EfbQhQVOVhtnuM3M454FOIn2PNXJXS36N8bH/whQBV
         zY0fHit1GfAmUbUyKlPfmB88R6AoVgxYJryPviR3Xhc9pr/mmX1utNgHaFZ5HiT/+TFT
         EPfJeiatuCcTI+Wko2Rrfq/cDBpi0ycNUhFAp5hGmFIf/u3Ol72pdr/MxF3qgwek5A2i
         SlQTW3sCFS0UxINftvR9ief03PbV1fiyjZferC+QgdFvMpknr46FIg9k8YC+cFlkaq8w
         fJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766486106; x=1767090906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SWwHgDUayFaSdSqe2T6d6UFJFmjd2ZLae5KHc+yXH7I=;
        b=f/tKnaOPjm/B1ncroIGbv8TVED3NiuflmUJSHZVYEhU9opAlqG9AZyHGdy3JM90Dyz
         1BZ6SKEAxG/2ovvJ7hYk0bgn7tl51GoWwTJ579CcQLGuaZnwn7apOAlDBl/Byi6/WQPL
         odAU+28imXUmdyJ4znD+GD6hfSgXCulGg/QdJPA983zCWesut/o7HIBkyHMO9YWaAz+7
         Mmtc9qkE8bpkoQDDfGtH/ZZF/59+EK9ufp19hX8kt/c3uynXJ0iiVvcm1+flLt2EvFGy
         Amz2r3qgsFG/2b+VkGHt5Nv02LW/fThcJiJe16hJcXpS57zVHR0gsJ3gnA54OBvGRiro
         +82g==
X-Forwarded-Encrypted: i=1; AJvYcCW+PA0UPgIGlQc1NmBXVmhTQRpbJLoxFSqrTolic6g3D+8W0clX+4GIWo8hoXpzTZJcXDtK0+ZgVOcD@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz9o3MdqlsVAjbYRPGaVGjBXF+euJXsYeeKqkk316Rmm8ksewy
	pU9kO0xcTcedOLnEkugOfx20e+Ldf9QacofKfF9Ot5FE/iJSNpQT/w6bPjHcNqL2p82TUSAI/nP
	p/uesVEoBFsj2JhO4CstDTpDPzoe1Cpw7rcTHtixQCQ==
X-Gm-Gg: AY/fxX66Ci3m6uc5pr5hslieh4XCCKeVOtyCRDRIXT5oz2smyiQpVS5eWxCl7KnnJB3
	oQ7S8qkVqY2+tpyP/CqwGnatznddELNZhJ2q9hKbahtfgCpjprZEYyWNgd3u0rPYy50JOfYYWNR
	mJ11cgyZTJJ5Aj2zwy+TseH+SiKA+GFGrZmRhiiiQv+80OGhKkFisp5eE+4PlBMLdmrymeE8RsA
	JKiB6G6O/1DPsNB/a4hEObN9NTouxAPvvfo29lJtMzFMl0exkg7SVGfzASoHyHbOZSLKlKJkuk+
	Namfg9XNazC9TSAchessFjCOnU0e4UbGw+ug3kIw7Tdk4RbmEg==
X-Google-Smtp-Source: AGHT+IEJHssgBNa10sdxlMZ0RfBcXjnBKXrp4KRUpqNBX0cKMLRNtJZXOvlDmXwgBRgg1wr13xel6K2BxjWOkHuOL+E=
X-Received: by 2002:a17:907:a45:b0:b81:ec7c:31fd with SMTP id
 a640c23a62f3a-b81ec7c321bmr332573366b.13.1766486105902; Tue, 23 Dec 2025
 02:35:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
 <20251215163820.1584926-18-robert.marko@sartura.hr> <20251216-endorse-password-ae692dda5a9c@spud>
In-Reply-To: <20251216-endorse-password-ae692dda5a9c@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 23 Dec 2025 11:34:55 +0100
X-Gm-Features: AQt7F2rp1ybXWw2BWzfekoJJeczrMeV1nO2lvHuguNeXKU1awsBcuKjFcFE-_B8
Message-ID: <CA+HBbNF-=W7A3Joftsqn+A6s170sqOZ77jpS105s5HPqkskQzA@mail.gmail.com>
Subject: Re: [PATCH v2 18/19] dt-bindings: arm: microchip: document EV23X71A board
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, Steen.Hegelund@microchip.com, 
	daniel.machon@microchip.com, UNGLinuxDriver@microchip.com, 
	herbert@gondor.apana.org.au, davem@davemloft.net, vkoul@kernel.org, 
	linux@roeck-us.net, andi.shyti@kernel.org, lee@kernel.org, 
	andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org, 
	pabeni@redhat.com, linusw@kernel.org, olivia@selenic.com, 
	radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, richardcochran@gmail.com, wsa+renesas@sang-engineering.com, 
	romain.sioen@microchip.com, Ryan.Wanner@microchip.com, 
	lars.povlsen@microchip.com, tudor.ambarus@linaro.org, 
	kavyasree.kotagiri@microchip.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, linux-i2c@vger.kernel.org, 
	netdev@vger.kernel.org, linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-clk@vger.kernel.org, mwalle@kernel.org, luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 6:32=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Dec 15, 2025 at 05:35:35PM +0100, Robert Marko wrote:
> > Microchip EV23X71A board is an LAN9696 based evaluation board.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  Documentation/devicetree/bindings/arm/microchip.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/microchip.yaml b/Doc=
umentation/devicetree/bindings/arm/microchip.yaml
> > index 910ecc11d5d7..b20441edaac7 100644
> > --- a/Documentation/devicetree/bindings/arm/microchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/microchip.yaml
> > @@ -239,6 +239,14 @@ properties:
> >            - const: microchip,lan9668
> >            - const: microchip,lan966
> >
> > +      - description: The LAN969x EVB (EV23X71A) is a 24x 1G + 4x 10G
> > +          Ethernet development system board.
> > +      - items:
> > +          - enum:
> > +              - microchip,ev23x71a
> > +              - microchip,lan9696
>
> This looks wrong, unless "microchip,lan9696" is a board (which I suspect
> it isn't).

Hi,
No, LAN9696 is the exact SoC SKU used on the board.
I will drop it in v3.

Regards
Robert
>
> > +          - const: microchip,lan9691
> > +
> >        - description: The Sparx5 pcb125 board is a modular board,
> >            which has both spi-nor and eMMC storage. The modular design
> >            allows for connection of different network ports.
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

