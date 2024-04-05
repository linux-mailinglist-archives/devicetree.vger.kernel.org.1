Return-Path: <devicetree+bounces-56725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CD989A4B9
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3309F1C2161E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 19:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21ECE172BA3;
	Fri,  5 Apr 2024 19:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dTC75qgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491D9172BAB
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 19:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712344417; cv=none; b=UNghk3OjDoRWY3LVUiD1WOxjGO8f+VIKXzfSLPj5LBRSSlFmpxFDVjCbzo+s25qzHbhY0rMnUXzdBNrF5fSUwZaI090X/gUlynCg+7sNoGO+YVcsK8XlfzIy+/UNuAaPRbQnJvzK8IufhJK5uFMzoHovsRALc603ftMa9h7DNb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712344417; c=relaxed/simple;
	bh=N/GAxuyN0ICdsHgMXMPjrgO9dzc6KsGePIb1Dg//fJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uqNUYN7X9NiIFdJ4CJDdYqzMvUL+Xakia1CrGnPVIGDQhyK+XU6XWxttsiYj88fJ81Nmelijmlbtz7dTI/6E+7HgjMlDFRrnxeJ1uDMDVL5NaUx7JR9HhBpepJHdQTb6azMTTIbdtt+P6TdmGGjEESs5zufiLec07HH5XBdrPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dTC75qgJ; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56e2e94095cso2643a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 12:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712344413; x=1712949213; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5hBIVq/WYOp/vh9o7XH8iSSkLDklnPxJ1/J1gPC0JEs=;
        b=dTC75qgJKrmkM3ZRqh9MOLBmOxezMQztovpdSDOewHaEnLe7xUoDSFKjx2991XLUSY
         Y2udz+W9oH386JdQ71axoszs/NLp1GuR9OqF2pJ70nFNcRkfGgAzO2b6RLYY2sx/CTb9
         Hg8Ox526n+qvN26RItAVCBRsTcltEiMODgfxnZ/Yl5v0ij9t6wNuLlRmRYQEpv6ShNL1
         phL08GaQRb+JIPrhrNf2DoqOPg/kljySWyN/ssTZLsCJDeAr9hQidDB9OdhmlukFe36h
         ZXe5+dZ9dY3cbUZxCJI/6ZpiHEY97LugKQZGYTRxyYi30HQ6S09rHFCederOYHWu+xij
         qLIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712344413; x=1712949213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5hBIVq/WYOp/vh9o7XH8iSSkLDklnPxJ1/J1gPC0JEs=;
        b=jWqovZlOqxrQ6HKNbj60BtTyrb5fE+f3/nMkQrcemNUpCBZpWiPWEHHDxe/GjBdeCe
         1fE15ckVfQkVFbCJyA+rXpJJNV/qpPSb/5YJJjEFHTv34h/KE34xk4tazNpDK9M5ZTzi
         2OQonjiDonytLJP0hqbOKtZWDzqy6KZ6YoLQwTRYMxoOXRcrV3kFgafQ2+YExZgAFufO
         5NX8TELhyC3qo2PFUyNthoZV3nltfvhJ1NORvCapETnvxxqJAyJtNVuBPBhDtffnBNEx
         A2VX/3GUN2IFkRqYVbU9WF3ZY9c711SUx5VoEZd+q1jP/+PePBuH+SuHX6b4ZsdJ4RFs
         TxXA==
X-Forwarded-Encrypted: i=1; AJvYcCUgc0wuu4ssbTqYP71uTHKc+kzQUQsoJWCpuRg/T4QU5Y+IEhHWUCj8JicxW/lS3FsypOWVqcRYYL6vyqw3HlldzioxEgxn9coBXQ==
X-Gm-Message-State: AOJu0Yz+w93oGonA7UIOiM/x2BvD7ecsMFj6zOqfEFXonTKccDRWEUSt
	7FXpkEu12XcM+Kb+L6aiVki6EF5SkVTqeerzIVCvf0R3qAr5oDPCpMI3cjWQ6sFu7K75/qR4qV4
	aRybMg9boPLWajw8GgtdRpXw4BSvBX+b/ooDl
