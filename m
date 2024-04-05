Return-Path: <devicetree+bounces-56658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEBA89A0B2
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 17:09:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EED81C2223C
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 15:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDC516F848;
	Fri,  5 Apr 2024 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C0r7llPk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3EE916F28C
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 15:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712329794; cv=none; b=YnM74rIDymuGBTbzedcPzn7iDfdl86D2xUv+Hww4zASyAkEAQVpQfRdo5t+A7AneYrJSgrgtn/W6bQ/VtQ30fU0gaTH2kWXgmDJluz3djvaJe+MunqUU2qvpA5DmRhDkKvW8P4iaqtDIGkrWLYXLUVRLYA4M52q99eJOUtp7Kcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712329794; c=relaxed/simple;
	bh=MndKlRKS8QxV6sX6KBn3TevEpzcWoPI3AwXL7LRFoak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GcDf7n2LmQKq245EdVcbFFV76UeeGJw+twKBehGDyl+CTkPRz3lgsgph0ejGP83NMFdqbNPOWqRybsMOePgYT75uq9OWA3vD8ABdsVCDI9mnqSV3vJIaam9uD5IoUIH/wQQIuFVAtidil5KdumFoMDTkrcMSGjydynEhukewgA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C0r7llPk; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-516d0c004b1so2172347e87.2
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712329791; x=1712934591; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XJdX04IMH/Sr5fcTtZ7IsQwpDomVdtoarGfuP7SX06s=;
        b=C0r7llPkQ1eVPMVLpmTpiZ+OV5frNAbLWgSP2sKKgVOCQJag98hQQE9H3+ZSwLFgBE
         n40K3khc/0n0PO6eLYrpgUsu27fOl939IkuhXdTvMI9ShXVhq1iT+GGi+soOLh+IW4Lm
         9dZRbYPh0MiRD6xw4VhUnfQvhms9/8POjU1TgvJTpS+oyTtP92Rtp7CF+d4yIdEiowmb
         GCsnGHfiEz4T814/Lqt3S4QwczCKXwZsd09WhKuPNAVyA+GcTlFf9EYXcfOJ9KZ1sIF9
         PWs9mJZjm9gKDuCGlfmGSH7Tdh5gmYFsMZDYr0oQSjI60aLaC0HtPTf9S/SAd/1bKHG9
         0lBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712329791; x=1712934591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XJdX04IMH/Sr5fcTtZ7IsQwpDomVdtoarGfuP7SX06s=;
        b=EFlUJzP38XdpWTKu/ozvGXRb6jg8SJPeu9FhBZwyLJnbzktg0l6+q+G11aXhaRekkC
         c094aign6XQNwcTwSYs4QIyJtr1qeczSst6kzISqoLYAV/RuFm2zC3SD6sDmpX5Di295
         uO6UIS8nZLhwKSdxtlchMm2mdSCc0kRl+rSMqzrAho2ipZ4LfKYJg8LjIVNYhLTp4LMm
         PwzgnlVP37c2ffqi8cdLNYRWSNbdyON6EbaXVjN7bP91s5fhAzvb2+bnbp2ZCPChZ8u5
         e7YvDGX+Y7aEY6pee8Tz2NDVAhvxImoWtF1ZdVvgT6M9NmnEh9lLU2DGQQTR4kUcZjH1
         2zdg==
X-Forwarded-Encrypted: i=1; AJvYcCVA8qepKLLwyw45c/L3bEJJxjnyV+GSZwA3HkvJWJ6zM8IFJAGev0ZT9SozQ9jI8EcFpYLMkabAG6aAibhM6AGr7KhT3WhaIzknuA==
X-Gm-Message-State: AOJu0YwhzWl+9w+542czyjYEcSDWXR84LUMPeOy22tOlLX3v76NMC6el
	Fi+GOPvq2DCr56BX3jWMySMjHeyReWAiS4+lBNVldtpL34EKkxcDIskYtHZzSCE=
X-Google-Smtp-Source: AGHT+IHr0Gt4JNXkFtNyK4SoOL2Aljmp8TnDpiAo6jcvc0P5uChKtBqN0OC5YPsqfbIT76tBCMSLfQ==
X-Received: by 2002:a05:6512:44b:b0:513:cf5e:f2ad with SMTP id y11-20020a056512044b00b00513cf5ef2admr1527967lfk.60.1712329790930;
        Fri, 05 Apr 2024 08:09:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b00516cf20b276sm214121lfr.86.2024.04.05.08.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 08:09:50 -0700 (PDT)
Date: Fri, 5 Apr 2024 18:09:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH v15 2/8] phy: Add HDMI configuration options
Message-ID: <7uculhmuov3z6o4xgv54ubdmju52y4jw7qkjbnslnyqbqgf5ku@sxrkuw4uwavx>
References: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
 <20240306101625.795732-3-alexander.stein@ew.tq-group.com>
 <20240306-inquisitive-funny-bull-017550@houat>
 <ZhAJridEyhUeFVr0@matsya>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZhAJridEyhUeFVr0@matsya>

On Fri, Apr 05, 2024 at 07:54:46PM +0530, Vinod Koul wrote:
> On 06-03-24, 15:48, Maxime Ripard wrote:
> > Hi Alexander,
> > 
> > On Wed, Mar 06, 2024 at 11:16:19AM +0100, Alexander Stein wrote:
> > > From: Sandor Yu <Sandor.yu@nxp.com>
> > > 
> > > Allow HDMI PHYs to be configured through the generic
> > > functions through a custom structure added to the generic union.
> > > 
> > > The parameters added here are based on HDMI PHY
> > > implementation practices.  The current set of parameters
> > > should cover the potential users.
> > > 
> > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > Acked-by: Vinod Koul <vkoul@kernel.org>
> > > ---
> > >  include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
> > >  include/linux/phy/phy.h      |  7 ++++++-
> > >  2 files changed, 30 insertions(+), 1 deletion(-)
> > >  create mode 100644 include/linux/phy/phy-hdmi.h
> > > 
> > > diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> > > new file mode 100644
> > > index 0000000000000..b7de88e9090f0
> > > --- /dev/null
> > > +++ b/include/linux/phy/phy-hdmi.h
> > > @@ -0,0 +1,24 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * Copyright 2022 NXP
> > > + */
> > > +
> > > +#ifndef __PHY_HDMI_H_
> > > +#define __PHY_HDMI_H_
> > > +
> > > +#include <linux/hdmi.h>
> > > +/**
> > > + * struct phy_configure_opts_hdmi - HDMI configuration set
> > > + * @pixel_clk_rate: Pixel clock of video modes in KHz.
> > > + * @bpc: Maximum bits per color channel.
> > > + * @color_space: Colorspace in enum hdmi_colorspace.
> > > + *
> > > + * This structure is used to represent the configuration state of a HDMI phy.
> > > + */
> > > +struct phy_configure_opts_hdmi {
> > > +	unsigned int pixel_clk_rate;
> > > +	unsigned int bpc;
> > > +	enum hdmi_colorspace color_space;
> > > +};
> > 
> > Does the PHY actually care about the pixel clock rate, color space and
> > formats, or does it only care about the character rate?
> 
> Nope it should not

After taking a look at the Cadence PHY driver, I share the feeling that
hdptx_hdmi_feedback_factor() should be reworked into drm_display helper
and then the struct phy_configure_opts_hdmi can be limited to having a
single unsigned long char_freq or bit_rate field.

I'm not sure whether we need anything corresponding to the TMDS Bit
Clock Ratio control. As far as I understand, it can be deduced from the
Bit Rate.

-- 
With best wishes
Dmitry

