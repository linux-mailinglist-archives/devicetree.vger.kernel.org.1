Return-Path: <devicetree+bounces-67312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCB08C76EC
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 14:51:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A2D71F217B0
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 12:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E3B14601C;
	Thu, 16 May 2024 12:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="GprCN/9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A951728680
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 12:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715863906; cv=none; b=lPsyb0rExzlmIbH0VYC83K/cw535P3W5wi3W1XUiY4BOxyKiymUsPTYliLoAK8z6MotMp7a0KOkdUgOW5u2k/IIOZ7c3vCeiHS81K1xvAquG/oxaexclChQ6pOOeQnsFiXunqtRpUTwzWwGN+milxVMbHxukQPrkLPrGXVJxH9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715863906; c=relaxed/simple;
	bh=ZTGeoZNuvNEJxz0Ur4S1QKyGvaIb1DHqglYMqytOoYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TzqZT8RRCT2beFuo4moReMPSWm4/qtLCRlZrl6oGfgViCQzrZRNbAvte8STuuUizp9Ldt9Gz5lz8DoWkAqSaq+Yq/bJaro92i2N1sN5ASyDpwDQDWH6mLzBf9DJ/q0/F34mRvGpdx+Ag8o4RoMZ9+fwWQh59cQvsHgCkqAnmKR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=GprCN/9K; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-574fd0306d0so394581a12.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 05:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715863903; x=1716468703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bN3c1sB+iVklhHV8ys6/CoK5+RSaNkuyQ6y8C9ymhqA=;
        b=GprCN/9KmsJtpf0npxToPkcejHOoUosqsWYz/3ThmxOLT1JF/Kf03wU2m8PUf/5XUy
         QpXVQEpMX1YMjd7CowENLlsXwWJ19jNoVLysMG78UGBoyAc5srrymEtaLUOlwzUT5J54
         UFmpNDTzgQGB23LQkoEePLSYY+B1xJT5vnKKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715863903; x=1716468703;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bN3c1sB+iVklhHV8ys6/CoK5+RSaNkuyQ6y8C9ymhqA=;
        b=IV7U9QMyMV/ivcdSNaeL7x02W6ju5CSz/Cvpm18em5NFipeNl4Gt0zau4kTMOsQXDz
         IouEo8C3zQ2R7O6aYLCXl9mRRJORJ84WIi2c13iJUadnEg06K4F1aBkkdNbLUPU3ep2u
         Q8ybX8wlW9ZarFaWHzaOKB81Ev5OLsBilcY8zPrkO7qn88/4q0P/wWWFKknqKjoo8QPR
         LjUklwVg8LAIvC9iSy16nO7N66nisJ+FtTtlg56QMNZPgclVspscxpMCv3Dprggq8tq1
         vhxGxZmApHNuvSi//EaSEz1jzvRYC0fbbb+XLk7e95790i8new8kuMMA4SFzT14PKp5W
         ucKA==
X-Forwarded-Encrypted: i=1; AJvYcCW04UShnTwf0iQqs/uWNzfNl/Wt1lMUJq8qZdi6YB6sBUIrlE5qGd1d+lZwpBRJw3okOyGdx6pKopo1hpS/9/aA8VGIcM9Tm8JwUg==
X-Gm-Message-State: AOJu0YxVbi/AX6azWjBAu6mOesbtusjh5nJrFxs5cvg14em463ktdRWi
	3PbCXL6EgxZq4vnlc+yjj6tTirRo+vTxHYb92rrV119v/+R2AaV6inNTz5WN3oE=
X-Google-Smtp-Source: AGHT+IEkup55qeaKfO+32HXYxfIHVJSYg1htZFQZ3Q1H4DOYVQs44ejb7aDQZY9gHL5xZNrptcqCAg==
X-Received: by 2002:a17:907:b84:b0:a5a:1b61:bf44 with SMTP id a640c23a62f3a-a5a2d553543mr1137772166b.2.1715863902664;
        Thu, 16 May 2024 05:51:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7d7csm989056766b.140.2024.05.16.05.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 05:51:40 -0700 (PDT)
Date: Thu, 16 May 2024 14:51:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Devarsh Thakkar <devarsht@ti.com>, Maxime Ripard <mripard@kernel.org>,
	jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com,
	airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
	kristo@kernel.org, praneeth@ti.com, a-bhatia1@ti.com,
	j-luthra@ti.com
Subject: Re: [RFC PATCH 2/3] drm/tidss: Add support for display sharing
Message-ID: <ZkYBWnQO8AbGAt06@phenom.ffwll.local>
Mail-Followup-To: Javier Martinez Canillas <javierm@redhat.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Maxime Ripard <mripard@kernel.org>, jyri.sarha@iki.fi,
	tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
	kristo@kernel.org, praneeth@ti.com, a-bhatia1@ti.com,
	j-luthra@ti.com
