Return-Path: <devicetree+bounces-40535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2D0850B5F
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 587EE1C20C40
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 20:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1145DF34;
	Sun, 11 Feb 2024 20:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l5n0J/nN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65B55D487
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 20:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707682438; cv=none; b=ow4Hp/s98Rpd4mg1VDV3DS6Eu82auSFXFcsuQxTsFe7h6KuuxvdG+KuV/p22dD1WxWobpw9Rew99I2lPBwI1qsFX+IhUxq2OF/lPomj2wHXli7DDayyN0LUjg0D1Gp2PUaL+SyawVgTpmP7xOSJ2QnYJJ4FxpbSBGKs6XsiGUrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707682438; c=relaxed/simple;
	bh=jCDk55chpDYqiV7+4uPPaV+cuFeCV6w0nCvNvsOiVkw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RtCQdJg8vA0R+RZ4KU/A/bWp6D3Fb7fk4YROGIXzXyS9yQKjaRz8Wa4vA8pVUWlArC2pIbSJuWCQVTAfzQWm2C4CWpukM8cZjss5vtNcpApeYpq1k6NGGdw0Iqyb9T4M1qgCvly1myfBw6RkX1P6o+G2B2A9DkgjBqx6fL8WLo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l5n0J/nN; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-410ca9e851bso2552045e9.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 12:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707682434; x=1708287234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w32dNhtd3NtIT2zmlS3WgU5K/G6k0bKSolZGpc22edM=;
        b=l5n0J/nN+8IVHMZeSpQBUW4hcUwIsYuiqIQYvTtPvkq1QtfofdCTir6GUi/TF2xxcN
         fy4U8zIeIs7XBz6s8Z7Xrxg85lBKPtRF5uLOGITacuDhLb6ZdYlr3IcG9ol6fconlMOu
         wxNnLz6gltmzGA6xyIUibH4uL2mHPO11lQGurlthOLnvStoGXpdMJ7M52hyIe3tCEMhD
         nOk2oObH2Baxt8jCTKMrjyao5QdIB0Qovc8ndQyOqTruRKTFIka0y89Pp1uFy5rKdMx3
         owG/oQNmreB4lh22klot7o3tfT7mYICpTTvx44Z+43My43+MJ0JFZOnQk8XijtazP/Eg
         nBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707682434; x=1708287234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w32dNhtd3NtIT2zmlS3WgU5K/G6k0bKSolZGpc22edM=;
        b=rmVZS0WVm365+TTgIjU42D07jhRHrQHaKjrSll/zbe8zUKN8LGGJxej0aMwntc3xkW
         XQK6PiIbF+VHVA5mD3WYiJMwbCpsod0QGT+JGshvD+f/yYbI4dZvQS1q/hCZRCG6jlCO
         7GIn/euaxzhM6yCEPciN4KmaozY94iZbObVK/a1gJBEHIM0gfa6Ng7Cw1CiSU+53kDEA
         m65i7GbZ5uT/ihrmNKbfX4vkIjQgv1+xM70DOOoK1qyyoqOzQ2px1F6kgr7mkRhwX48m
         Wkv6N0/WrRHDN6r83JqHU2bNi5E4zj671epSLSz2TVOKzWLDt41Td4L3X1AfDsw/vfgZ
         eZzQ==
X-Gm-Message-State: AOJu0Yzvv8NAqkp6ToHe6ZihTt5vBXNEHYoMN8qIm2DJ04JCQpnmYaAx
	SHdkC+O9rYmL38zhLjFeyGBA/3cnLvq4M20fLdfNoCpMyyNy8EYZmz2BFvWY
X-Google-Smtp-Source: AGHT+IG+/uIrtTlFuqQ/qoyCBxtC0ud5P2xf4BzWfl8rExe8RMldFxj8Bqhan5m1ZwcL2G/i3KkCiw==
X-Received: by 2002:a5d:47ab:0:b0:33b:523f:2aa7 with SMTP id 11-20020a5d47ab000000b0033b523f2aa7mr4624592wrb.45.1707682433618;
        Sun, 11 Feb 2024 12:13:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMImudmcOfRwy2DiBRbHsc4PW0bG4uZ1wwhLJ7iAIpreWhbHL+NbrA2JFWrstb3HVSukF+xFULf63ohZ3OjIXQ8AIHEL8Qf7XcmRGg/pgjOIjgekEK3b1yRj5IjkoeiOIUTVjobcncITTYrw+1kGC+hyj+FwlRO4LNjchb/GPgKMBAS4xLrH0arF1wmbZtOIKNtQJoY9SFLQ4CS3d1WmbkotA+BTxG+CPIHVhA0ON9NJ10iJ3jAuuefM2vwN9vl3fLPq1abK0vkERUmlEB8Fk55cA8IC3SaT3RiTApses/yuvTL+n2CA==
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id a15-20020adffacf000000b0033b39cba5e4sm4919901wrs.116.2024.02.11.12.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 12:13:53 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] arm64: dts: allwinner: Add Remix Mini PC support
Date: Sun, 11 Feb 2024 21:13:52 +0100
Message-ID: <3283025.44csPzL39Z@jernej-laptop>
In-Reply-To: <20240209114018.3580370-1-andre.przywara@arm.com>
References: <20240209114018.3580370-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 09. februar 2024 ob 12:40:15 CET je Andre Przywara napisal(a):
> Hi,
> 
> a small update, addressing the review comments and adding tags. See
> below for a changelog.
> 
> ==========================================
> These are the DT support patches for the Jide Remix Mini PC, a now
> somewhat dated Mini-PC, once shipped with some kind of desktop Android OS.
> It sports an Allwinner H64 SoC, which is basically the same as the
> venerable A64.
> To make it stick out of the crowd, the SoC has "secure boot" enabled,
> which just means it needs a different (signed) boot code package, already
> supported by mainline U-Boot. Fortunately there is no public key burned
> into the SoC, so any key can be used: the U-Boot build system will just
> make one up.
> Apart from Ethernet (blocked by the AC200 PHY) everything should work,
> including WiFi and Bluetooth.
> 
> Please have a look!

Applied, thanks!

Best regards,
Jernej

> 
> Changelog v1 .. v2:
> - Update copyright year
> - Remove not-working MMC DDR speed mode
> - Add HS-400 speed mode property (used by the BSP kernel)
> - Remove superfluous pinctrl-names property
> 
> Andre Przywara (3):
>   dt-bindings: vendor-prefixes: add Jide
>   dt-bindings: arm: sunxi: document Remix Mini PC name
>   arm64: dts: allwinner: Add Jide Remix Mini PC support
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   6 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../allwinner/sun50i-h64-remix-mini-pc.dts    | 356 ++++++++++++++++++
>  4 files changed, 365 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts
> 
> 





