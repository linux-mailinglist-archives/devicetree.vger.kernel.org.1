Return-Path: <devicetree+bounces-158724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 315A4A67D59
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F51F19C6E4C
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE5120F081;
	Tue, 18 Mar 2025 19:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R4I54LQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4631F09AD
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742327499; cv=none; b=dt4gMXUEc+WS1nPEYNJnUb8fWCzkS5evLYMtmOP4pnr4orh4R1aPstXzwYE3+hZC7uLa7hJUZyYlGxWd2DQ6CTCzIRzonBCrqd2e/qU1QB19zp+5IBz/4gTJ2IRtz471PohFHODSMk5AEZ0EYtSSGdKwZZoXce8l2FOBaOEz6AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742327499; c=relaxed/simple;
	bh=d8cSUoD3Gewlqbb7cpYsy12TfPHuVdAaOoyBCXacZT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fAzrdWfwZETHA8zCQv6Qa/DEVzeHXyD+AaCWalgbdlPeXJEOC1y1nJUTTewsobQWQryqT8+x5d2E9wPGL4FLjD8LoKzfn+hoiCG/CiR7UMT4SURBBYswXKVuMIsyv7J3C7Z9NypAgczI4y0Q3jIPASRdMZvqD53XGOlU3EzJfjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=R4I54LQU; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so6525538e87.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1742327493; x=1742932293; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8cSUoD3Gewlqbb7cpYsy12TfPHuVdAaOoyBCXacZT8=;
        b=R4I54LQUVzvrSrZAojiUZ1qHather8/YWvaDlQAxuQyiYiNK+WeqCQdSstD2vCzkVP
         x2DhyNL8TEe31U3ln9vXCCXr0lNwCn+hZmiJelQXf+IZeWiu6sbSFzG+2Gp5O2nWBPXY
         YMyY7BmfD7AXAmwc1nhbLm+SlGAtSETJgcgmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742327493; x=1742932293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d8cSUoD3Gewlqbb7cpYsy12TfPHuVdAaOoyBCXacZT8=;
        b=G2jWql4XazSzKMtVGzYjwwVYc8VDeNDeAIjUvk31jP/mEghbEd81zwlXctqlVQRIHG
         DaJz0FH3+hpk7YRXyiSDVt4AByfrAFRMkkK/DAtmpTZOob0bZ27XRQqw+VCsp6SgcdSS
         ycshsZNK9tvtNoTDc7NhhLsw+S8ZHf9/YEYQwCqms7E3AFjt+tINZyCikaOqBTua6p5B
         zxtFMnxlVlleAWIanVzbr6w38g8v311MGHSw7onGu+bl1lP995BMTiWU1rtzqIoUsu5W
         zUlIV7VVk6zlk682jJceRyNoeRaCQknzF35lJjJpl7xHGC7cWranXn/qhLLU3n8HYMwK
         ZhNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRz4hnadVgRyJcJG9zaA8dii1wLK7H1MzVVB0tvWL8PhTagK9xx+XgOFPQ4cx4fAvBLA9wOO4t9nhw@vger.kernel.org
X-Gm-Message-State: AOJu0YyIU4w3e+kKeHqa/MxSvX0PgHfWyz/WlteOxUo0tS5bHSypU5DH
	Dt0bqiXUR48Vpvfr8HjMc7HMaB0YV3J/Dma0/QcVcxfUVn7BZZSTlDWVebBK87Hi8RgSHhNkKXH
	I4cmp
X-Gm-Gg: ASbGncuS9Um+HV4lTR6KKZ6PZspgKMG1yUuVA4trYduhGQtJEPCvLqhhBZz2uTLS0zQ
	prLx+qAuB7dycjKewY97lVReXBY0f4xhKIUXQiUNHITucuKFUzIUC245gRqFzSd0cn4cE7seU8Y
	S9ZG6rODCbJRGWtQ6GxMEOt6dFd0U3kY+9ClJV/9XW6uL1fqCGB0/NWhA8QseFxDp80lWKBJ9VB
	CfkxIc3gCvG4i0xTa/x5disTuuN14c2M6GI/z9UwMQWk/Ux0RJvRUN42429vGyIQWB7A8mBYA6j
	wZIPoSumcl+jeP3vULZRKfGrQGBirC7KrLV9vtG4eHq4XHLmbkoqa677Qe8ywCGNOnN6VZJuq+x
	XDECbvKuA
X-Google-Smtp-Source: AGHT+IGz6/g0qIsejyz1QnDqN5hACH2CpCzgykkPz/WGY/IGWDh70xK3AnWd1m00FfXWBwh+4h5tdg==
X-Received: by 2002:a05:6512:308b:b0:549:8f10:ec48 with SMTP id 2adb3069b0e04-549c391cea8mr8511613e87.29.1742327493310;
        Tue, 18 Mar 2025 12:51:33 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a86d8sm1795698e87.49.2025.03.18.12.51.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 12:51:32 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so6499839e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:51:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXaaqR/MgupwhtpqyDSpKRLKS3sgADC4ggjdAFKhaD1yiHwi7K1ev9OTQQGms9zzCbpQdnHHjrNPZ+c@vger.kernel.org
