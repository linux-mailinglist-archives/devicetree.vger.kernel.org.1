Return-Path: <devicetree+bounces-72026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DB48FA91A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 06:19:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88DE1289BBF
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 04:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFEE13D62F;
	Tue,  4 Jun 2024 04:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GLwuM768"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883428C1D
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 04:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717474748; cv=none; b=GizwRcu4TqRwRMtcCNH+quhsbPDFSMTmzf2+zU/iIw6P7tdRIfp+H2iXYsLrUU1ecIYtLdK/fFh/b6Bx+d1tWE+oSOkCelll8LkE7jxGuW4OT1tsE320FHpFwVJTfxpushb6tUPPwyKGjGKUNn8pJn6BXEn1LHw2f9LXnp7JmxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717474748; c=relaxed/simple;
	bh=MCXvmpJgnLDVER7GxypHg9B08dd41zu2LnHwh8cUFWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mpgEwKNnh1PCytzjGouZJWsl2gMvbr5gJkltZ327w37bNH9SnLlp3CONtiFt9tcJ1NmcDtyoeiCJmILMMugJncH5Ud2W7EjfaVwsSas+muuAdUAUMKUgc4fBxc9ScO9J3Hi1UEcietTXDwJs1yVTeKS0YlJxBXq+HjcCcsLAN/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GLwuM768; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52b938587a4so2603961e87.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 21:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717474744; x=1718079544; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N61SX3AAhMaQCzElmg/wZ9mbz5RbGf4AjlXkFfrh07w=;
        b=GLwuM7687NU+c9eNImnoidAqnT1LcNHffDdvnskWT4AbAC3Y/qoqx6shDMaL4TqBnS
         oHis/jE4tV9314g60EyLDyRmFPT3wQgpJL7YhhF4yKMDdPWLQujtTIv/zdBLRpZCgIuM
         jYula5CtHrJvjY/7GCr1uIePA7GdJjAzxW1Fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717474744; x=1718079544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N61SX3AAhMaQCzElmg/wZ9mbz5RbGf4AjlXkFfrh07w=;
        b=kz18lAqMrG515mrQdhj2NWEDnsCTMrBkiJCNPEvWLwncuTSU+rJ4eLK95IdXvchD8r
         JiQtzj2UgO1cXdL36G6miw5qvqrdAoaxSky9FII/kT3Q7qXbjaST9mj06kCJBNCfPCzt
         4WV5vCeSopkgjx34gxdhSnN2Oyy3yCKQ/8BhHur5TamT99YMXyni4ThLwoZcr7ELlHwh
         WQnQ51WQV+BiUeG1gcnn6n8VXZPcHeiqgAz+F0slCVOYm5ceipodgAsF1MUgz/p1KtFf
         6I8XQGFRMvevWNOmJ8+h80R1TeFc9uVtvhIJ/CowZ/CwX5tmAf1/6ozm2+iNtVNXCvZS
         lasQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVZK2ETsIqnFZyY11EfFka2bscAIiAC0yDJClZtRW4mDdnbHbz3kXycXXGRcWnjVyTbw30Z97xdobp8M3sLPVKgZt/SHYbPG3eiw==
X-Gm-Message-State: AOJu0YyxzvVbQisPsMerBcy0XQN/caWuyE2nud60wFmkVDJo03p7mgWB
	cU5zlspPs0lJmWHLTogl1TT+MJbs95xJlXsMRSU3igIjODVGziT8IIOOqkNc0w03YN1qk/JKwwo
	xCp7TtETU1l1A7eN/BvTkpq2waA/Ad2yQqX5j
X-Google-Smtp-Source: AGHT+IHX+8hzvDI7P5tkl2A/qlQQgMeILMWvYV42TUTaHfCptFD9ZuhOs/nuU1Lg8mOfQm/ry468a30QNnvnUyOmxiU=
X-Received: by 2002:a19:9107:0:b0:51e:2282:63cf with SMTP id
 2adb3069b0e04-52b896c494dmr5934420e87.45.1717474743646; Mon, 03 Jun 2024
 21:19:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-4-wenst@chromium.org>
 <cc5847a486a760921375f069a4f65cd29453a624.camel@imgtec.com>
