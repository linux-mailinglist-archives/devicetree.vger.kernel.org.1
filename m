Return-Path: <devicetree+bounces-247129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D6ECC49DF
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 18:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C103A3026295
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1120E3242A3;
	Tue, 16 Dec 2025 17:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="HUR0c1oP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4FF2EDD5D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 17:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765904594; cv=none; b=ZCGdj88WhkEOv3QtjJL8BkbS/XMm2L6yutgt5JEaryKl6EEIA0R99pFBOTPP8Www20mYlVTquR7xHcVTfWX0uCoM6dKGnP1XOTPUtUgbYarNXoCQ61rh3YRl/i8s0WRDhpLXJlbVF6/BNFbYDvGCtOzJwkTGoSk1PgIOKmsWsY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765904594; c=relaxed/simple;
	bh=F5ummgPhzVwfH3aJi4+uY671i9nGNbXpL0FkgxynloY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r6+NWjqrOVRLyrV/LbUMCzdvxDu66hOb35A4ofnX5FsW7SEmVqx9FdcKShhFFWiJuUnlS3nZ1UV5NgnGLtEY9vmDY712zGFiDpkSedBOp64pSKZc5wEvSXKOaANBZEl5+V6gPa/vR5A9mW+cLrIa9VfcqhklNoHY5LvHkdMXVpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=HUR0c1oP; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-641977dc00fso7686310a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765904589; x=1766509389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F5ummgPhzVwfH3aJi4+uY671i9nGNbXpL0FkgxynloY=;
        b=HUR0c1oP2r19YIGGQc967WfYD/smuI0IJPFKrMRJYAdsvIaZyCJkMtulHBsm50ODwb
         JauGSBBPrDXsSq6QkLWzTbFOO2IIL4lhNSXyLb8MqULUXURDfgh4GPvBYCnxfqO/uGNH
         M7T/KWr9FIkE5Oj2EjHFjl5VFswk6OifRQzQIZh7me8snBfVDzURqctiIcbpDzzWfl/X
         ALEri3nkrW2HWDbC3o0fNTuIobUwibSu89QPHCHEcc1P1KG8qKwBmI39JeSZVzimFedS
         2b5iNPv4DU/s9e6srUZGkRWZB64tCxPJenC/s7w0P87DEsXXQyZLfIfqFHTWLG0iZxY6
         DQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765904589; x=1766509389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F5ummgPhzVwfH3aJi4+uY671i9nGNbXpL0FkgxynloY=;
        b=Yg3PaPxMNtgpmE/UTbnlMQXx0ctxKiAIxor+zm0wx4OcznMWrwRjvj4q07jYKigBsC
         6vETKWtTM+8I9702/M9dhOV+d9NYSvpTJIjCKC7Z4gvUEIfeMa2m899TnUnUfyKRF1Cr
         xzQqodiLhsI8HS6NWvX/erXfSOPpsBLjU5w2RyYpp9ut6B3KBrKx6AamH/bxriMjqOkt
         85qL60pbKFwZ+GGU3hbE2ehvI+X0avz6kbp24p5QvwqLw1qeFnhtoU7AqaVq9uyXbn4w
         ZISLt78VvASSBINKukEKoK08QG4kEa1y1Lljni3FJ7f0Jr7TW4mf7M3MCzUUoIkc5DHB
         kEAw==
X-Forwarded-Encrypted: i=1; AJvYcCVGru5rZh4Ac6Sb+uPW/ScUVm8o1YxWctDaSG2muijynrhnNwaHaFEcp6QMsOHgf8mKV6y9dvhFW4gy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywed7bk1VmC23eSWu5Rd4nai8SK+b67fwh3VA1lN5is6Up2Vg1l
	B8m21ex6Xnb9hXuOSGomRRkiMWA16Fdclh2tK3Ndu/spPk5DDk656IfWoP57uEgGQeDAJcyF5Iz
	wWVADzY/IjsL6QUr/Es5x/tTgaereqT1fI1hItpXpuw==
X-Gm-Gg: AY/fxX6UMpNEErBG7gQQ83cRqR6a+PtSrJGmO8HxwEEFoGHW4Y9dxDVbJNi08lEThoa
	1zvxcp02ogVF+NrJCwKiyiMV9B5nxNPulnC+nabUUwQ1pV/auKCCYltd2D0Y5bdqlC7gnW9zFde
	+iKGwqI0wxNUqBP3em49bi9ijnyzKZlMYFW35CduCNLXug9+jeIZpkwvCMCSwv59qkJNnr5SYdW
	vk0b5i9ZSZvzwB2cWOUQy51xSRcnMueXOSXe618zWlaVIiSucYQQ7reloCZry6WAuDfenAY
X-Google-Smtp-Source: AGHT+IFN/waKvJ1dk6OhR5cf+U/bNCur64fqPTgP6eIpNT5zthYFXF01jY49UDISUGnP6m+DUwrvZmTGOhEzi55R+Mg=
X-Received: by 2002:a05:6402:1ed1:b0:647:532f:8efc with SMTP id
 4fb4d7f45d1cf-6499b31266bmr15476133a12.33.1765904588965; Tue, 16 Dec 2025
 09:03:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
 <20251215163820.1584926-3-robert.marko@sartura.hr> <d9665340-5a96-4105-88e9-ec14a715df5a@kernel.org>
In-Reply-To: <d9665340-5a96-4105-88e9-ec14a715df5a@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 16 Dec 2025 18:02:57 +0100
X-Gm-Features: AQt7F2rU23EYA-TATIPjguH2zW0uOL-rOKCV2dD8OGkl08WLSt_IEutVu0MO3jw
Message-ID: <CA+HBbNF2EeP=miC9GpEm2HpPTmZAefV2fwxKjm0vHB6tj_1usQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/19] dt-bindings: arm: AT91: relicense to dual GPL-2.0/BSD-2-Clause
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	charan.pedumuru@microchip.com, kavyasree.kotagiri@microchip.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i2c@vger.kernel.org, netdev@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org, mwalle@kernel.org, 
	luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 4:55=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 15/12/2025 17:35, Robert Marko wrote:
> > As it is preferred to have bindings dual licensed, lets relicense the A=
T91
> > bindings from GPL-2.0 only to GPL-2.0/BSD-2 Clause.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
>
> You need all contributors to ack this...

I understand, all of the contributors were CC-ed.

Regards,
Robert

>
> Best regards,
> Krzysztof



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

