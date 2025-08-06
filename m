Return-Path: <devicetree+bounces-202325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B48DEB1CF40
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 00:59:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA153567936
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 22:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7504622DFA7;
	Wed,  6 Aug 2025 22:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgglgPiz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D2D634
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754521188; cv=none; b=roLopsakYn99vI4sNG3csryZCV9gM2cmZ+veNuGECwK9h3DqXQWqRyJ/gQVltf8A+enXI0FT42d2fkXuB7ObevEQm1ceeeLs0QNGNjWbBsblHofiDAqXN+VagTPrkS2ejdrcWy0ecgepLxR31Pr0zZeM0VMqyO1f6JBbH23ITy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754521188; c=relaxed/simple;
	bh=dDM7iYy/AIyraTR1O/TqJPxcWhBNEAq3Tvg3vZpZnGU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jEwNjYL66HnRnvs6mBsY01OQ9kswlTHmwAKC2xj1fewlUHB3n4QUoo4J1aDy5smTFHalhHT1GLlRFxDI7M12vYPazJwzbA7jC4g27NRUnxyN0PV8Mmd0QikUU5WCXyBgSVtZHkdVqorQA6xh+Etj02MbiGTesgVDpwp9xUJjqAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgglgPiz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0047C4CEE7
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 22:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754521187;
	bh=dDM7iYy/AIyraTR1O/TqJPxcWhBNEAq3Tvg3vZpZnGU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OgglgPizuO6/3WaBbwiRRUJBy0VGQxZw0/pWpmTdTwVS0a67YXDlooZTxgD7bTxSe
	 +etPPVvI1Dn3N7oPtSsUuqOWHL0Xic86727Bnd3NefzUGC0nn2y0itOCmgjYmsvGwP
	 kK2FNOLbfou4xIzjY9pGGwlA/4RC/OXz/lcr++glR2XNNC+Bk2kib3AI1rtX4eWpzu
	 WSW0BtCYNDwA8AB0opTVEZSgEl4B8lN7FlG4jbIlEZ3+CKxJij4efJe5zTBDAfKazV
	 /L1lNFRWeJmwrrzPjuoLLAaQYzJelcVwiLjKvxZvxm3BvwwEqkqxm0k0vN7f/9VwyJ
	 /Ivd83Vz4CfOA==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae6f8d3bcd4so70175266b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 15:59:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVFcyvGWaDCHh55tDRpkMC/CJi86fqxtzALcZQG4PVPPJIAtTpnQBRMO3sx9Gz705yGs7DHR1uMzJku@vger.kernel.org
X-Gm-Message-State: AOJu0YxGZ+FEKvMGhIH2dPxUXiUmVXKjR607SxqMyeclY6uH30/bQBjd
	AZqUbu1fCoPQENxVU2akGhI8gJmyUAmDlw764eim2OkPMmQe9R/b0JcL9TXBqs6/lJVPFXRmouZ
	xv/fJxG6cVToPcFyHs8eWTSjCRnBs4A==
X-Google-Smtp-Source: AGHT+IFJm49FQ3qDs9QJ4zSUztXvxUUkXzeHHTnblRFgK77C0PGfkTOh6h/psk/FFnm7rWpnCJR4cDmmHjfc2gQuIl4=
X-Received: by 2002:a17:906:6a0e:b0:ae3:caba:2c07 with SMTP id
 a640c23a62f3a-af9a60bd3d8mr66628566b.18.1754521186262; Wed, 06 Aug 2025
 15:59:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250806184711.1882725-1-eajames@linux.ibm.com>
 <20250806184711.1882725-4-eajames@linux.ibm.com> <CAL_Jsq+JBhak=YS33tG=KFtbb+Ckz69s5Chz6daEUY0O95QOSQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+JBhak=YS33tG=KFtbb+Ckz69s5Chz6daEUY0O95QOSQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Aug 2025 17:59:34 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKa6R2WQQsaJ-Rm8NwVAt7gk2yRSyjnZ44yYn1un2C12Q@mail.gmail.com>
X-Gm-Features: Ac12FXwBLC02AdrQvR4Z1RK5nwIRSy2xeBZ701G7FQt_sUSyqWFUOdOSyfJmI2U
Message-ID: <CAL_JsqKa6R2WQQsaJ-Rm8NwVAt7gk2yRSyjnZ44yYn1un2C12Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: trivial-devices: Document max31785 sensors
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org, 
	andrew@codeconstruct.com.au, conor+dt@kernel.org, krzk+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 6, 2025 at 5:04=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Aug 6, 2025 at 1:47=E2=80=AFPM Eddie James <eajames@linux.ibm.com=
> wrote:
> >
> > Remove the old .txt max31785 documentation and add the compatibles
> > to trivial-devices.yaml.
> >
> > Signed-off-by: Eddie James <eajames@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/hwmon/max31785.txt    | 22 -------------------
> >  .../devicetree/bindings/trivial-devices.yaml  |  4 ++++
> >  2 files changed, 4 insertions(+), 22 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.tx=
t
> >
> > diff --git a/Documentation/devicetree/bindings/hwmon/max31785.txt b/Doc=
umentation/devicetree/bindings/hwmon/max31785.txt
> > deleted file mode 100644
> > index 106e08c56aaa..000000000000
> > --- a/Documentation/devicetree/bindings/hwmon/max31785.txt
> > +++ /dev/null
> > @@ -1,22 +0,0 @@
> > -Bindings for the Maxim MAX31785 Intelligent Fan Controller
> > -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > -
> > -Reference:
> > -
> > -https://datasheets.maximintegrated.com/en/ds/MAX31785.pdf
> > -
> > -The Maxim MAX31785 is a PMBus device providing closed-loop, multi-chan=
nel fan
> > -management with temperature and remote voltage sensing. Various fan co=
ntrol
> > -features are provided, including PWM frequency control, temperature hy=
steresis,
> > -dual tachometer measurements, and fan health monitoring.
>
> While technically the binding is trivial, I don't think this device
> really is. It has got 6 PWMs and 6 tach inputs, a reset line, 2
> interrupts (alert and fault?), and an I2C master. Not really trivial.
>
> However, better to have this documented as a schema than not, so I'll app=
ly it.

I take that back. You already have 'fan' child nodes, so this isn't a
trivial device/binding.

Rob

