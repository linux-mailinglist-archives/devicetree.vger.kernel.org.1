Return-Path: <devicetree+bounces-241322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CEFC7CBB2
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 10:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1EC2D35B73E
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 09:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296872F90D8;
	Sat, 22 Nov 2025 09:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VfEq4Bsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A28C2F5465
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763803956; cv=none; b=mpCvI91aU0Nv2Z6+gSaLjl0fx4TCi9/FzjjEfjCkGFJWqlFlj8jt4CA8/OlmO2MetOBq/pNG2cfqfoNZeEP28uKhcpexLvGc7UfoSFeXZc4JLLeaWlfDDyFLD3NA+1Nwa0kCzPODIGOrbN+sOAMTNxgOirnnPA2/h7ybhh+AVXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763803956; c=relaxed/simple;
	bh=Q5HPNMlb7k8H4bR8V/awshYeVlGPISIIO6iiMymH7Ps=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LrXjYHFHfVzbdsvosiItKPQC++lSUwUOc7TwipndEnZlEWQNpo5AuLslkjfCqI3sQviKbjEIoZ0hHTXqfQk6fHmhdKBohcNt2QrW9ZOrnWUPtMJ4KolL7baWkyX25uzsWWz/U5xnp90uQFjKR6GgVY+YecGxySWy67WOBInaMCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VfEq4Bsy; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7a9cdf62d31so3437642b3a.3
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 01:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763803954; x=1764408754; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwfSbVA0IF+INvF3WYKe7TTnKMqGNeoc7QfEa9rVX5E=;
        b=VfEq4BsyS9P8xXKArM18nG0gmmHEBz2W36s5LX/OJ3y4A4Li7fB4wy8SNZu6zgRjDv
         DvVtaTYXR0Td0PdmS7DN7Ti9HJgl/mMhBdA8O0Vb3UCvpVv2PYV1YLnOxm7Cbn9pXVli
         3IZDa7b+HdpEA/IZL+QggOr3evSLQUK+YU3YMIjT8LzrzwWDo2V3IDElWDGbx8E+05fh
         iiXqwaYioVQgx2NDP4ATStTzssAxN8Nnc/EB33HQwq1xs+cEHtX+78NKoDqvC37eHXRo
         p0Wx1ARwbHpRd7eE8+uS/fOdSwxQVqgqPtVkJWkeB4L9aZzyF8H2TGEwBgJSmAa6P5uR
         QCSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763803954; x=1764408754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PwfSbVA0IF+INvF3WYKe7TTnKMqGNeoc7QfEa9rVX5E=;
        b=LDelfk20gjJMF+nPqHYD32ykn2PCU7HvgU5L6cT27xAJmeaeMLayub7OizuXtVkOV7
         +k4MhAlvVn4eCBaCitRYLQdEExb2ecRec47akcXT5aXFZRICPpnoXJWeGa/jAoCGjpOK
         5T01v8+U7DgFHprc8gMilmP04ujs5CGPKh/J/hX5QDYCHSNNHmLsBeZDC9Ku4Sce+0XW
         kk3eCNoUdfyIdRJJF8wY2Ccp4d7t3P5n1zJLe57zdC/5Pw0IGhi1BtGVgakKEy3SH7sQ
         zxDGpGYmQYeKqWe+9nSnpgw9AFu1Ti1XmUuv1oil6Gk+cE6AMvQZo6WM/KxvKq3iqdrp
         xwrA==
X-Forwarded-Encrypted: i=1; AJvYcCUzt2eZ907lZZQAjLQNdUJH+QFf4pJdObwvD2LQmyVHG2x4jeruca6LAdAH0mmCoBX3i+qewOQMKYvX@vger.kernel.org
X-Gm-Message-State: AOJu0YxFYtWNzg3RTQMSRweGsF63x0tMHStBYEfBgNOKUsFw8CEEdJys
	NP5/WkHC3B4D+mC+a3Ql5zLGypQafbw1okIb8RXoLgGN+JbSPXr6yHi9v5LjQPuvSZdOQd3KBEZ
	NY7Xawo6VOXj1mQsGrl2REm2PVhniUFo7A+3WJCrl
X-Gm-Gg: ASbGncviZ0Sl3LONHbkB4CGsnu4gxP4haLDukZ/Y4uZiI/WxwM8NXzC2Zhzdj0/9Z9M
	F7jA+9x3RQkOso27iYDc6aHdovoLRr+x4sUps3gDTCXJFQpxuM2/UasCr94d/xRIvfgen6642ox
	TWGhYjJkK9XNuoacOn9ChWDQ9CYRQkCU9XIIHQBB0eStaF787of+EDmE/MiboWLPcY+nNUQdOKI
	nwkPKMNcwCIZOu1GNE5DUY4lxuSwQ4hUN69PhZaGvX2VX5R2iYn2tdWQxCwC2WAUI631Y0=
