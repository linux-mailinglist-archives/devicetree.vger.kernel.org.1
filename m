Return-Path: <devicetree+bounces-136494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89EA055D0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E145166ADE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433EE1E3DF2;
	Wed,  8 Jan 2025 08:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EAvvXVtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9C41EB9ED
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736326314; cv=none; b=SerYNCsVE/j/iI5TYnxf17+adS4r3fSX0TtKJ54nx38sAf5/Uax6eHFBKL/l+RWvHIqIQvC6klprlhQDonLW13HA1V3YZxGGsXgrr5pDismx6RzdDkOj1KK2qLBJERIohGhzraVxRNHr5VOaqmb4q3dgA36a0apPIZyy/NV9TH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736326314; c=relaxed/simple;
	bh=fJq7ros3YcEqXnW8lhic7CNgUrTijyQuFS6oBYRXqyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJ/2kTE2svzYNMZWmqabmKXRI11m4pDGJnDxhY8/G5p4vc2jlYKo2kJdJCSbrnpyt0zZVi+FWiEe6cPxtk40ytIo14mNISZDCxiwHVIit4k55xmvHxgwUXdiiqM5GvFUSdbxXhMldM8fLWeX+8NMn8wWz9vrdugvzCYSmWVq8SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EAvvXVtY; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-540215984f0so17006467e87.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:51:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736326309; x=1736931109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbZVTJDWZ7xlQNj3S58PwFTZA9cCGUupjUxBClEpIns=;
        b=EAvvXVtYLg52czkbUTKtD++4PMlyt+f98gZ1u/rCt1MVjwo4s2SZn35sNKcPKDR1+G
         41Yk4gJ2C49CWwEvsaakUI2YGHFhr7NQz32SjRsVJ36d7LESO9a1VJZFQv/K24D/29AX
         i5m5aMUM5AscpkVlz58eym9/ISthqugGD8Vj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736326309; x=1736931109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UbZVTJDWZ7xlQNj3S58PwFTZA9cCGUupjUxBClEpIns=;
        b=TdYD+zT5vTAMA22Wdkg+RFRG/TIu/Zi4A5TspQaWR7xW24m1I2k7WKEW7whQrik3/P
         JoCXN6gNsnUXNVIkr7i5YemmvqYrLmjDrkjsEXb2JqQcUwkV/ZeJ9aHAAadNbcZsNasf
         WbG2fpGTHeLDh5zY+Ly8DbD1wSVEXvwwKV+3vt2kggCFaD+llo2EVp6gYpbrmtcIYXut
         FVjMK9ZThBu7kZ9Cjwh7J66AvEJMpS70R385TmZoza/X2CMGZthn/EWTzDQBoh0XjXhp
         DZMbDx1mmuudEj9TvLp0hSOOafQgCt3wGaKus6td0aavhiLpdblB8gmj2WNw3DDClij2
         W6GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXhMAVFrURng3D+3neykSTy4xQp4ITEjnfhx3/b/QF8UGv4h5nVy2jomlvzVWIG/rl0FowZnCSswr6@vger.kernel.org
X-Gm-Message-State: AOJu0YyBxP6QKev3zYBPdrBkw2p3nk9DKWBNwQygaJ+MN5XV/SthTaeu
	RnSN5WnvUQ/9XpF7H85VHpraruY8V1Rk2hfP4Z4kvYPMr6YKrYiHkuIUHWxoRfRSssCdq2jl4qH
	jtg==
X-Gm-Gg: ASbGnct+1cKxg+DSxRcZuYA0zz/rBq5tkHT+g68H1NmNzu8F57UkBlyKprlqeKdmFtn
	q9eqrqfOIlx46r2YyNIsUSOFPpm1uTLSGHsjSBjue+VXSg6D5ttbnPidQVqedvdqBdbAzxd9jgZ
	7GeEjkODmpVzrH+xh9ydyenZUhQTl7p5LnqBJSG7HSvWXXxvYxRU0NIecBxMYtN4owUm46apbdU
	5COmUqNbVfd3POR3SrRe6QDWru5eTGrkSj5gtwmhGMJ4jlZ06zJZTgtlSK91+5nA2yDlqRJBRRA
	X39AKHJBT09qhN5ZZdc=
X-Google-Smtp-Source: AGHT+IF+2uKSuB4YprHcb3bHIkNDvt7i9qELgMRIjQAutI5OMdTjR/uCEqLXLN8S4LO6If8kEyXQtQ==
X-Received: by 2002:a05:6512:3e2a:b0:542:2999:2e43 with SMTP id 2adb3069b0e04-542845d6a24mr546248e87.24.1736326309155;
        Wed, 08 Jan 2025 00:51:49 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235fecc2sm5454704e87.59.2025.01.08.00.51.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 00:51:47 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401e6efffcso19052463e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:51:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVzoUbbjLtKD/Zs7W1r5o7b08JUnluraiR7CPQBRBe3csNW58JOWHClKF9y0QirKC9jGiXVN9Y7/E5l@vger.kernel.org
