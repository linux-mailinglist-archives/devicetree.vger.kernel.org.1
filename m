Return-Path: <devicetree+bounces-249206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D94CD9C9D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FEB53002BB6
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2FE34F278;
	Tue, 23 Dec 2025 15:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="lDOkL1Fy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FFF34F24E
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503777; cv=none; b=SFqTL+0k+zkVa0sKc6LqwziJo8gSsICG2BPru/fbiHnUu00CdaC5O6+RfjCuARBamiXeCCwW+ICRI7sSOynhoAy97FdN2vQlRRUDk6ZjEQ/81LStxHqBXB7uUjzfbFYpF7J44z7sg3BDFHgeExtmY33NsrF3B/RlL692l1yMxJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503777; c=relaxed/simple;
	bh=UJ4a8K9wry/JPIeGH5DwpGba6bA4R4gax6qub7x2SY4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aqLHEDi5fwEr1dnpAEYxBNmwQ6MtDjTL3inAU9Pv1U08SJA8iWRLRA0AQnFuZK6jEw1PdbLfU1oXuAKM2kT3nv4/53IxqbHPJmJbXGamr/xsCWFcaYVosAPqUOABe41/VrxOqC//UAB8cwS/trYFDbpZptlWWOrmXGtCVhnov9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=lDOkL1Fy; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b727f452fffso986226766b.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766503774; x=1767108574; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cLjISIOInag6cJNCp9GAXmtvydDuwUZOD3O+6EuGMpA=;
        b=lDOkL1FyHZFJ/9/OvPdkMyYxnkNuTkuKFAJlUBUCP6HN0MqcClWvGh955PsXfCG+TE
         XTJ9K//mvDtqzzy+8UpL1y6RStVl9cIPSZrvePcdWuCn+ocgGrIKDtG9+54W1w2//ou8
         OA5XU6YHOGYGLPwmx49l4TBtdurcyXq+U5KGyoNvmaVZMCeozr9d58t7zZ1j+zZEQDsh
         Kf3pekwyW72hmnLuSoSmitxCpGyWf6IWLHLSubohN8Q1uFEJ0jlLdVAnxp2afKolq/Di
         Hpo3XANTXWdDsDg7UaN6dPqi5wLfeRPeuisBuru1875FAqqqDaYDIxgxJJ2SJLG7SJGQ
         +dlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503774; x=1767108574;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cLjISIOInag6cJNCp9GAXmtvydDuwUZOD3O+6EuGMpA=;
        b=tsVAY3rnNbUJs303ayQFkq8+xxhYI9CZIuwi7QLpAMNpv3aDsSGOeD+KChM2f5B1K+
         cSwB3nAOYeu5T+5DOKYEeuRwzP0zMlIXrxJfltKcpnnRo7VZsaiQ2qGLrFUZCuqoLGYE
         qSfzrDJ/RM4X6rXWtki6GZmLjPSwoET5cB5Fpe59yc8Js5f7rdEKGXgTpWG8xWy5XeAi
         B2LzUWn0Jigetu4OtvyohXA2A1duFeu+rF5LztZxwfaxhY03LqPjGiVdWv2U4rvxXCKh
         qf7Sj6fu5LfXxOcqElv5FgxjUp0oYBimAICZbxPvLoxvVY790sa7pRo6/YtQwSeJL5YG
         QSLw==
X-Forwarded-Encrypted: i=1; AJvYcCUYvvBI2erIXNZsuXItkbrkC837tB2cFrZrBtGj6adXlVuCJhaqr/ohl+uXCBYh4DmVmbakhW8sRFfx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3z0Lca8hakhEOSgkCwvyG5p0MQRFJEjeve7KiVLV6SJdsj7Ul
	8XN4L9KM6DxUA4DEZRwUdFWZk0OvFebm7F0MP8gRDEYiAwlbWoMeP8FwEIwQDgX7d/GjgoEL+MB
	nNOBNaRLXfsjRFC+x/eD8AKM5iR+7Hwoowc7SnNEEtA==
X-Gm-Gg: AY/fxX76SVG4VFevlwmAOSh+Eia0KyQLXgpKjZdUjbYo7F1HyYJbQ05focCyKDl4chq
	usWebJasNCK1xB73iHSjzV03NJJY/S+phhf1euG6V6i0nhwlrSTC5aqlf8DDY4Paz7epiy1bj8m
	a49jTEwcAlG61N7B1prvqto2719TgbIJVRWsPnsgHPtBVwpOO87n+jlMGy0e5z3UAUn4Ke1uyCa
	lnXN0ZdisZleGQPS+WOe2S7HLCaeNCvuDcWlm6puut4WLQnD63VkqKWYBPDHeQ+qnfmgZ+wP36V
	pep4gieRlqeOisW1xRC2jCKPF3bYjc8ToRV5sk609OaNEeiXYg==
X-Google-Smtp-Source: AGHT+IE+xxKz9WunQGu5xp3nWvZrKUFIZLNano4iauMvK7wBVyl981tNBySUR5mcD+g4BmTew6KluXuH/rQplznm+8E=
X-Received: by 2002:a17:906:30d4:b0:b7c:cc8d:14f4 with SMTP id
 a640c23a62f3a-b8020400995mr1538956066b.4.1766503773539; Tue, 23 Dec 2025
 07:29:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
 <20251215163820.1584926-18-robert.marko@sartura.hr> <20251216-endorse-password-ae692dda5a9c@spud>
 <CA+HBbNF-=W7A3Joftsqn+A6s170sqOZ77jpS105s5HPqkskQzA@mail.gmail.com> <20251223-chrome-simile-8cf1e9afe155@spud>
In-Reply-To: <20251223-chrome-simile-8cf1e9afe155@spud>
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 23 Dec 2025 16:29:22 +0100
X-Gm-Features: AQt7F2rjEyMDZrOpK1oplok3NPPf4ZxKJg97_UNzU27UIMOHDSKt5OOOHzhM_mA
Message-ID: <CA+HBbNFhVVoaiVJtH-fB3Wmeh6O3C_H=bwz2vBDR2MO4o0qy_w@mail.gmail.com>
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

On Tue, Dec 23, 2025 at 3:43=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Dec 23, 2025 at 11:34:55AM +0100, Robert Marko wrote:
> > On Tue, Dec 16, 2025 at 6:32=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Mon, Dec 15, 2025 at 05:35:35PM +0100, Robert Marko wrote:
> > > > Microchip EV23X71A board is an LAN9696 based evaluation board.
> > > >
> > > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/microchip.yaml | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/microchip.yaml b=
/Documentation/devicetree/bindings/arm/microchip.yaml
> > > > index 910ecc11d5d7..b20441edaac7 100644
> > > > --- a/Documentation/devicetree/bindings/arm/microchip.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/microchip.yaml
> > > > @@ -239,6 +239,14 @@ properties:
> > > >            - const: microchip,lan9668
> > > >            - const: microchip,lan966
> > > >
> > > > +      - description: The LAN969x EVB (EV23X71A) is a 24x 1G + 4x 1=
0G
> > > > +          Ethernet development system board.
> > > > +      - items:
> > > > +          - enum:
> > > > +              - microchip,ev23x71a
> > > > +              - microchip,lan9696
> > >
> > > This looks wrong, unless "microchip,lan9696" is a board (which I susp=
ect
> > > it isn't).
> >
> > Hi,
> > No, LAN9696 is the exact SoC SKU used on the board.
> > I will drop it in v3.
>
> Instead of dropping it, this should become an items list with 3 consts I
> think.

Ok, that lines up with what other boards in the binding do, will do that in=
 v3.

Regards,
Robert



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

