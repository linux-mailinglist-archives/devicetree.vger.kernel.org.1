Return-Path: <devicetree+bounces-75331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB90906834
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 11:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C17EB252E6
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 09:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8300F13DDD5;
	Thu, 13 Jun 2024 09:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b9tAYuE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313613D8A1
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 09:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718269857; cv=none; b=VpDOjGFajqVYMDE0xjIyHE6PhvMXK88gb6G+Ed/XcXLJvXSA/fxCBVvfiP7Yv20WlaQsj56HRy4od/enW9zOC2kuNEpzx9Haf4tB9/Dx2VidkoYlb0l3hmRWbHwXVErMbn/euVGEhVCfkMOte1X0e8g4c5W2BV7K4Oh9c97ojWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718269857; c=relaxed/simple;
	bh=30NWkqAV4R92RmhF2xlzh6uxyE5XgPuxEMk8Ttj6tog=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X1oxA50jwuS7E5wJjrdBLt+yIZPZD3muzu1qr36YuJh55P+nz0vFpQoGz5HgV8M+TEw4SFv9Mrkyu/Y0iq/El2+RcMcdINexR5UeujAxtsRiXAHrKbN7QXUSh7mgBXCGO79XMDcSn7BMCCs9LP2fXgwXAwCXvS801a9LweZ+Czc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b9tAYuE/; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ebe3bac6c6so8211831fa.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 02:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718269852; x=1718874652; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qMad1s8HI1EFGHqapCwasRBkvGmdeiF4NnLv9ZSDU4=;
        b=b9tAYuE/ONzZjRb2zbpj1Shgn0Pj4GEvpPgMwBXfoyEjk89ZxyRPhbhxmJu4Fe24Sm
         KNm3GUk/eKuzXc6zE31kOSaLdxRXZo6bTaCADg/UGiRGtH5//qIbG7JUnz7Hch+ttXOy
         nm4TXgAc5zpaOGjqEFF4rAprNt9/2Ju3OK0Bg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718269852; x=1718874652;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0qMad1s8HI1EFGHqapCwasRBkvGmdeiF4NnLv9ZSDU4=;
        b=hrPkHJS15Xe2c1v2Ci5ftoWRAaEiO1hPiQMjRkjHlO7hINA8tvJfllLNzfQ0s28D0O
         UleAJbD9sM+ff/+nQG+0AvetK9NTXRmk1lf02oNlfEZ7kv3EclKG5JJGrLgF0ReNku5C
         f8Kh5b6yFybuzH32KNGsFZFdgxLgdnrTF1aLPOh49pA4xqL00p5cLyRA9FY9Fwe8l0C4
         y3/kc38D8egDJfxhLa+q+h+5FsKD0YMaJc+Xg8RU9DSL26bxxBt1VeZA5KYSoI/AcRT6
         p0e6tGrXo7VvbZYqtAYWrgxtLk/9aAuVW9QgeQHJVd7ka31K1H71cYrZ9IZkaP0mNkXK
         aOIw==
X-Forwarded-Encrypted: i=1; AJvYcCXLQYYiYhYJHip0rMhfcs0OEgZkS61hNVz+4lRmBhuSzf8HwSkAeC8BuVPivjbXXwe38LLjga2Az96EG2iuqDwz+rChaPGo1YpImw==
X-Gm-Message-State: AOJu0YzfiRIQzOph1Un0faS9Z/Jc/InGkmw/0ApvtKNj/L4N+KV0OFBI
	beq4QB4z5nAB8K02q2EAanIaTVyvV3jjbhUj+tChT+0rhRnns3/CVr7TSwqxzmFdR1/Q8aCp3ip
	yiL1Ce2ygCA/hydXM6M1aL4nMQ/zwsEv5droD
X-Google-Smtp-Source: AGHT+IFE16q+3aJZ+pDB8j2rm8rHPIGnaWtqcWZM+SpiuLNffT3VD8BSWouvI+m971OdxrGKrmk+TlmqOWpCQUtBEeQ=
X-Received: by 2002:a05:651c:19a6:b0:2eb:d77a:850c with SMTP id
 38308e7fff4ca-2ebfc8f0545mr43873481fa.4.1718269852401; Thu, 13 Jun 2024
 02:10:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-4-wenst@chromium.org>
 <cc5847a486a760921375f069a4f65cd29453a624.camel@imgtec.com> <CAGXv+5FBqcXjTc+DO8VQierzcxTYhyNxpw+AuuB4U1H_Xo6wPg@mail.gmail.com>
