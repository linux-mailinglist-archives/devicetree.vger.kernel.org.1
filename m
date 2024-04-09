Return-Path: <devicetree+bounces-57307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DBD89D1D7
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 07:13:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90CF72845CA
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 05:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D27F54902;
	Tue,  9 Apr 2024 05:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LMY5owiJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8417D53E32
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 05:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712639624; cv=none; b=lx308P1IwnlgpwptBVSZIcq8BsIy3uiVZjfE7MLRlNyRRxI/J1XV0VcVosD5gk0LSqcXgECIV2/Y65jod/ZCnQHnY8traw6aPwm4wDNtq9ASe7RlWSX5eIfKKvVGjrekUfYfHgFfPMXyNbgDdrVbKSMuMdRV8J79uZ0zrKFyDjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712639624; c=relaxed/simple;
	bh=KKjF/zFeP2l4ureM8YQ44jPQw1jLe60wvSyJYXpz6XM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lys61r118eTQu46e3laqOa36z6wEDZZIvdSY8hfcQEvuf5mUqIW3Cs9dWPuYJH0Z8rgQjVHtN4YgnsLwKJn/4+ZSQZ7axfiFhS1QPjR2bzD43wsTkaRlxzD7mLdaS3YT2JYRA9UKfBAsHN9mq1zoIL5R9EioaRMWfN+xrfg/7uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LMY5owiJ; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-434b5abbb0dso184031cf.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 22:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712639621; x=1713244421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6G7fQwZrU8Ut2ONWgYwB5iUHvGBDAPNe+jjAW2C4Mg=;
        b=LMY5owiJ6d9Q1+QuH1YFu5x2LaD9Xn3ti4Co230Nr4lYHpug/9VfXK5Qf8ZDZ3vC6b
         8QfihJ4GQ+3F2YhI96evxjnqqlAeyqdbzRnaORale5loyceoqlk/koG0UqPQMaZwRkgm
         EhjLw26k1QwwBywkgIk7ZyQDOncs/gECAdnck2xs63NQNF+VdE/Z7+2aSkMChp9S54KU
         pL/yG+j0V7oo5ikfBjNZ5RZErJo7VDbwvOya90y6SpoyaxYWXvo44C12sKnZmNpMlUNh
         5Kd2U/nTpf/2c9oEPXcWIlJsdSOW7uQR5SWjU3IJLbYt95XLJ7Dyjm4FTT2/zo4w1PWQ
         SRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712639621; x=1713244421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6G7fQwZrU8Ut2ONWgYwB5iUHvGBDAPNe+jjAW2C4Mg=;
        b=BnVSeTYhUS70/V2A4zJnAUdBpa+2wkJg0hbJi+q5fgALJvQ/txf+Y0fmDukOKx8j6J
         9xKpGsTUm8MB9ipbjT3UGwL1rLZO/eIp3VGYT2M4qY7eTjvUVTVrfaV7PY/2uypBb6QF
         SkqvznMKd6PlFv1MD+jI3pVRgSPUVfNblKw+asPjHvFl2KlFlO6K03RY6aFNXrfz9lF+
         u/iJy8XXx3T+5xzCikNjp0r80AIv4cYlTdFYGgNW8czqSFs0gqdz6y9uHa1Qika4vSc8
         NklJlpAqvv0iL60GHDvS3WZR/EEYSfq+nAP6K3Kn6XTPi3mNbkeHTKZjrWRcHc6sxCXH
         NA7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVwUCSSB7G8ZhFR9xxdWJ4utTXERGbnOSRgmuctkSLWMKMY9hqApVsH7Cb+ESXPGeAx+I0iM5ILDjxyMMT0HonyT58WpwTZHjk9Q==
X-Gm-Message-State: AOJu0Yxx2sunBOrf2u57Zmyz5pdL1ivFgXxAtt4DaA9e73I5Jq11wGxl
	jCYrKgLgqJu7jr10bn292sp/Gb8OMrCb0m9SEzD/AdR98G8ggRxy25JWZjE3sUWOVd+xp7Bkt3k
	lhMCRzGivtYdVPJtLlM3tElxSavo6vRAR9XoC
X-Google-Smtp-Source: AGHT+IGtzSNJgjDc/nC7nFe1GhF37b1NuM2JGv6SOuE597isSLhoxrccb1PNcX9sCRP+cNte/jpd8sOR+EPxlmcj0Y8=
X-Received: by 2002:a05:622a:1f9b:b0:431:6155:c602 with SMTP id
 cb27-20020a05622a1f9b00b004316155c602mr124400qtb.3.1712639621316; Mon, 08 Apr
 2024 22:13:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240408231310.325451-1-saravanak@google.com> <20240408231310.325451-3-saravanak@google.com>
 <CAGETcx8gGcq01CwTZyn=Q0fSQkzMf6tshSmPr5YWYZuhhJVdXg@mail.gmail.com>
