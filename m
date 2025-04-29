Return-Path: <devicetree+bounces-171713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D071A9FF6A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 04:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C99F1B60F0A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 02:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E803252290;
	Tue, 29 Apr 2025 02:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b="TgGrlrgz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702B42522AB
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 02:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745892541; cv=none; b=NvZMnJ1UDEERhLBqgqqJ4NXU4mk4eL/bTm7aOA47i1lIzSuPPvppfXAHT+RipeVhTbnNgLEGfxUSK9YwYv2tYk5wqFXmUFrSAwC9EcUpAfu6nWsNUlqMTP13bknH1fGy0jz5zDjl9wMKYOC/sF2F5URc/tuRcUN9eWJ7cHJLeF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745892541; c=relaxed/simple;
	bh=1VflgDCAbYM0nvDCbUBD9RSTMKnjWcdXs3kPY+dpC/A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qmJI9v/3pBT40Y8If0xYOK5no95qzdlRZERRIGpHpQuYOdaFWYaYTFXcmiM034D73xmmkNQK21qU1X+vv3Wk0vVBI2qq/odCiNogJqxbgccAaUKrsb+RyHhMBcf2U2hZ0tPvzLC+PrJlK4DE6LFJeUkvGGZdoowbwmJI2oX0t/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com; spf=pass smtp.mailfrom=lessconfused.com; dkim=pass (1024-bit key) header.d=lessconfused.com header.i=@lessconfused.com header.b=TgGrlrgz; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lessconfused.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lessconfused.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-73712952e1cso5840363b3a.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 19:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1745892529; x=1746497329; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rOL8cAzDh7/cTXRXsftT/THY4eVY9mbWKCNY3CIWC+E=;
        b=TgGrlrgzGWIWsI9ZY8VsWX/ChTwwRvKE/7s3Y4NW3VnpWbL3nZ9MJIOcBVPb6hAIpM
         9p4KT84GH0KpugNaofi2ih98kqC7jlBfwPy9TA2C1fOBU7kiBwSq5jh+hzTh7dHhciDH
         w0XJ3Vy52eY3cJf+huvyBw6b6XjRX0lmWGEjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745892529; x=1746497329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rOL8cAzDh7/cTXRXsftT/THY4eVY9mbWKCNY3CIWC+E=;
        b=D8mUncqltSpTzbQYJVzajtuaokSkELKUAF3BN1LNwKnoNtTsQ9DVMkQELyY7MM9blS
         oy5hFK4iHR4+wjpfeKOrXeIRtLwnhHgIuO51Av20Bev9XtWqHsuQZJDvfTE40zN5fx+O
         E3scLU+Bpu+TQv4BxhS1vtJo/wzVMnpCuYXjb0LCkE6zIALEmTK6Sjgh/UWahlbQ35k9
         WBwcWHhY6ebLp12M/JCI+Jz3JpZvPepddByzfE/vjDdMA18V4inuZ+FHzitSznckA/Vc
         JsR0sjq4yAliqYi/c57E3JCXTSdqY/kORQU0i5VVravpq+EIIIsx21ojwh3oJsnLZ8Py
         CEMA==
X-Forwarded-Encrypted: i=1; AJvYcCXP6ZmhGkRZoyBtcVfg0i304YT3j/43j9JTWkcJg9dG6sQi0GuJyK4pcVgMUNchfwNNWvTQNZSWxMGZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxtCUcofbsAIefDZmi3W35JzaURywmOQESxYGovFGz5DGYCHX7M
	UjqkdJaOaBYCD1ZxTppAxWr7ZTIhpXq+fADhig1EdgxkjPXD20c33grtkwxsmOGy1mLR3ZRbPvg
	YMT0MO4nSwVmaDIrPQ68yq/f5ysVpFNSXXmjbbw==
X-Gm-Gg: ASbGnctnm/2yEY6DTgiwCzSATXcXpbdz1MuYjSaSadcir+wz3IHaZE6hErbQKdSnIOJ
	NuS98M6fJDnWaIwxQfe1qAyUyfSiyYv50cytc14BHnNHt0g+7/4qDzmcnI2xCH+jiGeveoAgv5P
	g3esyTsyCNevciDIJarcEsFTwlWtPDsCuO1BH9rUO4/jZJ0dkQN4ynh1s=
