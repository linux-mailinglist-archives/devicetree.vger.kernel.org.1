Return-Path: <devicetree+bounces-44120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 496FA85CCB9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:32:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC9B91F2242B
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BAF382;
	Wed, 21 Feb 2024 00:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Ki3mi+OK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADC317D2
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708475515; cv=none; b=hy2hrbBo4oM5WqEGFkqW+DGn+Mxl9e6n0SR/ymPjZ9oZPAhQGn9AAlbrUzMDuXtoFmYU5PArbC57D1DdVW8xAI74Ae4d7tivYnYRIj0pOYgLEFeZHL9ok84bLtWHK+nSIsv5w/L7WNwMLD1d4sU2S1t0D7JFJXo0g856NBbae9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708475515; c=relaxed/simple;
	bh=oEfNL4tE07y7w1Cmhhj91MRxhD+otlhB/ycPnq17d8Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k906fXv1fyEx1acTOSE7WBVCkG8E5/5UcSN/82N8vniyhSZYk4OJ5fvTfyqllHcAzU2XWauVVXSasqcP0pDlRO0UfLq4DeVvrNSiwBLgi0W9vgCZ3v4jmcGKoZuoQmUnDuwbBTyut9EP/HDXVPJKxzWNhjhyDoo4lDXLvtL8rVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Ki3mi+OK; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-42e2507c6e1so57491cf.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708475512; x=1709080312; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HY1MEqwVBFNvgQus62YTgnAdchYfLB+wlYNRdSj4IDg=;
        b=Ki3mi+OKEiq5jt7jPTdHx8f8Ssx/6cs985OyOJ3rIC2W3WBL25RMpw+J5H42U1VGJf
         EY5hbctdtH6ypq95BLakeinFueRf7XXdtGV5L1viUxgmE+eUQVI2GPn0/E3bsrHeqq/9
         LAx+ZNKlbAqeWIZsECrHAwtBHPvqF6nXweGAqxgv6s0Ou2jVfXa7JunwlZMAcdz60jU7
         ZRiAj9ouITgrv2HscDKFI/3yfE3c7RyCb5Jp6d/8JUxFgG6CK1mZDJdpZsVaOquvWn1R
         BvA9bL03Y1D3ZIY0+PofOIeVZEk2cI+1YrrII26oRTLQbsIoWRoQJ0aMO7BJu2WPWEoP
         acFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708475512; x=1709080312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HY1MEqwVBFNvgQus62YTgnAdchYfLB+wlYNRdSj4IDg=;
        b=kF9yuYic6oI5pxqSJkD1pB+M/hYUMpYsifEVMA0rFnbcj2ne5yqvvAhg42oUPkpq0c
         nlDJNA5UP1yqoIu9DSqTYTbNoUXVcfvJg29wZzvlBFvmUSOSrBdC3i7OgzKWNSIf/TT/
         u13voyXvjvgGGEDr6OMzkydQz5iUZGVZW8nN9fgyr8n7uCoGfF/ZXOqDnL3GOIsm9M9i
         x1y/sQd3M2gFB2Zuk2CZD/Rp4UrB3/7qgWeIFs/ByV3IGzyzeqcO9En27ASlK0TWPAiI
         TclebKj5dtDLUAxEEIsfMBphSOcQvuSTM/Bl5IFMn+Ms8JbE4YHfwwLHJ4kDH3KK+20H
         TpAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAs3vDKcScKWdK9Dul7xUDhyNlU2538ZtPJNvL6OjDaCdsZT7hJFz/RwBo4fuab0/PJIWiiSMPpLaynNmQ7AYoLCjYxfzxevV1Rg==
X-Gm-Message-State: AOJu0Yyli54NmEQ6YYlefWEzyWtKM+47K68ZuqJewoiNSbkbfCaPbo3y
	Kgubv82TzBfwilkbvrPEZW/TroCpne6COGmuOnO6DR1rX7OpJpN7tkBqJb7yWj3zFeZAFg/J2QU
	qabaeuLQAFFY3f+6OzRFTLatd+cKMHbgLdcHU
X-Google-Smtp-Source: AGHT+IHs1lgFcCWQVw2AN7L05dXovmHCo9vKz+rDhTMW/KOTmTLGal8gv6AfgRcHOi7DW6r0HcEsbvf4zkKE5DJEkuQ=
X-Received: by 2002:ac8:744e:0:b0:42e:3233:4924 with SMTP id
 h14-20020ac8744e000000b0042e32334924mr98006qtr.26.1708475512008; Tue, 20 Feb
 2024 16:31:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130174126.688486-1-herve.codina@bootlin.com> <20231130174126.688486-2-herve.codina@bootlin.com>
