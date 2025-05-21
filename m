Return-Path: <devicetree+bounces-179185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D0EABF1AD
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 12:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 160061887FCB
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 10:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E4525E832;
	Wed, 21 May 2025 10:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cqb0hLHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E003E242D6C
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 10:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747823552; cv=none; b=CaWtOHogfls696NV+hYbCzMsL9l/egpo7IqK+uMjGsB6Oe3K5AAQJl8jyA6UwB1XNVukF+4ipAPMibhB0Evyvy2URi2XVDTu1hB42j5tGP1HJgZHjFqsm9iZ0Cv4dROCI+twT2goIMQNZs7+wWwauYATRTpkq0nsq9+OtXSt4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747823552; c=relaxed/simple;
	bh=TzN8oeMuskKQU6CcpR7ilKeJfIloLruNAKAnwByhXCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rwiMXk6R//JHiPJC8i1J627DG0vKgaD0+m+w1uypjof/IckJFMo8Vc4HIk0Oep8ZK1/cUTpleTePNUdiS7coIQGsa+L6EufO7IqSFZ9zB3GNhWcKfJszAfiNq9cJwkf+1BWfWU2mZZi9FNN/knYUybEXO4LQVVoY//wZMvvoRKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cqb0hLHC; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-70a57a8ffc3so62571317b3.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 03:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747823550; x=1748428350; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wrx4aRxpWMNpz3kBZx0QvAIs12jvmJX0PVdxD7GtL1U=;
        b=cqb0hLHC6w3Q0OTL1zG3CwAGqIBK0bVe45FNNNmp+xaMMMiDfpxDn9A0+cKG14r7P9
         LEWowWp1wXq26EMuSWR/IaOa/UK7tfW5EC3TLJvgpJTkaydXZGvIeZpZlwHmHgcqNhMy
         ugIsb7O67RgttVJc9n3FLKODo5Zey4JUhxOHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747823550; x=1748428350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wrx4aRxpWMNpz3kBZx0QvAIs12jvmJX0PVdxD7GtL1U=;
        b=htynWleOgu8mm2M3z+ASpDudPBuDPzrIiD52J7N5Pqf5UerNq3cJaHmu9jUUhiDrAe
         6Kl9LoUWKryE3CYf4iGeAoVyZcHmk7Po5QROfGd/O3Tq4zNYVr7O/QjzJNM7tPLsOChS
         9H7aPb7d5ut6mjksPA4sxrpD9i0YyC9eHiYstoMr1Hk1Iop3OV53X21Ksll0D51WtFkO
         PiZXVEm6llCeW5I68xlhOZnsR8nqr2Ds/Myy2Shsp4Nql3dU9y9uha7Ozuz+QvUAzEs6
         4xS24xj6CrhU9K1Oj5guZLMLhFizDEli0bRYQwbADu4KJ78IP4fC0MDp8wM8qXgeCTAq
         g9/A==
X-Forwarded-Encrypted: i=1; AJvYcCWyrXDRk69FPgPOg8nmvNz/JZINsLDY+NXGCB6g23vC4w5SUJ8Oj25dnYbZjUNpaQiZZwDUDexQlSKT@vger.kernel.org
X-Gm-Message-State: AOJu0YyserCcsppCTk/3+U32H/Hcd7G7+ZYrLyaak8pJWQ8oKFAsjTvr
	YS6Xg7p8KotNCb8eIhp/9LColBHA26z/1XmqYNTs3V6OC6Sd4gCp5cnguoezkjtmsuYdcnkBEtm
	gmv5UAULhjg+9XfMF9gyo7wMuCw4UjyHsKYwSRgecAg==
X-Gm-Gg: ASbGncuY+9NztoiAKcGGVrNWs9UVGvBuio830ZWaGn3AH3fYr+CCHof6f9fhXlRhEe4
	PDUjGe29KCbxZWKwRy5sn3RoGLaEjC3uf4D0MPTHPGVB+jR6qvQeG9sNnmbWL1/YNpRPmRhlDl6
	oTmAdm8xn0Wq7hMNl2XBTCXFBdIE8+fb/sFUkCitCjGhFmeH5EcmdRdL2rDkt2EazsSw==
X-Google-Smtp-Source: AGHT+IFFal7PqjGJ+LGmx5bNYrc9004KFk4ruAZ0EqygehsuQ0KzsT99Pyli2tqxvHiA6hWSh10r4+jSoSJ6zf3teYw=
X-Received: by 2002:a05:690c:ed4:b0:6fb:1f78:d9ee with SMTP id
 00721157ae682-70caaf78e03mr301107987b3.15.1747823549692; Wed, 21 May 2025
 03:32:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
 <20250521092826.1035448-4-dario.binacchi@amarulasolutions.com> <20250521-quizzical-tidy-worm-1fe67d-mkl@pengutronix.de>
In-Reply-To: <20250521-quizzical-tidy-worm-1fe67d-mkl@pengutronix.de>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Wed, 21 May 2025 12:32:19 +0200
X-Gm-Features: AX0GCFtZ6hwSbA_J2rTqW8QnXowGlyqASP2_EDudgcpET604dgwM5KYsyW3Eszo
Message-ID: <CABGWkvrmuhaF4iHqHRkrNrrHb2gUNDBJKCT-jZ8ZuwZGRvm7Lw@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: mxs: support i.MX28 Amarula rmm board
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-amarula@amarulasolutions.com, Sascha Hauer <s.hauer@pengutronix.de>, 
	imx@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, michael@amarulasolutions.com, 
	Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Marc,

On Wed, May 21, 2025 at 11:35=E2=80=AFAM Marc Kleine-Budde <mkl@pengutronix=
.de> wrote:
>
> On 21.05.2025 11:28:22, Dario Binacchi wrote:
> > The board includes the following resources:
> >  - 256 Mbytes NAND Flash
> >  - 256 Mbytes SRAM
> >  - LCD-TFT controller
> >  - CAN
>
> [...]
>
> > +&can0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&can0_pins_a>;
> > +     xceiver-supply =3D <&reg_3v3>;
>
> Since v6.15-rc1 (d80bfde3c57a ("can: flexcan: add transceiver
> capabilities")), the flexcan driver supports CAN transceivers via the
> phy framework, see drivers/phy/phy-can-transceiver.c. Can you make use
> of it?

The board uses the SN65HVD233 transceiver, which is not listed among those
supported by drivers/phy/phy-can-transceiver.c. So I can't use the PHY
framework.
Do you agree?
Or am I missing something?

Thanks and regards,
Dario

>
> regards,
> Marc
>
> --
> Pengutronix e.K.                 | Marc Kleine-Budde          |
> Embedded Linux                   | https://www.pengutronix.de |
> Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

