Return-Path: <devicetree+bounces-13626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9069F7DF5AC
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 16:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FD77B210F5
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FBA81BDEB;
	Thu,  2 Nov 2023 15:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FuR0c4/r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94431C280;
	Thu,  2 Nov 2023 15:07:47 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6014182;
	Thu,  2 Nov 2023 08:07:45 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso619517f8f.1;
        Thu, 02 Nov 2023 08:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698937664; x=1699542464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=f94qUiebgt615Sr9cehEdI7ADckCMJr6fkub4RY4NUg=;
        b=FuR0c4/rjKGVh1j0SMywJBYuTDpOODK+2mH5bRNR0I3XlIvWnI482myh7Rhz5l7Lgf
         9PSnFm2b7FR/DA2XJcudJ/tm+G4Ih6Max+haRbwsaVoAuafyLzss8QHWsJUIuWUf3aG8
         y32GndC4EfqAMQjnyM70LFqX7L+6h1Kn3HJzy+SEgV9rf4DimRZhPkiZnf5MR1/DLdhL
         ycqu1bnqXt50rFo55dvuQbV7xziNGfHYQq07xo75p3kqgytEoigeuqXoOfh4+SBuQKSt
         111wIm6+zt5ZeL+NAcLnqoOBo7sdk6N7milGQZKTroFKqM2x9p+HppQda8uuH1qOB1ID
         QIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698937664; x=1699542464;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f94qUiebgt615Sr9cehEdI7ADckCMJr6fkub4RY4NUg=;
        b=vcWL/FaGpd3f34br8xRR4Xx0TAXB+mgpBUdDd1za4WgcnlBP+Ngoe7h4izl1D9ckww
         WilvZLg8XouE5ln9gqGW3fA0UP9ZW90S1IxVOKOgqjyGCek1bJNlYm4Ym9kmnIotsvfF
         r5/Bk6bXUCJBw0Z79NVbuGi6E8jdSDso+M7bt8xLXjzm7s8fZqBRV0d/jeFH9S53/wYp
         Go+OU0POm0bazXTcZST2KaCiyiAMBInecXSVKwOiQ1A20fklJTO9jcU/ndzgAA+ymDnz
         85MToAuUtsvU2ceCcYmv6EOvbEmwQTf2ygceJTdH/IwmBxroeg1sVfIgmQjD3aUR1x+2
         47TQ==
X-Gm-Message-State: AOJu0YxMihh1T0i57bKegn1eKIprWcNv8965f4cot15G+koGQNIT1uiK
	YxARdYRI8hkJFQJcwnHOQTE=
X-Google-Smtp-Source: AGHT+IH5ZE9FSQlNE3PZ8RAa+Lcifz39U2xdAz+PBp97L7K0uZJ1QXZtktKzDfi290zWpExYpLYK6A==
X-Received: by 2002:a05:6000:1849:b0:32f:798f:2b3b with SMTP id c9-20020a056000184900b0032f798f2b3bmr13090330wri.16.1698937664078;
        Thu, 02 Nov 2023 08:07:44 -0700 (PDT)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id r15-20020adfe68f000000b0032dbf32bd56sm2697400wrm.37.2023.11.02.08.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 08:07:42 -0700 (PDT)
Message-ID: <6543bb3e.df0a0220.385df.cdb1@mx.google.com>
X-Google-Original-Message-ID: <ZUO7PTtOdWOqkknM@Ansuel-xps.>
Date: Thu, 2 Nov 2023 16:07:41 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Robert Marko <robimarko@gmail.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next RFC PATCH v3 1/4] net: phy: aquantia: move to separate
 directory
References: <20231102150032.10740-1-ansuelsmth@gmail.com>
 <5f60b2dc-4e97-49dc-8427-306400fb1b71@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f60b2dc-4e97-49dc-8427-306400fb1b71@lunn.ch>

On Thu, Nov 02, 2023 at 04:03:33PM +0100, Andrew Lunn wrote:
> > diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> > index 421d2b62918f..4b2451dd6c45 100644
> > --- a/drivers/net/phy/Kconfig
> > +++ b/drivers/net/phy/Kconfig
> > @@ -68,6 +68,8 @@ config SFP
> >  
> >  comment "MII PHY device drivers"
> >  
> > +source "drivers/net/phy/aquantia/Kconfig"
> > +
> >  config AMD_PHY
> >  	tristate "AMD and Altima PHYs"
> >  	help
> > @@ -96,11 +98,6 @@ config ADIN1100_PHY
> >  	  Currently supports the:
> >  	  - ADIN1100 - Robust,Industrial, Low Power 10BASE-T1L Ethernet PHY
> >  
> > -config AQUANTIA_PHY
> > -	tristate "Aquantia PHYs"
> > -	help
> > -	  Currently supports the Aquantia AQ1202, AQ2104, AQR105, AQR405
> > -
> 
> Does this move the PHY in the make menuconfig menu? We try to keep it
> sorted based on the tristate string.
>

Oh wasn't aware... Yes it does move it to the top of the list... I can
just move the source entry where AQUANTIA_PHY was... Or if we really
want, not create a dedicated Kconfig for it and keep everything in PHY.

-- 
	Ansuel

