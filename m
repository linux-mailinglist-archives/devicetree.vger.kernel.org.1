Return-Path: <devicetree+bounces-72027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 458958FA92A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 06:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEAAEB26E11
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 04:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B0F14198A;
	Tue,  4 Jun 2024 04:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e+uXFulk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905F313E3F9
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 04:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717474921; cv=none; b=soxUw5/GeGb/+5tdRLW9MvCWgjdOl2CPT/5H7XSoYSCaxp4GglStVy+JSkfVs47nppYfnnvKYqyu/GRx792VmKjnU02GfHDNYMwudWu2+lh6Z+CAs0BKCZmdIU9GC7TqUiv/TDReOE13tyVPSSn83UWVwra8RMW/3l8d6lqyaLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717474921; c=relaxed/simple;
	bh=vdT1WnfavoXbakHdoyabknlLpRd1rltXkfOabReQFKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U8149BJkKfsg2LkucR72cXWfB4xohCV6HrsPYKPrLOVqukQEE6UGv7T0knNdLiP5yWlsdeSzbpCTN2879QsqDc3Cp2otKII5cV8nuPlcBDyfES7zLrBqg4A2p9f0JHGf1aaf7AsfG1b4kWS+T4VsLPhIK26wdbw5g4TWKM8GISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e+uXFulk; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2eaa80cb573so35455321fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 21:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717474918; x=1718079718; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZTkPdaoUs8jQNyMlsxEd3PQVY77PvdNJflZvZlG4XM=;
        b=e+uXFulkAUmDRkcSNAcbr5C0R6/BqxNB6IQnwYnfyjBOJSLnCGJOFaDpCXrCEql/et
         bxpLzyXZD2zProRAF1WjVJ6JcTZyvlk06TgvcjUuAsbYBOMPAZGHXfkyXCFnlleyUZ4z
         zbxLeXpfWvZtPttVGhytF1SGLrIAVs9wILV2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717474918; x=1718079718;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZTkPdaoUs8jQNyMlsxEd3PQVY77PvdNJflZvZlG4XM=;
        b=rzs0oMhq6bLFJadRWNL/pF2GVGrw0r8YMuG2X3Mqc6DI+sH4sZDlwzmbO9GX5F+sIp
         loPQhq2YpLxELC7b7jQRhLhUmbDaXzu80MP6ljjZCk+P5eRySm6ycOBKwOc3ybCfT8zS
         OSdTvuqKY7yILmxP965JGcgHBmsJBDgzkOQKs4egmn4DGVnkEiOswpThrJvCJeO4ZHoB
         BNMZ5GsozjIGQeXRACttsUJ4NCYFQ31hWCo6MlB/aFYMtnIhdgly8NlW9wGikhRt7o4R
         bZv+lyMazSraGAloCe9by2N+NnlCkdvwunInKha9L49U65x8y3kmVlazYyYtj0t95/dR
         2PZg==
X-Forwarded-Encrypted: i=1; AJvYcCVg0Fu6jN9bx2A33aMEz6uhvgGPmuLXu3nG5SQyqk/P/6EnZbJPPphVwVBiYKiLQ2e7OwXVBV68zjKJquZ96EnmAXmppsP6vlyuvw==
X-Gm-Message-State: AOJu0YzdfL8pRdOnxAIqADyOp4Z37nBAujZTB+xfClyV8VmhDcrMVXsy
	yLgl2XpliGrlpvfFOE1Po+4bYEMHihFB4I8NaZa0mD5KRD1Fzb63gLVtU3DTqMbq2LiF8LaTqSW
	j9895JGu24YGsJgct3oVRyvZ1Zulu08cWufVp
X-Google-Smtp-Source: AGHT+IGDgg2+V5eJ8x467mxNrV7nhwIMgXm1gR49RnrnhPkROZN8HdeL71iXvR/Wj+N6cLD7tGCc7y6sYjgN44bSwNQ=
X-Received: by 2002:a19:5f53:0:b0:51d:5f0b:816f with SMTP id
 2adb3069b0e04-52b89590e7cmr5639078e87.15.1717474917527; Mon, 03 Jun 2024
 21:21:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-4-wenst@chromium.org>
 <cc5847a486a760921375f069a4f65cd29453a624.camel@imgtec.com> <CAHCN7xJ7X9_yNJa7-HyU=FzN2G1cV8i9R+PoTHm-DKyiOPenUQ@mail.gmail.com>
In-Reply-To: <CAHCN7xJ7X9_yNJa7-HyU=FzN2G1cV8i9R+PoTHm-DKyiOPenUQ@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 4 Jun 2024 12:21:46 +0800
Message-ID: <CAGXv+5GeWpBaFw89KsKyQi4t+Wjh=+58UQ7hyPaLM6pwGELiVA@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: gpu: powervr-rogue: Add MediaTek MT8173 GPU
To: Adam Ford <aford173@gmail.com>
Cc: Frank Binns <Frank.Binns@imgtec.com>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
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

On Fri, May 31, 2024 at 10:25=E2=80=AFPM Adam Ford <aford173@gmail.com> wro=
te:
>
> On Fri, May 31, 2024 at 8:37=E2=80=AFAM Frank Binns <Frank.Binns@imgtec.c=
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
>
> Thanks for including me.
>
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
> >
>
> In the cover letter of this series, it was noted that the GPU
> enumerates, but it doesn' fully function yet.  This is also the case
> for both of the Renesas variants I have been testing, and I was nicely
> asked to postpone my series until the driver was closer to being
> ready.

Yeah. Frank laid out the current state of GX6250 support and future plans
in his reply to the clk driver patch.

> Even if the driver isn't ready yet, it would be nice to move the
> bindings forward.

Agreed. It would be nice to have an agreed upon set of bindings. We
can then move our downstream stuff comply with it.


Thanks
ChenYu

> adam
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