In-Reply-To: <cc5847a486a760921375f069a4f65cd29453a624.camel@imgtec.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 4 Jun 2024 12:18:52 +0800
Message-ID: <CAGXv+5FBqcXjTc+DO8VQierzcxTYhyNxpw+AuuB4U1H_Xo6wPg@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: gpu: powervr-rogue: Add MediaTek MT8173 GPU
To: Frank Binns <Frank.Binns@imgtec.com>
Cc: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	Matt Coster <Matt.Coster@imgtec.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"aford173@gmail.com" <aford173@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"mripard@kernel.org" <mripard@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "airlied@gmail.com" <airlied@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 9:37=E2=80=AFPM Frank Binns <Frank.Binns@imgtec.com=
> wrote:
>
> Hi ChenYu,
>
> On Thu, 2024-05-30 at 16:35 +0800, Chen-Yu Tsai wrote:
> > The MediaTek MT8173 comes with a PowerVR Rogue GX6250, which is one
> > of the Series6XT GPUs, another sub-family of the Rogue family.
>
> I've added Adam Ford who sent out some DT related patches [1] for the Ren=
esas
> variant of GX6250 and the GX6650 (another Series6XT GPU).
>
> >
> > This was part of the very first few versions of the PowerVR submission,
> > but was later dropped. The compatible string has been updated to follow
> > the new naming scheme adopted for the AXE series.
> >
> > In a previous iteration of the PowerVR binding submission [1], the
> > number of clocks required for the 6XT family was mentioned to be
> > always 3. This is also reflected here.
> >
> > [1] https://lore.kernel.org/dri-devel/6eeccb26e09aad67fb30ffcd523c793a4=
3c79c2a.camel@imgtec.com/
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  .../bindings/gpu/img,powervr-rogue.yaml       | 24 +++++++++++++++----
> >  1 file changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.ya=
ml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > index 256e252f8087..48aa205b66b4 100644
> > --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > @@ -12,10 +12,17 @@ maintainers:
> >
> >  properties:
> >    compatible:
> > -    items:
> > -      - enum:
> > -          - ti,am62-gpu
> > -      - const: img,img-axe # IMG AXE GPU model/revision is fully disco=
verable
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - mediatek,mt8173-gpu
> > +          # PowerVR 6XT GPU model/revision is fully discoverable
> > +          - const: img,powervr-6xt
> > +      - items:
> > +          - enum:
> > +              - ti,am62-gpu
> > +          # IMG AXE GPU model/revision is fully discoverable
> > +          - const: img,img-axe
>
> The Series6XT GPU models have differing numbers of power domains (either =
2, 4 or
> 5). Whereas, the AXE GPUs have a single power domain, so I assume there s=
hould
> be a related change here.
>
> The GX6250 has two power domains (lets call them A and B). There's a cons=
traint
> that if domain B is powered then domain A must also be powered.
>
> In patch 6 [2] it's setting the power domain to MT8173_POWER_DOMAIN_MFG, =
which I
> believe corresponds to power domain B. I assume this works because the MT=
K power
> controller driver is encoding the constraint above, meaning that when we =
disable
> or enable MT8173_POWER_DOMAIN_MFG it's also disabling/enabling MT8173_POW=
ER_DOMA
> IN_MFG_2D (domain A).

It could also be that the power domains are split in the glue layer and the=
re
is some sequencing handled there. I'll reach out to MediaTek to see if they
can dig up some design specifics.

I assume you would like to see the separate power domains properly modeled
in the device tree?


Thanks
ChenYu

> Thanks
> Frank
>
> [1] https://lists.freedesktop.org/archives/dri-devel/2024-February/443548=
.html
> [2] https://lists.freedesktop.org/archives/dri-devel/2024-May/455833.html
>
> >
> >    reg:
> >      maxItems: 1
> > @@ -56,6 +63,15 @@ allOf:
> >        properties:
> >          clocks:
> >            maxItems: 1
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: img,powervr-6xt
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 3
> >
> >  examples:
> >    - |

