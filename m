Return-Path: <devicetree+bounces-38861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1589B84AB0D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 01:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93DCB1F2604C
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 00:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75AA1184E;
	Tue,  6 Feb 2024 00:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="A4wXJUQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3841361
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 00:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707178678; cv=none; b=PJY4apXdGTJu/h2bT6aQ9llpKMujd5swVrksBWmwkiaAHm4xbJXKivOx0FZFjxsRY1Uim6iQsto4ARywHWLmyt3UD9vLwgjVlb7b5izYfgamxUzbC6CWyz8Ta3UMwg8bmv7XS9Tl7ZtMhJXMFrhIO796hCUtw4uVh1zW+WtANWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707178678; c=relaxed/simple;
	bh=WrxHm09Mtz+7q/4m2zJUdlzEBXs2F5oTALba8ysJHVg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KUuZtS4s/TDEguH24vSUMQw62IApjfx6IQs4eKM9saw9hF0IXOZD7LzQ+HrcgwZ68JdpB/7sufbHq6tQq4NGGnjHCJ0AiN21PsLUeUwyL2hqi3jrsSHacQMB8hts+aEUeFvpi4IKrgpURqcwG9JO0Zh1XdGubu1fKd0v2U3i8Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=A4wXJUQd; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-42a7765511bso82751cf.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 16:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707178674; x=1707783474; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vFaMR70vcmSothWli1mpNNY4rmHLDUvTgtnR8kRnkY=;
        b=A4wXJUQdM1zaKSKyoWe3xQ1nQ05CET2HKNmQdfv6XUDM5aMze96yguRjMmT8Tc4ttL
         frSQ87rcR7Ob49CtPqjWsaU2z8AinEBjf7cyfxksCyIL2oxR4jP3Rv4g3fUdB47wE7y+
         AiqyJrIjV3wVvIiuO+NzB5g2jHRN1YibDTE0nQDqyaF5FLdmF1aFiCs+3T0Gnmm/tpQH
         c1YBvSDjZ7AgGVfYJVO/qDqN3UpaU6O2Kb6DA3rVl6k3+49iQytxNP6p/VPf8NbTHlU2
         FxQM80kr21alFcrlkIROYdranUQqiCFaeXBrp6A6QEY2gTv/muT/bAhMz9/3q12h5glX
         3Vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707178674; x=1707783474;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vFaMR70vcmSothWli1mpNNY4rmHLDUvTgtnR8kRnkY=;
        b=a1H7HPrkzPap97PaJPFy9Qpazc/VQxf6AD8CtJPWNz+E45NXkU90qY18uh16fHZvFf
         fmUf2kez4//PWctIGITPf43uiaEVGWIHYl50WWOA6dswK1Cy5tXvupTDtWTCOQ2LAtnB
         /ebDRH3d7UX2t75hlMDXXZ8aXQEliY8OjAxf0+hQml4gMs/CC1ag4ZxHtnVZ6sB+wM9c
         bf/u323zR+NRwcqMp+Waftea4WSSghcuX4k3z5bJ+IJOeI8KoXDF5zsQIKjxcS27Gtjs
         hmgJhToNLivPl+gV0wxJ49I5Z/0d5STkNQIdmEQyzV1xo+eTu/RwWhon1YuO9UdTttSw
         /Dqg==
X-Gm-Message-State: AOJu0YyqMF6y1DaIH4DlOfb4/pl0Ej6D3cq0GX3UsF1aTWpWL8ctXulx
	67teuS1itl+hI5DCQW6H0GYfwRbeG4IFlJ1R1gT6z0N280sioDX6Kuqc4nGjBONNy8VGI96fExp
	jhL0HJGU4dLeNUuwiP4y837zWu1sm74pCk9Fz
X-Google-Smtp-Source: AGHT+IEduHzdl7BXZsnHKuPmvmt2jt4hz+aRpLCIHsj7CJUD+0dfmu1d0h/I7gUMUYFzji1PLN8vYU/4/91scETMJpc=
X-Received: by 2002:ac8:5a91:0:b0:42a:ae64:7759 with SMTP id
 c17-20020ac85a91000000b0042aae647759mr127778qtc.2.1707178673531; Mon, 05 Feb
 2024 16:17:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202101326.876070-1-saravanak@google.com> <20240202101326.876070-2-saravanak@google.com>
 <20240205173626.GA3657127-robh@kernel.org> <CAGETcx-RhrhHJyXmG_37pQmJip9LwwasAv9jdSiEr-7_bweKrQ@mail.gmail.com>
In-Reply-To: <CAGETcx-RhrhHJyXmG_37pQmJip9LwwasAv9jdSiEr-7_bweKrQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 5 Feb 2024 16:17:16 -0800
Message-ID: <CAGETcx8-kkzp8FEvxb=gGfWS8BUKpR-B+0+o-OWmpd6k=E1=mA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] of: property: Improve finding the consumer of a
 remote-endpoint property
