Return-Path: <devicetree+bounces-237562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 804A5C51F64
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 05CBA34D80C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C83C3054E1;
	Wed, 12 Nov 2025 11:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Agq4Gj7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E566309F08
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946890; cv=none; b=Azfx/XLjXKEWz7L4o+Jwk7kbsixj67Lsnro906fybFK4hWfmk6fNHL9/BNs68C75D4SxN4VFaODFpro/SsRNADupUYvVipgEEKPPFnrNzWu9iV/e8UiQxIp578h0cX8w25TDBolC0glt4e0fupqOUDVbxDgsQiXozQXeJ8AhUj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946890; c=relaxed/simple;
	bh=1dYK7f4FkPzoZeJ51K8mDZvHGpP/FeIezNcDD5hERdU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pg0Ow9KP1JR5EJ+li/FJhUzMWzNU7Q37ldwSmVOuHkIU3MAUtDVWv8erxMk5Rn9Rl01od+ufTlwIEUGutXu4CWaTD+YyY5eHU37Gkca+fc/fdWPepjjdyM/EGjOvBU/CKLV0QnXqJAeMVSJVHR0jlaiiTdmbejbghj6oznwxtzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Agq4Gj7q; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2957850c63bso6266775ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762946888; x=1763551688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ig8V7S9rFhIoVLkY+/XWuMwWvPcC3NWWv4ch5Z8G1nk=;
        b=Agq4Gj7q75twnaldQoOyRwegmMpWfqRiAkSduaLyqfF9b0ngSBXUBtv38zNPxzZpju
         2LpRH+6BJo6spdCm8zZPmto1MLnrBLRUm0IpN6/mSkVf51HqIIPjhyJgDMSLvcMO1oRM
         MbjG3IMv5Lnbq8xDWQz1rKjXI92CnRArQ7ya+qWk/+lQyJy1mampYfS07KdJCS0becQa
         YfWSz7irenPniI+wFEEq7tfeB4zn1FuHmSABqEcIdGoti6+7BD5XeI+HUliFBkUsEeCn
         Oz+AG21bFX/eRk0++NhYJbsjsX5WIigS64HJwwEwNpZafC97iICeD7vbcHYl9cDYOLpx
         02Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762946888; x=1763551688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ig8V7S9rFhIoVLkY+/XWuMwWvPcC3NWWv4ch5Z8G1nk=;
        b=MHwGK46xNMa7TQ2FTGnuL98syTGoKNuIAs+domPFtZ2aJGJKQ0mGw1c3QhWHo5R8Xi
         frE3fWVUbj9f73QHa6kqJ+h7tNkR2loiy6osGe0e9HVU3Y4zaagxNzQQ4j6XWKo9uw15
         FlM8f6myHuA8HCb8OkwVvQ9OZNClBS0SlVqXGc3ttXmFrecBm0EfH7ju+RBQ61JyuDIg
         c2cqtslDdsfqDI3YpSdYN1t0S/XLVWUG4HUzEm0rCTXZeix7FdFqPxi70pdpKcobn6Bl
         MyQ5dzLit6YaYvxm89o6gtOVzEYdp3BMtno1/3tGFflphCtZJfw2xFJWuyBZl3BAb0uT
         +vnw==
X-Forwarded-Encrypted: i=1; AJvYcCXsqmPLYAM/DsnbPkuGHcO9YymoR3medFP9nLio0c+Ck/e/k9AKnj0tZ9386DRw5n329S9+VHx4plqv@vger.kernel.org
X-Gm-Message-State: AOJu0YygG9Mytmq/cjKU0/Vs2IRxH5hfHanLR1YoXA1qvZUl383sA4y6
	5Rt93+PSOImTfzoTA8xvvP4a0lXmhD4Pta82X4pxu2PmsEpK/sRNYFkiynnQ8oOWCZHhr+4YnzR
	8kl1HPVG2Y4Og6VA95YX7Mwm7LItvKvvQxhs/62MZ
