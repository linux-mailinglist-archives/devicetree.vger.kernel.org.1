Return-Path: <devicetree+bounces-255134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 025F4D1FFAC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A721930B5A88
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F223A0E93;
	Wed, 14 Jan 2026 15:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fHqNHHoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFCA3A1A39
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405826; cv=none; b=gYDLHme3dhMkc4a9iiRQJ40SXQhZZbBeptVX0TFb/zFKq/UnKeNRnzGANI/kdnWrVPMcO9RuBbCg6cF5cUYIc8YkxWiofSDN7N0vT0fP+23/YJ7qAJlPP43M28az1a9r/4/KlefqFC0oy2WuVu+yv2nUxYypPFtLvWQxl+6lmd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405826; c=relaxed/simple;
	bh=ddQehrH3WSA3nGxMiaRyAYUbIlWNzS5C9Jp+zx+8H8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xp0OQXts6atI6mSGcMBASSnr7L979jXeoWvrmwiiWxbC2qaewA/d8TF8ku9eRxjiYuajSCOvUAepaaejwTyN9+aX6vkVmoO9SUhhFtSwU42HdH6jyjxgw0FvfXwI5iZoAQ7WI5K1WDBh8Tyb5YxG+MAwMrEJXQp8hynB5w0/0QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fHqNHHoD; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-432d28870ddso3556465f8f.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405821; x=1769010621; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bOiuVPrIXtE3jtOHLTY4+B/ZSnvL+yz9lGk8+TFFzig=;
        b=fHqNHHoD7D5VZmBZqNtYp067LU/SrgHKWVBJi4y0eNECXv/XPcOHnqDI+xgib96fbi
         UxrYOxxtwtKMGAK26ISfYunfWRjykjvxD5Pmycz0Ndf6HHj93XFG3PdobFh+yEG1aysu
         Y+IWkT7zBiCL4bBbL7xT/9plnWH/G6fkwlDm0cD/tkpjRfhkF/yxATVKSPu6bDDHtD3G
         LP6SAd9gwHx9Xzto76YC9lq1V1hNHIDNOzKfp8ngvoZe/NV286Fmu8e0GNB6ucMbhMwO
         5cHx0XjJZngKJV3zGMLYE/4PC1xwGqqMxDbnyeH4muNON/NrbSqSGG3d1+NzUDvEWjnM
         hoXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405821; x=1769010621;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bOiuVPrIXtE3jtOHLTY4+B/ZSnvL+yz9lGk8+TFFzig=;
        b=rZ6VyPekRtHVBnTN/rj8DZ6YreIM1xHpXUmua8bMCsB+LKF8YSpIKPPyVw7z78+q4H
         aY1gnGV8VLkfAdiC3QGF4HfNvHUPMRIQOzVkQcmtnZvcjsqJ/4jUNYMTlWt4EQqCFb1U
         csJkr0mXGgMildbVpwDVj6hQcDGIV9vHULemH0hVH35MSjlXALie1YGliEttKgROmLLg
         mM1kADjabc1/yIiY9Gs5+YUhXbPqatgi/WP3L9qVuZwtF5HEMnyotAsNrh28vnTh8V/q
         Imhl075qYGCHIbzM5KBVYvhNRX7GYwhvUh6DQDiYZUSMCQyZQ3cXJlIUJZVwyKjTEa0q
         1NJA==
X-Forwarded-Encrypted: i=1; AJvYcCWHWEBr/l/heT1kAwrXs6EnaTcyp0J2K0QCqdDz2PhWY1VuytdYeiz0DnIYpSAjBMGlndG/e4aIQDYL@vger.kernel.org
X-Gm-Message-State: AOJu0YyuWpZlUA14a7rYpTJzCPCwuRD+S8634T5BMkiTCvdd6M9FPY25
	l/uSl1Kw35lNOD+HAxTh+WJe5723uSan2BXk7FjPCi8dfvq8BrPVM1+n
