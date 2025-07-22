Return-Path: <devicetree+bounces-198460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC13B0D12E
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EB5F3BB6C5
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2278328C2A8;
	Tue, 22 Jul 2025 05:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nurNrhI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BE8191493
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753161874; cv=none; b=KnpeIbriDwXGgDmG1zrDVxUUXPuV4Vd3D7NmvcTEBob42QSatKreveRaANXbLe/JgoK0lVDVPVy3uyBtDJh+BzegGOCdrRplVhRgexbqaw0GlKZ1t7hO4poCsv4NE/9FEOQHSn+qMWDZ1o4PWSjDkXN5HPunbOxQTSqvCCPtzm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753161874; c=relaxed/simple;
	bh=Avp0JiTSYhNMuMn8G13FVQY07A41ztSui4s3Y/jRy7U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rAo5Iq7sUTu2ULzwZx4l72QZinQfmhAzFVB4SJGWP+I8vwPYO/cbiPuFB79BdDayOMXPc3Py1Ip5LC/Iu8xqKUZp8XLafUf3fuw/9GU1gFRBgw5jUv47DwlRzbVM2e7ny8Eeeb6hJU/EAtJt1ELqkGWFpfD1YRgtiKQvZ9VLxPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nurNrhI9; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32b7123edb9so52837231fa.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753161870; x=1753766670; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqDwtUCqJNRnpiOi+aWGhs1F5rEMAyBkONqi7ZgeqbQ=;
        b=nurNrhI9SV5BXVAk1hHf8Sx6gwl6F3HLcis3HZTm8MRDW82JuIGaxk3Ei3quEJRwgw
         e/bTb1nlL7lo8ptA2dtU43a6j3+chryW4TcAvFSddv1Zbub2Q3tEL0GlLRc62kPwNsJF
         Ed2UcdrLMTMSw8FPiKlU0g+BjovBIg2ywMD+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753161870; x=1753766670;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqDwtUCqJNRnpiOi+aWGhs1F5rEMAyBkONqi7ZgeqbQ=;
        b=kXo3bhEvqSn8MXG6gUWbWFuP0WKRkdTJgnBsr7/UI9UqsUBePCcVzMpZPbyQjzvTFD
         EH8oC5LoVGOsF8H9O3A1ksuxlYBJhQc6RiL0hrW3Zi9r0+dZ514X3c21hlql6Q23I1Qe
         rkjxd8fU/uZJlzJhDlXh73uvACeX/dFRzUnN2NNrVDruyEx92c1U98rhLG0vcLaY1d50
         +1YgtatR7C+M8t0+gRA6vb/5wh690WjjX6OWi3qaBpK1PthIlwqG7M5Rqes3JAN4KtBD
         FP8uDl+l53UyCQWG22t/EemeZAm34WeJvNZNvbugw+Et3/h23F3qT3FXujIWGEb/RNVo
         /U+w==
X-Forwarded-Encrypted: i=1; AJvYcCUgC29QvWW0FPT8QjvMe3WUAGUtMA+TEzzpAAXzp12aTnjmCJF7dG2aTuxYCU4ONa/+ZWKDEcLTJ5S/@vger.kernel.org
X-Gm-Message-State: AOJu0YzLwKqqKwluhBNJfG73Cj/tKE05HkCVk4CIej7GPeVaEXrK6f2D
	yo1IntE/ah0AGpWOtGqEGGAQtraSFakg6mMtpFZgEKSIfKX5AEfsBrFS2y1KzqIra/VhShfWB9A
	DX4OqqIaSuAkcYfv3I5a8nKRDOwXzTqYeZYXkafEh
X-Gm-Gg: ASbGncsIh+n3IswnLRPYOFsNDH4/79rS+qiUQIg5i/I/39MVTerbrdlKdbL62KXklbi
	rL3E6qS73rae4T7I/eV0ZHijnqMGYxuZSd4+vxAtnKWTi58DXxX8cSJ3DaO40e5lg7XyLOLDG7R
	0dZv+8OzLIR46WkpwncrCYQkqcbp9wrdzAEKxgRPsIqogCEBvaFjKL61fZzviOxI+Kr+8dKBcj0
	T/mZcNNpZ3bWpWB3JTQHIVxYLxoscXQ80UCt148kEEqng==
