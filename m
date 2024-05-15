Return-Path: <devicetree+bounces-67111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D49018C68FC
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 16:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 037951C20C2F
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 14:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED6415572A;
	Wed, 15 May 2024 14:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="buv0Z5pU"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6962E13F00B
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715784318; cv=none; b=jwgLNmPxgs/JNML7ESTQhKZtw+cNCVnrtsaD9ReF+N9UsBtRI9Qv1Tz9+nvrP7IhPmRNdRKU4BRNmx+aK4ZGcy/iYpnWCjGYGM9dkUyGP4M9hspbgjK1EjQGN7V9Kvye9pQzqceOmTNDZbMzmtzemIY8oO+ELa7lqi3rF7WUGec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715784318; c=relaxed/simple;
	bh=2Kzr253EOYcdr/NLYkrqCk7ba+nkUa/bWa0gDeg+MdQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AWZL8/HeJYuQAtARMa7fvaRO22vVfNblbIrp44gxX5nOK/qHlXYebgxR7zGECvUmHUgsFTJfM/6m72HuA3XaJ8ZK2lnInag0mlsatq6COvi8RgMvR66ltL1eJAFukNEbV6DVCKS7HOcvYxnF5tDpA+L9BXNkd/vZO87zioIjU1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=buv0Z5pU; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1715784315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LdrmuWBoEpOfgUpQ2v1u7u6A9FgqhZDeoL40Chq+dcE=;
	b=buv0Z5pUR31HIm0Uhxsn1TrpnIo9fUDUX6g4dmd0OGzHlbgMjDfsFFxURoWGN6k17iJczg
	t0NsTuJseiEuyJ/Tx2a3nWWWo4bNebIataQhvPVCFBx72TAMVuEcBnRMXTR15EPgYOVlyU
	B1NFdlJBAqTv/EtdeUQMQwh37PJwRYQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-530-RJ7GO4JyOr-wMG8XhnjD2A-1; Wed, 15 May 2024 10:45:13 -0400
X-MC-Unique: RJ7GO4JyOr-wMG8XhnjD2A-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-41ff4ec2bb5so22139765e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 07:45:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715784312; x=1716389112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LdrmuWBoEpOfgUpQ2v1u7u6A9FgqhZDeoL40Chq+dcE=;
        b=T9kicQUQcxyolLTg9NodTNFYxKKqgJ/c8mJZaUTo06SUfWo84Ppbl2SjJc49EArZKP
         OXzW9jhRLp624O6s1UUHRw/V4JDwOkpQG0+GYRAPvYDVXyjmrTUju4u0rKfJlj8DaaIY
         r1rfmh8cGK/ik9gsed6teBiDVgLIB1x0s97sqs1ilUHhlm1YHgqNE2MoqHmKcOtfH+PQ
         9/qB9qlKWgmdKM4SXCMWqAMugd1dCCqWpcRjH0XRnwoAdiNG5jyov+snwQ3knX0tL8GL
         87KlMXY6UxL1dRzYbWjMo1h4IGVoG9XWlcn/kmOf541vEvA1ESEpKKQoifj7vubsKKmN
         2D5w==
X-Forwarded-Encrypted: i=1; AJvYcCWuW08KcSWG+JJ791e0hyTWtyBfv0B03yClWAgmuemYqQkggW5GO4QaQ0sxPMoDDUl88BsSbZ1yyYo9kxtxmlSH97YPpSngdbee+A==
X-Gm-Message-State: AOJu0YwllvBLLP4lDtjulnT1C+tn8GRdtIh/9Fw+V4M6gR9p7wQexfp1
	J4tSjXYeS7qyM+T5ntUC6r8BY2xWSiWEqNTiKteBnxD54K33PLRqVcrJHXyDCQgOhgqiWSOz+E0
	FITRy7SDqg/5j3dkneZPJSO6jlXoBd09gSDweBaWK6Z+cDLYRUjk1n7yPZoU=
X-Received: by 2002:a05:600c:4e88:b0:420:1551:96ab with SMTP id 5b1f17b1804b1-42015519952mr71004255e9.10.1715784311739;
        Wed, 15 May 2024 07:45:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWZcHQ7HI53rjrQdcpiZFHaMFqKuGxfRGvmqHYTAW48AeZ9TtGLYJqRhaNP8tu9rlc5rpjPg==
