Return-Path: <devicetree+bounces-45062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08668860816
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 02:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BA4E1C20DA5
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 01:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2A5101C1;
	Fri, 23 Feb 2024 01:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="KMweABLr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7671CF4FA
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 01:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708650549; cv=none; b=i64HhkQtlikTRQyG1L/+XwPkt1w34rc9SvyfxMDGGzlE34UJr5ZQrvY82UC+6G3QI7q3DK8Rfjbhbzv1R10QM51/8Gs04dJ8nmiMl+foNQpFXCUngy8RZNs9C8uoGV/TeTdyJUI5qqqeBnupYz15dpIhvczkmUXJ5wkXfxMWfQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708650549; c=relaxed/simple;
	bh=nEBy7KxjXZltGUSBrzTr6OmKJ/tZKtHbuM6EELBbZjI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SdABVamQiYpiSK3BqiYccSyEXBelCLtpwEFuimbuLSaTdTqZg1BSrfyUwdlGFBNZ++kETkaAkpmAifCQ/JmqUSNmfVNyV7e0E/pPs5SNYumhK4zmZcF0uDzGSbfnB071zj2rn9LtQV4+ZNzDyaNhgcYappF+vzc3vHHFmU+oDjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=KMweABLr; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42e0b1b11bbso43261cf.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 17:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708650546; x=1709255346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mobwl0b29PwH9TdlcTdbnw97MM50XDo2Gl4HPATf+kE=;
        b=KMweABLr/RCHMclJYNV6CBJ/f7GH4sSVGabVtvIkEWTDoBzKIg0FRoLu+WiLTf1QFZ
         U2wdDG4RIo5ccs//6zhoQ+TDQ8tQzdhW2c57AK5+xX6E8/zpKbBctzGxr1kYeOXs1+wd
         iovUdj+stCvipcXQkgaVN+ISLtK3W1sqN9SbhoZWSqhZfHIm0574KMEmgKj5L1UzVb98
         DOiyBIVeJwWDB5o7zL6ZKFryaISSYYtBYoJ2KI0uWVQfGDdHyWWjNO/A7AYi1urGQO+F
         5z3lZQdAvJcU08nZtZVY755WHU4/BlFg6adsylq40LeZvvqVNsXCZ6dnecxOIWKIaK7v
         HkSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708650546; x=1709255346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mobwl0b29PwH9TdlcTdbnw97MM50XDo2Gl4HPATf+kE=;
        b=XRP6OjDYUkBzpK8zDyWcsZm4cTItKdZVesu1RCYaSMjtK6mqAR/Fm9zPV0cx//v1BW
         jvFGUiMGXF2jWVtkJxid970A5bt2MTDzUlnMgHpabfk7Fj2KR9HzAnzCfrEqC7BYskSn
         T0FgHAwDr6QHIOu89VNPIrNZkQ6aUAC2CzkjDa/shQwkUevUyAHpqFNVSJ1adrCodJGs
         QBoI79rtpi4PWRI22Fz2KP9PeJ026nKyMHezbYpznqaJBTX98P5CJaHz+8dIaXXy4vHj
         rveMMPR+9hyGWCKH5UWHohQuXXdo5r1P/7PuDqX6vDI04NHRezMsfsdxJqJHMTzzDJ8w
         4lGw==
X-Forwarded-Encrypted: i=1; AJvYcCUioDyJqLLWM3Z2tah6jiD7uLFBYDW3b/9F49jm9xa4r7Nwr5qF0cd3Z05FQL6PFB3D6ZI20RxTh7ofNd0dEX3vCoENJhaWodzDpg==
X-Gm-Message-State: AOJu0Yzdbo199LeaHvM+jxD29LDbCW7kX+fp7eJOaCk6b7/yoon9j+wK
	dA5qTXWeNvOS8dr1vdSYmw6biqCDHBflJmVbvsQADL5zc+n0hvfTVJg5AERViYe2/kaGX5Xymfh
	77dC5M0jueNG4JgJ/lreVBQQXq9aIWL4MCt8y