X-Gm-Gg: ASbGncvIkoXSYHGtXlvU0K4/CEnxVSZwz/G+OKmwo500H8WBnBQnMz9lEVw3MTrMPdZ
	s41DeEV6Lj4qJ4ePdtyl67DKxaDTEvePQejN2GO40+mzxtJePEgu5RrrpLsohbbKrjeJ0RFHcVN
	R2YWT6SRZUl0dLTyhr4O0qOgzOMHvC8pZiwTpReAL1PeUaOt3c/6mXi4l0pVCnCAMSfNo2fwabG
	6aTkKTAq6/4toQdx9Shp5Vc9JygjL8ErH2CZvy0UGfve4LnmQAJXMPZ9rchkb7huM4S5MfCUk+r
	i6vDjzB/MIjnHWFXHNuWVveMfxa709Ev8PQQ
X-Google-Smtp-Source: AGHT+IEzhYJUJIhP1itpJ8SMj4wfy7Edo9fDUXSWIfM11ytYomEi4CEvHvu/YvWNAK7+sehRmwWVHzbMhPckpBBMF6k=
X-Received: by 2002:a17:903:234d:b0:296:5ebe:8fa with SMTP id
 d9443c01a7336-2984094a5bcmr70869985ad.23.1762946887940; Wed, 12 Nov 2025
 03:28:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111130624.3069704-1-royluo@google.com> <20251111130624.3069704-2-royluo@google.com>
 <20251112-logical-grebe-of-modernism-dcf83b@kuoka>
In-Reply-To: <20251112-logical-grebe-of-modernism-dcf83b@kuoka>
From: Roy Luo <royluo@google.com>
Date: Wed, 12 Nov 2025 19:27:30 +0800
X-Gm-Features: AWmQ_bn2RT6EbgSb3mHFWKckHPwcrvZ-s2OqhjevpH_GhYx3Lcain4Rs18PGkFc
Message-ID: <CA+zupgxALZjF8m=PfYgb1QUgf0u+-Su0XYQ3VB=fCpM1dt9s_Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 4:32=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Nov 11, 2025 at 01:06:23PM +0000, Roy Luo wrote:
> > Document the device tree bindings for the DWC3 USB controller found in
> > Google Tensor SoCs, starting with the G5 generation.
> >
> > The Tensor G5 silicon represents a complete architectural departure fro=
m
> > previous generations (like gs101), including entirely new clock/reset
> > schemes, top-level wrapper and register interface. Consequently,
> > existing Samsung/Exynos DWC3 USB bindings are incompatible, necessitati=
ng
> > this new device tree binding.
> >
> > The USB controller on Tensor G5 is based on Synopsys DWC3 IP and featur=
es
> > Dual-Role Device single port with hibernation support.
> >
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  .../bindings/usb/google,gs5-dwc3.yaml         | 140 ++++++++++++++++++
> >  1 file changed, 140 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/google,gs5-dw=
c3.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml=
 b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
> > new file mode 100644
> > index 000000000000..bfaf6cbdfec3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
> > @@ -0,0 +1,140 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2025, Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/google,gs5-dwc3.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Tensor Series (G5+) DWC3 USB SoC Controller
> > +
> > +maintainers:
> > +  - Roy Luo <royluo@google.com>
> > +
> > +description:
> > +  Describes the DWC3 USB controller block implemented on Google Tensor=
 SoCs,
> > +  starting with the G5 generation. Based on Synopsys DWC3 IP, the cont=
roller
> > +  features Dual-Role Device single port with hibernation add-on.
> > +
> > +properties:
> > +  compatible:
> > +    const: google,gs5-dwc3
>
> Doug just said SoC is lga, not gs5, so you need both to align on that.
> Actually not only you both, but whoever else is upstreaming from Google.
>
> It is not the community who should synchronize and organize way how
> Google works on their own stuff. Google should organize how Google works
> on your Google's stuff.
>
> Best regards,
> Krzysztof
>

Ack, will align on the next patchset.

Thanks,
Roy Luo