X-Received: by 2002:a05:600c:4e88:b0:420:1551:96ab with SMTP id 5b1f17b1804b1-42015519952mr71003965e9.10.1715784311091;
        Wed, 15 May 2024 07:45:11 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b895731sm16785379f8f.42.2024.05.15.07.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 07:45:10 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Devarsh Thakkar <devarsht@ti.com>, Maxime Ripard <mripard@kernel.org>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, praneeth@ti.com, a-bhatia1@ti.com, j-luthra@ti.com
Subject: Re: [RFC PATCH 2/3] drm/tidss: Add support for display sharing
In-Reply-To: <03e2d653-731c-bb30-321b-b5477d7b82b2@ti.com>
References: <20240116134142.2092483-1-devarsht@ti.com>
 <20240116134142.2092483-3-devarsht@ti.com>
 <vgfzhamtiwkpdyk5ndagsb63subclinotoe6tsi3wu6z7454ec@igxfzjc5gyqm>
 <88018f5f-a7db-7278-e5c3-bb1dbf0e3f14@ti.com>
 <qiqrhpqtnox47wj6az7t3fjp4vc6k32fw42tp5slqggrhe6utb@i7lkpaf3v3od>
 <2f4cf2a7-ce7a-bb34-f722-7e66ea41def7@ti.com>
 <20240314-hospitable-attractive-cuttlefish-a2f504@houat>
 <03e2d653-731c-bb30-321b-b5477d7b82b2@ti.com>
Date: Wed, 15 May 2024 16:45:09 +0200
Message-ID: <87ikzf16dm.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Devarsh Thakkar <devarsht@ti.com> writes:

Hello Devarsh and Maxime,

