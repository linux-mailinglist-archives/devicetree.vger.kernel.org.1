Return-Path: <devicetree+bounces-66225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 727668C21F1
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDF5D1F20CE2
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 10:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A830165FDC;
	Fri, 10 May 2024 10:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="rgAfOqvI"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EB52233B;
	Fri, 10 May 2024 10:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715336391; cv=none; b=PAHn4JeJywGCNbSo39cJSxx2V3RUZK2C1FFTMqygKfC+nPlAuFVPyWK/YyUlUioxvUcVphDu2vCXyT6Rwkke/V0S01tNen3VRK9yfR0ITaU96+GBb8Hx4rmhuf6CTVSZKqbAoVGGmPbwHhhNEI7AsfbxgqTbM+FFVOlOPVEI1aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715336391; c=relaxed/simple;
	bh=XquHpfJBGLMPKDC3WMGLV4QXHnt2QU1T4KJjffskmRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bLhxDh1rNv6991ojT/5IcMqGJ+HmznFTcu/sI/2WLkv2xFmfwb5TjEQ9aDFTPkPHSmZvqzrXTBsXk0vd7OiG+Q5XJawVOnIpzI2HQ0cwvg4gm42j2dtpJByePWlPi94nHGizBQElND16jb07Lm14xg26HF5KZmHftFk+bZddYaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=rgAfOqvI; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [192.168.88.20] (91-158-144-210.elisa-laajakaista.fi [91.158.144.210])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E4E50289;
	Fri, 10 May 2024 12:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715336383;
	bh=XquHpfJBGLMPKDC3WMGLV4QXHnt2QU1T4KJjffskmRg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rgAfOqvIa2cIlLqdpEdAV+UUIz/fIH2/gzisNoQikBdDSp74BqE8eSCoS7pb1332z
	 uNvHlaxQU9QVH3rRWd7Onnu8h9pgJxQ5K01Qj9b1JyXTYdVeb3FDGvCJarV0DhocDZ
	 MAbpW7PYPTOhizEHjpu3A+qHRduDZO6mpolCx/f4=
Message-ID: <d7bf10d1-9294-44b0-b9f4-193d1a4f26a0@ideasonboard.com>
Date: Fri, 10 May 2024 13:19:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] pmdomain: ti-sci: Support retaining PD boot time
 state
To: Ulf Hansson <ulf.hansson@linaro.org>, Abel Vesa <abel.vesa@linaro.org>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Gerlach <d-gerlach@ti.com>,
 J Keerthy <j-keerthy@ti.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Devarsh Thakkar <devarsht@ti.com>
