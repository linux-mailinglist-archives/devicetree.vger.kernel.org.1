Return-Path: <devicetree+bounces-62390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D928B0FAB
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 18:25:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 272CB1F25B15
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1522116C6B7;
	Wed, 24 Apr 2024 16:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SiDzE8kQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D2416C44D
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713975910; cv=none; b=Ri0dQZcgU1pI+dlxrvybSWi22RZtcS3/CcQFS5dPef9JA4WkjR5os1O9jMjuCpJoUmmwVg1qC1DI7HIZIprLRX5uDR8LTnfBiJaeOge/Unqa5OPflnRyEW43DSheX2kRn0zpo69xuVJ7zZALAryjNlnu0y0hTB65Z5bIs4LdyZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713975910; c=relaxed/simple;
	bh=F8U+eywUSK4O8B2yNFCJfPiNXX5n0S1cQ/ES1sXTwWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZPi45eUIKgGB4byVal5OwllXC82WiyLy95VLtKn22WstfILC7EsU5ab5902FKyLsdQyhoeWtlK/eulj6Ky1UgJnpZczOMwl9gZMMoLAZ4foJvkyaijeeamQNXA1n6o4Zcm97m4xtVoeYCCAL+USr/R/zt/GqYjXpD1Ce86Mhd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SiDzE8kQ; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-78f049fefd5so443953785a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 09:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713975906; x=1714580706; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8U+eywUSK4O8B2yNFCJfPiNXX5n0S1cQ/ES1sXTwWQ=;
        b=SiDzE8kQeLGS5kT280DdgII8DgRk9fLXLW9xy019hEJ0vgbdS/duV61W7qqSoOatRk
         VkpQ+5rEOI2ozL9sNfLIrd/saeD7ny5lqOh6Eh2BAwBUU2HClydV6X0orPjfoKpI+HwC
         M4VjIAwbZ8zgi6mCoNO8Q7kCon+PkjRYhord4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713975906; x=1714580706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F8U+eywUSK4O8B2yNFCJfPiNXX5n0S1cQ/ES1sXTwWQ=;
        b=BvdttGxxc6VmZbSFCehCghDdoiWcP6oCEffbbzjqZlYR+QC7wxxjZnvp4VP2Bt0//J
         qiZbxVnQfdUP830WDgJM8sLLWg91QYyZFLt0PpcPnJLnrGyyH+IBbj9N1CADFafrEJHt
         5+QPxDk/4SmM6fDVvu5pd7RF9x+4b25iinyzxxfKjZSd4ZDUJ/Q1ekknTsxlwUCzWo3j
         deu+oAXTfxpF2jUCTJG7WJ7HwrstDOLHxyk7C40oScb+IUpRcxchjId/1qFjnNBCrb8Y
         1hY+lg8PKkqW0EcggPTk2PYzmu+0oLVgMeLFiiqio6mamgC3jlSEkB+fwreMP1dOfa40
         lmig==
X-Forwarded-Encrypted: i=1; AJvYcCVaiWUj8QtXqCjtkJS4istKZMLGiOxVuk8A+p4eAza469JaXP3G3/gZb4KlZQfgOGCIbPJLEnHCr7Rdc8vn/gwoGOenB9/JXhwj1A==
X-Gm-Message-State: AOJu0YywB+HJQqQTCJhuodpA4DAy62OmVkbg/6oZhRGvbDok5tD7ZjaO
	2ZDg6aEPlEAFCqUURWWZl/+2iFjyVbv5qi0PnQMBrgxPFqaskhED1b6NeZJIeHodmprUh3ZXU+I
	=
X-Google-Smtp-Source: AGHT+IGasuoEMGvSDc6T18iQTdljhFp2b7jTRmZRXFTz2GwP5nYuQ782wkSnmE+G9Mj6vlj+yg8EFg==
X-Received: by 2002:a05:620a:2988:b0:78f:1bd4:6a69 with SMTP id r8-20020a05620a298800b0078f1bd46a69mr3696511qkp.15.1713975905860;
        Wed, 24 Apr 2024 09:25:05 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id y16-20020a37e310000000b0078d5fdc929fsm6229079qki.104.2024.04.24.09.25.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 09:25:04 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-439b1c72676so595191cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 09:25:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUvumS71bfy2i+w4X+r01hexnBlTAPRYcZqDxYp0KaIkAa1Q1oDHn58WapImoSvDIQ08H5Z58/EHy7TygFCeV+gEYJn40HSX1Dn4Q==
