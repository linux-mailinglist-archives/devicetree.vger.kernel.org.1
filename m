Return-Path: <devicetree+bounces-14192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D377E2A3B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D513281281
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E51B29427;
	Mon,  6 Nov 2023 16:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CVasm6wd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC0229409;
	Mon,  6 Nov 2023 16:47:30 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 076A7D6A;
	Mon,  6 Nov 2023 08:47:25 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so2858997f8f.0;
        Mon, 06 Nov 2023 08:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699289243; x=1699894043; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yqYzrszN+IaT1/oKFU4PWrGviHOrDEzBbPDqj1+LBl0=;
        b=CVasm6wdyLtnyUMJTL9JAx50S9kyMVVBGjs89/h5E9iaHhucXLpPdpv3muDDywykyB
         s6Dbe2OAN0eIOQt1FXsDLpV+ONgSTJMACep/uabbrpqe9+3s1pq2VjCAneRJX2YCnubs
         b9v7/0DSZEM+DoIH88s8cAxAMX6V9ny1O/8x3n4beW8veJx+kxSZIw7LsucwgW7+qmV5
         ZgGZIIXN//EulKX6wOWJk1ALUIzxn0Z85DiZg+IZsKzaofVPHywDDpbVrbjBJLcPhXSn
         bgZvDFPLeLoEcTHOBCmh+9XOLkIaECauF/2lsjUP7xuIJj4PDJfDrW+turWn8A+UVBfh
         QuHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699289243; x=1699894043;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqYzrszN+IaT1/oKFU4PWrGviHOrDEzBbPDqj1+LBl0=;
        b=ff4+miV2og+sGdjqYTZYpR9kGrnkZNcm1UtgqNxWrG8MCaHFJErrAE2esLaLxLD1oO
         /DAhVaLqYGAohnKLB8Uf4yKP8H1+7NxS/A2zDYSv0NzN/8wRdNAr/3jsvJZNntb0aspi
         XTvzo3Jp7vDwfQ5i7waHE6CfMO72eCC9CdEnuo4Pi2y2e+jYqww/jZ4nsS9ljzUvHxBG
         ide4MDXuHpExXlLHHs9DeHsYcPY+QLNkB8pZdseblm8Y3QNw73PCsAsbZc7Qvz+HWnpr
         PJ1tkjxv8FeA30IxpAzb2ysX+T9Ifoji5XIv79dNGKapN08pS8eBqm1v5zL13FZNZ8vo
         LxZQ==
X-Gm-Message-State: AOJu0Yyg/xU8jLkboxfSqO0x/JbSinmycrmE4NvrXgYru++WfSZ6XNMN
	bE8Ruo4CQ/hffbsnII/sqHs=
X-Google-Smtp-Source: AGHT+IG59dv06tmVk9jEDyTcD9jprNzHeRCcAocDZoE44DRS02+MvSsz6cG7UQXtm7uvRyZnpzEMJg==
X-Received: by 2002:a5d:6d04:0:b0:32f:7d50:62f8 with SMTP id e4-20020a5d6d04000000b0032f7d5062f8mr61504wrq.3.1699289243025;
        Mon, 06 Nov 2023 08:47:23 -0800 (PST)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id f18-20020a5d58f2000000b0032f983f7306sm57582wrd.78.2023.11.06.08.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 08:47:22 -0800 (PST)
Message-ID: <6549189a.5d0a0220.243a.055d@mx.google.com>
X-Google-Original-Message-ID: <ZUkYmAkEF8/bcHq/@Ansuel-xps.>
Date: Mon, 6 Nov 2023 17:47:20 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Robert Marko <robimarko@gmail.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next RFC PATCH v3 4/4] dt-bindings: Document bindings for
 Marvell Aquantia PHY
References: <20231102150032.10740-1-ansuelsmth@gmail.com>
 <20231102150032.10740-4-ansuelsmth@gmail.com>
 <20231103-outboard-murkiness-e3256874c9a7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103-outboard-murkiness-e3256874c9a7@spud>

On Fri, Nov 03, 2023 at 01:08:45PM +0000, Conor Dooley wrote:
> Yo,
> 
> On Thu, Nov 02, 2023 at 04:00:32PM +0100, Christian Marangi wrote:
> > Document bindings for Marvell Aquantia PHY.
> > 
> > The Marvell Aquantia PHY require a firmware to work correctly and there
> > at least 3 way to load this firmware.
> > 
> > Describe all the different way and document the binding "firmware-name"
> > to load the PHY firmware from userspace.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > Changes v3:
> > - Make DT description more OS agnostic
> > - Use custom select to fix dtbs checks
> > Changes v2:
> > - Add DT patch
> > 
> >  .../bindings/net/marvell,aquantia.yaml        | 126 ++++++++++++++++++
> >  1 file changed, 126 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/marvell,aquantia.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/net/marvell,aquantia.yaml b/Documentation/devicetree/bindings/net/marvell,aquantia.yaml
> > new file mode 100644
> > index 000000000000..d43cf28a4d61
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/marvell,aquantia.yaml
> > @@ -0,0 +1,126 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/marvell,aquantia.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Marvell Aquantia Ethernet PHY
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +description: |
> > +  Marvell Aquantia Ethernet PHY require a firmware to be loaded to actually
> > +  work.
> > +
> > +  This can be done and is implemented by OEM in 3 different way:
> > +    - Attached SPI directly to the PHY with the firmware. The PHY will
> 
> You a word here? Should that not be "SPI flash"?
>

Added!

> > +      self load the firmware in the presence of this configuration.
> 
> > +    - Dedicated partition on system NAND with firmware in it. NVMEM
> > +      subsystem will be used and the declared NVMEM cell will load
> > +      the firmware to the PHY using the PHY mailbox interface.
> > +    - Manually provided firmware loaded from a file in the filesystem.
> > +
> > +  If declared, NVMEM will always take priority over filesystem provided
> > +  firmware.
> 
> This section here reads entirely like "software policy". The first
> bullet in your list is fine - as that is what the PHY will do itself.
> The second and third bullets here seem like two different ways that
> someone could integrate their system, and I am not objecting to either
> of those ways of doing things.
> The priority system that you mention however I don't think is suitable
> for a description of the hardware - the PHY itself doesn't require that
> an external-to-it flash device take priority over something in the
> filesystem, right?
> 

Yes the priority system is just something in software and nothing about
hardware. I dropped in v5. Thanks for the review!

-- 
	Ansuel

