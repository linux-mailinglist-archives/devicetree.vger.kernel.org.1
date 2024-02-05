Return-Path: <devicetree+bounces-38829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8263384A76A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFCDCB248F0
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050F3811E1;
	Mon,  5 Feb 2024 19:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="P7ilLlYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD6380BE6
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 19:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707162471; cv=none; b=nzgMy/jGaCs15QEWP4jkAvZLNYNDHqlEBXVWGWfCciMxJGE/fPsqQ3h68/flipx4G+nTfyffsdVLh+YOqrrwpU64adPq94uWb2XlWFWIR+gUEpAAOt/ehJN8pRY4JG4fLYKd0Ku1K8MRHWWQLc+Rb/vpmBWRfalageGOjheQmpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707162471; c=relaxed/simple;
	bh=x1kUU12PBdGOi64ugvIL/Dagv+ULJJFda5wctexET7A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qgtl03EU80Hy/nMwsvfHUPxOToAcbNXasO7ADp7XpQ+3B/6GAVVopRmGfbrA8VyB3//QtvylXIFx2h6wldxtUNqpWmemfReipGDg+W0RlsqgWOZS2/+f1kmIr5Lm77D0xoSh3zQZ/aJS6MXo/ncfOO9Ymqljz6GXJbcBcZtSloQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=P7ilLlYC; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-42a99dc9085so40271cf.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 11:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707162468; x=1707767268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DajBnD5fipiVsk/3bOr2Yb4lyBEIu0IM/yG+o6HIkoE=;
        b=P7ilLlYC/sTGGrRhMqVw4hpEyu5mrC58s5msbdyVPbpWrkPEn1ai5VbYd3hDXYNEFX
         jh3r7TvLwoM/tT6GROWHWPfC4HDf4iNpEIPOYR0Vk22+Lp+CRjgOs9F+6HQBLXPKxrLK
         V2IKnR4NGGIRkbyo9B9R8Zj3lU72+W/FKY0Yn2erAgaWv4YZY7t0Orw+OuP1CMfMTSqa
         +Zmc7pqHARVDTb5fkkONvh9enN0eINisJ3YWxPkX6o6bN2sR+4MrjazRQFvEKrwciOFG
         NUk2YnE2WT9JrQNR7SNFwopnrpWBjPRXsxLCsEdmssnCQYTjN6yOJTVScb43cI7JRjrI
         tXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707162468; x=1707767268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DajBnD5fipiVsk/3bOr2Yb4lyBEIu0IM/yG+o6HIkoE=;
        b=V6i/C3RB3MZl4y75+P3LNb+7EbVB4cKFVXIUgyC9GTm3bOnU3U560RiAZHhGZL7ywW
         zBvR+X6YDzKgCo4H/eNJnoZUOv0R9VZC0fqJeQEYdsu4euLz6g72NLGqOIEzANGy0roq
         hvE/bJfk87bGvHPHypJp251wMf0BYma/ptS/g7PyNkN4XRJAS5tHDH+P36W29ZFFJZoO
         YE1/3kiLu5G95Xi3D957KqFtz8jhtuODZFYU/MgdD6YD1rfIccSeAVsAp3Rad79nJbbA
         lpjNuOqOZPMhMRk8sjHigSUzcUWt+ktPF8UWe3cSTFFKHQEiE5xWiJjP17eM4T+ySUje
         3X6Q==
X-Gm-Message-State: AOJu0YxYUv0rTIDivvfkKF5wJwzFvubyJwvLnZu7jXAcC0QBU4UgrCJt
	Ds/MHxD/NtSaDYdNECyJ99mwGaHh7KhZB24Gk2L3PcbUwHEKtmHjC58nE8P4pRdw/Ap/zHHpEhK
	qBga+Z0F5UyGR1Emfg54Xety3EyAeSh0Wk2f6
X-Google-Smtp-Source: AGHT+IHjmRkCoUV1eDoxdgxxNnOBYAns/sW6lg7i3t+zXfXtt9vMPwnLJGciQqrg3kzrRBwb5xDX5eN0vhxnGnaqGY4=
X-Received: by 2002:ac8:5148:0:b0:42b:ff00:b789 with SMTP id
 h8-20020ac85148000000b0042bff00b789mr45226qtn.25.1707162467846; Mon, 05 Feb
 2024 11:47:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202101326.876070-1-saravanak@google.com> <20240202101326.876070-2-saravanak@google.com>
 <20240205173626.GA3657127-robh@kernel.org>