References: <20240415-ti-sci-pd-v1-0-a0e56b8ad897@ideasonboard.com>
 <20240415-ti-sci-pd-v1-2-a0e56b8ad897@ideasonboard.com>
 <d4cd0323-4792-49b0-a4e2-0bc92068e7f0@ideasonboard.com>
 <CAPDyKFqShuq98qV5nSPzSqwLLUZ7LxLvp1eihGRBkU4qUKdWwQ@mail.gmail.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Content-Language: en-US
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <CAPDyKFqShuq98qV5nSPzSqwLLUZ7LxLvp1eihGRBkU4qUKdWwQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 03/05/2024 16:45, Ulf Hansson wrote:
> + Abel, Saravanna, Stephen
> 
> On Mon, 15 Apr 2024 at 19:17, Tomi Valkeinen
> <tomi.valkeinen@ideasonboard.com> wrote:
>>
>> On 15/04/2024 19:00, Tomi Valkeinen wrote:
>>> Add a new flag, TI_SCI_PD_KEEP_BOOT_STATE, which can be set in the dts
>>> when referring to power domains. When this flag is set, the ti-sci
>>> driver will check if the PD is currently enabled in the HW, and if so,
>>> set the GENPD_FLAG_ALWAYS_ON flag so that the PD will stay enabled.
>>>
>>> The main issue I'm trying to solve here is this:
>>>
>>> If the Display Subsystem (DSS) has been enabled by the bootloader, the
>>> related PD has also been enabled in the HW. When the tidss driver
>>> probes, the driver framework will automatically enable the PD. While
>>> executing the probe function it is very common for the probe to return
>>> EPROBE_DEFER, and, in rarer cases, an actual error. When this happens
>>> (probe() returns an error), the driver framework will automatically
>>> disable the related PD.
>>>
>>> Powering off the PD while the DSS is enabled and displaying a picture
>>> will cause the DSS HW to enter a bad state, from which (afaik) it can't
>>> be woken up except with full power-cycle. Trying to access the DSS in
>>> this state (e.g. when retrying the probe) will usually cause the board
>>> to hang sooner or later.
>>>
>>> Even if we wouldn't have this board-hangs issue, it's nice to be able to
>>> keep the DSS PD enabled: we want to keep the DSS enabled when the
>>> bootloader has enabled the screen. If, instead, we disable the PD at the
>>> first EPROBE_DEFER, the screen will (probably) go black.
>>
>> A few things occurred to me. The driver is supposed to clear the
>> GENPD_FLAG_ALWAYS_ON when the driver has probed successfully. There are
>> two possible issues with that:
>>
>> - Afaics, there's no API to do that, and currently I just clear the bit
>> in genpd->flags. There's a clear race there, so some locking would be
>> required.
>>
>> - This uses the GENPD_FLAG_ALWAYS_ON flag to say "PD is always on, until
>> the driver has started". If the PD would have GENPD_FLAG_ALWAYS_ON set
>> for other reasons, the driver would still go and clear the flag, which
>> might break things.
>>
>> Also, unrelated to the above and not a problem in practice at the very
>> moment, but I think clocks should also be dealt with somehow. Something,
>> at early-ish boot stage, should mark the relevant clocks as in use, so
>> that there's no chance they would be turned off when the main kernel has
>> started (the main display driver is often a module).
>>
>> It would be nice to deal with all the above in a single place. I wonder
>> if the tidss driver itself could somehow be split into two parts, an
>> early part that would probe with minimal dependencies, mainly to reserve
>> the core resources without doing any kind of DRM init. And a main part
>> which would (somehow) finish the initialization at a later point, when
>> we have the filesystem (for firmware) and the other bridge/panel drivers
>> have probed.
>>
>> That can be somewhat achieved with simplefb or simpledrm, though, but we
>> can't do any TI DSS specific things there, and it also creates a
>> requirement to have either of those drivers built-in, and the related DT
>> nodes to be added.
> 
> Without going into too much detail, this and similar problems have
> been discussed in the past. With the fw_devlink and the ->sync_state()
> callback we are getting closer to a solution, but for genpd a solution
> is still pending.
> 
> If you want to read up on earlier discussions and join us moving
> forward, that would be great. The last attempt for genpd to move this
> forward was posted by Abel Vesa:
> https://lore.kernel.org/linux-pm/20230621144019.3219858-1-abel.vesa@linaro.org/
> 
> Beyond that, we have also discussed various solutions at the last LPC
> in Richmond. I think the consensus at that point was that Saravana
> targeted to post something for clocks - and when that was done, we
> should do the similar thing for genpd. Anyway, I have looped them into
> this thread, so they can share any updates on their side of the
> matter.

If I understand the series correctly, it has an issue at least for this 
case/platform.

