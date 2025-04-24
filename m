Return-Path: <devicetree+bounces-170551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 58204A9B4B5
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 18:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AA5B1BA70E3
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 16:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2343528DF19;
	Thu, 24 Apr 2025 16:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DairlIo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C26328DEE8
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 16:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513501; cv=none; b=P6aueoHchg32ffRztNOWchRtNIA5nufVcYEnbvmWBP/qvsP0fbK8n3yZYnI8Knhn10igkt0tFYTmJ79MSRvC21K0R3uT60ioBowy+IizVgK2b0jVxI1xrvLYydGH/njUyn9UIJ0s5dgwZNvPqQI0jxVeM1kaCTwgYy8WIYDc6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513501; c=relaxed/simple;
	bh=ZErkREVVKBLW2GnKWjUeSG/6wxC7rAMxZQ6sFlbrsuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FekiDBLR+qo8jXng/FEtid/4+yUeS8zoZyPTn6aASEahLPuqDIIzkdENWKrkll0CBQ/eo9IBo90Eq5u6yvHiOEYS18ERsRLh2Og3MeMzsTMgdcchTB4zhN2PxCQmgSUDvxPP0wyY6QAwS5nY01d/2I3gPvbq2VuhehkRAqaCCvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DairlIo+; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-702599fa7c5so19241857b3.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745513496; x=1746118296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rhOPT0e1r3Giz9fOG9P4UwNB4Pxq9ccasHzycgLN8t4=;
        b=DairlIo+uIWDqeWStbJeUsUNVIH6CNY6BqFBPo2KThV+NUEhUsOb/ZNbBk4H5nHN6O
         yJW7kxQIgV4WmNgwONRJslZ7FEY3JghDPPl8zOecZ3JPDCUvpNq8nS4Copr2iFZyOyjB
         CNxxd8IL5a7hiGwUHy9gXXbnkcN9OXEB3MDxiaMK2dpW3jmkYn6PJBrMmDNrEMIfIZog
         OC35QKXFz3SrwvFEIFXfFFbSRAlrvSrrRgK2vx6xaEVrX5gTJ6Ziqykud6wBGj/wWm5M
         KiMITuQp7XGKdNiODKIZRsa6M8iRWjzl7ldAhsNimX+Smo0pbF94XkcpRicX9Dfeds3q
         Rj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745513496; x=1746118296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rhOPT0e1r3Giz9fOG9P4UwNB4Pxq9ccasHzycgLN8t4=;
        b=ZOujq3QeOGeupBof4fPw9t3WoC2tsagNcgINDy4osjbUX9SDGZajX5+VmR3rZPVFao
         BHW9p5Gggwcjqn2qKZ9HvAQVAOyhRR2zfN28BCqYwYE8Ca/V03y+GxftkIgxKyydVM1Q
         BmzCnOEdFaxwM3GT1dOZhdRd5wJDjaabR0ftKUVpYMVNTKaCYdkfV5yDik6YRGXjp+sU
         lb+YdKzztDWqbA9TaKHdVEHKSOK9AYvm2mtVtZNV0u0HdiWXSUfj67Etr4jL6Px+XBcC
         uwCYE0rH6v0aRXEavUVqF/kDLBw8/qZJFTxO4nqnbcMbgNNA6sEOHhOQH7gzzXTZd6WK
         4Lyg==
X-Forwarded-Encrypted: i=1; AJvYcCVEHqO2W4kTBTwgyQEvZqfQBowEW6mcZDF7GLNWSyjACC80a/BzFkNMvG7cNfJkOO4emH+rwEba8IAt@vger.kernel.org
X-Gm-Message-State: AOJu0YwM8H4B7S7J+s9AQpPSF1j7Rvk/TTPHCmAbf8r75GCwIERWz9GO
	bv/fMYVD93ani6FZO1Vfn/r12LHFnOUg9twchH1sJ/6//aYFPLkxTgUfgm5c9xPCCSrZDEknWZ7
	RYnXn+oCRMfwSiOIAOz1yEon9rz/9K4IUCiMvdg==
X-Gm-Gg: ASbGncvHrxi+sBTQNMF3xEHhzl4y6/HaUtuWW9WzlcyukYVgORpmO9P2P8vhZ9yWL6L
	4J2PdVlfGciXTBTcuXnBFV5UiI7LJS7jbzLTkui1LnMrSmFH5JeIsKWhzAAyamKjhJES0wzrAm6
	3iQfEevlbr3pnR52BiqtcyhFE=