X-Google-Smtp-Source: AGHT+IHCPRZOUIvFcl8lsvnwfO+9RLYKzmV+Oh7P+gkUHVtVP2yGSVFYEv1JALFXz/61Bb1nArjTw0CpObv33VgEMCo=
X-Received: by 2002:a17:90a:c88c:b0:309:ebe3:1ef9 with SMTP id
 98e67ed59e1d1-30a013070damr20213230a91.12.1745892529578; Mon, 28 Apr 2025
 19:08:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250425203118.1444481-1-da@libre.computer> <20523c9e-f7de-4355-82ed-380ee03083f0@linaro.org>
In-Reply-To: <20523c9e-f7de-4355-82ed-380ee03083f0@linaro.org>
From: Da Xue <da@lessconfused.com>
Date: Mon, 28 Apr 2025 22:08:38 -0400
X-Gm-Features: ATxdqUEtIxVd1qwCtsriUSTxo6iPaZohjrD-HjaaVAgl0Wkxs3YcV-UpkMno1rk
Message-ID: <CACdvmAi9v=DFqSOjWdeAabNC1QECs0U3yHM4LZ=Gtthn-pUMNA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: gxl: set i2c bias to pull-up
To: neil.armstrong@linaro.org
Cc: Da Xue <da@libre.computer>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 3:50=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> On 25/04/2025 22:31, Da Xue wrote:
> > GXL I2C pins need internal pull-up enabled to operate if there
> > is no external resistor. The pull-up is 60kohms per the datasheet.
> >
> > We should set the bias when i2c pinmux is enabled.
>
> So, yes in some cases when the on-board pull-up is missing, the on-pad
> pull-up is required, but the whole idea was to only add the pull-up prope=
rty
> when needed.
>
> So I know the real motivation is again about the 40pin headers, where
> some applications don't add a pull-up and still want to have i2c working.
>
> So my question is: why can't the pull-up property be added in overlays ?

The issue is the property types. I wish the bias was bias =3D <PULL_UP>
instead of bias-disabled, bias-pull-up, bias-pull-down since we have
to hack a bunch of /delete-property/ in the overlays. A lot of the
merging tools ignore /delete-property/. This is a convenience patch
which may cause push-pull times to change by an insignificant amount.
We have been carrying this patch out-of-tree for 5+ years without
issues. I have not seen any design on GXL that had a PU for I2C.
Externally, I've seen threads of people asking why I2C does not work
on other boards.

>
> Neil
>
> >
> > Signed-off-by: Da Xue <da@libre.computer>
> > ---
> >   arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/bo=
ot/dts/amlogic/meson-gxl.dtsi
> > index 2dc2fdaecf9f..aed8dbfbb64d 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> > +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> > @@ -214,7 +214,7 @@ mux {
> >                               groups =3D "i2c_sck_ao",
> >                                      "i2c_sda_ao";
> >                               function =3D "i2c_ao";
> > -                             bias-disable;
> > +                             bias-pull-up;
> >                       };
> >               };
> >
> > @@ -576,7 +576,7 @@ mux {
> >                               groups =3D "i2c_sck_a",
> >                                    "i2c_sda_a";
> >                               function =3D "i2c_a";
> > -                             bias-disable;
> > +                             bias-pull-up;
> >                       };
> >               };
> >
> > @@ -585,7 +585,7 @@ mux {
> >                               groups =3D "i2c_sck_b",
> >                                     "i2c_sda_b";
> >                               function =3D "i2c_b";
> > -                             bias-disable;
> > +                             bias-pull-up;
> >                       };
> >               };
> >
> > @@ -594,7 +594,7 @@ mux {
> >                               groups =3D "i2c_sck_c",
> >                                     "i2c_sda_c";
> >                               function =3D "i2c_c";
> > -                             bias-disable;
> > +                             bias-pull-up;
> >                       };
> >               };
> >
> > @@ -603,7 +603,7 @@ mux {
> >                               groups =3D "i2c_sck_c_dv19",
> >                                     "i2c_sda_c_dv18";
> >                               function =3D "i2c_c";
> > -                             bias-disable;
> > +                             bias-pull-up;
> >                       };
> >               };
> >
>
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