> Hi Maxime,
>
> On 14/03/24 20:04, Maxime Ripard wrote:
>> Hi,
>> 
>> On Wed, Feb 14, 2024 at 09:17:12PM +0530, Devarsh Thakkar wrote:
>>> On 13/02/24 19:34, Maxime Ripard wrote:
>>>> On Thu, Feb 08, 2024 at 06:26:17PM +0530, Devarsh Thakkar wrote:
>>>>> On 26/01/24 17:45, Maxime Ripard wrote:
>>>>>> Hi,
>>>>>>
>>>>>> Thanks a lot for working on that.
>>>>>>
>>>>>> On Tue, Jan 16, 2024 at 07:11:41PM +0530, Devarsh Thakkar wrote:
>>>>>>> Display subsystem present in TI Keystone family of devices supports sharing
>>>>>>> of display between multiple hosts as it provides separate register space
>>>>>>> (common* region) for each host to programming display controller and also a
>>>>>>> unique interrupt line for each host.
>>>>>>>
>>>>>>> This adds support for display sharing, by allowing partitioning of
>>>>>>> resources either at video port level or at video plane level as
>>>>>>> described below :
>>>>>>>
>>>>>>> 1) Linux can own (i.e have write access) completely one or more of video
>>>>>>> ports along with corresponding resources (viz. overlay managers,
>>>>>>> video planes) used by Linux in context of those video ports.
>>>>>>> Even if Linux is owning
>>>>>>> these video ports it can still share this video port with a remote core
>>>>>>> which can own one or more video planes associated with this video port.
>>>>>>>
>>>>>>> 2) Linux owns one or more of the video planes with video port
>>>>>>> (along with corresponding overlay manager) associated with these planes
>>>>>>> being owned and controlled by a remote core. Linux still has read-only
>>>>>>> access to the associated video port and overlay managers so that it can
>>>>>>> parse the settings made by remote core.
>>>>>>
>>>>>> So, just to make sure we're on the same page. 1) means Linux drives the
>>>>>> whole display engine, but can lend planes to the R5? How does that work,
>>>>>> is Linux aware of the workload being there (plane size, format, etc) ?
>>>>>>
>>>>>
>>>>> Well, there is no dynamic procedure being followed for lending. The
>>>>> partitioning scheme is decided and known before hand, and the remote
>>>>> core firmware updated and compiled accordingly, and similarly the
>>>>> device-tree overlay for Linux is also updated with partitioning
>>>>> information before bootup.
>>>>>
>>>>> What would happen here is that Linux will know before-hand this
>>>>> partitioning information via device-tree properties and won't enumerate
>>>>> the plane owned by RTOS, but it will enumerate the rest of the display
>>>>> components and initialize the DSS, after which user can load the DSS
>>>>> firmware on remote core and this firmware will only have control of
>>>>> plane as it was compiled with that configuration.
>>>>
>>>> Right. If the RTOS is in control of a single plane, how it is expected
>>>> to deal with Linux shutting the CRTC down, or enforcing a configuration
>>>> that isn't compatible with what the RTOS expects (like a plane with a
>>>> higher zpos masking its plane), what is the mechanism to reconcile it?
>>>>
>>>
>>> Just for the note, for this "RTOS control single plane" mode, we don't have a
>>> firmware available to test (right now we are only supporting example for "RTOS
>>> controlling the display mode" as shared here [1]) and hence this is not
>>> validated but the idea was to keep dt-bindings generic enough to support them
>>> in future and that's why I referred to it here.
>>>


If I understand you correctly, for now the only real use case is when the
the RTOS owns / manages the complete display pipeline and Linux can only
own video planes.

The opposite is supported by the DSS hardware (thanks to its feature that
allows partitioning the register space and having multiple per-host IRQs) 
but it's not a real use case yet. The reason why this case is added to the
DT binding is as you said for flexiblity and make the design future-proof.

>>> separate irq
>>> Coming back to your questions, with the current scheme the Linux (tidss) would
>>> be expected to make sure the CRTC being shared with RTOS is never shutdown and
>>> the RTOS plane should never gets masked.
>> 
>> I'm probably missing something then here, but if the Linux side of
>> things is expected to keep the current configuration and keep it active
>> for it to work, what use-case would it be useful for?
>> 
>
> It's just one of the partitioning possibilities that I mentioned here, that
> Linux is in control of DSS as a whole and the user want the other host (be it
> RTOS or any other core) to control a single plane. For e.g it could be Linux
> (with GPU rendering) displaying the graphics and RTOS overlaying a real time
> clock or any other signs which need to be displayed in real-time.
> But more than the use-case this is inspired by the fact that we want to be
> flexible and support in the linux driver whatever partitioning scheme
> possibilities are there which are supported in hardware and we let user decide
> on the partitioning scheme.
>

A possible use case here could be if Linux is safer than the other host
owning a single plane, right? Then in that case the RTOS could fail but
the display pipeline won't be teared down.

That is, if your safety tell-tales would be driven by Linux and having
other OS dislay the GPU-rendered QT based application on another plane.

But as said, for now that's a theorethical use case since the one you
mentioned is the opposite.

[....]

>>>
>>>> It's not just about interrupts, it's also about how your arbitrate
>>>> between what Linux wants and what the RTOS wants. Like if the RTOS still
>>>> wants to output something but Linux wants to disable it, how do you
>>>> reconcile the two?
>>>>
>>>
>>> The scheme involves static partitioning of display resource which are assigned
>>> compile-time to RTOS and Linux. Here the RTOS firmware is compiled with
>>> specific ownership/display resources as desired by user and this assignment
>>> stays intact.
>>>
>>> If there is a more complex use-case which requires dynamic
>>> assignment/arbitration of resources then I agree those require some sort of
>>> IPC scheme but this is not what we target with these series. This series is
>>> simply to support static partitioning feature (separate register space,
>>> separate irq, firewalling support etc) of TI DSS hardware across the multiple
>>> hosts and there are use-cases too for which this scheme suffices.
>> 
>> I think you're right and we have a misunderstanding. My initial
>> assumption was that it was to prevent the Linux side of sides from
>> screwing up the output if it was to crash.
>> 
>> But it looks like it's not the main point of this series, so could you
>> share some use-cases you're trying to address?
>> 
>
> The end use-case we have demonstrated right now with this series is a
> proof-of-concept display cluster use-case where RTOS boots early on MCU core
> (launched at bootloader stage) and initializes the display (using the global
> common0 register space and irq) and starts displaying safety tell-tales on one
> plane, and once Linux boots up on application processor,
> Linux (using common1 register space and irq) controls the other plane with GPU
> rendering using a QT based application. And yes, we also support the scenario
> where Linux crashes but RTOS being the DSS master and in control of DSS power,
> clock domain and global register space is not impacted by the crash.

You mention 2 scenarios but are actually the same? Or did I misunderstand?

In both cases the RTOS own the display pipeline and Linux can just display
using a single plane.

That's why I think that agree with Maxime, that a fwkms could be a simpler
solution to your use case instead of adding all this complexity to the DSS
driver. Yes, I understand the HW supports all this flexibility but there's
no real use case yet (you mentioned that don't even have firmware for this
single plane owned by the RTOS in the R5F case).

The DT binding for a fwkms driver would be trivial, in fact maybe we might
even leverage simpledrm for this case and not require a new driver at all.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