X-Gm-Gg: AY/fxX7otiguFFqPogrKzfqsb0tP/g8gLE2wsPtSX03evJ5UozE+dH0+zRxDC/hkiNg
	SFQTDbCGxC9NYQblPxu1jPNBmzObAXeWRhwHcoD/MO9iWhEboGxuJbhG/SEtPZIfqdGiZPN4F6N
	/ehS1hq60+ZQeyzjBHRgYRQTmcE1B0/HYW2Fxd8x/H2zm4YZc5BUoEV+Na7uzeOi6/SyfC3hNPA
	uQXd0s8RbKC0lGXi0l4FXvHzeLD+ZVGTL9YsImrwbaqZlQjAahUM46IUYAMCwUNXfPWpbyYBleZ
	G44DrPGwdrAusvmBnkO1ehSt/9yyb4k46xUjP76EcI/rF+S942eJAC75wZM5g9hofO6ePj/6jF+
	gkbtv2X+kDXCRxW7lt7D/So/lz/9OhrpIuIppr8QsjusZXdqd9ZkryTAmv52AhYj6DdT6bTRW+0
	AdzgFn7zNlVgD2FY46ggRZr4zIT8BZkaxFeYeqsFZQratVplFAL9fgJeHc99qJPGLY
X-Received: by 2002:a5d:5d81:0:b0:430:f3ab:56a1 with SMTP id ffacd0b85a97d-4342c557659mr3494985f8f.42.1768405821138;
        Wed, 14 Jan 2026 07:50:21 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a650sm26077f8f.4.2026.01.14.07.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:50:20 -0800 (PST)
Date: Wed, 14 Jan 2026 15:50:19 +0000
From: Stafford Horne <shorne@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
Message-ID: <aWe7O7njC1gTIUcA@antec>
References: <20260114151328.3827992-1-shorne@gmail.com>
 <20260114151328.3827992-2-shorne@gmail.com>
 <0bb9de0d-f811-45ff-b673-8811540b5376@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0bb9de0d-f811-45ff-b673-8811540b5376@kernel.org>

On Wed, Jan 14, 2026 at 04:43:35PM +0100, Krzysztof Kozlowski wrote:
> On 14/01/2026 16:13, Stafford Horne wrote:
> > In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible
> > string for opencores,gpio") we marked opencores,gpio to be allowed with
> > brcm,bcm6345-gpio. This was wrong, opencores,gpio is not hardware
> > equivalent to brcm,bcm6345-gpio. It has a different register map and
> 
> "is not compatible with brcm,...."

OK.

> > is 8-bit vs braodcom which is 32-bit.  Change opencores,gpio to be a
> > separate compatible string for MMIO GPIO.
> > 
> > Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for opencores,gpio")
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> > ---
> > Since v4:
> >  - New patch.
> >  - Rebased old patch and rewrote commit message.
> > 
> >  .../devicetree/bindings/gpio/gpio-mmio.yaml      | 16 ++++++----------
> >  1 file changed, 6 insertions(+), 10 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > index 7ee40b9bc562..a8823ca65e78 100644
> > --- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> > @@ -18,16 +18,12 @@ description:
> >  
> >  properties:
> >    compatible:
> > -    oneOf:
> > -      - enum:
> > -          - brcm,bcm6345-gpio
> > -          - ni,169445-nand-gpio
> > -          - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > -          - intel,ixp4xx-expansion-bus-mmio-gpio
> > -      - items:
> > -          - enum:
> > -              - opencores,gpio
> > -          - const: brcm,bcm6345-gpio
> > +    enum:
> > +      - brcm,bcm6345-gpio
> > +      - ni,169445-nand-gpio
> > +      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
> > +      - intel,ixp4xx-expansion-bus-mmio-gpio
> > +      - opencores,gpio
> 
> So if you are changing all of the lines here, you can as well sort it
> and put the new entry not at the end but in alphabetical spot.

OK, I will sort the list and mention that in commit message in v6.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks,

-Stafford