X-Google-Smtp-Source: AGHT+IEEs5xpXrn/Gy6ZKVAC++BN0ySj3Ol6R2Q7H49jw3nb/AVQ/nGqoQkOth8cQwpLnS19kr0sXiN3reDfdCQJutw=
X-Received: by 2002:a05:690c:112:b0:6fd:33a1:f4b with SMTP id
 00721157ae682-708418756dcmr40063507b3.4.1745513496489; Thu, 24 Apr 2025
 09:51:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250414185314eucas1p1ae57b937773a2ed4ce8d52d5598eb028@eucas1p1.samsung.com>
 <20250414-apr_14_for_sending-v2-0-70c5af2af96c@samsung.com>
 <20250414-apr_14_for_sending-v2-1-70c5af2af96c@samsung.com>
 <CAJZ5v0irRq8_p35vf41_ZgomW0X=KZN+0HqwU2K9PvPRm8iZQA@mail.gmail.com>
 <b9c4182d-38c2-4173-a35a-0e1773c8f2ed@samsung.com> <CAJZ5v0gE0anjW_mDSwNXY8xoZ_0=bDDxiSbUq1GP7-NycDojrQ@mail.gmail.com>
 <cbf20469-02ab-403a-8db7-2b66e9936b4f@samsung.com>
In-Reply-To: <cbf20469-02ab-403a-8db7-2b66e9936b4f@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Apr 2025 18:51:00 +0200
X-Gm-Features: ATxdqUENtu5F1LST4-s_k9n76eHWAuQ6u_ynqkGko5ZMfaiEw5aNABhT-1bG-Qs
Message-ID: <CAPDyKFqND2JrH8nLUzAqwWgHkwia6M9XOJoY6AqxtR0t120JUA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PM: device: Introduce platform_resources_managed flag
To: Michal Wilczynski <m.wilczynski@samsung.com>, Stephen Boyd <sboyd@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	m.szyprowski@samsung.com, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

+ Stephen

On Thu, 17 Apr 2025 at 18:19, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
>
>
> On 4/16/25 16:48, Rafael J. Wysocki wrote:
> > On Wed, Apr 16, 2025 at 3:32=E2=80=AFPM Michal Wilczynski
> > <m.wilczynski@samsung.com> wrote:
> >>
> >> On 4/15/25 18:42, Rafael J. Wysocki wrote:
> >>> On Mon, Apr 14, 2025 at 8:53=E2=80=AFPM Michal Wilczynski
> >>> <m.wilczynski@samsung.com> wrote:
> >>>>
> >>>> Introduce a new dev_pm_info flag - platform_resources_managed, to
> >>>> indicate whether platform PM resources such as clocks or resets are
> >>>> managed externally (e.g. by a generic power domain driver) instead o=
f
> >>>> directly by the consumer device driver.
> >>>
> >>> I think that this is genpd-specific and so I don't think it belongs i=
n
> >>> struct dev_pm_info.
> >>>
> >>> There is dev->power.subsys_data->domain_data, why not use it for this=
?
> >>
> >> Hi Rafael,
> >>
> >> Thanks for the feedback.
> >>
> >> You're right =E2=80=94 this behavior is specific to genpd, so embeddin=
g the flag
> >> directly in struct dev_pm_info may not be the best choice. Using
> >> dev->power.subsys_data->domain_data makes more sense and avoids bloati=
ng
> >> the core PM structure.
> >>
> >>>
> >>> Also, it should be documented way more comprehensively IMV.
> >>>
> >>> Who is supposed to set it and when?  What does it mean when it is set=
?
> >>
> >> To clarify the intended usage, I would propose adding the following
> >> explanation to the commit message:
> >>
> >> "This flag is intended to be set by a generic PM domain driver (e.g.,
> >> from within its attach_dev callback) to indicate that it will manage
> >> platform specific runtime power management resources =E2=80=94 such as=
 clocks
