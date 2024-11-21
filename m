Return-Path: <devicetree+bounces-123538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 546BA9D5031
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 16:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1453A281336
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 15:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1887719C555;
	Thu, 21 Nov 2024 15:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EHOJsvrr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B4B15665D
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 15:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732204470; cv=none; b=YMQrAg4wkKnwD92eZCNGeJigo0lIgMutxyyKEK0MDJ+VA2fAKCBJE/IplGzpRFo0jN0gXjyUfpVeBGgtBRMCgSR+U8hHILu/5bBJSeaH7N7SkzKHnzGpAlXPVV6ltpR46k1rzdjMYlsbidqSREln+1MB0xS152/YP9RfakXDGYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732204470; c=relaxed/simple;
	bh=8AqXKMsRkiratDD63ZdJUvOJNcWfQxBbS4MaoNL5BKQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OCuK9WVm5NCV2a8+pDrogC9GyzoSPqVouxkcRN4h7KSpNMw6+s1hBbgpY+MSsZ7XXaeOBml0PjH2BosqA8CSGq+Pvnxz2GAwoQ/Yp7GMwCrh4GglWqb1PrTVRNbCEpIyyNklMzOYhKwYfwZAb25GfpcARpIsFSlJzYFUPNW7U3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EHOJsvrr; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d00e24d874so915564a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 07:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732204466; x=1732809266; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hBc/oNyGgbYuy8gAk9An/ZS4ZJV6hZ/cN5oiQZlgySc=;
        b=EHOJsvrrJtEAIZKOvK8vlYMchOiMCzeWz0fVk0SWW2SGnKQwqH5kk+QOxe+yYgF5Ly
         dydniuVacU3cKVAsgOnmclEg00DHJMlcHDnUTk0lYfZlJ52gMrOJvOc3lhvZKiDdLBaR
         8ClNkRl5UbQEv8S6cE7uVlmVTWaNDnv4nKHd/G3MGN16g8nUA4hyxYEvkx49iOWcrjH8
         dG2eUtYAn0GEZzp9CGassXzGuq1Sa4MIqPRf2+MnU0n6t3eHioYPK+NoFUwPIftuoNfn
         VizZA7Afjqw4esJBwah3npTM9hRDjkmq+k3kJE80G1Ruu0ugvsXKP574y1hINfK5G5Wb
         fI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732204466; x=1732809266;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hBc/oNyGgbYuy8gAk9An/ZS4ZJV6hZ/cN5oiQZlgySc=;
        b=Ap2uOOqu+fFYOO+wtd6F0oZk280Z/DZyFHtnrOlTuCAnrm3ofzxGdUnKpiY4fWxIwj
         pXOsNNjBc4Ng0vZxB/8vMdjY2r2EIZZYZeq9CvNoVd7kGJLL37apARLbtWq29tHd1LRj
         oqTzpu0T2WzH8WeZYP2P1CZVBHoyRIuB8rGauHvfHc4tqYE/6dttZBTDWbQuiCPoPgkL
         NkP54xCoT5WRps6S8UvJKiLR5t+7Q6LAZjtFW2LxNqTuSr87OMvfS0FfI+amRRJlnJvH
         +nZNadfV8WAdtltDsW4xN1+KEW765gsPQKaeOTPTIQznivOWrWPOrpWjj33q8Mpt8dGd
         4M8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUR5XaLtdkmncOhLH0i2kqVZDQm2/APdHItA55y+KgOiS6XJ3IxAQUWVBlfBPFPccZgRLXHBv3cv2de@vger.kernel.org
X-Gm-Message-State: AOJu0YyFiSsI3z2zb+9bJ06ovyi1lUgqg4RTVu1V6G9C93Ygzv+ByuxC
	M5BRR0LMcoD/kg+qe9j1cgVRltLi6Hodkt/aC26Zm6Z6Rqdw0tWY4GyTFEdzMOtqISOX1CMXGkF
	sVClM13oC8DMpMftV+P5L//dl6Z4eWVkZewMiJQ==
X-Gm-Gg: ASbGncvOlIkkZPp+PQzbS71p3HWA1Hh9OySyi5dzZTHRb0+00G8t4abvv4PKbt3DvFA
	VPAPKsFG6vI+mgMhs5QiKk0xgkdyA7YXGyysgjHiq7hh/luaSnoMDkomVGGcEVaz+gw==
