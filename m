Return-Path: <devicetree+bounces-13422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2107DE135
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74BB8B20CA2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 13:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F86E12B90;
	Wed,  1 Nov 2023 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HppfvHQs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2F312B7E;
	Wed,  1 Nov 2023 13:04:42 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34087DC;
	Wed,  1 Nov 2023 06:04:41 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-408002b5b9fso48829205e9.3;
        Wed, 01 Nov 2023 06:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698843879; x=1699448679; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zoHYYOTWYndoQBZFoxc6RIjyMuCKUCTERW3y4krGlPk=;
        b=HppfvHQs7G1SKSYKT6uPrpSZ3Nd60cN31HXXoOUyfVu4SBdnpBDjdOKMmUBBIKIOSK
         +iTCABZITixfe60rsEWK8DtNDFgM8WObPYjKyYKmDoiWXxLHLULA3lSW2M2TKmXk0Min
         u4EpyI5FIUy+BYUQkVijNqZzbWJcjBObuzZbiMK9GiynDgCvfQuC2vEFyD0mJZS+ZhFJ
         BAsvmXZIcPniufItEc7GqZZiMe+UPwsJUQ+V4pCqtLS6UvK2Hk9x7T/ut5ebumVzdo7y
         5dsQQ4UTK5Py5X/heQkp/Dq8Pp9NTMR1aWf12zV2NOLDW24dgMJQx1zEoNxjYkqOz0Ur
         LFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698843879; x=1699448679;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zoHYYOTWYndoQBZFoxc6RIjyMuCKUCTERW3y4krGlPk=;
        b=LTnB7nH8BaCNk2a0z8A5XPMde5PNpn+L8A6p/Ymb2WXL2ppomux6cEg7jGaJMTO2sD
         My5qYhJiCMsmqddlw4kLPXe5L420mW+E4qyNdg25iwF2Yqom2p8T/Xqxq4m11IvYTGvC
         3g5/zyVi6NCpBx0tUqah5xd6epIUOQWeVje18mW4O92C7qec2GsEqmpfCshtPN1n46/J
         CKLIsBgLoJsXXKC/r/yH65TsBJhyAEiKAY1gQ8JPa8ZIewagZg4SzR1LJquKR4BgKU3C
         t/QBjuW/+e43DKnQCIqVf25HL1LtVKaOwSFRkQxh3xgZcs8mZ1A1dIhreEEp+dK0HJYP
         UrOQ==
X-Gm-Message-State: AOJu0YxhEobeEGRU1skOCPBmpVlCVNw7VOw5i5UoAh6t0q82/HZAWbog
	IBQuH0pt9XEV2TDP4xqoo9A=
X-Google-Smtp-Source: AGHT+IE8WPIQAqDRX1TbVkWvgKFQfFwmBQpx/dyhQO3K4HrNnF2WuvBdgtWNOPngpHUbzU7eIuO3fQ==
X-Received: by 2002:adf:d1e1:0:b0:32f:7fa0:558 with SMTP id g1-20020adfd1e1000000b0032f7fa00558mr13342254wrd.49.1698843879187;
        Wed, 01 Nov 2023 06:04:39 -0700 (PDT)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d6107000000b0032da49e18fasm4123612wrt.23.2023.11.01.06.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 06:04:25 -0700 (PDT)
Message-ID: <65424cd9.5d0a0220.20d9a.fe0f@mx.google.com>
X-Google-Original-Message-ID: <ZUJLUQevLrz84zSf@Ansuel-xps.>
Date: Wed, 1 Nov 2023 13:57:53 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Robert Marko <robimarko@gmail.com>
Subject: Re: [net-next PATCH v2 1/2] net: phy: aquantia: add firmware load
 support
References: <20231101123608.11157-1-ansuelsmth@gmail.com>
 <5af21f93-bb2d-42b1-b4d4-ee4443ffaff9@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5af21f93-bb2d-42b1-b4d4-ee4443ffaff9@gmail.com>

On Wed, Nov 01, 2023 at 02:01:33PM +0100, Heiner Kallweit wrote:
> On 01.11.2023 13:36, Christian Marangi wrote:
> > From: Robert Marko <robimarko@gmail.com>
> > 
> > Aquantia PHY-s require firmware to be loaded before they start operating.
> > It can be automatically loaded in case when there is a SPI-NOR connected
> > to Aquantia PHY-s or can be loaded from the host via MDIO.
> > 
> > This patch adds support for loading the firmware via MDIO as in most cases
> > there is no SPI-NOR being used to save on cost.
> > Firmware loading code itself is ported from mainline U-boot with cleanups.
> > 
> > The firmware has mixed values both in big and little endian.
> > PHY core itself is big-endian but it expects values to be in little-endian.
> > The firmware is little-endian but CRC-16 value for it is stored at the end
> > of firmware in big-endian.
> > 
> > It seems the PHY does the conversion internally from firmware that is
> > little-endian to the PHY that is big-endian on using the mailbox
> > but mailbox returns a big-endian CRC-16 to verify the written data
> > integrity.
> > 
> > Co-developed-by: Christian Marangi <ansuelsmth@gmail.com>
> > Signed-off-by: Robert Marko <robimarko@gmail.com>
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > Changes v2:
> > - Move out of RFC
> > - Address sanity check for offsets
> > - Add additional comments on firmware load check
> > - Fix some typo
> > - Capitalize CRC in comments
> > - Rename load_sysfs to load_fs
> > 
> 
> To make the driver better maintainable: can the firmware handling code
> be placed in a separate source code file, similar to what has been done
> for the hwmon part?
> If yes, then this could also be the right time to move the aquantia
> driver to an own subdirectory.
> 

Sure! Np for me just is it really worth it? hwmod is a bigger one but
this is really a few functions.

Anyway if requested, I will move in v3 the driver to a dedicated
directory and move the function to a separate file!

-- 
	Ansuel