References: <20240116134142.2092483-1-devarsht@ti.com>
 <20240116134142.2092483-3-devarsht@ti.com>
 <vgfzhamtiwkpdyk5ndagsb63subclinotoe6tsi3wu6z7454ec@igxfzjc5gyqm>
 <88018f5f-a7db-7278-e5c3-bb1dbf0e3f14@ti.com>
 <qiqrhpqtnox47wj6az7t3fjp4vc6k32fw42tp5slqggrhe6utb@i7lkpaf3v3od>
 <2f4cf2a7-ce7a-bb34-f722-7e66ea41def7@ti.com>
 <20240314-hospitable-attractive-cuttlefish-a2f504@houat>
 <03e2d653-731c-bb30-321b-b5477d7b82b2@ti.com>
 <87ikzf16dm.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ikzf16dm.fsf@minerva.mail-host-address-is-not-set>
X-Operating-System: Linux phenom 6.6.15-amd64 

On Wed, May 15, 2024 at 04:45:09PM +0200, Javier Martinez Canillas wrote:
> Devarsh Thakkar <devarsht@ti.com> writes:
> 
> Hello Devarsh and Maxime,
> 
> > Hi Maxime,
> >
> > On 14/03/24 20:04, Maxime Ripard wrote:
> >> Hi,
> >> 
> >> On Wed, Feb 14, 2024 at 09:17:12PM +0530, Devarsh Thakkar wrote:
> >>> On 13/02/24 19:34, Maxime Ripard wrote:
> >>>> On Thu, Feb 08, 2024 at 06:26:17PM +0530, Devarsh Thakkar wrote:
> >>>>> On 26/01/24 17:45, Maxime Ripard wrote:
> >>>>>> Hi,
> >>>>>>
> >>>>>> Thanks a lot for working on that.
> >>>>>>
> >>>>>> On Tue, Jan 16, 2024 at 07:11:41PM +0530, Devarsh Thakkar wrote:
> >>>>>>> Display subsystem present in TI Keystone family of devices supports sharing
> >>>>>>> of display between multiple hosts as it provides separate register space
> >>>>>>> (common* region) for each host to programming display controller and also a
> >>>>>>> unique interrupt line for each host.
> >>>>>>>
> >>>>>>> This adds support for display sharing, by allowing partitioning of
> >>>>>>> resources either at video port level or at video plane level as
> >>>>>>> described below :
> >>>>>>>
> >>>>>>> 1) Linux can own (i.e have write access) completely one or more of video
> >>>>>>> ports along with corresponding resources (viz. overlay managers,
> >>>>>>> video planes) used by Linux in context of those video ports.
> >>>>>>> Even if Linux is owning
> >>>>>>> these video ports it can still share this video port with a remote core
> >>>>>>> which can own one or more video planes associated with this video port.
> >>>>>>>
> >>>>>>> 2) Linux owns one or more of the video planes with video port
> >>>>>>> (along with corresponding overlay manager) associated with these planes
> >>>>>>> being owned and controlled by a remote core. Linux still has read-only
> >>>>>>> access to the associated video port and overlay managers so that it can
> >>>>>>> parse the settings made by remote core.
> >>>>>>
> >>>>>> So, just to make sure we're on the same page. 1) means Linux drives the
> >>>>>> whole display engine, but can lend planes to the R5? How does that work,
> >>>>>> is Linux aware of the workload being there (plane size, format, etc) ?
> >>>>>>
> >>>>>
> >>>>> Well, there is no dynamic procedure being followed for lending. The
> >>>>> partitioning scheme is decided and known before hand, and the remote
> >>>>> core firmware updated and compiled accordingly, and similarly the
> >>>>> device-tree overlay for Linux is also updated with partitioning
> >>>>> information before bootup.
> >>>>>
> >>>>> What would happen here is that Linux will know before-hand this
> >>>>> partitioning information via device-tree properties and won't enumerate
> >>>>> the plane owned by RTOS, but it will enumerate the rest of the display
> >>>>> components and initialize the DSS, after which user can load the DSS
> >>>>> firmware on remote core and this firmware will only have control of
> >>>>> plane as it was compiled with that configuration.
> >>>>
> >>>> Right. If the RTOS is in control of a single plane, how it is expected
> >>>> to deal with Linux shutting the CRTC down, or enforcing a configuration
> >>>> that isn't compatible with what the RTOS expects (like a plane with a
> >>>> higher zpos masking its plane), what is the mechanism to reconcile it?
> >>>>
> >>>
> >>> Just for the note, for this "RTOS control single plane" mode, we don't have a
> >>> firmware available to test (right now we are only supporting example for "RTOS
> >>> controlling the display mode" as shared here [1]) and hence this is not
> >>> validated but the idea was to keep dt-bindings generic enough to support them
> >>> in future and that's why I referred to it here.
> >>>
> 
> 
> If I understand you correctly, for now the only real use case is when the
> the RTOS owns / manages the complete display pipeline and Linux can only
> own video planes.
> 
> The opposite is supported by the DSS hardware (thanks to its feature that
> allows partitioning the register space and having multiple per-host IRQs) 
> but it's not a real use case yet. The reason why this case is added to the
> DT binding is as you said for flexiblity and make the design future-proof.
> 
> >>> separate irq
> >>> Coming back to your questions, with the current scheme the Linux (tidss) would
> >>> be expected to make sure the CRTC being shared with RTOS is never shutdown and
> >>> the RTOS plane should never gets masked.
> >> 
> >> I'm probably missing something then here, but if the Linux side of
> >> things is expected to keep the current configuration and keep it active
> >> for it to work, what use-case would it be useful for?
> >> 
> >
> > It's just one of the partitioning possibilities that I mentioned here, that
> > Linux is in control of DSS as a whole and the user want the other host (be it
> > RTOS or any other core) to control a single plane. For e.g it could be Linux
> > (with GPU rendering) displaying the graphics and RTOS overlaying a real time
> > clock or any other signs which need to be displayed in real-time.
> > But more than the use-case this is inspired by the fact that we want to be
> > flexible and support in the linux driver whatever partitioning scheme
> > possibilities are there which are supported in hardware and we let user decide
> > on the partitioning scheme.
> >
> 
> A possible use case here could be if Linux is safer than the other host
> owning a single plane, right? Then in that case the RTOS could fail but
> the display pipeline won't be teared down.
> 
> That is, if your safety tell-tales would be driven by Linux and having
> other OS dislay the GPU-rendered QT based application on another plane.
> 
> But as said, for now that's a theorethical use case since the one you
> mentioned is the opposite.
> 
> [....]
> 
> >>>
> >>>> It's not just about interrupts, it's also about how your arbitrate
> >>>> between what Linux wants and what the RTOS wants. Like if the RTOS still
> >>>> wants to output something but Linux wants to disable it, how do you
> >>>> reconcile the two?
> >>>>
> >>>
> >>> The scheme involves static partitioning of display resource which are assigned
> >>> compile-time to RTOS and Linux. Here the RTOS firmware is compiled with
> >>> specific ownership/display resources as desired by user and this assignment
> >>> stays intact.
> >>>
> >>> If there is a more complex use-case which requires dynamic
> >>> assignment/arbitration of resources then I agree those require some sort of
> >>> IPC scheme but this is not what we target with these series. This series is
> >>> simply to support static partitioning feature (separate register space,
> >>> separate irq, firewalling support etc) of TI DSS hardware across the multiple
> >>> hosts and there are use-cases too for which this scheme suffices.
> >> 
> >> I think you're right and we have a misunderstanding. My initial
> >> assumption was that it was to prevent the Linux side of sides from
> >> screwing up the output if it was to crash.
> >> 
> >> But it looks like it's not the main point of this series, so could you
> >> share some use-cases you're trying to address?
> >> 
> >
> > The end use-case we have demonstrated right now with this series is a
> > proof-of-concept display cluster use-case where RTOS boots early on MCU core
> > (launched at bootloader stage) and initializes the display (using the global
> > common0 register space and irq) and starts displaying safety tell-tales on one
> > plane, and once Linux boots up on application processor,
> > Linux (using common1 register space and irq) controls the other plane with GPU
> > rendering using a QT based application. And yes, we also support the scenario
> > where Linux crashes but RTOS being the DSS master and in control of DSS power,
> > clock domain and global register space is not impacted by the crash.
> 
> You mention 2 scenarios but are actually the same? Or did I misunderstand?
> 
> In both cases the RTOS own the display pipeline and Linux can just display
> using a single plane.
> 
> That's why I think that agree with Maxime, that a fwkms could be a simpler
> solution to your use case instead of adding all this complexity to the DSS
> driver. Yes, I understand the HW supports all this flexibility but there's
> no real use case yet (you mentioned that don't even have firmware for this
> single plane owned by the RTOS in the R5F case).
> 
> The DT binding for a fwkms driver would be trivial, in fact maybe we might
> even leverage simpledrm for this case and not require a new driver at all.

I guess you can still do things like pageflipping and maybe use some of
the color/blending hardware? Maybe even have more than one plane
available? fwkms/simpledrm conceptually cannot really support pageflipping
even, so that's a much, much reduced feature set.

That all aside I do think we should limit the support to just the first
case, where linux gets a few pieces assigned to it and is not the DSS
master. From what I'm understanding you could assign entire crtc with
planes and everything to linux, so this shouldn't really constraint
real-world usage?

At least until there's support in firmware for this it's all way too
theoretical, and I agree with Maxime and Javier that there's some serious
design questions about how this kind of static leasing should work with
drm sitting on top.
-Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

