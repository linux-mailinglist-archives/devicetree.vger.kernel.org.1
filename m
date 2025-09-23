Return-Path: <devicetree+bounces-220429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CCBB95FC3
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3712819C37D6
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 13:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFA7327A01;
	Tue, 23 Sep 2025 13:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MVDI0s9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9C0326D60
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 13:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758633428; cv=none; b=sQ6TIgyGOCQatuEJ2V7OpBwu7q+eau+vAfpGRg5n1L9HUxVCGEnt55KbZku2KUKbnq13a8lbdRI3R6y2rsSs7Xsu7p2/0ca+GcpSZt4xA42clNqvt6Qcg4PMfjPcwI86ZLeihkxSybyAGyHJ9I+tLrDPhm6uitxEGs7G6L5cdnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758633428; c=relaxed/simple;
	bh=vLNOpzetH/Y5LAPNxv2ClxExpatuyCXuu8pR0a+rhFg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V1/b0+rbaUJwgcWoj26Eqs3DUb04xi6DMj6usriJYX+VYNVuH0eij6MO+GG7I9izCGlr2rJIxIvNkarebVFtiTzwOfnBPDb0Bh+UKKfcumzZjpzxPnMT/W0cNwCSX92tBnSZ8dRYzOiPU5ldxYo3xeSATmTqvzYkwFlAmuyD2GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MVDI0s9V; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-626190c9c1eso1881126eaf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 06:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758633425; x=1759238225; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2WPlGw6ip7PYA/9tuI3OZb0vgkUfUYvz/dn9O4WHM8=;
        b=MVDI0s9VR5W1ZBAo7u3H8+IS/P7Kl3XF1zwWEicTJV2eh80Q7iu51/7MTyTTVSvbX9
         oMgHvhNDAXAj/Ym+5RbNdlO5tujFzjykhUn8RQQzJ4i5lHGI/PDhMRtPY6/tR0/1m3Ps
         gnL8hpyufO/X6PO+PMxOBHd0CLktRtll+nu9sbSw2K8dnSoLzWTYhlw4hnFkZvWtqJ1p
         mmHGaDNCQ+ZZdSWMpH0U45/JvXGtzuA174ESfDd4LGCqmXiXCfcwwrw9Ya7+KsaWbGdZ
         SXRYCSKA2zLX9DN0RIsEGU8Q0otJTx5grO6kob4ldboENmpAjk5jw369l0GELidn28So
         WkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758633425; x=1759238225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f2WPlGw6ip7PYA/9tuI3OZb0vgkUfUYvz/dn9O4WHM8=;
        b=S36gEYnusklWsQ/jkpYJBu/wQrhR58ATQoQZ+0DCdh4S8k9/1iA/alLS1j3jR2OkWr
         HLmjoNIg3oG1oC1o/KMtOEGHvBqmWdnTKpt1u+378bI/WzXt00unRvC18RM8pYwGRV8N
         VAnt7ObhO0+Kp5aSFTo5vXGJ98XnCqIDt4K7Mt86IvPai7lF1kUhQezYDde130O0HGCT
         yutFixn1VrhIjR2dMY9Qm6NvRiAbMHhBwbLuasrWnsFheVhd5I9uKnihw/IkfBsMcAdf
         0bYqo1tCylSlvHaDh1ZenGJzPwHdiiR4mIs22FO2c9PcMiuhrLQBOiAbDE8BFyQi+tCS
         R2EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEWF4AnWKsd3HUEf9wZ+wX8MWSiT8Dla7D4cKpfozDgLxcyCpW8ntXrdLjFp1/1bp7PKE0aMayC33m@vger.kernel.org
X-Gm-Message-State: AOJu0YwNK0x1SusoTMj2KmOTlrecDtyc0CR1xr3uFLN7h6MP71WQIIJy
	RUGj8BhEO4MxjEjdqXzarAUv5rOcDzpRefqj3KaJ4eqqCt2Cd2Vs30FfIZHAXQl+fhcaEkB67px
	p2qW0LWNLcOvEF8mfzTkcVf8xY1+EvNI=
