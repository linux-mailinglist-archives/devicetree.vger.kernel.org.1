Return-Path: <devicetree+bounces-117914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680F9B84BD
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 579A21C2247F
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E43951CBE86;
	Thu, 31 Oct 2024 20:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="esFV+Hhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9431CC897
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730408189; cv=none; b=fNrAFd/HqajwwIUNO8xEsKexb9+AnzDWMlBosuuawlZvbNDZFwHePehRdtWVLKhYb8TCEoN61cHtNW1CS+jpEPuZ/lEsw86BriKV6GMYYMRR5RAxzYrZUfeQ/5SbfZic0UF8UtkuLw9F20uKz9/79ICy2Em8w9Ocj4JpW+kz7fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730408189; c=relaxed/simple;
	bh=datLNfc/SJSvlnEPAc8X9iM9BUyMX8+e8M866MfZu/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qC1qK9wn5yJ9ZVp6NMV2xvXu80HlxwszgDAggNYmONfHoyBl0UA9nyM1S3AattWk5Z0y5p3DJI60esq3ZDue2ViqE2IwzjbcLSeRtbllITW4j4YqzGGxLjG4Ms4KOXPsCXXZi4cg6loSQU9ITIXyUlKRFA48KHnqbAdXBhEboC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=esFV+Hhn; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso13173041fa.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730408182; x=1731012982; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wcGe16S8C8s7dwE7spgvv4ewwqDlWbIAjr6C3TYG2q0=;
        b=esFV+HhncQ7T4vktBBhMDusO7oQ68UbFFl742Hu2pX5hXMkcYs90x3dby1Ph+M14kw
         Xn0PTJZvjVFyaPA2xUejNIHMXnm9BDsxx9YKC+SY2fq3bfPfnJ9mn6z1a/RC40Xbs1/A
         cSsf+DXdL1aPOj3TqU2FQmViFeoamWna93QMrg3630DBcSd3FeVSLH9iAwYMqIPrnFG8
         739CNlLeNeH63OiPBdFx+0U6uVj2K1PazDP3TWE3Ud5zOyBK/fy4h/7LUy3wIjjeIPlo
         AoR1l5U8MiKx2GzRF+hzR5OuUBa1utk9/AkPENxNEEvC0GsB6Wv+0jo5xqdOmotfvRZp
         BcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730408182; x=1731012982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcGe16S8C8s7dwE7spgvv4ewwqDlWbIAjr6C3TYG2q0=;
        b=ldVVTj6Eu6cMTwIzYTcVxoDJJCVR84xx1xwA3Zh9rUi8ARJAJpC6+39YFGEdHSDayt
         HtmA/oaxTBurZaOLy7avoEd44/CFNbEq7p9P+jNplMZGfmCGic7V0DM8ympKMXKebt60
         9bNHUmRtFFulAoV4wWxYJay16DRpDk6BLzIDS6M1bCizaXquL02TCPBathvs/yVFqlmd
         LoDPMtwYinRgmz9TnFVNrW4YxUHb3dfNgtYWAN20AlMx0jriu8Jo8vzslPaxXfsVrSt/
         oX2SN/5KVwRnHF/xzAwn3Q85sW0bpSwnWfZi7JKIKO3RZOqrVfy/ZasMo5LlBZagc5X9
         s77Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+iUpcfINfpNEc7kxRwWJxGqxIZieo+2J26jtbXKlLlkogVUYMhXgijJjYCbvmXngPzq9BKLYCffxu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5fORyFLkg4CZAvD7hoLsq09HFLMxCnJW66EJz52VNOXZ2H98/
	MGwMpcAnvDL71zVJHzZ8UQlTvp2RovgZHLM3DjZyKA1J19o+su7h8lvQGjQEVlo=
X-Google-Smtp-Source: AGHT+IH1Dxv4hPTZoRhxByuTLT7M0QZnSUS3wobA+1jRRApV2idHM9Yb0PVuIF7o5aoJiS6cP3lHOQ==
X-Received: by 2002:a2e:4c12:0:b0:2f6:6074:db71 with SMTP id 38308e7fff4ca-2fdec5f831amr20876381fa.17.1730408182016;
        Thu, 31 Oct 2024 13:56:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a66b8sm3316571fa.78.2024.10.31.13.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 13:56:20 -0700 (PDT)
Date: Thu, 31 Oct 2024 22:56:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v18 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <xmfohy6lpyfdc33gqt7vyagfqfhqwyb67id6gla6ydmah6ryuu@jll5fz2wx7dg>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <e11ba0cf836d6f27935f58b7987e792026ab0233.1730172244.git.Sandor.yu@nxp.com>
 <22f3pkf63uphnx3opld6ibkhptbtxqoguqgu6iswb6w4hzkxxd@pwbdwjdodcnc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22f3pkf63uphnx3opld6ibkhptbtxqoguqgu6iswb6w4hzkxxd@pwbdwjdodcnc>

On Thu, Oct 31, 2024 at 09:55:45PM +0200, Dmitry Baryshkov wrote:
> On Tue, Oct 29, 2024 at 02:02:11PM +0800, Sandor Yu wrote:
> > Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> > 
> > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > ---
> > v17->v18:
> > - remove lane-mapping and replace it with data-lanes
> > - remove r-b tag as property changed.
> > 
> > v16->v17:
> > - Add lane-mapping property
> > 
> > v9->v16:
> >  *No change
> > 
> >  .../display/bridge/cdns,mhdp8501.yaml         | 112 ++++++++++++++++++
> >  1 file changed, 112 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > new file mode 100644
> > index 0000000000000..e4b900ecf1ac9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> > @@ -0,0 +1,112 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cadence MHDP8501 DP/HDMI bridge
> > +
> > +maintainers:
> > +  - Sandor Yu <Sandor.yu@nxp.com>
> > +
> > +description:
> > +  Cadence MHDP8501 DisplayPort/HDMI interface.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mq-mhdp8501
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +    description: MHDP8501 DP/HDMI APB clock.
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description:
> > +      phandle to the DP/HDMI PHY
> > +
> > +  interrupts:
> > +    items:
> > +      - description: Hotplug cable plugin.
> > +      - description: Hotplug cable plugout.
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: plug_in
> > +      - const: plug_out
> > +
> > +  data-lanes:
> > +    $ref: /schemas/media/video-interfaces.yaml#/properties/data-lanes
> > +    minItems: 4
> > +    maxItems: 4
> > +    description: Lane reordering for HDMI or DisplayPort interface.
> 
> So, HDMI or DP port? I don't think the format is actually the same, so
> it is either-or.

Please ignore this, I've misread the text.


-- 
With best wishes
Dmitry

