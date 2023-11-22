Return-Path: <devicetree+bounces-18119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0ED7F5352
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24AC41C20ADA
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 22:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899CE200CB;
	Wed, 22 Nov 2023 22:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD61619E
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 14:23:05 -0800 (PST)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2806cbd43b8so259061a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 14:23:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700691785; x=1701296585;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5XRVoVLXVomBjORXYYQ/VVU9eLMC0qK+hh0p5N9qvqQ=;
        b=bgM7nQVFiInlGKbuMG2JaaE4vaGyC3+wwlu2jfRGH3ZUrjYfTQwh2SDgjAd0toSAfn
         dIl3tGj7T4BRHV5rpGb0rFF2ZapjTg7MMoSjr+hyStdXnLqcuJX1poPoTtsCIyFRWwq3
         y29VuNq+9MwN/v496hbQomu1RmIiIECLWcybDNR2WRZFZvIT6ivXvHtETHb/RF7SO6eF
         x+Ky61VZINZl5kgQ/J2DfEV5gNpEafJTQhGjfQbqaIG/Y2kGDGyhBcRzqiXCGHtyb9+n
         b6N5H9ZyXTNqISLHExqNV1mL0hgkriXe+Fv7EYlRchWWrr+IYPpeb0EtRrmLXx5rLToV
         y3Ow==
X-Gm-Message-State: AOJu0Ywnxnqzokw+CFUaXkyClXBEsDWn6GXEI3FU6WOXRns1UmS2uL2j
	Qp53yNPsZeqj9+JzmE0D5Y5e9A==
X-Google-Smtp-Source: AGHT+IHcfF3JiTj83VWD6aQ7HmpeqmLjksoTDCwGfftpK1NOUvzeHjENua6xhR9k1zsc/zy0hpZnZQ==
X-Received: by 2002:a17:90b:1b51:b0:27d:97e5:f3fa with SMTP id nv17-20020a17090b1b5100b0027d97e5f3famr4335607pjb.29.1700691785297;
        Wed, 22 Nov 2023 14:23:05 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id q8-20020a17090a2dc800b0027ce48022cbsm262914pjm.14.2023.11.22.14.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 14:23:04 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Roger Quadros
 <rogerq@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, "Vardhan, Vibhore" <vibhore@ti.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>, Thomas
 Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 3/6] usb: cdns3-ti: add suspend/resume procedures for J7200
In-Reply-To: <CX15J7B8F8HH.1WZ10OOW31X1H@tleb-bootlin-xps13-01>
References: <20231113-j7200-usb-suspend-v1-0-ad1ee714835c@bootlin.com>
 <20231113-j7200-usb-suspend-v1-3-ad1ee714835c@bootlin.com>
 <5080372b-1f48-4cbc-a6c4-8689c28983cb@kernel.org>
 <CWZH66HQZNYM.T623ZOEEE0BK@tleb-bootlin-xps13-01>
 <dad980f3-e032-41e4-a1e4-a16a7f45ff95@kernel.org>
 <CX0GOP07I40N.198G7LJ0HYDBG@tleb-bootlin-xps13-01>
 <bdea68ad-7523-4738-8fa1-b670d81a6b93@kernel.org>
 <CX10D9YX1O1C.30PF317AG065N@tleb-bootlin-xps13-01>
 <3e00b2ad-b58f-4b09-9230-683c58d3bb92@kernel.org>
 <CX15J7B8F8HH.1WZ10OOW31X1H@tleb-bootlin-xps13-01>
Date: Wed, 22 Nov 2023 14:23:04 -0800
Message-ID: <7h34wxfmwn.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Th=C3=A9o Lebrun <theo.lebrun@bootlin.com> writes:

> Hi Roger,
>
> On Fri Nov 17, 2023 at 12:51 PM CET, Roger Quadros wrote:
>> On 17/11/2023 12:17, Th=C3=A9o Lebrun wrote:
>> > On Thu Nov 16, 2023 at 10:44 PM CET, Roger Quadros wrote:
>> >> On 16/11/2023 20:56, Th=C3=A9o Lebrun wrote:
>> >>> On Thu Nov 16, 2023 at 1:40 PM CET, Roger Quadros wrote:
>> >>>> On 15/11/2023 17:02, Th=C3=A9o Lebrun wrote:
>> >>>>> On Wed Nov 15, 2023 at 12:37 PM CET, Roger Quadros wrote:
>> >>>>>> You might want to check suspend/resume ops in cdns3-plat and
>> >>>>>> do something similar here.
>> >>>>>
>> >>>>> I'm unsure what you are referring to specifically in cdns3-plat?
>> >>>>
>> >>>> What I meant is, calling pm_runtime_get/put() from system suspend/r=
esume
>> >>>> hooks doesn't seem right.
>> >>>>
>> >>>> How about using something like pm_runtime_forbid(dev) on devices wh=
ich
>> >>>> loose USB context on runtime suspend e.g. J7200.
>> >>>> So at probe we can get rid of the pm_runtime_get_sync() call.
>> >>>
>> >>> What is the goal of enabling PM runtime to then block (ie forbid) it=
 in
>> >>> its enabled state until system suspend?
>> >>
>> >> If USB controller retains context on runtime_suspend on some platforms
>> >> then we don't want to forbid PM runtime.
>> >=20
>> > What's the point of runtime PM if nothing is done based on it? This is
>> > the current behavior of the driver.

The point is to signal to the power domain the device is in that it can
power on/off.  These IP blocks are (re)used on many different SoCs, so
the driver should not make any assumptions about what power domain it is
in (if any.)

>> Even if driver doesn't have runtime_suspend/resume hooks, wouldn't=20
>> the USB Power domain turn off if we enable runtime PM and allow runtime
>> autosuspend and all children have runtime suspended?
>
> That cannot be the currently desired behavior as it would require a
> runtime_resume implementation that restores this wrapper to its desired
> state.

Or, for this USB IP block to be in a power domain that has memory
retention, in which case the power domain can still go off to save
power, but not lose context.

> It could however be something that could be implemented. It would be a
> matter of enabling PM runtime and that is it in the probe. No need to
> even init the hardware in the probe. Then the runtime_resume
> implementation would call the new cdns_ti_init_hw.

This is the way.

> This is what the cdns3-imx wrapper is doing in a way, though what they
> need is clocks rather than some registers to be written.
>
> That all feels like outside the scope of the current patch series
> though.
>
> My suggestion for V2 would still therefore be to remove all PM runtime
> as it has no impact. It could be added later down the road if cutting
> the power-domain is a goal of yours.

It may have no impact on the platform you are on, but it's very likely
to have an impact on other platforms with this same IP.=20

Kevin