To: Rob Herring <robh@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 5, 2024 at 11:47=E2=80=AFAM Saravana Kannan <saravanak@google.c=
om> wrote:
>
> On Mon, Feb 5, 2024 at 9:36=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
> >
> > On Fri, Feb 02, 2024 at 02:13:24AM -0800, Saravana Kannan wrote:
> > > We have a more accurate function to find the right consumer of a
> > > remote-endpoint property instead of searching for a parent with
> > > compatible string property. So, use that instead. While at it, make t=
he
> > > code to find the consumer a bit more flexible and based on the proper=
ty
> > > being parsed.
> > >
> > > Fixes: f7514a663016 ("of: property: fw_devlink: Add support for remot=
e-endpoint")
> > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > ---
> > >  drivers/of/property.c | 52 +++++++++++++----------------------------=
--
> > >  1 file changed, 15 insertions(+), 37 deletions(-)
> > >
> > > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > > index 641a40cf5cf3..ba374a1f2072 100644
> > > --- a/drivers/of/property.c
> > > +++ b/drivers/of/property.c
> > > @@ -1063,36 +1063,6 @@ of_fwnode_device_get_match_data(const struct f=
wnode_handle *fwnode,
> > >       return of_device_get_match_data(dev);
> > >  }
> > >
> > > -static struct device_node *of_get_compat_node(struct device_node *np=
)
> > > -{
> > > -     of_node_get(np);
> > > -
> > > -     while (np) {
> > > -             if (!of_device_is_available(np)) {
> > > -                     of_node_put(np);
> > > -                     np =3D NULL;
> > > -             }
> > > -
> > > -             if (of_property_present(np, "compatible"))
> > > -                     break;
> > > -
> > > -             np =3D of_get_next_parent(np);
> > > -     }
> > > -
> > > -     return np;
> > > -}
> > > -
> > > -static struct device_node *of_get_compat_node_parent(struct device_n=
ode *np)
> > > -{
> > > -     struct device_node *parent, *node;
> > > -
> > > -     parent =3D of_get_parent(np);
> > > -     node =3D of_get_compat_node(parent);
> > > -     of_node_put(parent);
> > > -
> > > -     return node;
> > > -}
> > > -
> > >  static void of_link_to_phandle(struct device_node *con_np,
> > >                             struct device_node *sup_np)
> > >  {
> > > @@ -1222,10 +1192,10 @@ static struct device_node *parse_##fname(stru=
ct device_node *np,           \
> > >   *  parse_prop.prop_name: Name of property holding a phandle value
> > >   *  parse_prop.index: For properties holding a list of phandles, thi=
s is the
> > >   *                 index into the list
> > > + * @get_con_dev: If the consumer node containing the property is nev=
er converted
> > > + *            to a struct device, implement this ops so fw_devlink c=
an use it
> > > + *            to find the true consumer.
> > >   * @optional: Describes whether a supplier is mandatory or not
> > > - * @node_not_dev: The consumer node containing the property is never=
 converted
> > > - *             to a struct device. Instead, parse ancestor nodes for=
 the
> > > - *             compatible property to find a node corresponding to a=
 device.
> > >   *
> > >   * Returns:
> > >   * parse_prop() return values are
> > > @@ -1236,8 +1206,8 @@ static struct device_node *parse_##fname(struct=
 device_node *np,             \
> > >  struct supplier_bindings {
> > >       struct device_node *(*parse_prop)(struct device_node *np,
> > >                                         const char *prop_name, int in=
dex);
> > > +     struct device_node *(*get_con_dev)(struct device_node *np);
> > >       bool optional;
> > > -     bool node_not_dev;
> > >  };
> > >
> > >  DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
> > > @@ -1328,6 +1298,11 @@ static struct device_node *parse_interrupts(st=
ruct device_node *np,
> > >       return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args=
.np;
> > >  }
> > >
> > > +static struct device_node *get_remote_endpoint_dev(struct device_nod=
e *np)
> > > +{
> > > +     return to_of_node(fwnode_graph_get_port_parent(of_fwnode_handle=
(np)));
> >
> > DT APIs shouldn't depend on fwnode APIs.
>
> I get what you are saying, but is it an API though? It's a static
> internal function that's eventually used by .add_link to add fwnode
> links. Would it be better if I rolled this into two separate inline
> code where this function is getting called from? I'm trying to avoid
> duplicating the function that's already present in
> fwnode_graph_get_port_parent(), but it also feels too specific an op
> to introduce into drivers/of/property.c
>
> How would you like me to handle this? I don't see a good option.

Nevermind, there's already of_graph_get_port_parent() that does
exactly the same as fwnode_graph_get_port_parent(). I'll just use
that.

-Saravana

