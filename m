Return-Path: <devicetree+bounces-116374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4F19B2B1A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0EAFB20C6B
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC04519309E;
	Mon, 28 Oct 2024 09:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dkpvV4L9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDC9192B98
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730106853; cv=none; b=fj7FE0d9MYpfpEFHxk2JqpS45GKC3Bn3lcjozkib7hRv/SRibcUR8J8I9KI+a4Wvr311TuUPyDzND6yCVsE0QFvjAj7Oz9Z+A4eOJZFUwCmCPJ/ld177amsonhJDK2r7BZ/aukdJg5OdOULnOEzxMmRbch+jeD1O2a+NOUVnsUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730106853; c=relaxed/simple;
	bh=XboTEB9di6fAr/3NESQYccJxywyXVQJjrUFONGeb1W8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pBmGCHXua4sUDj2VQVV3iY8WATdd4b1tSK7+6nGjIBAK9Fj1uZ9J5HkqBEdsxgxbULAmDxefHbOgT0CtnUdR3YWlIwXHhYf0Zd9nSODqO27a14zMOyIUYj1WRm4lsClnDK9NwrDDn+twC+71wwo9m5ZQfuV76oTvmqkAcFLKwKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dkpvV4L9; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e59dadebso4728950e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 02:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730106850; x=1730711650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7sEAvP8NG9JnAXi5TH/KAqfu5gH9AuYe39avRf1R9I=;
        b=dkpvV4L97+zdOuegtOTKHCGkNDPbthTTA3z373cimkD/qZ/U8WnD8Pe/p7YmLTHfPc
         8usiSoMwtosUI5EKyR4dNlAOtX0c1ZJz1C2Mw4IMEXxdxUiWY/FwLBcc+1xs9dL4wjCF
         ad+Zo1xAUCHz25Xmmgwhyh8KcSWqIf4Yd0FKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730106850; x=1730711650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O7sEAvP8NG9JnAXi5TH/KAqfu5gH9AuYe39avRf1R9I=;
        b=QZfdzjJyH8gLKm+0NSfqcQijIzhq0mHzpW4ib5E98Qls5Y3X51vt37ncNxBnSlBlcK
         4EEjsVGOGiUNnyl8UvNfPFOwB8EY3SOkeWgvtD8/k1XpxOSmT//ltKbVJLP+uK7jHJLY
         D8R1E8MDfnu1ehrlHZY7kN6mWgKsiAAyIvwH5+mraRr8GRfpiLsuOm+JApJ07/puEReX
         vYIY36SXXQ3jkRuV9wfiNPW+56P37oaBuf8zhaipeIlSBxiFW0QCbIpMFWXuGmxAgwNS
         BQzChjpJa87pSyxjXK7xUh9Uxvoc+GevBmJdqOPhaR3ZfI5djfA1RdN89fjSzjSKSNuP
         9LfA==
X-Forwarded-Encrypted: i=1; AJvYcCVguFYQtbcM8Ffd704uYBWQATOo+s2Cgs9CAvDNG7UPdSev9AOq6UQtea+t8aD9t/07blVmQ1UdtHEa@vger.kernel.org
X-Gm-Message-State: AOJu0YzLi58C1fyR1cmpz9z+LP9XNOqORQ6z2n0vuptLV339OR3xgUQY
	OZ9zsdxZgWtpDd3EXfSfGO8rEgte/ZkoA7EbsHBSr+XbQDcYKqw3I7/JqT+6h0LLyvNOln+E5u1
	BrRVG9nkpCPRJ+fHO2NfYE9mBgN3jtMGnTLXC
X-Google-Smtp-Source: AGHT+IFPHFbPyPXoPFbsVwjDIUW/0WQx3PxGtpf1eVaSW6Z7Z3fXH3i+SJTqnAp2zN1OASRPnjVQ7nAeuz6Vm9QIUx0=
X-Received: by 2002:a05:6512:1188:b0:539:fc26:74bd with SMTP id
 2adb3069b0e04-53b3490ee7dmr2587366e87.27.1730106849694; Mon, 28 Oct 2024
 02:14:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017094222.1014936-1-wenst@chromium.org> <20241017094222.1014936-8-wenst@chromium.org>
 <CAD=FV=X-YzEGEc+tp-uB6vdPMEC-V9M=Gb60H69=_XY9w4R8nw@mail.gmail.com>
In-Reply-To: <CAD=FV=X-YzEGEc+tp-uB6vdPMEC-V9M=Gb60H69=_XY9w4R8nw@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 28 Oct 2024 17:13:58 +0800
Message-ID: <CAGXv+5H8kxrr=JJsMMY5Y+HC5JqMN-bMkm7hztOzQgrbew6-rw@mail.gmail.com>
Subject: Re: [PATCH v9 7/7] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 5:16=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Oct 17, 2024 at 2:42=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org>=
 wrote:
> >
> > Instead of having them all available, mark them all as "fail-needs-prob=
e"
> > and have the implementation try to probe which one is present.
> >
> > Also remove the shared resource workaround by moving the pinctrl entry
> > for the trackpad interrupt line back into the individual trackpad nodes=
.
>
> It could be worth noting in the description that it's a really bad
> idea to pick this patch if you don't also have the patch
> ("platform/chrome: Introduce device tree hardware prober").

I found that there's a stable tag one can add to reject AUTOSEL.
Sounds like the perfect thing to add here.

> > @@ -35,6 +37,7 @@ touchscreen@40 {
> >                 hid-descr-addr =3D <0x0001>;
> >                 interrupt-parent =3D <&pio>;
> >                 interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;
> > +               status =3D "fail-needs-probe";
>
> It's a little weird that there's no pinctrl definition for the
> touchscreens but there is one for the trackpad, but that predates your
> patch and is unlikely to be a big deal.

To be honest I'm in favor of getting rid of pinctrl settings that
do nothing more than mux in a GPIO, as mentioned in my talk at ELCE.
Such settings are already implied by the interrupts or gpios properties.
The fact that the OS doesn't enforce exclusiveness between the
subsystems is not something the DT should deal with.

> >         };
> >  };
> >
> > @@ -47,6 +50,8 @@ &i2c4 {
> >         trackpad2: trackpad@2c {
> >                 compatible =3D "hid-over-i2c";
> >                 interrupts-extended =3D <&pio 117 IRQ_TYPE_LEVEL_LOW>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&trackpad_irq>;
> >                 reg =3D <0x2c>;
>
> I should have noticed before, but officially the order above is
> slightly off. According to:
>
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html
>
> The "reg" property should be higher (right after compatible). It's not
> a new problem with your patch but since you're inserting a new
> property you might as well match the new dts style.

The entry in mt8173-elm.dtsi is also in the wrong order. I think I'll
do a patch later on to just fix it up if it's a major eyesore.

Angelo what do you think?

> In any case, nothing is a huge deal.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!
ChenYu