X-Google-Smtp-Source: AGHT+IGSQw26K/1KMIaFNQXM+sHti7zzjBcsRbseAmGwF4GSHo884X/HYRIJUDWW3bHToyWwP9Q9PhkGYOaYXmEvYB4=
X-Received: by 2002:a05:6402:3d8:b0:56e:2b00:fcc7 with SMTP id
 t24-20020a05640203d800b0056e2b00fcc7mr27220edw.0.1712344413313; Fri, 05 Apr
 2024 12:13:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404-dt-cleanup-free-v1-0-c60e6cba8da9@kernel.org>
 <20240404-dt-cleanup-free-v1-3-c60e6cba8da9@kernel.org> <CAGETcx8Wd5OsHWiGSASWkQQtof0D-ScwYsvq9hWizV3DFC27gA@mail.gmail.com>
 <CAL_JsqK4QpFmLi0WVG0Vpxv82Y1eWxbGS7ESWBhPoKg+WFV5Tw@mail.gmail.com>
In-Reply-To: <CAL_JsqK4QpFmLi0WVG0Vpxv82Y1eWxbGS7ESWBhPoKg+WFV5Tw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 5 Apr 2024 12:12:53 -0700
Message-ID: <CAGETcx-26nAPGybBZq_bnQ4YWdosj_bBWnwPtF8sZ_vvoiSMUA@mail.gmail.com>
Subject: Re: [PATCH 3/3] of: Use scope based of_node_put() cleanups
To: Rob Herring <robh@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2024 at 6:01=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Apr 4, 2024 at 6:22=E2=80=AFPM Saravana Kannan <saravanak@google.=
com> wrote:
> >
> > On Thu, Apr 4, 2024 at 7:15=E2=80=AFAM Rob Herring <robh@kernel.org> wr=
ote:
> > >
> > > Use the relatively new scope based of_node_put() cleanup to simplify
> > > function exit handling. Doing so reduces the chances of forgetting an
> > > of_node_put() and simplifies error paths by avoiding the need for got=
o
> > > statements.
> > >
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  drivers/of/address.c  | 60 ++++++++++++++++-------------------------=
----------
> > >  drivers/of/property.c | 22 ++++++-------------
> > >  2 files changed, 26 insertions(+), 56 deletions(-)
> > >
> > > diff --git a/drivers/of/address.c b/drivers/of/address.c
> > > index ae46a3605904..f7b2d535a6d1 100644
> > > --- a/drivers/of/address.c
> > > +++ b/drivers/of/address.c
> > > @@ -491,7 +491,6 @@ static u64 __of_translate_address(struct device_n=
ode *dev,
> > >                                   const __be32 *in_addr, const char *=
rprop,
> > >                                   struct device_node **host)
> > >  {
> > > -       struct device_node *parent =3D NULL;
> > >         struct of_bus *bus, *pbus;
> > >         __be32 addr[OF_MAX_ADDR_CELLS];
> > >         int na, ns, pna, pns;
> > > @@ -504,7 +503,7 @@ static u64 __of_translate_address(struct device_n=
ode *dev,
> > >
> > >         *host =3D NULL;
> > >         /* Get parent & match bus type */
> > > -       parent =3D get_parent(dev);
> > > +       struct device_node *parent __free(device_node) =3D get_parent=
(dev);
> >
> > Can we leave the variable definition where it was? We generally define
> > all the variables up top. So, defining the one variable in the middle
> > feels weird. I at least get when we do this inside for/if blocks. But
> > randomly in the middle feels weird.
>
> There's an 'of_node_get(dev);' before this. Ordering wise, we need to
> hold the ref on the child before we get its parent. I suppose I can
> also convert that to use the cleanups. I'll have to add another local
> ptr to do that though.
>
> >
> > Similar comments in other places. Since both kfree() and of_put() can
> > both handle NULL pointers, I'd be surprised if we HAVE to combine
> > these lines.
>
> https://lore.kernel.org/all/CAHk-=3DwgRHiV5VSxtfXA4S6aLUmcQYEuB67u3BJPJPt=
uESs1JyA@mail.gmail.com/

Review-by without reservations.

-Saravana