X-Received: by 2002:a05:6512:3984:b0:548:526c:fb99 with SMTP id
 2adb3069b0e04-549c3907de0mr10794093e87.18.1742327491228; Tue, 18 Mar 2025
 12:51:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250205115025.3133487-1-h-shenoy@ti.com> <20250205115025.3133487-2-h-shenoy@ti.com>
 <efd89cf8-2f83-44fd-8bdf-aa348d4d9659@kernel.org> <h24gpx6cxm4s6gzcunjnswubtvqask5dewi3udulmntsuieklm@w3pw4ig3t7gm>
 <de0cb22d-d251-4b0b-8fc7-e8b5a891a527@ti.com> <vfg6hlkzmqahbswgyctzuuzcdm2aend6wmo3uci4qs74jasjtc@3hlox276hazj>
 <673e79bc-53c9-4772-ad18-8c00e4036905@ideasonboard.com>
In-Reply-To: <673e79bc-53c9-4772-ad18-8c00e4036905@ideasonboard.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Mar 2025 12:51:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W45V-AZdbo4MBfZ-A9M4vf42Lda82s8iUoW5azVwM0hA@mail.gmail.com>
X-Gm-Features: AQ5f1Jq1cec3Ts5E7j-BdKWVeJ6ZvaCtuP5LX8avGE-kg45frRP0s6LVh188_2E
Message-ID: <CAD=FV=W45V-AZdbo4MBfZ-A9M4vf42Lda82s8iUoW5azVwM0hA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: drm/bridge: Add no-hpd property
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, Harikrishna Shenoy <a0512644@ti.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Harikrishna Shenoy <h-shenoy@ti.com>, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jani.nikula@intel.com, j-choudhary@ti.com, 
	sui.jingfeng@linux.dev, viro@zeniv.linux.org.uk, r-ravikumar@ti.com, 
	sjakhade@cadence.com, yamonkar@cadence.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 18, 2025 at 8:50=E2=80=AFAM Tomi Valkeinen
<tomi.valkeinen@ideasonboard.com> wrote:
>
> Hi,
>
> On 12/03/2025 14:52, Dmitry Baryshkov wrote:
> > On Wed, Mar 12, 2025 at 11:56:41AM +0530, Harikrishna Shenoy wrote:
> >>
> >>
> >> On 05/02/25 19:03, Dmitry Baryshkov wrote:
> >>> On Wed, Feb 05, 2025 at 12:52:52PM +0100, Krzysztof Kozlowski wrote:
> >>>> On 05/02/2025 12:50, Harikrishna Shenoy wrote:
> >>>>> From: Rahul T R <r-ravikumar@ti.com>
> >>>>>
> >>>>> The mhdp bridge can work without its HPD pin hooked up to the conne=
ctor,
> >>>>> but the current bridge driver throws an error when hpd line is not
> >>>>> connected to the connector. For such cases, we need an indication f=
or
> >>>>> no-hpd, using which we can bypass the hpd detection and instead use=
 the
> >>>>> auxiliary channels connected to the DP connector to confirm the
> >>>>> connection.
> >>>>> So add no-hpd property to the bindings, to disable hpd when not
> >>>>> connected or unusable due to DP0-HPD not connected to correct HPD
> >>>>> pin on SOC like in case of J721S2.
> >>>>>
> >>>>> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> >>>>
> >>>> Why are you sending over and over the same? You already got feedback=
.
> >>>> Then you send v2. You got the same feedback.
> >>>>
> >>>> Now you send v3?
> >>>>
> >>>> So the same feedback, but this time: NAK

I only spent a few minutes on it, but I couldn't find a v2. If there's
a link I'm happy to read it, but otherwise all my comments below are
without any context from prior verisons...


> >>> Krzysztof's email forced me to take a look at the actual boards that =
you
> >>> are trying to enable. I couldn't stop by notice that the HPD signal
> >>> _is_ connected to a GPIO pin. Please stop hacking the bridge driver a=
nd
> >>> use the tools that are already provided to you: add the HPD pin to th=
e
> >>> dp-controller device node. And then fix any possible issues coming fr=
om
> >>> the bridge driver not being able to handle HPD signals being delivere=
d
> >>> by the DRM framework via the .hpd_notify() callback.
> >>>
> >>> TL;DR: also a NAK from my side, add HPD gpio to dp-controller.
> >>>
> >> We tried implementing a interrupt based HPD functionality as HPD signa=
l is
> >> connected to GPIO0_18 pin, we were able to get interrupt based HPD wor=
king
> >> however to route this signal to SoC we are loosing audio capability du=
e to
> >> MUX conflict. Due to board level limitations to
> >> route the signal to SoC, we will not be able to support interrupt
> >> based HPD and polling seems a possible way without loosing on audio
> >> capability.
> >
> > Still NAK for the no-hpd property. HPD pin is a requirement for
> > DisplayPort to work, as it is used e.g. for the 'attention' IRQs being
> > sent by the DP sink. I'm not sure what kind of idea you HW engineers ha=
d
> > in mind.
>
> It's true that for normal DP functionality the HPD is required, but
> afaik DP works "fine" without HPD too. This is not the first board that
> has DP connector, but doesn't have HPD, that I have seen or worked on.
> Polling can be used for the IRQs too.

