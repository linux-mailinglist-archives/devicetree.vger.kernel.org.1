Return-Path: <devicetree+bounces-47510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA5986D7BB
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 00:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75ECF1F23FAE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 23:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A698B134427;
	Thu, 29 Feb 2024 23:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="A24Mc9Wi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CEE75815
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 23:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709249213; cv=none; b=k9sJCVXRPl+/CUlAmIFf3Ib0/G7oaJi7A8ZwReyrRJ9dKiqpNY4w0zzxiQNSLcCbZJ1EBMq+fsgqKei78oIigpAMRLuA3/u5N0n8R0HaP8EAP4d+wnpyCCKFBOtQr7lLuMZ0vutWHZqFNfmqIxwLs0srLf08qp88uBUo8jg20xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709249213; c=relaxed/simple;
	bh=XY+tF/oyv5RZqs+TYf1m3Rn6En+Ql1F7UgQnTwazuWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RdrEC+bUJFQQ2/yDhvJNpIzhYYwuHS9EF/a+avuQ2AFewP8BnKKrcJaJ3WFGe+ynL02X7GAVycIbL0q6upUC6AKmbIq5ulUFOP0V1tJnooVdM0KIi/FKcNHaIHSqrSDA2v6zuB2brPD18KXAx50ysbGxv296ud1DRwcc8f9L7/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=A24Mc9Wi; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-42ec412cafdso17141cf.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 15:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709249211; x=1709854011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qC3fdiR3wpO9HRmx8vGtLqu6epk2+GZTHN12FsFnSk=;
        b=A24Mc9WiSVEs5PorukWsU2KUenqSFBj+odxFx72XrNl8qJ7NHq/egTBXeDCf5tgmoE
         ZcREkBetYcmOehfzJr0CAxychPYapTfDhm6KO96lETs1L3GTnkCLEAZvqo9CBcLUVy6n
         qC3OUbov/Ldn15Td33tR3Ti1nQydbh+ntddvI0ubZxVfQume/3pK6uacneS3OCTohta4
         k2yKLeTEdD9WKJxxJu55fQN2PRBZ9sDXsC7YJ6HdffiUmftnyyQAR4Bnx50xQ0vGv/fb
         BGPrKcZfBp2gXheNQTg7t4yPJwW42IIcjtMfew/0tZtHAj5hmgRSCG5thzYxHdZBLYd+
         K9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709249211; x=1709854011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qC3fdiR3wpO9HRmx8vGtLqu6epk2+GZTHN12FsFnSk=;
        b=NQwxrMetRIP4h1UoO6yfyfvlo3AUPgaTEwKSfzqFwJICP5xnPEAGfujBV/qKCPmAKv
         8srPBJcIliCANAMQy24cCqehGG4LU9iL1lKXmAGEPPaW3WBXtEJ7b1qf+/DIm3lbkLm7
         c+ALeNDfX3UjWglsUsokXRwiIsDZFt685HzYME0wyEw/3AFDZZoH3KLDrmutSl4fAQ19
         Qh2ec5AwEv/SKa3XKz6BjSLhY8IKK4ND6Yty8uz7P4SvBAe6BLef9tkujRkhrRpVWv8m
         ZK47QKc5swGqbb1vpsrr7kA6UxqMbeKvL4HExaqlfn5Z2kypJgKG0PDoRCGTYCj8snif
         ybwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHaZE+ne++oqZkVu4qLtBVSz4MrPlrMEuZb+t3761flCpaFvNxZQxhTDwcpuLJwSnhnddhqh25rMX2gWLRnS/8lO1ijaPK0ki2ow==
X-Gm-Message-State: AOJu0Ywyzi3SO1ZoYlXIPSV5lrdvwqQoOZRR+b9A5cKHA/rXyBdUfD93
	s6YpHdf7aXaERzK/yGC5HhvrYvj/OZ8DKwiWigR9vYmcxFIytlcc7p6fXvnWiqZ+nQN+HApiLNc
	Al3GbcuVzBzDHzMof99KXm5Q83qceA29VC7DI