X-Gm-Gg: ASbGncu6IOUZjB7WrIKDNU0ILUsAEB734dNIZVr6ZDli6oTVPuNgJ8tLo+EIMgwDzBF
	5SgMHksFEPKPN7WaoXVS+fhF8/KUuSTXOebKeYXt5xop0wVgNfgqiGoorjjuKGYCKHSpPY5FH6x
	rYLzhZYfxeVEuZhqYZezk8ZFC/nlyNaa4KY6BWxrinKCPPC/n85X7msSMVHZJ1Og9J5I5AU9mJ9
	1x81rDAdnYF1Dp/IlA=
X-Google-Smtp-Source: AGHT+IG8OdD4UhyFmVnw+1B4Hou6a7FTFOoQAxaWAXHib0ERshZVgibiY61D/fwCONr+Awn82RcI18YLm8tvlRhZT7k=
X-Received: by 2002:a05:6808:3194:b0:43d:2dc4:9d16 with SMTP id
 5614622812f47-43f2d355ee6mr1166642b6e.9.1758633425437; Tue, 23 Sep 2025
 06:17:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822021217.1598-1-jjian.zhou@mediatek.com>
 <CAGXv+5F-L2+4PGixx7OG2+vp2yXc_2885yMzqWtkQDwhxVAPxw@mail.gmail.com>
 <CABb+yY3N2=01yKJon25_6_vmihj09H=T9pLwzdGPrqY5h=hRFQ@mail.gmail.com>
 <5789241.GXAFRqVoOG@workhorse> <CABb+yY2Ay+KqviJvOQC8X8kfzJN6-fQT04A+TCJAkLnWx+XwZg@mail.gmail.com>
 <a9dd348fd7df95ebd5ad9cc58d57b588a18ccc9d.camel@mediatek.com>
In-Reply-To: <a9dd348fd7df95ebd5ad9cc58d57b588a18ccc9d.camel@mediatek.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 23 Sep 2025 08:16:53 -0500
X-Gm-Features: AS18NWCOZv9Pv2u_322Xt4q4LUafUyRkH0j9o_POX7ZdoLtYf5wU82ru76Msenc
Message-ID: <CABb+yY2bYh70A=n9+XBBqthjngZP2D8ebFje-F9TN7K0c+fmMA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mailbox: mediatek: Add mtk-vcp-mailbox driver
To: =?UTF-8?B?SmppYW4gWmhvdSAo5ZGo5bu6KQ==?= <Jjian.Zhou@mediatek.com>
Cc: "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wenst@chromium.org" <wenst@chromium.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"robh@kernel.org" <robh@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 22, 2025 at 2:17=E2=80=AFAM Jjian Zhou (=E5=91=A8=E5=BB=BA) <Jj=
ian.Zhou@mediatek.com> wrote:
>

> > > > > >
> > > > > > > +       void __iomem *base;
> > > > > > > +       struct device *dev;
> > > > > > > +       struct mbox_controller mbox;
> > > > > > > +       const struct mtk_vcp_mbox_cfg *cfg;
> > > > > > > +       struct mtk_ipi_info ipi_recv;
> > > > > >
> > > > > > Maybe also have "struct mbox_chan chan[1]; " so that you
> > > > > > don't have to
> > > > > > allocate one during the probe.
> > > > > > Also if you have  "struct mbox_controller mbox;" as the first
> > > > > > member,
> > > > > > you could simply typecast that to get this structure.
> > > > > > Something like "struct mpfs_mbox" in mailbox-mpfs.c
> > > > >
> > > > > I read somewhere that this way of subclassing is not
> > > > > recommended.
> > > > > Instead the base class should explicitly not be the first
> > > > > member.
> > > > > And then container_of() should be used.
> > > > >
> > > > > I don't remember where I read this though. But I think the
> > > > > explicit
> > > > > container_of() is easier for understanding the intent.
> > > > >
> > > >
> > > > And how does container_of() work ? :)
> > > > typcasting the first member to its parent is the simplest form of
> > > > container_of.
> > > >
> > > > -j
> > > >
> > > >
> > >
> > > Which is why it's completely equivalent and since code is supposed
> > > to communicate meaning to humans, container_of should be used.
> > >
> >
> > Nobody is suggesting typecasting cfg, dev or anything else.
> > Typecasting between mailbox controllers is fine and arguably easier
> > on
> > the eyes than using a container_of.
> >
> > -j
>
> OK. How about:
> struct mtk_vcp_mbox *priv =3D (struct mtk_vcp_mbox *)chan->con_priv;
>
You don't need to typecast a void *. So simply do
    struct mtk_vcp_mbox *priv =3D chan->con_priv;