X-Google-Smtp-Source: AGHT+IH/tPHFdg4K5aMnFl9itM0igHCEpvxtdd9ysV6q8MPnnWU/8s24yyIM8gLlxdukLX2EJjhYHSWbY5n8KvBV8MM=
X-Received: by 2002:ac8:4e42:0:b0:42d:f03d:ee2e with SMTP id
 e2-20020ac84e42000000b0042df03dee2emr938023qtw.22.1708650546157; Thu, 22 Feb
 2024 17:09:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130174126.688486-1-herve.codina@bootlin.com>
 <20231130174126.688486-2-herve.codina@bootlin.com> <CAGETcx9uP86EHyKJNifBMd23oCsA+KpMa+e36wJEEnHDve+Avg@mail.gmail.com>
 <c4e1092298244c288212e9f6cdbf7c26d0e9d83b.camel@gmail.com>
In-Reply-To: <c4e1092298244c288212e9f6cdbf7c26d0e9d83b.camel@gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 22 Feb 2024 17:08:28 -0800
Message-ID: <CAGETcx9h4=k9XW+jZCw9zcVZruNZLPDQDt_sNZYXc05eQ2_uWQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] driver core: Introduce device_link_wait_removal()
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
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

On Tue, Feb 20, 2024 at 10:56=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.co=
m> wrote:
>
> On Tue, 2024-02-20 at 16:31 -0800, Saravana Kannan wrote:
> > On Thu, Nov 30, 2023 at 9:41=E2=80=AFAM Herve Codina <herve.codina@boot=
lin.com> wrote:
> > >
> > > The commit 80dd33cf72d1 ("drivers: base: Fix device link removal")
> > > introduces a workqueue to release the consumer and supplier devices u=
sed
> > > in the devlink.
> > > In the job queued, devices are release and in turn, when all the
> > > references to these devices are dropped, the release function of the
> > > device itself is called.
> > >
> > > Nothing is present to provide some synchronisation with this workqueu=
e
> > > in order to ensure that all ongoing releasing operations are done and
> > > so, some other operations can be started safely.
> > >
> > > For instance, in the following sequence:
> > >   1) of_platform_depopulate()
> > >   2) of_overlay_remove()
> > >
> > > During the step 1, devices are released and related devlinks are remo=
ved
> > > (jobs pushed in the workqueue).
> > > During the step 2, OF nodes are destroyed but, without any
> > > synchronisation with devlink removal jobs, of_overlay_remove() can ra=
ise
> > > warnings related to missing of_node_put():
> > >   ERROR: memory leak, expected refcount 1 instead of 2
> > >
> > > Indeed, the missing of_node_put() call is going to be done, too late,
> > > from the workqueue job execution.
> > >
> > > Introduce device_link_wait_removal() to offer a way to synchronize
> > > operations waiting for the end of devlink removals (i.e. end of
> > > workqueue jobs).
> > > Also, as a flushing operation is done on the workqueue, the workqueue
> > > used is moved from a system-wide workqueue to a local one.
> >
> > Thanks for the bug report and fix. Sorry again about the delay in
> > reviewing the changes.
> >
> > Please add Fixes tag for 80dd33cf72d1.
> >
> > > Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> > > ---
> > >  drivers/base/core.c    | 26 +++++++++++++++++++++++---
> > >  include/linux/device.h |  1 +
> > >  2 files changed, 24 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/base/core.c b/drivers/base/core.c
> > > index ac026187ac6a..2e102a77758c 100644
> > > --- a/drivers/base/core.c
> > > +++ b/drivers/base/core.c
> > > @@ -44,6 +44,7 @@ static bool fw_devlink_is_permissive(void);
> > >  static void __fw_devlink_link_to_consumers(struct device *dev);
> > >  static bool fw_devlink_drv_reg_done;
> > >  static bool fw_devlink_best_effort;
> > > +static struct workqueue_struct *fw_devlink_wq;
> > >
> > >  /**
> > >   * __fwnode_link_add - Create a link between two fwnode_handles.
> > > @@ -530,12 +531,26 @@ static void devlink_dev_release(struct device *=
dev)
> > >         /*
> > >          * It may take a while to complete this work because of the S=
RCU
> > >          * synchronization in device_link_release_fn() and if the con=
sumer or
> > > -        * supplier devices get deleted when it runs, so put it into =
the "long"
> > > -        * workqueue.
> > > +        * supplier devices get deleted when it runs, so put it into =
the
> > > +        * dedicated workqueue.
> > >          */
> > > -       queue_work(system_long_wq, &link->rm_work);
> > > +       queue_work(fw_devlink_wq, &link->rm_work);
> >
> > This has nothing to do with fw_devlink. fw_devlink is just triggering
> > the issue in device links. You can hit this bug without fw_devlink too.
> > So call this device_link_wq since it's consistent with device_link_* AP=
Is.
> >
>
> I'm not sure if I got this right in my series. I do call devlink_release_=
queue() to
> my queue. But on the Overlay side I use fwnode_links_flush_queue() becaus=
e it looked
> more sensible from an OF point of view. And including (in OF code) linux/=
fwnode.h
> instead linux/device.h makes more sense to me.
>
> > >  }
> > >
> > > +/**
> > > + * device_link_wait_removal - Wait for ongoing devlink removal jobs =
to terminate
> > > + */
> > > +void device_link_wait_removal(void)
> > > +{
> > > +       /*
> > > +        * devlink removal jobs are queued in the dedicated work queu=
e.
> > > +        * To be sure that all removal jobs are terminated, ensure th=
at any
> > > +        * scheduled work has run to completion.
> > > +        */
> > > +       drain_workqueue(fw_devlink_wq);
> >
> > Is there a reason this needs to be drain_workqueu() instead of
> > flush_workqueue(). Drain is a stronger guarantee than we need in this
> > case. All we are trying to make sure is that all the device link
> > remove work queued so far have completed.
> >
>
> Yeah, I'm also using flush_workqueue().
>
> > > +}
> > > +EXPORT_SYMBOL_GPL(device_link_wait_removal);
> > > +
> > >  static struct class devlink_class =3D {
> > >         .name =3D "devlink",
> > >         .dev_groups =3D devlink_groups,
> > > @@ -4085,9 +4100,14 @@ int __init devices_init(void)
> > >         sysfs_dev_char_kobj =3D kobject_create_and_add("char", dev_ko=
bj);
> > >         if (!sysfs_dev_char_kobj)
> > >                 goto char_kobj_err;
> > > +       fw_devlink_wq =3D alloc_workqueue("fw_devlink_wq", 0, 0);
> > > +       if (!fw_devlink_wq)
> >
> > Fix the name appropriately here too please.
>
> Hi Saravana,
>
> Oh, was not aware of this series... Please look at my first patch. It alr=
eady has a
> review tag by Rafael. I think the creation of the queue makes more sense =
to be done
> in devlink_class_init(). Moreover, Rafael complained in my first version =
that
> erroring out because we failed to create the queue is too harsh since dev=
links can
> still work.

I think Rafael can be convinced on this one. Firstly, if we fail to
allocate so early, we have bigger problems.

> So, what we do is to schedule the work if we have a queue or too call
> device_link_release_fn() synchronously if we don't have the queue (note t=
hat failing
> to allocate the queue is very unlikely anyways).

device links don't really work when you synchronously need to delete a
link since it always uses SRCUs (it used to have a #ifndef CONFIG_SRCU
locking). That's like saying a code still works when it doesn't hit a
deadlock condition.

Let's stick with Herve's patch series since he send it first and it
has fewer things that need to be fixed. If he ignores this thread for
too long, you can send a revision of yours again and we can accept
that.

-Saravana