X-Google-Smtp-Source: AGHT+IFTp3iCHULEe6WvtnD0a3CSDWgwwezmvxtlg72qf7OTNzFNIfW9Lodil24Jm8e+rucPSssirLGptHIFDo/AUd8=
X-Received: by 2002:a05:622a:6:b0:42e:8e9e:3a1f with SMTP id
 x6-20020a05622a000600b0042e8e9e3a1fmr91697qtw.10.1709249210646; Thu, 29 Feb
 2024 15:26:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130174126.688486-1-herve.codina@bootlin.com>
 <20231130174126.688486-2-herve.codina@bootlin.com> <CAGETcx9uP86EHyKJNifBMd23oCsA+KpMa+e36wJEEnHDve+Avg@mail.gmail.com>
 <20240223101115.6bf7d570@bootlin.com> <cdf0a9facd95a2b7ee618e6130dedb9aabf4ed09.camel@gmail.com>
In-Reply-To: <cdf0a9facd95a2b7ee618e6130dedb9aabf4ed09.camel@gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 29 Feb 2024 15:26:14 -0800
Message-ID: <CAGETcx9x55moTrvcDCup_K0DU305TtjK4Nvjf_drfipyowKb=w@mail.gmail.com>
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

On Fri, Feb 23, 2024 at 2:41=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:
>
> On Fri, 2024-02-23 at 10:11 +0100, Herve Codina wrote:
> > Hi Saravana,
> >
> > On Tue, 20 Feb 2024 16:31:13 -0800
> > Saravana Kannan <saravanak@google.com> wrote:
> >
> > ...
> >
> > > > +void device_link_wait_removal(void)
> > > > +{
> > > > +       /*
> > > > +        * devlink removal jobs are queued in the dedicated work qu=
eue.
> > > > +        * To be sure that all removal jobs are terminated, ensure =
that
> > > > any
> > > > +        * scheduled work has run to completion.
> > > > +        */
> > > > +       drain_workqueue(fw_devlink_wq);
> > >
> > > Is there a reason this needs to be drain_workqueu() instead of
> > > flush_workqueue(). Drain is a stronger guarantee than we need in this
> > > case. All we are trying to make sure is that all the device link
> > > remove work queued so far have completed.
> >
> > I used drain_workqueue() because drain_workqueue() allows for jobs alre=
ady
> > present in a workqueue to re-queue a job and drain_workqueue() will wai=
t
> > also for this new job completion.
> >
> > I think flush_workqueue() doesn't wait for this chain queueing.
> >
> > In our case, my understanding was that device_link_release_fn() calls
> > put_device() for the consumer and the supplier.
> > If refcounts reaches zero, devlink_dev_release() can be called again
> > and re-queue a job.
> >
>
> Looks sensible. The only doubt (that Saravana mays know better) is that I=
'm not
> sure put_device() on a supplier or consumer can actually lead to
> devlink_dev_release(). AFAIU, a consumer or a supplier should not be a de=
vice
> from the devlink class. Hence, looking at device_release(), I'm not sure =
it can
> happen unless for some odd reason someone is messing with devlinks in .re=
move()
> or .type->remove().

The case we are trying to fix here involves a supplier or a consumer
device (say Device-A) being device_del(). When that happens, all the
device links to/from the device are deleted by a call to
device_links_purge() since a device link can't exist without both the
supplier and consumer existing.

The problem you were hitting is that the device link deletion code
does the put_device(Device-A) in a workqueue. You change is to make
sure to wait until that has completed. To do that, you only need to
wait for the device link deletion work (already queued before
returning from device_del()) to finish. You don't need to wait for
anything more.

I read up on drain_workqueue() before I made my comments. The point I
was trying to make is that there could be some unrelated device link
deletions that you don't need to wait on.

But taking a closer look[1], it looks like drain_workqueue() might
actually cause bugs because while a workqueue is being drained, if
another unrelated device link deletion is trying to queue work, that
will get ignored.

Reply to rest of the emails in this thread here:

Nuno,

Sorry if I messed up who sent the first patch, but I did dig back to
your v1. But I could be wrong.

If devlink_dev_release() could have done the work synchronously, we'd
have done it in the first place. It's actually a bug because
devlink_dev_release() gets called in atomic context but the
put_device() on the supplier/consumer can do some sleeping work.

-Saravana

[1] - https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/kernel/workqueue.c#n1727