> >> and resets =E2=80=94 on behalf of the consumer device. This implies a =
delegation
> >> of runtime PM control to the PM domain, typically implemented through
> >> its start and stop callbacks.
> >>
> >> When this flag is set, the consumer driver (e.g., drm/imagination) can
> >> check it and skip managing such resources in its runtime PM callbacks
> >> (runtime_suspend, runtime_resume), avoiding conflicts or redundant
> >> operations."
> >
> > This sounds good and I would also put it into a code comment somewhere.
> >
> > I guess you'll need helpers for setting and testing this flag, so
> > their kerneldoc comments can be used for that.
> >
> >> This could also be included as a code comment near the flag definition
> >> if you think that=E2=80=99s appropriate.
> >>
> >> Also, as discussed earlier with Maxime and Matt [1], this is not about
> >> full "resource ownership," but more about delegating runtime control o=
f
> >> PM resources like clocks/resets to the genpd. That nuance may be worth
> >> reflecting in the flag name as well, I would rename it to let's say
> >> 'runtime_pm_platform_res_delegated', or more concise
> >> 'runtime_pm_delegated'.
> >
> > Or just "rpm_delegated" I suppose.
> >
> > But if the genpd driver is going to set that flag, it will rather mean
> > that this driver will now control the resources in question, so the
> > driver should not attempt to manipulate them directly.  Is my
> > understanding correct?
>
> Yes, your understanding is correct =E2=80=94 with one minor clarification=
.
>
> When the genpd driver sets the flag, it indicates that it will take over
> control of the relevant PM resources in the context of runtime PM, i.e.,
> via its start() and stop() callbacks. As a result, the device driver
> should not manipulate those resources from within its RUNTIME_PM_OPS
> (e.g., runtime_suspend, runtime_resume) to avoid conflicts.
>
> However, outside of the runtime PM callbacks, the consumer device driver
> may still access or use those resources if needed e.g for devfreq.
>
> >
> > Assuming that it is correct, how is the device driver going to know
> > which resources in particular are now controlled by the genpd driver?
>
> Good question =E2=80=94 to allow finer-grained control, we could replace =
the
> current single boolean flag with a u32 bitmask field. Each bit would
> correspond to a specific category of platform managed resources. For
> example:
>
> #define RPM_TAKEOVER_CLK        BIT(0)
> #define RPM_TAKEOVER_RESET      BIT(1)
>
> This would allow a PM domain driver to selectively declare which
> resources it is taking over and let the consumer driver query only the
> relevant parts.

Assuming we are targeting device specific resources for runtime PM;
why would we want the driver to be responsible for some resources and
the genpd provider for some others? I would assume we want to handle
all these RPM-resources from the genpd provider, if/when possible,
right?

The tricky part though (maybe Stephen had some ideas in his talk [a]
at OSS), is to teach the genpd provider about what resources it should
handle. In principle the genpd provider will need some kind of device
specific knowledge, perhaps based on the device's compatible-string
and description in DT.

My point is, using a bitmask doesn't scale as it would end up having
one bit for each clock (a device may have multiple clocks), regulator,
pinctrl, phy, etc. In principle, reflecting the description in DT.

>
> >
> > Also "rpm_takeover" may be a better name for the flag in that case.
>
> Sounds good, bitmask could also be named like that
>
> >
> >> [1] - https://lore.kernel.org/all/a3142259-1c72-45b9-b148-5e5e6bef87f9=
@samsung.com/
> >>
> >>>
> >>>> This flag enables device drivers to cooperate with SoC-specific PM
> >>>> domains by conditionally skipping management of clocks and resets wh=
en
> >>>> the platform owns them.
> >>>>
> >>>> This idea was discussed on the mailing list [1].
> >>>>
> >>>> [1] - https://lore.kernel.org/all/CAPDyKFq=3DBF5f2i_Sr1cmVqtVAMgr=3D=
0FqsksL7RHZLKn++y0uwg@mail.gmail.com/
> >>>>
> >>>> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >>>> ---
> >>>>  include/linux/device.h | 11 +++++++++++
> >>>>  include/linux/pm.h     |  1 +
> >>>>  2 files changed, 12 insertions(+)
> >>>>
> >>>> diff --git a/include/linux/device.h b/include/linux/device.h
> >>>> index 79e49fe494b7c4c70d902886db63c4cfe5b4de4f..3e7a36dd874cfb6b98e2=
451c7a876989aa9f1913 100644
> >>>> --- a/include/linux/device.h
> >>>> +++ b/include/linux/device.h
> >>>> @@ -881,6 +881,17 @@ static inline bool device_async_suspend_enabled=
(struct device *dev)
> >>>>         return !!dev->power.async_suspend;
> >>>>  }
> >>>>
> >>>> +static inline bool device_platform_resources_pm_managed(struct devi=
ce *dev)
> >>>
> >>> Could this function name be shorter?
> >>
> >> Maybe:
> >>
> >> static inline bool dev_is_runtime_pm_delegated(struct device *dev);
> >> static inline void dev_set_runtime_pm_delegated(struct device *dev, bo=
ol val);
> >
> > What about
> >
> > dev_pm_genpd_rpm_delegated()
> > dev_pm_genpd_set_rpm_delegated()
> >
> > respectively (or analogously with the "takeover" variant)?
>
> Right sounds good, so if you also like a bitmask idea they could look
> like this:
>
> static inline bool dev_pm_genpd_rpm_takeover(struct device *dev, u32 flag=
s);
> static inline void dev_pm_genpd_set_rpm_takeover(struct device *dev, u32 =
flags);

These names sound fine to me. Although, as stated, I am not sure how
useful the 'flags' would really be.

>
> Regards,
> Micha=C5=82
>
> >

[a] - https://osseu2024.sched.com/event/1ej38/the-case-for-an-soc-power-man=
agement-driver-stephen-boyd-google