X-Google-Smtp-Source: AGHT+IEdOx5zCqoNPg2UT45LQbL+jHOpKPo6tn9yxf52DBYuUr7UN/c4OmqYmGkjvaYN6I6H6AP02HgZdnn60DMD5bo=
X-Received: by 2002:a05:651c:419b:b0:32f:425b:3278 with SMTP id
 38308e7fff4ca-3308f5df835mr61834191fa.25.1753161870330; Mon, 21 Jul 2025
 22:24:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715140224.206329-1-angelogioacchino.delregno@collabora.com>
 <20250715140224.206329-4-angelogioacchino.delregno@collabora.com> <20250717152947.GA3411864-robh@kernel.org>
In-Reply-To: <20250717152947.GA3411864-robh@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 22 Jul 2025 13:24:19 +0800
X-Gm-Features: Ac12FXzJ2_kEeBPPtFnHpLPdeiuzsl4YpgJm_YvA17xvKg2-LMZYsB2VDzsxF1w
Message-ID: <CAGXv+5Eajtt17rp2qGDDi6-Xvj6cxmhJBHjhp_XLDaX90WiNFg@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] dt-bindings: regulator: Document MediaTek MT6363
 PMIC Regulators
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, linux-mediatek@lists.infradead.org, lee@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	lgirdwood@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 17, 2025 at 11:29=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, Jul 15, 2025 at 04:02:19PM +0200, AngeloGioacchino Del Regno wrot=
e:
> > Add bindings for the regulators found in the MediaTek MT6363 PMIC,
> > usually found in board designs using the MT6991 Dimensity 9400 and
> > on MT8196 Kompanio SoC for Chromebooks, along with the MT6316 and
> > MT6373 PMICs.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
> > ---
> >  .../regulator/mediatek,mt6363-regulator.yaml  | 193 ++++++++++++++++++
> >  1 file changed, 193 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/mediate=
k,mt6363-regulator.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt636=
3-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6=
363-regulator.yaml
> > new file mode 100644
> > index 000000000000..ea1f6c92cffc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6363-regul=
ator.yaml
> > @@ -0,0 +1,193 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/mediatek,mt6363-regulator=
.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek MT6363 PMIC Regulators
> > +
> > +maintainers:
> > +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.co=
m>
> > +
> > +description:
> > +  The MT6363 SPMI PMIC provides 10 BUCK and 25 LDO (Low DropOut) regul=
ators
> > +  and can optionally provide overcurrent warnings with one ocp interru=
pt
> > +  for each voltage regulator.
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt6363-regulator
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vsys-vbuck1-supply:
> > +    description: Input supply for vbuck1
>
> blank line
>
> > +  vsys-vbuck2-supply:
> > +    description: Input supply for vbuck2
>
> blank line, and so on...
>
> > +  vsys-vbuck3-supply:
> > +    description: Input supply for vbuck3
> > +  vsys-vbuck4-supply:
> > +    description: Input supply for vbuck4
> > +  vsys-vbuck5-supply:
> > +    description: Input supply for vbuck5
> > +  vsys-vbuck6-supply:
> > +    description: Input supply for vbuck6
> > +  vsys-vbuck7-supply:
> > +    description: Input supply for vbuck7
> > +  vsys-vs1-supply:
> > +    description: Input supply for vs1
> > +  vsys-vs2-supply:
> > +    description: Input supply for vs2
> > +  vsys-vs3-supply:
> > +    description: Input supply for vs3

You could also merge the ones above with a regex and move it to
patternProperties. Since these are one to one mappings that should
work still.

> > +  vs1-ldo1-supply:
> > +    description: Input supply for va15, vio0p75, vm18, vrf18, vrf-io18
> > +  vs1-ldo2-supply:
> > +    description: Input supply for vcn15, vio18, vufs18
> > +  vs2-ldo1-supply:
> > +    description: Input supply for vsram-cpub, vsram-cpum, vrf12, vrf13=
, vufs12
> > +  vs2-ldo2-supply:
> > +    description: Input supply for va12-1, va12-2, vcn13, vsram-cpul
> > +  vs3-ldo1-supply:
> > +    description: Input supply for vsram-apu, vsram-digrf, vsram-mdfe
> > +  vs3-ldo2-supply:
> > +    description: Input supply for vsram-modem, vrf0p9
> > +  vsys-ldo1-supply:
> > +    description: Input supply for vaux18, vemc, vtref18

For these, I wonder if the description is really needed.

From a device tree writing point of view, the author is likely looking
at the diagram and tracing each of these pins to a supply. They won't
care which LDO it's actually feeding.

From an implementer POV, the author is likely looking at the datasheet
for other details not spelled out here, such as voltage steps and
register offsets. The datasheet also says which supply pin feeds into
which LDOs.

ChenYu

