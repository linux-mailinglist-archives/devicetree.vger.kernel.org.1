Return-Path: <devicetree+bounces-52602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F88A887681
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 02:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86C7F1F2277C
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 01:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A3FA31;
	Sat, 23 Mar 2024 01:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hk+hKWJ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97D2523A
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 01:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711158876; cv=none; b=t3nRBghlAvlaob0fzDLQIoYCn5pEp2x7vaKQlmedOnE0CTvA+oSpO+dKcF96RpIjmx8Z0VaDYRXnXDeIWwdceEdPXnMPyYeF0sOYATIm2AJi660fl/+9v5/aDI84K9zkPrwt3C+rhP1T8cjIkIBB4VqeBtXOLI79lAA324OinYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711158876; c=relaxed/simple;
	bh=MRVrKLMuWBszjs8xV63cU/2mn4oUBSIImMtBXLzstns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sfJJ2c9KcHuTP2QiI9UF7BuzP2IO5SRuHwYsoj6c5F0UTxo8rYb4k3nHd0VJQB2AFsrE3hBcxotlvyyeFlwcsY65V+33qZZ7TAOUGa1q9fgKzzwAfRlJWfr7BBzwkDlzEz9E5w3oJ85J2/Gqkydud8aKGZnYZhK+pIBUAqhyPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hk+hKWJ9; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-431347c6c99so76461cf.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 18:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711158873; x=1711763673; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ugca23DDk1bNHPUabaB8d0i9NjKoaai/ycUEgKQclnI=;
        b=hk+hKWJ9M/fJI9tImEsoYU4ZGd5SzkHC2XUtma2s1bkoNjxKT+2Q4wzKVvYHY/4Loo
         q/R3/BI2Ss9N9EHaiANgKdxPAeFIGM0HkJx1wmHmd4EgeFMFqcAdw4KfPdun8C78FAjR
         ODRHG2kLgsLEd1FnuT8GS16HjBI3Fm2t8AGfih0ZrqgGH2otZlt46aLd1oJBIko0W8+E
         07k59mxzt3QfLNGh4oQ5oOWT9ZQsFdxJ228l2hhz1y0K+Fu/iJ1hZ5SPGrELsKt7LN7v
         i0Bn7oFXv+yuYPPf1PULjvTahvD1tX6PTRi02d3eIJYf4NBAWQZeMMdhbTPxjT4FWcn/
         SnvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711158873; x=1711763673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ugca23DDk1bNHPUabaB8d0i9NjKoaai/ycUEgKQclnI=;
        b=kFkuwPrXpuD5f3aGDzSrjSyrkqyK3ok9detLckkPz+zF9Waiag9frIF/ul0y+R/JWF
         nDFzIVyIX1fl87CzKL/IRrRHAfROWM5LU0NfZ6wrea2VMEZ4O4VS5SNm/vf6/VQMTq00
         BY/eDb5btMlV8HGyth13LQI54CIRIqpiOmGbe0qTy4B+jCJnABuQwpxvaemucgzBpA0k
         qB5QUXj5Pi5TnOohsQ7dlkKemB7XKAqbtkaZBkNwWimgFHpEaIZw1W6ksj4mkvkU2d1m
         xxYjimPlLmq/694FifKjKFsa9lXHueyaWkWhPErQyx6A7rsQqIFadQ/ddKAgDtUPrwiK
         a3xQ==
X-Forwarded-Encrypted: i=1; AJvYcCUg6Dqqb31P0IOTeYSPmlwnP9R7p7ELU0ZPKcgAySRojjh7yITMlZyP8HPpHskpmwsGI0zT9RNev6RTq5qhpLj0oL2CIFZjTASjQA==
X-Gm-Message-State: AOJu0Yxq0JVFXKkdBFow+mGug328PSfcsn20BxnH4GoyV65YJGR+ksXr
	sTIAbZtkOZkr8uz7XFf4iwQ196rEmWItSoCobWlAwf2kVb+UivyVh1gPc3VMVgA9K8SdW39GXUv
	hfKd5SvJOsxo+lDjl+A/mnXvfxL9at4xXtE+G
