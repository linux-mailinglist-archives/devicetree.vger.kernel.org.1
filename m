Return-Path: <devicetree+bounces-48899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F998741CC
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 22:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FEB0B2382B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 21:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4014A1B94B;
	Wed,  6 Mar 2024 21:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Mw1Vet8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9396F18B1B
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 21:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709759737; cv=none; b=dT5WHC2rW6cw65E12gOFVnxU/av6ZD9YoXLgI694gBAVDU77A1OhVX471Ez+Fz5I5JCtBqwU3UQ3e8oH2ZVb9v3/r8gwg4hOGfL6T/ACQyRFFIA/MH5wfSntOzz+RE3Yi3w69n7d0UOQHaMMb9AY5dExeaRC1SZkxQKEyxJLfIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709759737; c=relaxed/simple;
	bh=+l8m3POtAaDtB80yHDgkTD7KG7R8IqP1r+IYUdBueyY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WOwqSXkh4on1nDwZt7dMJPxYFhUroqqRSVGqS/cPcP5EiMQIHrDg0n7BMcvOU/Gd7TbtrT+po3Yfq3Ow0TqH1Xycs1DpI/XD6JwwCd8ZYFpiQMC3M3kX54OHB0lrgnsD11jMPjVInVY685TQQmkvCIFTV0PyceRjKOlh821DGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Mw1Vet8G; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-42ee0c326e8so83771cf.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 13:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709759734; x=1710364534; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XzC+C2S5Etcf2Z/JbeuSZgXqxgIWaVv4J2sVk7ZKEIU=;
        b=Mw1Vet8GaEjAR37NCCWU79/XvpjY61JEVlsYVuM0bBxoWhcr7p3KI3TwYELi1G3AmH
         hUHx5EVmveFcA+PMrW0VKHzDfqdxEURqfonmPAdETQHm6DDvuIT+Kk6xYggmAsm9f2AM
         BQA7u7eCSAsKZcXJ3fKLkOVs8Y2dyEQKoxECKYmMnVGvhjTWCO4H19p/6xGYF3cUF/5O
         TQ1aj+zuY4EkbTjdBz75gLuHsI5GzqisOwCfUaI+PUkA9kMmlr+z4QiCwZkymMAi7iS4
         hHJQV27bPht0Bk1ekYjQ19CIHeP4FMgPMc3rvaGdJAK41mwUy0Om7DOyLPnlJLlEWd0b
         /0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709759734; x=1710364534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzC+C2S5Etcf2Z/JbeuSZgXqxgIWaVv4J2sVk7ZKEIU=;
        b=hQJkPqdaNfJelzUtSWgTRq9kzbxYADfErM8BqgPl7ZcviNN51gVxXhFuR/YSQb5aDm
         Lvp1PhSZM1F1mP9EpUCRkZnFiriIb6Rc+niFBOuFUQ8wKIl0EjMOIYdZD7+spzJC8NVb
         a5mleGdvOlVz6vA8v8uZI2mDkGa5z2UHhHmxjGW/u2KFojZCecHuWhRB58/NKDLqGZ64
         KPORl8aiKPwncV4/YZ5lin5v4Y607sCXm3iSHkgOoE4t5cn44u/2Q3XiUZHIyL53G4s/
         9/Ss0c+qslTwEWleayan2hXQ3Jsviv7Yxc9n5KntggXoESnaaql2Kgj/ot3nnEVb4RLz
         BMRg==
X-Forwarded-Encrypted: i=1; AJvYcCUZK69fH8PKv2v4IqZrCb0Id4aWnvuiDzspq2SdJrpcd0FisEt6SBglANCaUt/wBnKfaUw7PSXk+tVTjBUhI7aXL9cS77HlQPoCng==
X-Gm-Message-State: AOJu0YwBupD+yBMiyDPvyxn+W3yapk1wvUWZFXvJtHTrfFWORkrQjOwU
	+mG+FbRQ7s8U5blqZictH4i2nKP+0t5lJQY0OfHAh0sXE/pv4Xp80j/clck2Cl5CRTt21iolydN
	YIWHYWUcB5hS3koowneV1a9Nnc6a1ytUyb6KB
X-Google-Smtp-Source: AGHT+IEkdwDQ65xQJC4KiGNeJrl9lSmewlEJY+cm2QqzmQ3s0lzsNIKMMTqzMAl/OTMEg2JkcSDB6qm9XpzdcPTbpho=
X-Received: by 2002:ac8:5e0b:0:b0:42e:b7b2:2e99 with SMTP id
 h11-20020ac85e0b000000b0042eb7b22e99mr123586qtx.2.1709759734197; Wed, 06 Mar
 2024 13:15:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306085007.169771-1-herve.codina@bootlin.com>
 <20240306085007.169771-2-herve.codina@bootlin.com> <CAJZ5v0gENrBFfJ3FDJ=m0-veFbue_Bw168+k2cs7v2u9MtCT8Q@mail.gmail.com>
 <20240306162447.2a843a11@bootlin.com> <CAJZ5v0hYxhoLEEJ=MXPNFWpp7bidx_832RdOAgzx4m=aM0YzXg@mail.gmail.com>