X-Received: by 2002:ac8:498a:0:b0:439:9c1b:ce93 with SMTP id
 f10-20020ac8498a000000b004399c1bce93mr389740qtq.12.1713975904358; Wed, 24 Apr
 2024 09:25:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423134611.31979-1-johan+linaro@kernel.org>
 <CAD=FV=W2Y=Sr-=YkKb01XLQsbQJr2b981c9kcfvAc4_5E9XD7g@mail.gmail.com> <ZijH6EaqWKHWRcdK@hovoldconsulting.com>
In-Reply-To: <ZijH6EaqWKHWRcdK@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Apr 2024 09:24:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X+RaSxsWtY704-si9vrqkoUey0W11R6X8pTxgJkt6Fiw@mail.gmail.com>
Message-ID: <CAD=FV=X+RaSxsWtY704-si9vrqkoUey0W11R6X8pTxgJkt6Fiw@mail.gmail.com>
Subject: Re: [PATCH 0/6] HID/arm64: dts: qcom: sc8280xp-x13s: fix touchscreen
 power on
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 24, 2024 at 1:50=E2=80=AFAM Johan Hovold <johan@kernel.org> wro=
te:
>
> On Tue, Apr 23, 2024 at 01:36:18PM -0700, Doug Anderson wrote:
> > On Tue, Apr 23, 2024 at 6:46=E2=80=AFAM Johan Hovold <johan+linaro@kern=
el.org> wrote:
> > > The Elan eKTH5015M touch controller on the X13s requires a 300 ms del=
ay
> > > before sending commands after having deasserted reset during power on=
.
> > >
> > > This series switches the X13s devicetree to use the Elan specific
> > > binding so that the OS can determine the required power-on sequence a=
nd
> > > make sure that the controller is always detected during boot. [1]
> > >
> > > The Elan hid-i2c driver currently asserts reset unconditionally durin=
g
> > > suspend, which does not work on the X13s where the touch controller
> > > supply is shared with other peripherals that may remain powered. Hold=
ing
> > > the controller in reset can increase power consumption and also leaks
> > > current through the reset circuitry pull ups.
> >
> > Can you provide more details about which devices exactly it shares
> > power with? I'm worried that you may be shooting yourself in the foot
> > to avoid shooting yourself in the arm.
> >
> > Specifically, if those other peripherals that may remain powered ever
> > power themselves off then you'll end up back-driving the touchscreen
> > through the reset line, won't you? Since reset is active low then not
> > asserting reset drives the reset line high and, if you power it off,
> > it can leach power backwards through the reset line. The
> > "goodix,no-reset-during-suspend" property that I added earlier
> > specifically worked on systems where the rail was always-on so I could
> > guarantee that didn't happen.
> >
> > From looking at your dts patch it looks like your power _is_ on an
> > always-on rail so you should be OK, but it should be documented that
> > this only works for always-on rails.
> >
> > ..also, from your patch description it sounds as if (maybe?) you
> > intend to eventually let the rail power off if the trackpad isn't a
> > wakeup source. If you eventually plan to do that then you definitely
> > need something more complex here...
>
> No, that's the whole point: the hardware is designed so that the reset
> line can be left deasserted by the CPU also when the supply is off.
>
> The supply in this case is shared with the keyboard and touchpad, but
> also some other devices which are not yet fully described. As you
> rightly noted, the intention is to allow the supply to eventually be
> disabled when none of these devices are enabled as wakeup sources.
>
> I did not want to get in to too much details on exactly how this
> particular reset circuit is designed, but basically you have a pull up
> to an always-on 1.8 V rail on the CPU side, a FET level shifter, and a
> pull up to the supply voltage on the peripheral side.
>
> With this design, the reset line can be left deasserted by the CPU
> (tri-stated or driven high), but the important part is that the reset
> signal that goes into the controller will be pulled to 3.3 V only when
> the supply is left on and otherwise it will be connected to ground.

Ah, got it. The level shifter isolating things makes sense.


> > I guess one last thought is: what do we do if/when someone needs the
> > same solution but they want multiple sources of touchscreens, assuming
> > we ever get the second-sourcing problem solved well. In that case the
> > different touchscreen drivers might have a different idea of how the
> > GPIO should be left when the driver exits...
>
> The second-source problem is arguable a separate one, and as we've
> discussed in the past, the current approach of describing both devices
> in the devicetree only works when the devices are truly compatible in
> terms of external resources (supplies, gpios, pinconfig). For anything
> more complex, we need a more elaborate implementation.
>
> In this case it should not be a problem, though, as the reset circuit
> should have the same properties regardless of which controller you
> connect (e.g. both nodes would have the 'no-reset-on-power-off'
> property).

The reset circuitry may be the same, but the properties of the
touchscreen might not be. It would be easy to imagine a different
touchscreen that consumes less power when held in reset.

In any case, not a problem we need to solve right now.


-Doug

