Return-Path: <devicetree+bounces-18058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA337F4F92
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 19:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B15341F20D3C
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 18:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBAD5ABB6;
	Wed, 22 Nov 2023 18:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEk9gbLz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D97E8B2;
	Wed, 22 Nov 2023 10:32:27 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32daeed7771so8935f8f.3;
        Wed, 22 Nov 2023 10:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700677946; x=1701282746; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=G82jl5R85KrKlIvXF944oRqyBdLM61l/27VAJKW7ibk=;
        b=EEk9gbLz27lcdESPHQ/MA/b9inuVANaYxAqC5/a4f3278+XubpgeoqEEhwU45rlOg5
         A+rt8/U46mbzJtZK7Phj9X4i0DrQgNdyZGodT3BXC7BH19POCwI6RmFNLVIgjUMY1t9d
         JqUCS9h5f9gQhMrC9NHzeNeZHf/dsyr7z+13jOqECq28GaMW65fNBmsWk3nEDGaKeAGi
         uJ+CrcYUi2Fve64BVS6EDTXNyeYWEUOjsL/sIrgdG5HBIvAmAgANqE1oAwM3FgfG0Qk5
         Lcs6Y29+wwzhkhP/NTjYbVC7CjwuyNyHo3RoMzWJSwQzY6ZjXxFNvv1NtEtDAgdYC1Hn
         t38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700677946; x=1701282746;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G82jl5R85KrKlIvXF944oRqyBdLM61l/27VAJKW7ibk=;
        b=CKWaAebzoOfANrwiyWoTFegAKJWkt1n1e6GW8rI8LPUuoaIoqSTj11M6+Tr08QQJb/
         wZEf2TtfXY+X+wdTI/YshR5MghjvOU0Zd9v6yDOamRAyZhO9lCM0S3iw+uyan9+DNDdf
         lT2QbmB5vHOptNLbUvy66Rk2JlxuIEJuBR9KdncDYfH5uuAUdJDYIvPS92OE/Ay/nW3t
         H7aymzCTKJ3v3ioEctrnG44kXjVpVa1b9RJSQuR0edBYzqA7O/1g3wE8SYzRqK18arDH
         hd2x0mVG7vfQ5XVwXRtgQd9hPYCai/SbkC8WE0OC81WpIWRoUiGsBFEZFxLvbGSPH07o
         F81g==
X-Gm-Message-State: AOJu0YxsUVVRdU/RIQCtk171IP+i017SN0XGDEOpc9Szz5q6mMbF9S1r
	GEBItRQd5ksCGxBKTt+Lurk=
X-Google-Smtp-Source: AGHT+IHBQ4JaBRS5h/zdVUY4AjeC4ynRiLMVSh0VKCAq2uaozmjgxsKD4sDol97YRrGQU4AgThlqjA==
X-Received: by 2002:a5d:6985:0:b0:32d:9a20:c9e0 with SMTP id g5-20020a5d6985000000b0032d9a20c9e0mr2241676wru.61.1700677945993;
        Wed, 22 Nov 2023 10:32:25 -0800 (PST)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id b17-20020a5d4b91000000b003316b3d69b3sm63435wrt.46.2023.11.22.10.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 10:32:25 -0800 (PST)
Message-ID: <655e4939.5d0a0220.d9a9e.0491@mx.google.com>
X-Google-Original-Message-ID: <ZV5JNmi5T7WKMq4t@Ansuel-xps.>
Date: Wed, 22 Nov 2023 19:32:22 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	David Epping <david.epping@missinglinkelectronics.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Harini Katakam <harini.katakam@amd.com>,
	Simon Horman <horms@kernel.org>,
	Robert Marko <robert.marko@sartura.hr>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [net-next RFC PATCH 03/14] dt-bindings: net: document ethernet
 PHY package nodes
References: <20231120135041.15259-1-ansuelsmth@gmail.com>
 <20231120135041.15259-4-ansuelsmth@gmail.com>
 <c21ff90d-6e05-4afc-b39c-2c71d8976826@lunn.ch>
 <20231121144244.GA1682395-robh@kernel.org>
 <a85d6d0a-1fc9-4c8e-9f91-5054ca902cd1@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a85d6d0a-1fc9-4c8e-9f91-5054ca902cd1@lunn.ch>

On Tue, Nov 21, 2023 at 03:45:42PM +0100, Andrew Lunn wrote:
> > > I do think we need somewhere to put package properties. But i don't
> > > think phy-mode is such a property. At the moment, i don't have a good
> > > example of a package property.
> > 
> > What about power supplies and reset/enable lines?
> 
> Yes, good point. I can imagine some packages sharing regulators. Reset
> might also be shared, but it makes things messy to handle.
>

Sooooo.... Sorry if I insist but I would really love to have something
""stable"" to move this further. (the changes are easy enough so it's
really a matter of finding a good DT structure)

Maybe a good idea would be summarize the concern and see what solution
was proposed:

Concern list:
1. ethernet-phy-package MUST be placed in mdio node (not in ethernet,
   the example was wrong anyway) and MUST have an addr

   Current example doesn't have an addr. I would prefer this way but
   no problem in changing this.

   Solution:
     - Add reg to the ethernet-phy-package node with the base address of
       the PHY package (base address = the first PHY address of the
       package)

       We will have a PHY node with the same address of the PHY package
       node. Each PHY node in the PHY package node will have reg set to
       the REAL address in the mdio bus.

2. global-phys are redundant and can be dropped.

   They are used to facilitate and make it less obscure how the PHY
   package is described. Can totally be handled internally by the PHY
   driver. Still I would prefer to keep them as is.

   Solution:
     - Drop the thing and leave the PHY driver handle it with hardcoded
       values.
       Due to point 1, the shared struct will have the base address of
       the PHY package and will be handle to reference the global PHY at
       an offset from the base address.

3. phy-mode is problematic.

   It's an optional value to enforce a specific mode for each PHY in the
   package. For complex configuration the mode won't be defined.

   Solution:
    - Rename it to package-phy-mode to make it less confusing.

    - Add an additional function that PHY package can use to make custom
      validation on the mode for every PHY attached (in the PHY package).

      Would make it less clear but more flexible for complex
      configuration. Maybe both solution can be implemented and the
      special function is used if the mode is not defined?

4. Not finding a correct place to put PHY package info.

   I'm still convinced the mdio node is the correct place.
   - PHY package are PHY in bundle so they are actual PHY
   - We already have in the mdio node special handling (every DSA switch
     use custom compatible and PHY ID is not used to probe them
     normally)
   - Node this way won't be treated as PHY as they won't match the PHY
     node name pattern and also won't have the compatible pattern for
     PHY.

   Solution:
    - ethernet-phy-package node is OK given a reg is defined.

These are the 4 concern we have currently, hoping I didn't miss any, I
hope we can sort those so I can send a v2 and make some progress on
this.

-- 
	Ansuel