X-Google-Smtp-Source: AGHT+IEtl9+0xCjdQa9+R+GC+GJziEZM6X7VYbuzp+qoVNZuwKZ3umLayWIhnoniyzbglxAh3nD2e8iWh7BCQ7kfWaI=
X-Received: by 2002:a05:7022:6727:b0:119:e56c:18a7 with SMTP id
 a92af1059eb24-11c9d712aebmr2102850c88.15.1763803953323; Sat, 22 Nov 2025
 01:32:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119093749.292926-1-royluo@google.com> <20251119093749.292926-3-royluo@google.com>
 <2025112144-claw-recolor-49c3@gregkh>
In-Reply-To: <2025112144-claw-recolor-49c3@gregkh>
From: Roy Luo <royluo@google.com>
Date: Sat, 22 Nov 2025 17:31:56 +0800
X-Gm-Features: AWmQ_blaOp8wg2UyednGm_iXI4eOxC8hbQ1lsk34Jq7M1OwHCTll441SPBByo04
Message-ID: <CA+zupgyEP+_q0uO1SpvR_wpk0ZP2EWf_E6FGQpOCLW63dKp5Fw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 21, 2025 at 10:26=E2=80=AFPM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Nov 19, 2025 at 09:37:48AM +0000, Roy Luo wrote:
> > Add support for the DWC3 USB controller found on Google Tensor G5
> > (codename: laguna). The controller features dual-role functionality
> > and hibernation.
> >
> > The primary focus is implementing hibernation support in host mode,
> > enabling the controller to enter a low-power state (D3). This is
> > particularly relevant during system power state transition and
> > runtime power management for power efficiency.
> > Highlights:
> > - Align suspend callback with dwc3_suspend_common() for deciding
> >   between a full teardown and hibernation in host mode.
> > - Integration with `psw` (power switchable) and `top` power domains,
> >   managing their states and device links to support hibernation.
> > - A notifier callback dwc3_google_usb_psw_pd_notifier() for
> >   `psw` power domain events to manage controller state
> >   transitions to/from D3.
> > - Coordination of the `non_sticky` reset during power state
> >   transitions, asserting it on D3 entry and deasserting on D0 entry
> >   in hibernation scenario.
> > - Handling of high-speed and super-speed PME interrupts
> >   that are generated by remote wakeup during hibernation.
> >
> > Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
> > Co-developed-by: Joy Chakraborty <joychakr@google.com>
> > Signed-off-by: Joy Chakraborty <joychakr@google.com>
> > Co-developed-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  drivers/usb/dwc3/Kconfig       |  10 +
> >  drivers/usb/dwc3/Makefile      |   1 +
> >  drivers/usb/dwc3/dwc3-google.c | 628 +++++++++++++++++++++++++++++++++
> >  3 files changed, 639 insertions(+)
> >  create mode 100644 drivers/usb/dwc3/dwc3-google.c
> >
> > diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> > index 4925d15084f8..bb0e4dc97da3 100644
> > --- a/drivers/usb/dwc3/Kconfig
> > +++ b/drivers/usb/dwc3/Kconfig
> > @@ -200,4 +200,14 @@ config USB_DWC3_GENERIC_PLAT
> >         the dwc3 child node in the device tree.
> >         Say 'Y' or 'M' here if your platform integrates DWC3 in a simil=
ar way.
> >
> > +config USB_DWC3_GOOGLE
> > +     tristate "Google Platform"
> > +     depends on OF && COMMON_CLK && RESET_CONTROLLER
>
> No build testing?

Will add depends on COMPILE_TEST.

>
> > +     default n
>
> This is always the default, no need to list it here.

Will drop it.

>
> > +     help
> > +       Support the DesignWare Core USB3 IP found on Google Tensor
> > +       SoCs, starting with the G5 generation. This driver includes
> > +       support for hibernation in host mode.
> > +       Say 'Y' or 'M' if you have one such device.
>
> You forgot the module name :(
>
> > +#define to_dwc3_google(d) container_of((d), struct dwc3_google, dwc)
>
> container_of_const() please.

Ack, will fix it in the next version.

>
>
> thanks,
>
> greg k-h

Thanks for the review.

Regards,
Roy Luo