X-Google-Smtp-Source: AGHT+IFoL3MuaOxZJPwqRnPiiiww3g12j7OhKiUmIMC687dA/kXZIiIIWIX8g53oxzmYJo/i2m0qsy19dsfZz5Mmzog=
X-Received: by 2002:a05:6402:518b:b0:5cf:c8ac:cad1 with SMTP id
 4fb4d7f45d1cf-5cff4c55511mr4596509a12.14.1732204465635; Thu, 21 Nov 2024
 07:54:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241104133515.256497-1-arnaud.pouliquen@foss.st.com>
 <20241104133515.256497-5-arnaud.pouliquen@foss.st.com> <Zzt+7NBdNjyzWZIb@p14s>
 <0d9075cd-68c2-49ec-9b9c-4315aa8c8517@foss.st.com> <CANLsYkxvTuLv8Omw-UeyPaA9g9QokmtMaMYD0eoUPo20wUuONQ@mail.gmail.com>
 <CANLsYkwPDFvJxgXrAV=92w+sT8tXB=-=K8Qs8eRVKm2C2v+0aA@mail.gmail.com> <57a66f3c-d644-4ebb-b4dd-0b9d411ec243@foss.st.com>
In-Reply-To: <57a66f3c-d644-4ebb-b4dd-0b9d411ec243@foss.st.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 21 Nov 2024 08:54:14 -0700
Message-ID: <CANLsYkx-dpMvYwQN3XgbPS6xQ9Vv6smP1krNYTYpBzdbBJjCrQ@mail.gmail.com>
Subject: Re: [PATCH v13 4/7] remoteproc: Introduce release_fw optional operation
To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Nov 2024 at 09:39, Arnaud POULIQUEN
<arnaud.pouliquen@foss.st.com> wrote:
>
>
>
> On 11/20/24 17:04, Mathieu Poirier wrote:
> > On Tue, 19 Nov 2024 at 13:38, Mathieu Poirier
> > <mathieu.poirier@linaro.org> wrote:
> >>
> >> On Tue, 19 Nov 2024 at 11:14, Arnaud POULIQUEN
> >> <arnaud.pouliquen@foss.st.com> wrote:
> >>>
> >>> Hello Mathieu,
> >>>
> >>> On 11/18/24 18:52, Mathieu Poirier wrote:
> >>>> On Mon, Nov 04, 2024 at 02:35:12PM +0100, Arnaud Pouliquen wrote:
> >>>>> This patch updates the rproc_ops struct to include an optional
> >>>>> release_fw function.
> >>>>>
> >>>>> The release_fw ops is responsible for releasing the remote processor
> >>>>> firmware image. The ops is called in the following cases:
> >>>>>
> >>>>>  - An error occurs in rproc_start() between the loading of the segments and
> >>>>>       the start of the remote processor.
> >>>>>  - after stopping the remote processor.
> >>>>>
> >>>>> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> >>>>> ---
> >>>>> Updates from version V11:
> >>>>> - fix typo in @release_fw comment
> >>>>> ---
> >>>>>  drivers/remoteproc/remoteproc_core.c | 5 +++++
> >>>>>  include/linux/remoteproc.h           | 3 +++
> >>>>>  2 files changed, 8 insertions(+)
> >>>>>
> >>>>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> >>>>> index 7694817f25d4..46863e1ca307 100644
> >>>>> --- a/drivers/remoteproc/remoteproc_core.c
> >>>>> +++ b/drivers/remoteproc/remoteproc_core.c
> >>>>> @@ -1258,6 +1258,9 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
> >>>>>
> >>>>>  static void rproc_release_fw(struct rproc *rproc)
> >>>>>  {
> >>>>> +    if (rproc->ops->release_fw)
> >>>>> +            rproc->ops->release_fw(rproc);
> >>>>> +
> >>>>>      /* Free the copy of the resource table */
> >>>>>      kfree(rproc->cached_table);
> >>>>>      rproc->cached_table = NULL;
> >>>>> @@ -1377,6 +1380,8 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
> >>>>>  unprepare_subdevices:
> >>>>>      rproc_unprepare_subdevices(rproc);
> >>>>>  reset_table_ptr:
> >>>>> +    if (rproc->ops->release_fw)
> >>>>> +            rproc->ops->release_fw(rproc);
> >>>>>      rproc->table_ptr = rproc->cached_table;
> >>>>
> >>>> I suggest the following:
> >>>>
> >>>> 1) Create two new functions, i.e rproc_load_fw() and rproc_release_fw().  The
> >>>> only thing those would do is call rproc->ops->load_fw() and
> >>>> rproc->ops->release_fw(), if they are present.  When a TEE interface is
> >>>> available, ->load_fw() and ->release_fw() become rproc_tee_load_fw() and
> >>>> rproc_tee_release_fw().
> >>>
> >>>
> >>> I'm wondering if it should be ->preload_fw() instead of ->load_fw() ops, as the
> >>> ->load() op already exists.
> >>>
> >>
> >> I agree that ->load() and ->load_fw() will lead to confusion.  I would
> >> support ->preload_fw() but there is no obvious antonyme.
> >>
> >> Since we already have rproc_ops::prepare() and rproc_prepare_device()
> >> I suggest rproc_ops::prepare_fw() and rproc_prepare_fw().  The
> >> corollary would be rproc_ops::unprepare_fw() and rproc_unprepare_fm().
> >> That said, I'm open to other ideas should you be interested in finding
> >> other alternatives.
> >>
> >
> > Actually...  A better approach might to rename rproc::load to
> > rproc::load_segments.  That way we can use rproc::load_fw() and
> > rproc_load_fw() without confusion.
>
> Concerning this proposal, please correct me if I'm wrong
> - ops::load_segments() would be used for ELF format only as segment notion seems
> linked to this format.