X-Received: by 2002:a05:6512:1392:b0:542:24c8:e062 with SMTP id
 2adb3069b0e04-54284815bc4mr514545e87.44.1736326306832; Wed, 08 Jan 2025
 00:51:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-usb-orientation-v1-1-0b69adf05f37@chromium.org>
 <20241217145612.GA1652259-robh@kernel.org> <CANiDSCu_mFQQVkDb_gSyXeb1_Tu+DxSeHYvGsGp6XVDuOdPyjQ@mail.gmail.com>
 <20241219122453.GA4008177-robh@kernel.org> <CANiDSCt+LAE-LzCDZgrWP_V-Jc-ywTF1-PuQtyDJMfV9v_ZzGA@mail.gmail.com>
 <CAL_JsqLON5xKoYtowKdk49s-YHbk9bq9akZSH1kHdQ_9vxKSQQ@mail.gmail.com>
 <CANiDSCvRfZiMafeJ6==oyduZCzJsv74pg9LbswnjoXFS2nTm=g@mail.gmail.com> <Z347NA00DMiyl1VN@kekkonen.localdomain>
In-Reply-To: <Z347NA00DMiyl1VN@kekkonen.localdomain>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 8 Jan 2025 09:51:34 +0100
X-Gmail-Original-Message-ID: <CANiDSCs37N79MnFZxvBJn2Jw3062EdLRuVP4EkJVfJcfMMuPAg@mail.gmail.com>
X-Gm-Features: AbW1kvan1zyHFQY9XbZwCJKxWjOop6P67-eXGqvGZTUi5VkdEAJc4fptoroNTdc
Message-ID: <CANiDSCs37N79MnFZxvBJn2Jw3062EdLRuVP4EkJVfJcfMMuPAg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: usb-device: Add panel-location
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 8 Jan 2025 at 09:45, Sakari Ailus <sakari.ailus@linux.intel.com> wr=
ote:
>
> Hi Ricardo,
>
> On Tue, Jan 07, 2025 at 11:37:18AM +0100, Ricardo Ribalda wrote:
> > On Fri, 20 Dec 2024 at 23:00, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Dec 19, 2024 at 6:42=E2=80=AFAM Ricardo Ribalda <ribalda@chro=
mium.org> wrote:
> > > >
> > > > On Thu, 19 Dec 2024 at 13:24, Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Tue, Dec 17, 2024 at 04:24:27PM +0100, Ricardo Ribalda wrote:
> > > > > > Hi Rob
> > > > > >
> > > > > > On Tue, 17 Dec 2024 at 16:02, Rob Herring <robh@kernel.org> wro=
te:
> > > > > > >
> > > > > > > On Thu, Dec 12, 2024 at 09:44:37PM +0000, Ricardo Ribalda wro=
te:
> > > > > > > > For some devices like cameras the system needs to know wher=
e they are
> > > > > > > > mounted.
> > > > > > >
> > > > > > > Why do you need this and why only this property and not the d=
ozens
> > > > > > > others ACPI has?
> > > > > >
> > > > > > Userspace needs that information to correctly show it in the UI=
. Eg;
> > > > > >
> > > > > > - User facing camera needs to be mirrored during preview.
> > > > > > - The user facing camera is selected by default during videocon=
ferences
> > > > > > - The world facing camera is selected by default when taking a =
photo
> > > > > > - User facing camera have different parameter defaults than wor=
ld facing.
> > > > >
> > > > > We already have "orientation" defined for this purpose.
> > > >
> > > > Do you mean orientation from
> > > > bindings/media/video-interface-devices.yaml ?
> > > >
> > > > I see a couple of issues:
> > > > - Orientation has a very specific meaning for USB typeC. I'd prefer=
 if
> > > > we could avoid using that word.
> > >
> > > Yes, but this is tied to the class of the device, not the bus. I find
> > > defining the position for USB devices confusing.
> > >
> > > > - For other applications different than cameras it might be useful =
to
> > > > know the positions top, bottom, left, right, which are not availabl=
e
> > > > in video-interface-devices
> > >
> > > Other devices may need some of the 20 other properties in the ACPI
> > > table as well.
> > >
> > > > - The value "external" does not makes too much sense for listed usb=
 devices
> > >
> > > Then don't use it.
> > >
> > > > - It makes our lives easier if dt and acpi have the same meaning (l=
ess
> > > > conversion)
> > >
> > > We have little to no input into what ACPI does. If we're just going t=
o
> > > copy ACPI, then just use ACPI instead.
> > >
> > > > All that said, for my specific usecase, reusing orientation from
> > > > bindings/media/video-interface-devices.yaml works... So if that is
> > > > what you all prefer I can send a v2 with that.
> > > > Let me know what you think
> > >
> > > We already have something for cameras. Use it.
> >
> > So you are proposing a change like this?
> >
> > diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > index da890ee60ce6..5322772a4470 100644
> > --- a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > +++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > @@ -37,6 +37,10 @@ properties:
> >        but a device adhering to this binding may leave out all except
> >        for "usbVID,PID".
> >
> > +  orientation:
> > +    description: If present, specifies the orientation of the usb devi=
ce.
> > +    $ref: /schemas/media/video-interface-devices.yaml#/properties/orie=
ntation
>
> Do you need this for a camera or for other kinds of USB devices, too?
>
> What about e.g. the rotation property?

I need it for cameras. I do not have a usecase for rotation now, but I
might have in the future.

>
> > +
> >
> >
> >    reg:
> >      description: the number of the USB hub port or the USB host-contro=
ller
> >        port to which this device is attached. The range is 1-255.
>
> --
> Regards,
>
> Sakari Ailus



--=20
Ricardo Ribalda