In-Reply-To: <20240205173626.GA3657127-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 5 Feb 2024 11:47:09 -0800
Message-ID: <CAGETcx-RhrhHJyXmG_37pQmJip9LwwasAv9jdSiEr-7_bweKrQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] of: property: Improve finding the consumer of a
 remote-endpoint property
To: Rob Herring <robh@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 5, 2024 at 9:36=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Feb 02, 2024 at 02:13:24AM -0800, Saravana Kannan wrote:
> > We have a more accurate function to find the right consumer of a
> > remote-endpoint property instead of searching for a parent with
> > compatible string property. So, use that instead. While at it, make the
> > code to find the consumer a bit more flexible and based on the property
> > being parsed.
> >
> > Fixes: f7514a663016 ("of: property: fw_devlink: Add support for remote-=
endpoint")
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  drivers/of/property.c | 52 +++++++++++++------------------------------
> >  1 file changed, 15 insertions(+), 37 deletions(-)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 641a40cf5cf3..ba374a1f2072 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1063,36 +1063,6 @@ of_fwnode_device_get_match_data(const struct fwn=
ode_handle *fwnode,
> >       return of_device_get_match_data(dev);
> >  }
> >
> > -static struct device_node *of_get_compat_node(struct device_node *np)
> > -{
> > -     of_node_get(np);
> > -
> > -     while (np) {
> > -             if (!of_device_is_available(np)) {
> > -                     of_node_put(np);
> > -                     np =3D NULL;
> > -             }
> > -
> > -             if (of_property_present(np, "compatible"))
> > -                     break;
> > -
> > -             np =3D of_get_next_parent(np);
> > -     }
> > -
> > -     return np;
> > -}
> > -
> > -static struct device_node *of_get_compat_node_parent(struct device_nod=
e *np)
> > -{
> > -     struct device_node *parent, *node;
> > -
> > -     parent =3D of_get_parent(np);
> > -     node =3D of_get_compat_node(parent);
> > -     of_node_put(parent);
> > -
> > -     return node;
> > -}
> > -
> >  static void of_link_to_phandle(struct device_node *con_np,
> >                             struct device_node *sup_np)
> >  {
> > @@ -1222,10 +1192,10 @@ static struct device_node *parse_##fname(struct=
 device_node *np,           \
> >   *  parse_prop.prop_name: Name of property holding a phandle value
> >   *  parse_prop.index: For properties holding a list of phandles, this =
is the
> >   *                 index into the list
> > + * @get_con_dev: If the consumer node containing the property is never=
 converted
> > + *            to a struct device, implement this ops so fw_devlink can=
 use it
> > + *            to find the true consumer.
> >   * @optional: Describes whether a supplier is mandatory or not
> > - * @node_not_dev: The consumer node containing the property is never c=
onverted
> > - *             to a struct device. Instead, parse ancestor nodes for t=
he
> > - *             compatible property to find a node corresponding to a d=
evice.
> >   *
> >   * Returns:
> >   * parse_prop() return values are
> > @@ -1236,8 +1206,8 @@ static struct device_node *parse_##fname(struct d=
evice_node *np,             \
> >  struct supplier_bindings {
> >       struct device_node *(*parse_prop)(struct device_node *np,
> >                                         const char *prop_name, int inde=
x);
> > +     struct device_node *(*get_con_dev)(struct device_node *np);
> >       bool optional;
> > -     bool node_not_dev;
> >  };
> >
> >  DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
> > @@ -1328,6 +1298,11 @@ static struct device_node *parse_interrupts(stru=
ct device_node *np,
> >       return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.n=
p;
> >  }
> >
> > +static struct device_node *get_remote_endpoint_dev(struct device_node =
*np)
> > +{
> > +     return to_of_node(fwnode_graph_get_port_parent(of_fwnode_handle(n=
p)));
>
> DT APIs shouldn't depend on fwnode APIs.

I get what you are saying, but is it an API though? It's a static
internal function that's eventually used by .add_link to add fwnode
links. Would it be better if I rolled this into two separate inline
code where this function is getting called from? I'm trying to avoid
duplicating the function that's already present in
fwnode_graph_get_port_parent(), but it also feels too specific an op
to introduce into drivers/of/property.c

How would you like me to handle this? I don't see a good option.

> Otherwise, this series looks good.

Thanks,
Saravana

