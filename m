Return-Path: <devicetree+bounces-13496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680A7DE50D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 18:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9078F2812D2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 17:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4C015E80;
	Wed,  1 Nov 2023 17:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="THiwWN2H"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD13014A91;
	Wed,  1 Nov 2023 17:09:58 +0000 (UTC)
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D201CA6;
	Wed,  1 Nov 2023 10:09:51 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-32deb2809daso4420427f8f.3;
        Wed, 01 Nov 2023 10:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698858590; x=1699463390; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=70RuBrWBQ0TSA8ytHNk00JeITSt1g+gvfLn5RbfFjBE=;
        b=THiwWN2HVaVB6GoIDHajOenhzEJ+cDB5FYejEsog+GHfruWyAdQMw4NOKtQ2QADaKp
         T2jaCIaRlr+3rf69yy8amD5KUA2N7Mza1vbEwQRqBB3R+PUaZNSFt8Nv+DfYVeddLyX2
         PxPWwEstIvrKqiTF0PUUzXWeKvdm4MBUhTI+m8t5BKvp7mOoGZAkfPTtuBytMLZdKvT6
         gx0qmtXsBImTrgOjukc8wIF9piZx884W+ihLRBjQIqcPhJvJqsK62HN8JwvO8hc4JNjh
         4Z2D27hKV4H0eswBAA7OfdKeVNqHM0gTBHJFdO+4DKRrKDghpkT78EoYtX9ZhF/uJ2rz
         ounw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698858590; x=1699463390;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=70RuBrWBQ0TSA8ytHNk00JeITSt1g+gvfLn5RbfFjBE=;
        b=UQf4GYWLwJV6netmk2uimCqlwNJL+w38spGQmXsWJAgxzLjpQnvcNP7PCrO3sG9Der
         TVe63CAFKf2g2Hy2KQAMjBV7VGricG3ra5eq87dB3e8CkdaBu9e01njsBWMN/t+t2c78
         JHVaBuwLzWLWCsP7NBrf4N3MehhzOvaEk5hdAlKKRbKAD1YDhwnK8ZupiscZizpp00bp
         aSWTIItlTTY8YaxvsixEPdwdvCBInJEYeSVIIhcz5vX7hhS7qZQUKii97y984ENCJg/G
         IGxp3CKQroWwMtfkMjxMQ0G46vQ9ivhDv43dwYoJ4BITDA6scJACmz6O5oAYPvu6FmLa
         xXqg==
X-Gm-Message-State: AOJu0Yyv2kkXJG3uonR1AyOFSSXdfjgLetNPc1/ER7vzpkCTDaNp/1ly
	YK6eJO06j+sW7iONjanFz1o=
X-Google-Smtp-Source: AGHT+IF7FZ80ccgWOLhOoAWtSxnx8HuhVc/UzlQ2aCdxN6o1nYIq16H2uI6mv83/ALr0CN70rbxaCA==
X-Received: by 2002:a5d:6d86:0:b0:32f:7f17:b049 with SMTP id l6-20020a5d6d86000000b0032f7f17b049mr9720763wrs.39.1698858590199;
        Wed, 01 Nov 2023 10:09:50 -0700 (PDT)
Received: from Ansuel-xps. (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.gmail.com with ESMTPSA id d8-20020adffd88000000b0032dcb08bf94sm287786wrr.60.2023.11.01.10.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 10:09:47 -0700 (PDT)
Message-ID: <6542865b.df0a0220.82f9d.1bea@mx.google.com>
X-Google-Original-Message-ID: <ZUKGVWlh01U1evki@Ansuel-xps.>
Date: Wed, 1 Nov 2023 18:09:41 +0100
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
 <65424cd9.5d0a0220.20d9a.fe0f@mx.google.com>
 <f5f72cc3-0435-4ba0-8291-30d1ec2633a0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5f72cc3-0435-4ba0-8291-30d1ec2633a0@gmail.com>

On Wed, Nov 01, 2023 at 05:57:50PM +0100, Heiner Kallweit wrote:
> On 01.11.2023 13:57, Christian Marangi wrote:
> > On Wed, Nov 01, 2023 at 02:01:33PM +0100, Heiner Kallweit wrote:
> >> On 01.11.2023 13:36, Christian Marangi wrote:
> >>> From: Robert Marko <robimarko@gmail.com>
> >>>
> >>> Aquantia PHY-s require firmware to be loaded before they start operating.
> >>> It can be automatically loaded in case when there is a SPI-NOR connected
> >>> to Aquantia PHY-s or can be loaded from the host via MDIO.
> >>>
> >>> This patch adds support for loading the firmware via MDIO as in most cases
> >>> there is no SPI-NOR being used to save on cost.
> >>> Firmware loading code itself is ported from mainline U-boot with cleanups.
> >>>
> >>> The firmware has mixed values both in big and little endian.
> >>> PHY core itself is big-endian but it expects values to be in little-endian.
> >>> The firmware is little-endian but CRC-16 value for it is stored at the end
> >>> of firmware in big-endian.
> >>>
> >>> It seems the PHY does the conversion internally from firmware that is
> >>> little-endian to the PHY that is big-endian on using the mailbox
> >>> but mailbox returns a big-endian CRC-16 to verify the written data
> >>> integrity.
> >>>
> >>> Co-developed-by: Christian Marangi <ansuelsmth@gmail.com>
> >>> Signed-off-by: Robert Marko <robimarko@gmail.com>
> >>> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> >>> ---
> >>> Changes v2:
> >>> - Move out of RFC
> >>> - Address sanity check for offsets
> >>> - Add additional comments on firmware load check
> >>> - Fix some typo
> >>> - Capitalize CRC in comments
> >>> - Rename load_sysfs to load_fs
> >>>
> >>
> >> To make the driver better maintainable: can the firmware handling code
> >> be placed in a separate source code file, similar to what has been done
> >> for the hwmon part?
> >> If yes, then this could also be the right time to move the aquantia
> >> driver to an own subdirectory.
> >>
> > 
> > Sure! Np for me just is it really worth it? hwmod is a bigger one but
> > this is really a few functions.
> > 
> r8169_firmware.c is even smaller and I've never regretted having it factored
> out. Whether it makes sense depends on how much you share with the main module
> and how the API is structured that you provide to the main module.
> So I don't say you have to do it, I'm just saying it's worth considering it.
>

Already done! Will be part of this series with v3 :D

> > Anyway if requested, I will move in v3 the driver to a dedicated
> > directory and move the function to a separate file!
> > 
> 

-- 
	Ansuel