Correct - nothing different from what it is now.

> - ops:rproc_load_fw should be used for other formats.
>
> The risk is that someone may later come with a requirement to get a resource
> table first to configure some memories before loading a non-ELF firmware.
>

We can address that problem if/when it comes about.

>
> >
> >>>>
> >>>> 2) Call rproc_load_fw() in rproc_boot(), just before rproc_fw_boot().  If the
> >>>> call to rproc_fw_boot() fails, call rproc_release_fw().
> >>>>
> >>>> 3) The same logic applies to rproc_boot_recovery(), i.e call rproc_load_fw()
> >>>> before rproc_start() and call rproc_release_fw() if rproc_start() fails.
> >>>
> >>>
> >>> I implemented this and I'm currently testing it.
> >>> Thise second part requires a few adjustments to work. The ->load() ops needs to
> >>> becomes optional to not be called if the "->preload_fw()" is used.
> >>>
> >>> For that, I propose to return 0 in rproc_load_segments if rproc->ops->load is
> >>> NULL and compensate by checking that at least "->preload_fw()" or ->load() is
> >>> non-null in rproc_alloc_ops.
> >>>
> >>
> >> I agree.
> >>
> >>> Thanks,
> >>> Arnaud
> >>>
> >>>
> >>>>
> >>>> 4) Take rproc_tee_load_fw() out of rproc_tee_parse_fw().  It will now be called
> >>>> in rproc_load_fw().
> >>>>
> >>>> 5) As stated above function rproc_release_fw() now calls rproc_tee_release_fw().
> >>>> The former is already called in rproc_shutdown() so we are good in that front.
> >>>>
> >>>> With the above the cached_table management within the core remains the same and
> >>>> we can get rid of patch 3.7.
> >>>
> >>>>
> >>>> Thanks,
> >>>> Mathieu
> >>>>
> >>>>>
> >>>>>      return ret;
> >>>>> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> >>>>> index 2e0ddcb2d792..08e0187a84d9 100644
> >>>>> --- a/include/linux/remoteproc.h
> >>>>> +++ b/include/linux/remoteproc.h
> >>>>> @@ -381,6 +381,8 @@ enum rsc_handling_status {
> >>>>>   * @panic:  optional callback to react to system panic, core will delay
> >>>>>   *          panic at least the returned number of milliseconds
> >>>>>   * @coredump:         collect firmware dump after the subsystem is shutdown
> >>>>> + * @release_fw:     optional function to release the firmware image from ROM memories.
> >>>>> + *          This function is called after stopping the remote processor or in case of an error
> >>>>>   */
> >>>>>  struct rproc_ops {
> >>>>>      int (*prepare)(struct rproc *rproc);
> >>>>> @@ -403,6 +405,7 @@ struct rproc_ops {
> >>>>>      u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
> >>>>>      unsigned long (*panic)(struct rproc *rproc);
> >>>>>      void (*coredump)(struct rproc *rproc);
> >>>>> +    void (*release_fw)(struct rproc *rproc);
> >>>>>  };
> >>>>>
> >>>>>  /**
> >>>>> --
> >>>>> 2.25.1
> >>>>>

