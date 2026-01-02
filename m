Return-Path: <devicetree+bounces-251151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2238BCEF6EE
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 23:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 18E553002BB7
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 22:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98CF12586C2;
	Fri,  2 Jan 2026 22:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJiwXSIS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AE622F772
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 22:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767393268; cv=none; b=U+/4qEmMbWJlJWmkPavwQ1c4eVnD8SoiMd72eVBCFUhKYWRL8xcHbQZ19kxxkYfOXvbn6M1q5hAY4j0FR54bOBB2lYSDtiSUZWc4JJRd3FwhS4dW//ZU3FOZNL1aJAVgpsJuic3N0wu3CZb/H6ZFTM50PVbrOoW26G2VgZmo8RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767393268; c=relaxed/simple;
	bh=p/Jv5nG+sVHiYm8AcMZfdW5K3hhflvZ/ovEwgXHmpeM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SWuQFCR61CfadnMcfMu0oP8XYgiQ661KUZhj9NV8MXcOHZkGugeyqptIeVlfX1csxbebLoSSQrD6KaMYoxWMu20UkerNQjHMwq8flGXVOMhQdcV4CiHQv2LwKkQDo5hh/vuBwz7lal3WcmiqdsOe0xzaWs+S3Xyc6g7wqCZzpFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJiwXSIS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E668BC2BCB0
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 22:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767393267;
	bh=p/Jv5nG+sVHiYm8AcMZfdW5K3hhflvZ/ovEwgXHmpeM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VJiwXSISAcJV0qXTmSeIT57CiDm5gborRfTiSHBdph5DpkV7v/EK8GHzaDGJ4SPux
	 eWCuRips0fyPhqbecE6Kfz3YDF7b0tgZrpfKsl/BN0xQHw7q4r75P1hr/iIFC0jNax
	 YqbJtwiOpvbPb6AzrU05N0XR6AenFJrGF0+g5QDrNOnld0tjF0WJ4dXzJOUhZowcEV
	 fjDH+IM5eCfX/q+hmJcr3yW0s0jEtL11Zmk4lEkApw56pC+UpH2cSviJASBPhNyUuO
	 6tpKehaayrkEM0GDXrN9EY34gowhDuH7lRDXKpWlIx+yCzuysWIDQTHCGJopG1/lWp
	 fyNttkPYts7eQ==
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b7277324054so2032585366b.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 14:34:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUQfFZY+3PsJkLv4dP6UfoJ02LCa5k7CcCFoEkGfDIrDU52T/KPk48gzR88zdjSTxWTXn8bzQeKWwij@vger.kernel.org
X-Gm-Message-State: AOJu0YwBxOKW3SuTCenXsZ9kxz+hHkwkkg/6r1o+Mfjnx3xkJIlWzEqD
	tTbNhZJ5S9K3/sZiweRMOVG2jTBGVyL/PUwwWrgtwWJU2TPsDsl7k29c10YEA5YWGr30keweh6h
	8OrgcDqgeRJb2nFUi98MgcEhsNrEVHw==
X-Google-Smtp-Source: AGHT+IG1rWxoS+GvYztMHqB/gJdkFcIK4DZOIUpaJyFmssooGzC677KHzCJrbnQK7v/KK+0EeeO1ZfO4yp8ZU6NtQY4=
X-Received: by 2002:a17:907:86a8:b0:b73:544d:ba2e with SMTP id
 a640c23a62f3a-b8036f62606mr4676439166b.25.1767393266391; Fri, 02 Jan 2026
 14:34:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224133150.2266524-1-s-jain1@ti.com> <20251230022741.GA3217586-robh@kernel.org>
 <fd9f0b37-001e-4721-82b7-ee29379eb9a9@ti.com>
In-Reply-To: <fd9f0b37-001e-4721-82b7-ee29379eb9a9@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 2 Jan 2026 16:34:15 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKYsf9dmY3qKx6MVT0-0emTzO=0z32rOzt3070LykhrPA@mail.gmail.com>
X-Gm-Features: AQt7F2qO3whwDzMYSf3EK2yMZxV1VXazUkw4mQ8nbmABr7OmUyHYA4qzRlYK5VI
Message-ID: <CAL_JsqKYsf9dmY3qKx6MVT0-0emTzO=0z32rOzt3070LykhrPA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: ti,am65x-dss: Add AM62L DSS support
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org, devarsht@ti.com, 
	praneeth@ti.com, bb@ti.com, vigneshr@ti.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 30, 2025 at 8:23=E2=80=AFAM Swamil Jain <s-jain1@ti.com> wrote:
>
> Hi Rob,
>
> On 12/30/25 07:57, Rob Herring wrote:
> > On Wed, Dec 24, 2025 at 07:01:50PM +0530, Swamil Jain wrote:
> >> Update the AM65x DSS bindings to support AM62L which has a single vide=
o
> >> port. Add conditional constraints for AM62L.
> >>
> >> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> >> ---
> >>   .../bindings/display/ti/ti,am65x-dss.yaml     | 95 +++++++++++++++--=
--
> >>   1 file changed, 76 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss=
.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> >> index 38fcee91211e..ce39690df4e5 100644
> >> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> >> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> >> @@ -36,34 +36,50 @@ properties:
> >>     reg:
> >>       description:
> >>         Addresses to each DSS memory region described in the SoC's TRM=
.
> >> -    items:
> >> -      - description: common DSS register area
> >> -      - description: VIDL1 light video plane
> >> -      - description: VID video plane
> >> -      - description: OVR1 overlay manager for vp1
> >> -      - description: OVR2 overlay manager for vp2
> >> -      - description: VP1 video port 1
> >> -      - description: VP2 video port 2
> >> -      - description: common1 DSS register area
> >> +    oneOf:
> >> +      - items:
> >> +          - description: common DSS register area
> >> +          - description: VIDL1 light video plane
> >> +          - description: VID video plane
> >> +          - description: OVR1 overlay manager for vp1
> >> +          - description: OVR2 overlay manager for vp2
> >> +          - description: VP1 video port 1
> >> +          - description: VP2 video port 2
> >> +          - description: common1 DSS register area
> >> +      - items:
> >> +          - description: common DSS register area
> >> +          - description: VIDL1 light video plane
> >> +          - description: OVR1 overlay manager for vp1
> >> +          - description: VP1 video port 1
> >> +          - description: common1 DSS register area
> >>
> >>     reg-names:
> >> -    items:
> >> -      - const: common
> >> -      - const: vidl1
> >> -      - const: vid
> >> -      - const: ovr1
> >> -      - const: ovr2
> >> -      - const: vp1
> >> -      - const: vp2
> >> -      - const: common1
> >> +    oneOf:
> >> +      - items:
> >> +          - const: common
> >> +          - const: vidl1
> >> +          - const: vid
> >> +          - const: ovr1
> >> +          - const: ovr2
> >> +          - const: vp1
> >> +          - const: vp2
> >> +          - const: common1
> >> +      - items:
> >> +          - const: common
> >> +          - const: vidl1
> >> +          - const: ovr1
> >> +          - const: vp1
> >> +          - const: common1
> >>
> >>     clocks:
> >> +    minItems: 2
> >>       items:
> >>         - description: fck DSS functional clock
> >>         - description: vp1 Video Port 1 pixel clock
> >>         - description: vp2 Video Port 2 pixel clock
> >>
> >>     clock-names:
> >> +    minItems: 2
> >>       items:
> >>         - const: fck
> >>         - const: vp1
> >> @@ -84,7 +100,8 @@ properties:
> >>       maxItems: 1
> >>       description: phandle to the associated power domain
> >>
> >> -  dma-coherent: true
> >> +  dma-coherent:
> >> +    type: boolean
> >>
> >>     ports:
> >>       $ref: /schemas/graph.yaml#/properties/ports
> >> @@ -195,6 +212,46 @@ allOf:
> >>               port@0:
> >>                 properties:
> >>                   endpoint@1: false
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: ti,am62l-dss
> >> +    then:
> >> +      properties:
> >> +        clock-names:
> >> +          maxItems: 2
> >> +        clocks:
> >> +          maxItems: 2
> >> +        reg:
> >> +          maxItems: 5
> >
> >             reg-names:
> >               minItems: 8
> >         else:
> >           properties:
> >             reg:
> >               minItems: 8
> >             reg-names:
> >               minItems: 8
> >
> > clocks needs similar constraints...
>
> Sure, will add in v2.
>
> >
> >> +
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            const: ti,am62l-dss
> >> +    then:
> >> +      properties:
> >> +        reg-names:
> >> +          items:
> >> +            - const: common
> >> +            - const: vidl1
> >> +            - const: ovr1
> >> +            - const: vp1
> >> +            - const: common1
> >> +    else:
> >> +      properties:
> >> +        reg-names:
> >> +          items:
> >> +            - const: common
> >> +            - const: vidl1
> >> +            - const: vid
> >> +            - const: ovr1
> >> +            - const: ovr2
> >> +            - const: vp1
> >> +            - const: vp2
> >> +            - const: common1
> >
> > Why are you defining the names twice?
> >
>
> For AM62L we don't have "vid", "ovr2" and "vp2", the dtbs_check will fail=
.
> Could you please suggest a better way?

You already defined them at the top level. Here in the if/then schema,
all you need is 'maxItems: 5' and 'minItems: 8'. But then you already
have that as well.

Rob