In-Reply-To: <CAJZ5v0hYxhoLEEJ=MXPNFWpp7bidx_832RdOAgzx4m=aM0YzXg@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 6 Mar 2024 13:14:55 -0800
Message-ID: <CAGETcx9Oo3F8oAOOS9e9RTCdWHvigx5On0phXrVfJqap2VcN2g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] driver core: Introduce device_link_wait_removal()
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nuno Sa <nuno.sa@analog.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 6, 2024 at 7:56=E2=80=AFAM Rafael J. Wysocki <rafael@kernel.org=
> wrote:
>
> On Wed, Mar 6, 2024 at 4:24=E2=80=AFPM Herve Codina <herve.codina@bootlin=
.com> wrote:
> >
> > Hi Rafael,
> >
> > On Wed, 6 Mar 2024 13:48:37 +0100
> > "Rafael J. Wysocki" <rafael@kernel.org> wrote:
> >
> > > On Wed, Mar 6, 2024 at 9:51=E2=80=AFAM Herve Codina <herve.codina@boo=
tlin.com> wrote:
> > > >
> > > > The commit 80dd33cf72d1 ("drivers: base: Fix device link removal")
> > > > introduces a workqueue to release the consumer and supplier devices=
 used
> > > > in the devlink.
> > > > In the job queued, devices are release and in turn, when all the
> > > > references to these devices are dropped, the release function of th=
e
> > > > device itself is called.
> > > >
> > > > Nothing is present to provide some synchronisation with this workqu=
eue
> > > > in order to ensure that all ongoing releasing operations are done a=
nd
> > > > so, some other operations can be started safely.
> > > >
> > > > For instance, in the following sequence:
> > > >   1) of_platform_depopulate()
> > > >   2) of_overlay_remove()
> > > >
> > > > During the step 1, devices are released and related devlinks are re=
moved
> > > > (jobs pushed in the workqueue).
> > > > During the step 2, OF nodes are destroyed but, without any
> > > > synchronisation with devlink removal jobs, of_overlay_remove() can =
raise
> > > > warnings related to missing of_node_put():
> > > >   ERROR: memory leak, expected refcount 1 instead of 2
> > > >
> > > > Indeed, the missing of_node_put() call is going to be done, too lat=
e,
> > > > from the workqueue job execution.
> > > >
> > > > Introduce device_link_wait_removal() to offer a way to synchronize
> > > > operations waiting for the end of devlink removals (i.e. end of
> > > > workqueue jobs).
> > > > Also, as a flushing operation is done on the workqueue, the workque=
ue
> > > > used is moved from a system-wide workqueue to a local one.
> > > >
> > > > Fixes: 80dd33cf72d1 ("drivers: base: Fix device link removal")
> > >
> > > No, it is not fixed by this patch.
> >
> > Was explicitly asked by Saravana on v1 review:
> > https://lore.kernel.org/linux-kernel/CAGETcx9uP86EHyKJNifBMd23oCsA+KpMa=
+e36wJEEnHDve+Avg@mail.gmail.com/
>
> Well, I don't think this is a valid request, sorry.
>
> > The commit 80dd33cf72d1 introduces the workqueue and so some asynchrono=
us tasks
> > on removal.
> > This patch and the next one allows to re-sync execution waiting for job=
s in
> > the workqueue when it is needed.
>
> I get this, but still, this particular individual patch by itself
> doesn't fix anything.  Do you agree with this?
>
> If somebody applies this patch without the next one in the series,
> they will not get any change in behavior, so the tag is at least
> misleading.
>
> You can claim that the next patch on top of this one fixes things, so
> adding a Fixes tag to the other patch would be fine.
>
> There is an explicit dependency between them (the second patch is not
> even applicable without the first one, or if it is, the resulting code
> won't compile anyway), but you can make a note to the maintainer that
> they need to go to -stable together.
>
> > >
> > > In fact, the only possibly observable effect of this patch is the
> > > failure when the allocation of device_link_wq fails AFAICS.
> > >
> > > > Cc: stable@vger.kernel.org
> > >
> > > So why?
> >
> > Cc:stable is needed as this patch is a prerequisite of patch 2 (needed
> > to fix the asynchronous workqueue task issue).
>
> Dependencies like this can be expressed in "Cc: stable" tags.
> Personally, I'd do it like this:
>
> Cc: stable@vger.kernel.org # 5.13: Depends on the first patch in the seri=
es

I'm okay with this too. I personally think it's better to list "Fixes:
xyz" in all the patches that are needed to fix xyz (especially when
there's no compile time dependency on earlier patches), but it's not a
hill I'll die on. And if Rafael's suggestion is the expected norm,
then I'll remember to follow that in the future.

-Saravana