The devlinks are between the consumer devices and the PD provider 
device. TI SCI PD provider has quite a lot of PDs, and all the consumers 
would have to be probed before any of the PDs could be disabled. So, to 
get the display PD disabled, I would have to load, e.g., the GPU driver 
(which I don't even have).

I believe this is the case for the clocks also.

Perhaps that can be considered a feature, but I fear that in practice it 
would mean that most of the time for most users all the boot-time 
enabled powerdomains would be always on.

Nevertheless, I believe the series would fix the issue mentioned in this 
patch, so I'll see if I can get the series working on the TI platform to 
get a bit more experience on this whole issue.

  Tomi

> 
>>
>>    Tomi
> 
> Kind regards
> Uffe
> 
>>
>>> Another option here would perhaps be to change the driver framework
>>> (drivers/base/platform.c) which attaches and detaches the PD, and make
>>> it somehow optional, allowing the driver the manage the PD. That option
>>> has two downsides: 1) the driver _has_ to manage the PD, which would
>>> rule out the use of simplefb and simpledrm, and 2) it would leave the PD
>>> in off state from Linux's perspective until a driver enables the PD, and
>>> that might mean that the PD gets actually disabled as part of normal
>>> system wide power management (disabling unused resources).
>>>
>>> Yet another option would be to do this outside the ti_sci_pm_domains
>>> driver: a piece of code that would somehow be ran after the
>>> ti_sci_pm_domains driver has probed (so that we have the PDs), but
>>> before tidss/simplefb/simpledrm probes. The problem here is the
>>> "somehow" part. Also, this would partly have the same issue 2) as
>>> mentioned above.
>>>
>>> TODO: If this approach is ok, sci-pm-domain.yaml needs to be extended.
>>> Also, it sounds a bit like the cell value is not a bit-mask, so maybe
>>> adding TI_SCI_PD_KEEP_BOOT_STATE flag this way is not fine.
>>>
>>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>>> ---
>>>    drivers/pmdomain/ti/ti_sci_pm_domains.c    | 27 +++++++++++++++++++++++++--
>>>    include/dt-bindings/soc/ti,sci_pm_domain.h |  1 +
>>>    2 files changed, 26 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/pmdomain/ti/ti_sci_pm_domains.c b/drivers/pmdomain/ti/ti_sci_pm_domains.c
>>> index 1510d5ddae3d..b71b390aaa39 100644
>>> --- a/drivers/pmdomain/ti/ti_sci_pm_domains.c
>>> +++ b/drivers/pmdomain/ti/ti_sci_pm_domains.c
>>> @@ -103,7 +103,7 @@ static struct generic_pm_domain *ti_sci_pd_xlate(
>>>                return ERR_PTR(-ENOENT);
>>>
>>>        genpd_to_ti_sci_pd(genpd_data->domains[idx])->exclusive =
>>> -             genpdspec->args[1];
>>> +             genpdspec->args[1] & TI_SCI_PD_EXCLUSIVE;
>>>
>>>        return genpd_data->domains[idx];
>>>    }
>>> @@ -161,6 +161,8 @@ static int ti_sci_pm_domain_probe(struct platform_device *pdev)
>>>                                break;
>>>
>>>                        if (args.args_count >= 1 && args.np == dev->of_node) {
>>> +                             bool is_on = false;
>>> +
>>>                                if (args.args[0] > max_id) {
>>>                                        max_id = args.args[0];
>>>                                } else {
>>> @@ -189,7 +191,28 @@ static int ti_sci_pm_domain_probe(struct platform_device *pdev)
>>>                                pd->idx = args.args[0];
>>>                                pd->parent = pd_provider;
>>>
>>> -                             pm_genpd_init(&pd->pd, NULL, true);
>>> +                             /*
>>> +                              * If TI_SCI_PD_KEEP_BOOT_STATE is set and the
>>> +                              * PD has been enabled by the bootloader, set
>>> +                              * the PD to GENPD_FLAG_ALWAYS_ON. This will
>>> +                              * make sure the PD stays enabled until a driver
>>> +                              * takes over and clears the GENPD_FLAG_ALWAYS_ON
>>> +                              * flag.
>>> +                              */
>>> +                             if (args.args_count > 1 &&
>>> +                                 args.args[1] & TI_SCI_PD_KEEP_BOOT_STATE) {
>>> +                                     /*
>>> +                                      * We ignore any error here, and in case
>>> +                                      * of error just assume the PD is off.
>>> +                                      */
>>> +                                     pd_provider->ti_sci->ops.dev_ops.is_on(pd_provider->ti_sci,
>>> +                                             pd->idx, NULL, &is_on);
>>> +
>>> +                                     if (is_on)
>>> +                                             pd->pd.flags |= GENPD_FLAG_ALWAYS_ON;
>>> +                             }
>>> +
>>> +                             pm_genpd_init(&pd->pd, NULL, !is_on);
>>>
>>>                                list_add(&pd->node, &pd_provider->pd_list);
>>>                        }
>>> diff --git a/include/dt-bindings/soc/ti,sci_pm_domain.h b/include/dt-bindings/soc/ti,sci_pm_domain.h
>>> index 8f2a7360b65e..af610208e3a3 100644
>>> --- a/include/dt-bindings/soc/ti,sci_pm_domain.h
>>> +++ b/include/dt-bindings/soc/ti,sci_pm_domain.h
>>> @@ -3,6 +3,7 @@
>>>    #ifndef __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
>>>    #define __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
>>>
>>> +#define TI_SCI_PD_KEEP_BOOT_STATE 2
>>>    #define TI_SCI_PD_EXCLUSIVE 1
>>>    #define TI_SCI_PD_SHARED    0
>>>
>>>
>>


