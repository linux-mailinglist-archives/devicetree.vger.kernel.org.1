Return-Path: <devicetree+bounces-100294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E60196D1B0
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:16:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA0081F2A9DD
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC31C194C9D;
	Thu,  5 Sep 2024 08:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hSnyJUsb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B61993B2
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725523894; cv=none; b=Ignw5elnMbi7Xjz+ACJHPqMzV4megWJYA33a/C3ae8kRlm5Sj1NVHM22fEDNsf7pK44tdoDmKS9pYIw8Qx0s4+HGI2GCJ+h03bHkKzBOqrPE7M/H3ynOzL8Nw6SAzDyNDoTefDzwLhrqNvH6Ldg1PuQgKCQlDqjIBroiYYk7+08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725523894; c=relaxed/simple;
	bh=F4EbLyf6kkAeGukY+adQL1kHBSivOSuwUA1FnPkwLr8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ceB7pcfVsTNsSO2sk33YhJQMv0TSuafD4aJ5cuU+DGx/qhxmq3k6LhTany97PCacrBCdRQos1VyV3jdlT2RLyotPWU3gAq6gJn9V4R/ps1upscg6Ti9kK2KfdtTwmkjNIk7Q8waxdWKuLB5/c4iHT/MChF//QvMw6D/lbQbPmjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hSnyJUsb; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f51b67e16dso5060771fa.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725523891; x=1726128691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqxrNHgbeGAL4h4J6aJ4gyN3+tB2yX3dGNtW99El5js=;
        b=hSnyJUsbK5rFp5pga6NLRt8f31DufTzNirIiUlRWClp4JK/sq+w/Xjva9NpfHS7SIZ
         1bTDsXYgQ1O6Hh/Qd+y7M4YdvZOohwaDxEautCUoEZp91jxeywCoxSToqtSFbcpFQuaE
         NKyFUp4tbb6IM1oQYZJ1ReXBCbgrlrzxU8MLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725523891; x=1726128691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RqxrNHgbeGAL4h4J6aJ4gyN3+tB2yX3dGNtW99El5js=;
        b=Ccw9u6oIC/JOVf2VpkqjqtBdjk0MNQSvmN1NylAhagn/o9paInSzoBf3kNHLByST58
         D0CEoF7Fdi62ffoU5+olcQCEduExzxLmeZ4Bv+D4OjIMIdtm4xLt9V6pybaxq6RdspAu
         Mf4rgdu1+IaUOnYUulyhW/74x1i8xZt+j8eUaQx/2i0R/9o386ZSEpG5u5Ts4vkRNu8d
         8lps7Csw52aFTmCSdDuY6EEieXST5oVF503uIcefRveAZAquQuht0Py2xew0oFWZM+fp
         Gi5sblEVEn57mrcn9xAvzZQUR4lQ1eMeoxGCnxN8D3SQIVow35xknxUpG20llJqDz09R
         PLEg==
X-Forwarded-Encrypted: i=1; AJvYcCVBpJs9DCGF0aPwfty9LOmCKQNpeVAbV18O7mLjaQnr7KVbMy3pwynCXfVfpLA4QUfwGNyJHrLw3RW3@vger.kernel.org
X-Gm-Message-State: AOJu0YyIVLHMq6360Fry/GV31GNzaywull9JGhP8b/1Mkvg28ZVaCPRr
	kpyOPMag3K6bJsqozp57WRomrGJs5kZnEwg3CWVCI3cgP8oJb+U+aXVVhgAUCHDDAPUnZflSKgm
	Fg58eeevnn9BpuFSgB/mQM37itgl/Z4JH2rR6
X-Google-Smtp-Source: AGHT+IHgBQxVW+6mWOLd4xU/v/uqA2bXrlgX+qclLv/VfI8suvKUwIZp0O6ejzR9OBlUf64DSkNg9Mtn8N7ARtFnYaI=
X-Received: by 2002:a2e:a9a9:0:b0:2f4:9fb:5905 with SMTP id
 38308e7fff4ca-2f64d38cf3fmr53482011fa.0.1725523891012; Thu, 05 Sep 2024
 01:11:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904090016.2841572-1-wenst@chromium.org> <20240904090016.2841572-4-wenst@chromium.org>
 <ZthcBpx8WFIvsrJj@smile.fi.intel.com> <ZthdU6UGlM75GJVj@smile.fi.intel.com>
In-Reply-To: <ZthdU6UGlM75GJVj@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 5 Sep 2024 16:11:18 +0800
Message-ID: <CAGXv+5Ew23BGgw6XpikBtAm+wQiOjFDyGuCSpt_GsGhoAwD22A@mail.gmail.com>
Subject: Re: [PATCH v6 03/12] regulator: Move OF-specific regulator lookup
 code to of_regulator.c
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2024 at 9:16=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Sep 04, 2024 at 04:09:26PM +0300, Andy Shevchenko wrote:
> > On Wed, Sep 04, 2024 at 05:00:05PM +0800, Chen-Yu Tsai wrote:
>
> > > +static struct device_node *of_get_child_regulator(struct device_node=
 *parent,
> > > +                                             const char *prop_name)
> > > +{
> > > +   struct device_node *regnode =3D NULL;
>
> > > +   struct device_node *child =3D NULL;
>
> Btw, redundant assignment here, as child will be assigned anyway AFAIR.
>
> > > +   for_each_child_of_node(parent, child) {
> >
> > > +           regnode =3D of_parse_phandle(child, prop_name, 0);
> > > +           if (!regnode) {
> > > +                   regnode =3D of_get_child_regulator(child, prop_na=
me);
> > > +                   if (regnode)
> > > +                           goto err_node_put;
> > > +           } else {
> > > +                   goto err_node_put;
> > > +           }
> >
> > I know this is just a move of the existing code, but consider negating =
the
> > conditional and have something like
> >
> >               regnode =3D of_parse_phandle(child, prop_name, 0);
> >               if (regnode)
> >                       goto err_node_put;
> >
> >               regnode =3D of_get_child_regulator(child, prop_name);
> >               if (regnode)
> >                       goto err_node_put;
> >

Looks like Mark already merged this one. I'll send extra patches to clean
this up later.

ChenYu

> > > +   }
> > > +   return NULL;
> > > +
> > > +err_node_put:
> > > +   of_node_put(child);
> > > +   return regnode;
> > > +}
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