In-Reply-To: <CAGETcx8gGcq01CwTZyn=Q0fSQkzMf6tshSmPr5YWYZuhhJVdXg@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 8 Apr 2024 22:13:01 -0700
Message-ID: <CAGETcx8j50dpovO-Mj0MjpYcw+n6T9ei6mo8tm7BVkcjfy_VVQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/2] of: dynamic: Fix probing of overlay devices
To: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh@kernel.org>, kernel-team@android.com, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2024 at 6:40=E2=80=AFPM Saravana Kannan <saravanak@google.co=
m> wrote:
>
> On Mon, Apr 8, 2024 at 4:13=E2=80=AFPM Saravana Kannan <saravanak@google.=
com> wrote:
> >
> > Get fw_devlink to work well with overlay devices.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  drivers/base/core.c    | 10 ++++++++++
> >  drivers/of/dynamic.c   |  8 ++++++++
> >  include/linux/fwnode.h |  2 ++
> >  3 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/base/core.c b/drivers/base/core.c
> > index 5f4e03336e68..d856f9c5d601 100644
> > --- a/drivers/base/core.c
> > +++ b/drivers/base/core.c
> > @@ -237,6 +237,16 @@ static void __fw_devlink_pickup_dangling_consumers=
(struct fwnode_handle *fwnode,
> >                 __fw_devlink_pickup_dangling_consumers(child, new_sup);
> >  }
> >
> > +
> > +void fw_devlink_pickup_dangling_consumers(struct fwnode_handle *child,
> > +                                                struct fwnode_handle *=
parent)
> > +{
> > +       mutex_lock(&fwnode_link_lock);
> > +       __fw_devlink_pickup_dangling_consumers(child, parent);
> > +       __fw_devlink_link_to_consumers(parent->dev);
> > +       mutex_unlock(&fwnode_link_lock);
> > +}
> > +
> >  static DEFINE_MUTEX(device_links_lock);
> >  DEFINE_STATIC_SRCU(device_links_srcu);
> >
> > diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
> > index 19a1a38554f2..0a936f46820e 100644
> > --- a/drivers/of/dynamic.c
> > +++ b/drivers/of/dynamic.c
> > @@ -237,6 +237,7 @@ static void __of_attach_node(struct device_node *np=
)
> >  int of_attach_node(struct device_node *np)
> >  {
> >         struct of_reconfig_data rd;
> > +       struct fwnode_handle *fwnode, *parent;
> >
> >         memset(&rd, 0, sizeof(rd));
> >         rd.dn =3D np;
> > @@ -246,6 +247,13 @@ int of_attach_node(struct device_node *np)
> >         mutex_unlock(&of_mutex);
> >
> >         of_reconfig_notify(OF_RECONFIG_ATTACH_NODE, &rd);
> > +       fwnode =3D of_fwnode_handle(np);
> > +       fwnode_for_each_parent_node(fwnode, parent)
> > +               if (parent->dev) {
> > +                       fw_devlink_pickup_dangling_consumers(fwnode, pa=
rent);
> > +                       fwnode_handle_put(parent);
> > +                       break;
> > +               }
>
> I'm clearly calling this in the wrong location. Please move this logic
> to __of_changeset_entry_notify() and for the case
> OF_RECONFIG_ATTACH_NODE. Haven't fully thought through the DETACH
> case, but it should work correctly for that case too. If not, I'll
> take care of that next.
>

I'll send out a RFC v2 with the code fixed up in a few minutes.

> -Saravana
>
> >
> >         return 0;
> >  }
> > diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
> > index 0d79070c5a70..4b3f697a90e8 100644
> > --- a/include/linux/fwnode.h
> > +++ b/include/linux/fwnode.h
> > @@ -220,6 +220,8 @@ int fwnode_link_add(struct fwnode_handle *con, stru=
ct fwnode_handle *sup,
> >                     u8 flags);
> >  void fwnode_links_purge(struct fwnode_handle *fwnode);
> >  void fw_devlink_purge_absent_suppliers(struct fwnode_handle *fwnode);
> > +void fw_devlink_pickup_dangling_consumers(struct fwnode_handle *child,
> > +                                         struct fwnode_handle *parent)=
;
> >  bool fw_devlink_is_strict(void);
> >
> >  #endif
> > --
> > 2.44.0.478.gd926399ef9-goog
> >

