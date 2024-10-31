Return-Path: <devicetree+bounces-117912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C28E99B84B2
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40B8A1F24CDA
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E0E1CDA0E;
	Thu, 31 Oct 2024 20:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HdqSMMiQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED7E1BBBC1
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730408142; cv=none; b=uHoaE2GizgacnefZCtT7nEE/mORsJZmxuT18BDMbZt2Mt0o+TegM5sl4y9k2iVsMyH/mv1itVGIrWz/ihOFJhq+M+c+wH7PGMKkmePkkm8LnEk//jc3xo3XT5wvBA/jxk1LKxBp92JQ6ltU9fke0IH8tYTfU7aObyl++nvPVuaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730408142; c=relaxed/simple;
	bh=5QF1GfxDyoWq5h+USFwpYEnKgfZ8PnsYLlMZFcmmpNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUgF/onNvYMWTOvF6Hq7/eNttIX87GQdMNYxW4Gi3joKGycYcelLTau70fblD0ueZ+4gV6t0G/GUNBqtz8n3WQnwxky90ABRBd+BPU9FG1OGyxPh0fEPQX1y3L+4O7ww2vEyrtEvuAfdU8scSV4+supWrrCt2hFeOiAaCNsDq6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HdqSMMiQ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so1639959e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730408133; x=1731012933; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h164uvathdh9GwUZcWXqlrzCUWdwa05VF7nF2pa0Pnw=;
        b=HdqSMMiQS0KjL7IyJNWmdzRNlUnOSYeWVwuRZf85FZsLXk4FOcD62UW0lpdqNIw+8/
         mCarBGyn01PIlmdYQqa6+FFzl9ORXX70H+5b8HSrD8spM7ARe/sw5j1GOS8cyJ92OL34
         BfiUxPPry+Qc4fYPjTU2JDb6ewzQqCbMEWFKzJX7gnqE1gTtxNi2BhBBTAL40rDZT6IU
         qUYYAnmUroOU7FXI45kEVKkhBksI89zw5B3swMJvw5XazqHctqyCu3zK+wLMG31F5BZX
         QngREXtv943TH/olNjB1Y9xRvcZv22tK0IqG7qSHiQgwpQ8xnfYKIEgHG/sna76AxeEw
         sUbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730408133; x=1731012933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h164uvathdh9GwUZcWXqlrzCUWdwa05VF7nF2pa0Pnw=;
        b=HzknNXzeI73M3t+Bqn1bnEJ9RE3IRAt2W76joXMt7iYPPdOIyJpI2L6Sc2i2aEcjqC
         NHvrty9TYx24nOu5SvaptOTBq6NWmxQ69b4wOv8GgnpXZE4VtoGCWaSECyWvn9BBygnh
         GDTc8t3LabeAxaWjndjTBiAJzILsQ/EIhos+D4IKrZWIGbEULdqxT/x4bPREYyk0G5MT
         d98M+o+o6FiFJGirOIZkluSKpLObuFlKXtba9vSapkZ+WygGnxrGh1tbpsJOn7mwn3rX
         +3Z5L7BZlqjkkzRZT3onUEB/BL+DX4UbkeIdJIpvI46HmGhXDJA3fZinqlQINLwQ5Rh8
         +NRA==
X-Forwarded-Encrypted: i=1; AJvYcCVGhebLtIMWzIKyhtgubbnmz0BSG8/fzovEdQAdU/z8xDGrf//wJb4s3udm8TnphD2bD3WIcEV86Nc4@vger.kernel.org
X-Gm-Message-State: AOJu0YwM6omGGQPek8WigcO3Y5ptKL4P7F0PvvCDKxXfIO8nzo0i+DM2
	BM8bIKeTJLUQLLL0zaEWbbUJ5TN9vbe6NYpaXmF3B4tMZLqxOscXbOaUBgYU3tc=
X-Google-Smtp-Source: AGHT+IGJ+tWCwIEDayGEBAeK10meBPh3PGgEPOw1Qyld1seRLcMErL1vcpY7qkKPYdHBp7JrKlK46Q==
X-Received: by 2002:a05:6512:32c7:b0:539:a353:279c with SMTP id 2adb3069b0e04-53b348d8f6cmr11419018e87.28.1730408133014;
        Thu, 31 Oct 2024 13:55:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdcbcf6sm320927e87.194.2024.10.31.13.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 13:55:31 -0700 (PDT)
Date: Thu, 31 Oct 2024 22:55:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Guido =?utf-8?Q?G=C3=BAnther?= <agx@sigxcpu.org>, 
	Robert Chiras <robert.chiras@nxp.com>, "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: display: nwl-dsi: Allow 'data-lanes'
 property for port@1
Message-ID: <jfvvw7rnkxp4xbcmcikyxyfmisx3bmng6uqc7yqsvkzhc3hhgq@arfzqn6raxcg>
References: <20241031194714.2398527-1-Frank.Li@nxp.com>
 <gz3ifraqt7ga4isxhx6negcmfngen5jmhmcecnvy7gu7mpfffw@j65umo6arwc7>
 <ZyPmeippTU8SQLkH@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZyPmeippTU8SQLkH@lizhi-Precision-Tower-5810>

On Thu, Oct 31, 2024 at 04:20:10PM -0400, Frank Li wrote:
> On Thu, Oct 31, 2024 at 09:59:26PM +0200, Dmitry Baryshkov wrote:
> > On Thu, Oct 31, 2024 at 03:47:14PM -0400, Frank Li wrote:
> > > Change $ref of port@1 from 'port' to 'port-base' and add 'endpoint'
> > > property referencing video-interfaces.yaml. Allow 'data-lanes' values
> > > 1, 2, 3, and 4 for port@1.
> > >
> > > Fix below CHECK_DTB warnings:
> > > arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx-lvds-tm070jvhg33.dtb:
> > >  dsi@30a00000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
> > >
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > >  .../bindings/display/bridge/nwl-dsi.yaml       | 18 +++++++++++++++++-
> > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > > index 350fb8f400f02..5952e6448ed47 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > > @@ -111,11 +111,27 @@ properties:
> > >          unevaluatedProperties: false
> > >
> > >        port@1:
> > > -        $ref: /schemas/graph.yaml#/properties/port
> > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > +        unevaluatedProperties: false
> > >          description:
> > >            DSI output port node to the panel or the next bridge
> > >            in the chain
> > >
> > > +        properties:
> > > +          endpoint:
> > > +            $ref: /schemas/media/video-interfaces.yaml#
> > > +            unevaluatedProperties: false
> > > +
> > > +            properties:
> > > +              data-lanes:
> > > +                description: array of physical DSI data lane indexes.
> > > +                minItems: 1
> > > +                items:
> > > +                  - const: 1
> > > +                  - const: 2
> > > +                  - const: 3
> > > +                  - const: 4
> >
> > Why are they indexed starting from 1?
> 
> Not sure, git grep -r data-lanes Documentation/devicetree/bindings/
> Most start from 1. Not sure latest DT team's intention.

They usually start from 1, because just before the property comes
'clock-lanes = <0>'. Otherwise in most of the cases the lanes are
indexed from 0.

> 
> Frank
> 
> >
> > > +
> > >      required:
> > >        - port@0
> > >        - port@1
> > > --
> > > 2.34.1
> > >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