X-Google-Smtp-Source: AGHT+IFzIBb+r7DzCNc906s02/94DbigytEFLGsYFND2xTBDot/ogrkvddnbmb3E2U6uD+PDlPlePgNL+od6ESHOj7w=
X-Received: by 2002:a05:622a:92:b0:430:a74f:b45e with SMTP id
 o18-20020a05622a009200b00430a74fb45emr784631qtw.17.1711158873468; Fri, 22 Mar
 2024 18:54:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240224052436.3552333-1-saravanak@google.com> <ZfvN5jDrftG-YRG4@titan>
In-Reply-To: <ZfvN5jDrftG-YRG4@titan>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 22 Mar 2024 18:53:57 -0700
Message-ID: <CAGETcx8+vw0Vr0NWzjOAvxAZ07M4U7BWPAgO9avCngW0-9e_kA@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix stupid bug in
 remote-endpoint parsing
To: John Watts <contact@jookia.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel-team@android.com, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 20, 2024 at 11:05=E2=80=AFPM John Watts <contact@jookia.org> wr=
ote:
>
> On Fri, Feb 23, 2024 at 09:24:35PM -0800, Saravana Kannan wrote:
> > Introduced a stupid bug in commit 782bfd03c3ae ("of: property: Improve
> > finding the supplier of a remote-endpoint property") due to a last minu=
te
> > incorrect edit of "index !=3D0" into "!index". This patch fixes it to b=
e
> > "index > 0" to match the comment right next to it.
> >
> > Reported-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > Link: https://lore.kernel.org/lkml/20240223171849.10f9901d@booty/
> > Fixes: 782bfd03c3ae ("of: property: Improve finding the supplier of a r=
emote-endpoint property")
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> > Using Link: instead of Closes: because Luca reported two separate issue=
s.
> >
> > Sorry about introducing a stupid bug in an -rcX Rob.
> >
> > -Saravana
>
> Hi there,
>
> Could this be reverted? It breaks my audio-graph-card2 setup:
>
> [   17.116290] platform 2034000.i2s: deferred probe pending: platform: wa=
it for supplier /sound/multi
> [   17.125370] platform test_codec: deferred probe pending: platform: wai=
t for supplier /sound/multi
> [   17.134257] platform sound: deferred probe pending: asoc-audio-graph-c=
ard2: parse error

Hmmm.... cycle detection should work here and not enforce probe
ordering. I'd appreciate help with debugging that. Let me look at it
on Monday. Can you enabled all the debug logs in drivers/base/core.c
and tell me what cycle detection is telling about these nodes?

But the better fix would be to use the new "post-init-providers"
property. See below.

>
> / {
>         ...
>
>
>         test_codec {
>                 compatible =3D "test-codec";
>                 prefix =3D "Test codec";
>                 #sound-dai-cells =3D <0>;

post-init-provider =3D <&multi>;

Right now there's a cyclic dependency between test_codec and multi and
this tells the kernel that test codec needs to probe first.

Similar additions to the other nodes blocked on multi.

Thanks,
Saravana

>                 port {
>                         test_ep: endpoint {
>                                 remote-endpoint =3D <&card_ep_2>;
>                         };
>                 };
>         };
>
>         sound {
>                 compatible =3D "audio-graph-card2";
>                 label =3D "CS5368";
>                 links =3D <&i2s2_port>;
>                 multi {
>                         #address-cells =3D <1>;
>                         #size-cells =3D <0>;
>                         convert-channels =3D <16>;
>                         port@0 {
>                                 reg =3D <0>;
>                                 card_ep_0: endpoint {
>                                         remote-endpoint =3D <&i2s2_ep>;
>                                 };
>                         };
>                         //port@1 {
>                         //      reg =3D <1>;
>                         //      card_ep_1: endpoint {
>                         //              remote-endpoint =3D <&cs5368_ep>;
>                         //      };
>                         //};
>                         port@1 {
>                                 reg =3D <1>;
>                                 card_ep_2: endpoint {
>                                         remote-endpoint =3D <&test_ep>;
>                                 };
>                         };
>                 };
>         };
> };
>
>
> &i2s2 {
>         pinctrl-0 =3D <&i2s2_pins>, <&i2s2_din_pins>;
>         pinctrl-names =3D "default";
>         status =3D "okay";
>         i2s2_port: port {
>                 i2s2_ep: endpoint {
>                         format =3D "dsp_a";
>                         bitclock-master;
>                         frame-master;
>                         remote-endpoint =3D <&card_ep_0>;
>                 };
>         };
> };
>
> John.