In-Reply-To: <CAGXv+5FBqcXjTc+DO8VQierzcxTYhyNxpw+AuuB4U1H_Xo6wPg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 13 Jun 2024 17:10:41 +0800
Message-ID: <CAGXv+5HC_spBAc-t4cS+aCOQKdfWRzMkXK94HmD1Qg02ML4Uug@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: gpu: powervr-rogue: Add MediaTek MT8173 GPU
To: Frank Binns <Frank.Binns@imgtec.com>, Adam Ford <aford173@gmail.com>
Cc: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	Matt Coster <Matt.Coster@imgtec.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
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

On Tue, Jun 4, 2024 at 12:18=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Fri, May 31, 2024 at 9:37=E2=80=AFPM Frank Binns <Frank.Binns@imgtec.c=
om> wrote:
> >
> > Hi ChenYu,
> >
> > On Thu, 2024-05-30 at 16:35 +0800, Chen-Yu Tsai wrote:
> > > The MediaTek MT8173 comes with a PowerVR Rogue GX6250, which is one
> > > of the Series6XT GPUs, another sub-family of the Rogue family.
> >
> > I've added Adam Ford who sent out some DT related patches [1] for the R=
enesas
> > variant of GX6250 and the GX6650 (another Series6XT GPU).
> >
> > >
> > > This was part of the very first few versions of the PowerVR submissio=
n,
> > > but was later dropped. The compatible string has been updated to foll=
ow
> > > the new naming scheme adopted for the AXE series.
> > >
> > > In a previous iteration of the PowerVR binding submission [1], the
> > > number of clocks required for the 6XT family was mentioned to be
> > > always 3. This is also reflected here.
> > >
> > > [1] https://lore.kernel.org/dri-devel/6eeccb26e09aad67fb30ffcd523c793=
a43c79c2a.camel@imgtec.com/
> > >
> > > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > > ---
> > >  .../bindings/gpu/img,powervr-rogue.yaml       | 24 +++++++++++++++--=
--
> > >  1 file changed, 20 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.=
yaml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > > index 256e252f8087..48aa205b66b4 100644
> > > --- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > > +++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
> > > @@ -12,10 +12,17 @@ maintainers:
> > >
> > >  properties:
> > >    compatible:
> > > -    items:
> > > -      - enum:
> > > -          - ti,am62-gpu
> > > -      - const: img,img-axe # IMG AXE GPU model/revision is fully dis=
coverable
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - mediatek,mt8173-gpu
> > > +          # PowerVR 6XT GPU model/revision is fully discoverable
> > > +          - const: img,powervr-6xt
> > > +      - items:
> > > +          - enum:
> > > +              - ti,am62-gpu
> > > +          # IMG AXE GPU model/revision is fully discoverable
> > > +          - const: img,img-axe
> >
> > The Series6XT GPU models have differing numbers of power domains (eithe=
r 2, 4 or
> > 5). Whereas, the AXE GPUs have a single power domain, so I assume there=
 should
> > be a related change here.
> >
> > The GX6250 has two power domains (lets call them A and B). There's a co=
nstraint
> > that if domain B is powered then domain A must also be powered.
> >
> > In patch 6 [2] it's setting the power domain to MT8173_POWER_DOMAIN_MFG=
, which I
> > believe corresponds to power domain B. I assume this works because the =
MTK power
> > controller driver is encoding the constraint above, meaning that when w=
e disable
> > or enable MT8173_POWER_DOMAIN_MFG it's also disabling/enabling MT8173_P=
OWER_DOMA
> > IN_MFG_2D (domain A).
>
> It could also be that the power domains are split in the glue layer and t=
here
> is some sequencing handled there. I'll reach out to MediaTek to see if th=
ey
> can dig up some design specifics.

Unfortunately they said they no longer have that information.

> I assume you would like to see the separate power domains properly modele=
d
> in the device tree?

So how should we go about this? Adam, do you have this information for
your platform?

Thanks
ChenYu

>
> Thanks
> ChenYu
>
> > Thanks
> > Frank
> >
> > [1] https://lists.freedesktop.org/archives/dri-devel/2024-February/4435=
48.html
> > [2] https://lists.freedesktop.org/archives/dri-devel/2024-May/455833.ht=
ml
> >
> > >
> > >    reg:
> > >      maxItems: 1
> > > @@ -56,6 +63,15 @@ allOf:
> > >        properties:
> > >          clocks:
> > >            maxItems: 1
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: img,powervr-6xt
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          minItems: 3
> > >
> > >  examples:
> > >    - |

