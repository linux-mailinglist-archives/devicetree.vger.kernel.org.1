Return-Path: <devicetree+bounces-107022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D559E98CB8A
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 05:36:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DA321C21BC3
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 03:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C155F101E6;
	Wed,  2 Oct 2024 03:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RKkZLQ7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7EC28E7
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 03:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727840179; cv=none; b=U1PMggT83M2ysPPMRgYfToe6EiChC34opPZF8MLcIr8cbb9bO9FmStO/dryDUqSb7fTWsm0RvdUxUjlGn2w13KzK9l+CVo52NVvZ/eZpfOS8poNeCq/hRtAlUptxN2js/emXBSfM9BHxr4maeioWa9AtfMBHa2QcUjQuIJ3sHtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727840179; c=relaxed/simple;
	bh=av2Zb5PMB6fQe4PCUNTCIeI91KPfoH514yjPHhk8h4A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gae4+Ogo4Xe5iOnEAcYc/GXXx70jhKewgk8AcoPvPW4AWq/31yYd5xgYk/oQvHZO2Z9Q+ERQRem4+uuxG2oyChYBlSIVu661T5xNvM7nMzAQBReHsV6TJU1gPCj7zk7gclB050Iz8506xJqCuYeMjAYS0KRM+etXxJ3TvD9G04c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RKkZLQ7c; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4a3abd7230aso1454612137.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 20:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727840177; x=1728444977; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HwiLVnc0Ymap70LQ2v/RfJC1Ad9ePUxHXG7oryVkvlE=;
        b=RKkZLQ7c18WMURCu2/LVcMelmtmcdjkCiMAeG6KJyPlv92Zsv/Vm4KDZM85T+rzXzO
         qnzSatjUgb8/C9G1iTfD3ZGjoqipS1tLk+cnQKxS7R5hrdvutx2dIf6IOiMC20aSX0/q
         zRSL+ErCnaWxDi9ogNBJleJ7GdTKIsCfs2Pkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727840177; x=1728444977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HwiLVnc0Ymap70LQ2v/RfJC1Ad9ePUxHXG7oryVkvlE=;
        b=uS4jpZAG1yYFW7hDLwLdAUiVkUPHOhtzR1SEUM3HOTpeHZ2exEk3TyOn+S2l25iDNy
         O5XUecBMmehbUpZueX0XN+Ph6tDayAH4CkWjL4dHLniRTDwvvIG9CPl8S91sk9ymjxNR
         gSeSTW4i8kROrzH+e/C4nXaisGLokCXqrUGiRvz8iba7ggrLSPDsuQt+PB8kXR3AC0P2
         PCt9kqgwbmp5I/BF0qnSfWLodVLsvH239CmqLrNelZUCpDp2x0VH7qjZIlQ9qJxkc88b
         xI8g5chtG5abfzb39o27CDzYbEOo9UDsI+bwTTvZ2ZE6eNuhzRcA7oda+Tcbj6feLOb5
         vddA==
X-Forwarded-Encrypted: i=1; AJvYcCVjZeEQsd9Fm70ugdhte+sv/4YaEdtV0VKOcXsz1F1uqK439ZMrx5UFX0Pd1OUCkM+MueBAYpMjo+La@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp4T9g5Gs41tBm2bD/a0hffPiZtLnV56TeytY3x4Ry3K3yQg24
	mnh5BuDD40x9Eha6WaBZHJVoclR08+NT3oQgEm0EA/jLA1GGBRjLPkZTcMwVXau8YSIBraSATfS
	+XQ==
X-Google-Smtp-Source: AGHT+IH/Ev0wtCNWqDEiBMEdwCsNL1fDQKFFBjaK/toxVKXt6x0jUy+5sWRDkuG1T+1SrHxGY+1liA==
X-Received: by 2002:a05:6102:c8d:b0:49b:d066:3e9e with SMTP id ada2fe7eead31-4a3e685ac2bmr1819596137.10.1727840176921;
        Tue, 01 Oct 2024 20:36:16 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a3a7d932d0sm1470029137.2.2024.10.01.20.36.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2024 20:36:16 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-84f1ac129c7so263544241.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 20:36:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWrza5kEAzUiPrl0/NpQ2ylqu2DHYHRS5Q4FIQxc46EZlQpS7v9ppa0yqrh9PUGNenkpd2dRi3kH3qA@vger.kernel.org
X-Received: by 2002:a05:6102:32cc:b0:49b:e3fd:b6d0 with SMTP id
 ada2fe7eead31-4a3e68264a4mr2070117137.5.1727840175839; Tue, 01 Oct 2024
 20:36:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925110044.3678055-3-fshao@chromium.org> <20241001195325.GA222000@bhelgaas>
In-Reply-To: <20241001195325.GA222000@bhelgaas>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 2 Oct 2024 11:35:38 +0800
X-Gmail-Original-Message-ID: <CAC=S1niCc5usY4SJ7wqtKAfcUqyTBf3fhRmkk4Sdnr3x2zsuVA@mail.gmail.com>
Message-ID: <CAC=S1niCc5usY4SJ7wqtKAfcUqyTBf3fhRmkk4Sdnr3x2zsuVA@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: PCI: mediatek-gen3: Allow exact number
 of clocks only
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Jianjun Wang <jianjun.wang@mediatek.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 2, 2024 at 3:53=E2=80=AFAM Bjorn Helgaas <helgaas@kernel.org> w=
rote:
>
> On Wed, Sep 25, 2024 at 06:57:46PM +0800, Fei Shao wrote:
> > In MediaTek PCIe gen3 bindings, "clocks" accepts a range of 1-6 clocks
> > across all SoCs. But in practice, each SoC requires a particular number
> > of clocks as defined in "clock-names", and the length of "clocks" and
> > "clock-names" can be inconsistent with current bindings.
> >
> > For example:
> > - MT8188, MT8192 and MT8195 all require 6 clocks, while the bindings
> >   accept 4-6 clocks.
> > - MT7986 requires 4 clocks, while the bindings accept 4-6 clocks.
> >
> > Update minItems and maxItems properties for individual SoCs as needed t=
o
> > only accept the correct number of clocks.
> >
> > Fixes: c6abd0eadec6 ("dt-bindings: PCI: mediatek-gen3: Add support for =
Airoha EN7581")
> > Signed-off-by: Fei Shao <fshao@chromium.org>
>
> It looks like most changes to this file have been merged via the PCI
> tree.  I don't see dependencies on this in the rest of the series, so
> I'm happy to take this via PCI if it makes sense.  Or if you prefer
> that this be merged with the rest of the series, that's fine and you
> can add my:
>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
>
> Let me know if I should pick this one up.
>

Yes please, thank you!

Regards,
Fei



> > ---
> >
> >  .../devicetree/bindings/pci/mediatek-pcie-gen3.yaml          | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.y=
aml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > index 898c1be2d6a4..f05aab2b1add 100644
> > --- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > @@ -149,7 +149,7 @@ allOf:
> >      then:
> >        properties:
> >          clocks:
> > -          minItems: 4
> > +          minItems: 6
> >
> >          clock-names:
> >            items:
> > @@ -178,7 +178,7 @@ allOf:
> >      then:
> >        properties:
> >          clocks:
> > -          minItems: 4
> > +          minItems: 6
> >
> >          clock-names:
> >            items:
> > @@ -207,6 +207,7 @@ allOf:
> >        properties:
> >          clocks:
> >            minItems: 4
> > +          maxItems: 4
> >
> >          clock-names:
> >            items:
> > --
> > 2.46.0.792.g87dc391469-goog
> >