I have less familiarity with DP than with eDP, but from what I know
I'd agree with Tomi here that it would probably work "fine" by some
definition of "fine". As Dmitry says, the "attention" IRQ wouldn't
work, but as I understand it that's not really part of the normal flow
of using DP. As evidence, some people have made "ti-sn65dsi86" (which
is supposed to be for eDP only) work with DP. While the ti-sn65dsi86
hardware _does_ support HPD, because of the forced (slow) debouncing
it turned out not to be terribly useful for eDP and we designed our
boards to route HPD to a GPIO. ...and because of that nobody ever
wrote the code to handle the "attention" IRQ. Apparently people are
still using this bridge w/ some success on DP monitors.


> For eDP HPD is optional, and some of the cases I've worked with involved
> a chip intended for eDP, but used with a full DP connector, and no HPD.

I definitely agree. The eDP spec explicitly states that HPD is
optional even though it's also documented to be an "attention" IRQ
there. We've hooked up large numbers of eDP panels and the lack of the
attention IRQ wasn't a problem.


> However, in this particular case the DP chip supports full DP, so it's
> just a board design error.
>
> My question is, is J721s2 EVM something that's used widely? Or is it a
> rare board? If it's a rare one, maybe there's no point in solving this
> in upstream? But if it's widely used, I don't see why we wouldn't
> support it in upstream. The HW is broken, but we need to live with it.
>
> Another question is, if eDP support is added to the cdns-mhdp driver,
> and used with a panel that doesn't have an HPD, how would that code look
> like? If that would be solved with a "no-hpd" property, identical to the
> one proposed in this series, then... There's even less reason to not
> support this.
>
> Disclaimer: I didn't study the schematics, and I haven't thought or
> looked at how eDP is implemented in other drm drivers.

I spent lots of time working through this on ti-sn65dsi86. How it
works today (and how it's documented in the bindings) is that it's
possible to specify "no-hpd" on both the eDP panel node and on the
bridge chip. They mean different things.

The HPD-related properties that can be specified on the panel are
a) <nothing> - HPD hooked up to the bridge
b) no-hpd - HPD isn't hooked up at all
c) hpd-gpios - HPD is hooked up to a GPIO

The HPD-related properties that can be specified on ti-sn65dsi86 are:
a) <nothing> - HPD is hooked up to the bridge
b) no-hpd - HPD is not hooked up to the bridge

NOTE: The "ti-sn65dsi86" controller needs to be programmed to ignore
its HPD line if HPD isn't hooked up. IIRC the hardware itself will not
transfer things over the AUX bus unless you either tell the controller
to ignore HPD or HPD is asserted.


Here are the combinations:

1. Panel has no HPD-related properties, ti-sn65dsi86 has no
HPD-related properties

HPD is assumed to be hooked up to the dedicated HPD pin on the bridge.
Panel driver queries the bridge driver to know the status of HPD. In
Linux today ti-sn65dsi86 doesn't really implement this and the bridge
chip just has a big, fixed, non-optimized delay that tries to account
for the max delay any panel could need.

2. Panel has "hpd-gpios", ti-sn65dsi86 has no HPD-related properties

In theory, I guess this would say that HPD goes _both_ to a GPIO and
to the HPD of the bridge. Maybe handy if the bridge doesn't provide a
"debounced" signal but still wants HPD hooked up to get the
"attention" IRQ?

3. Panel has "no-hpd", ti-sn65dsi86 has no HPD-related properties

Doesn't really make sense. Says that panel should delay the max amount
but there's no good reason to do this if HPD is hooked up on
ti-sn65dsi86.

4. Panel has no HPD-related properties, ti-sn65dsi86 has "no-hpd"

Doesn't really make sense. Says that the panel should assume the
bridge has HPD hooked up but then the bridge doesn't.

5. Panel has "hpd-gpios", ti-sn65dsi86 has "no-hpd"

This is the sc7180-trogdor config. Says the panel should use the GPIO
to read HPD for power sequencing purposes. Tells us that HPD is not
hooked up to the bridge chip so we should program the bridge chip to
ignore HPD.

6. Panel has "no-hpd", ti-sn65dsi86 has "no-hpd"

Says HPD is just not hooked up at all. panel-edp will delay for
"hpd-absent-delay-ms". Bridge chip should be programmed to tell the
hardware to ignore the HPD signal.


How we got there was fairly organic and quite a long time ago, but it
all sorta makes sense even if it is a bit convoluted.

-Doug