In-Reply-To: <20231130174126.688486-2-herve.codina@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 20 Feb 2024 16:31:13 -0800
Message-ID: <CAGETcx9uP86EHyKJNifBMd23oCsA+KpMa+e36wJEEnHDve+Avg@mail.gmail.com>
Subject: Re: [PATCH 1/2] driver core: Introduce device_link_wait_removal()
To: Herve Codina <herve.codina@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 9:41=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
>
> The commit 80dd33cf72d1 ("drivers: base: Fix device link removal")
> introduces a workqueue to release the consumer and supplier devices used
> in the devlink.
> In the job queued, devices are release and in turn, when all the
> references to these devices are dropped, the release function of the
> device itself is called.
>
> Nothing is present to provide some synchronisation with this workqueue
> in order to ensure that all ongoing releasing operations are done and
> so, some other operations can be started safely.
>
> For instance, in the following sequence:
>   1) of_platform_depopulate()
>   2) of_overlay_remove()
>
> During the step 1, devices are released and related devlinks are removed
> (jobs pushed in the workqueue).
> During the step 2, OF nodes are destroyed but, without any
> synchronisation with devlink removal jobs, of_overlay_remove() can raise
> warnings related to missing of_node_put():
>   ERROR: memory leak, expected refcount 1 instead of 2
>
> Indeed, the missing of_node_put() call is going to be done, too late,
> from the workqueue job execution.
>
> Introduce device_link_wait_removal() to offer a way to synchronize
> operations waiting for the end of devlink removals (i.e. end of
> workqueue jobs).
> Also, as a flushing operation is done on the workqueue, the workqueue
> used is moved from a system-wide workqueue to a local one.

Thanks for the bug report and fix. Sorry again about the delay in
reviewing the changes.

Please add Fixes tag for 80dd33cf72d1.

> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/base/core.c    | 26 +++++++++++++++++++++++---
>  include/linux/device.h |  1 +
>  2 files changed, 24 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index ac026187ac6a..2e102a77758c 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -44,6 +44,7 @@ static bool fw_devlink_is_permissive(void);
>  static void __fw_devlink_link_to_consumers(struct device *dev);
>  static bool fw_devlink_drv_reg_done;
>  static bool fw_devlink_best_effort;
> +static struct workqueue_struct *fw_devlink_wq;
>
>  /**
>   * __fwnode_link_add - Create a link between two fwnode_handles.
> @@ -530,12 +531,26 @@ static void devlink_dev_release(struct device *dev)
>         /*
>          * It may take a while to complete this work because of the SRCU
>          * synchronization in device_link_release_fn() and if the consume=
r or
> -        * supplier devices get deleted when it runs, so put it into the =
"long"
> -        * workqueue.
> +        * supplier devices get deleted when it runs, so put it into the
> +        * dedicated workqueue.
>          */
> -       queue_work(system_long_wq, &link->rm_work);
> +       queue_work(fw_devlink_wq, &link->rm_work);

This has nothing to do with fw_devlink. fw_devlink is just triggering
the issue in device links. You can hit this bug without fw_devlink too.
So call this device_link_wq since it's consistent with device_link_* APIs.

>  }
>
> +/**
> + * device_link_wait_removal - Wait for ongoing devlink removal jobs to t=
erminate
> + */
> +void device_link_wait_removal(void)
> +{
> +       /*
> +        * devlink removal jobs are queued in the dedicated work queue.
> +        * To be sure that all removal jobs are terminated, ensure that a=
ny
> +        * scheduled work has run to completion.
> +        */
> +       drain_workqueue(fw_devlink_wq);

Is there a reason this needs to be drain_workqueu() instead of
flush_workqueue(). Drain is a stronger guarantee than we need in this
case. All we are trying to make sure is that all the device link
remove work queued so far have completed.

> +}
> +EXPORT_SYMBOL_GPL(device_link_wait_removal);
> +
>  static struct class devlink_class =3D {
>         .name =3D "devlink",
>         .dev_groups =3D devlink_groups,
> @@ -4085,9 +4100,14 @@ int __init devices_init(void)
>         sysfs_dev_char_kobj =3D kobject_create_and_add("char", dev_kobj);
>         if (!sysfs_dev_char_kobj)
>                 goto char_kobj_err;
> +       fw_devlink_wq =3D alloc_workqueue("fw_devlink_wq", 0, 0);
> +       if (!fw_devlink_wq)

Fix the name appropriately here too please.

Thanks,
Saravana


> +               goto wq_err;
>
>         return 0;
>
> + wq_err:
> +       kobject_put(sysfs_dev_char_kobj);
>   char_kobj_err:
>         kobject_put(sysfs_dev_block_kobj);
>   block_kobj_err:
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 2b093e62907a..c26f4b3df2bd 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -1250,6 +1250,7 @@ void device_link_del(struct device_link *link);
>  void device_link_remove(void *consumer, struct device *supplier);
>  void device_links_supplier_sync_state_pause(void);
>  void device_links_supplier_sync_state_resume(void);
> +void device_link_wait_removal(void);
>
>  /* Create alias, so I can be autoloaded. */
>  #define MODULE_ALIAS_CHARDEV(major,minor) \
> --
> 2.42.0
>
>

