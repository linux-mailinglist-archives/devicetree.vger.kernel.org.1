Return-Path: <devicetree+bounces-128847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9699A9E9A00
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:06:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49B6528285F
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 15:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1A41B4250;
	Mon,  9 Dec 2024 15:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="k7A4mgnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2701B4248
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 15:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733756784; cv=none; b=FKZAzF+XppAhLemK6MW1p48ZSzudzvVzVJC++VcgGB2CulyxGsfwx8PDcu6teSc1K58p6XI+MHVQtoJ2p1Bz+JvsMjpxyEL1aq0Chx1sNzApPRjqtruDTf/slPTHgmkQWrGLGtT25WniGxOXBGtZJD/EvZhEYKgEWcR0lTcxj8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733756784; c=relaxed/simple;
	bh=/BnRrLDy2CQ0qFCGoHbR12w83vjFee5OUi3nbgjO2n8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H6tAJ3mRIJQmoKvIUlKjhSB3u4UlpCodtAkiqmq3Ft6f8qlE+HltF9D1hjoRS7b0KRTXJRcnFIy9qly5bKjKq4smPTaVK8KjDZoM3iNdrc66OLjQ0Wkf4zX846faiVGuEHzZhzhv1ZHvJcXdIaP09PEDQEx8iAqbSWKWYqLIPmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=k7A4mgnu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434a742481aso42702585e9.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 07:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1733756781; x=1734361581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBemlKVePg1M8JMVZCDuH/Kc392eD263a2QapCaGV9U=;
        b=k7A4mgnu2Y6vlRYS/Owj8pDfwxG7HBC5LS+cUoMZU4LzIj3i80XBUGt5lzMDbd5q5N
         Xj6WudIEdYwyQpxPIDU1U/TOPbm2otGEj4ceVK0e/ACh05fuNHxW/08khY7W9l7MNHgS
         UYGwD+kE+/VnRusnWkpKTtDhg04+VGW6S0goHZVtgt8DlWiJ1n5M7ME5DyFw+vVJFFiy
         BjmBlJwtfhKr7ItUyRkQPh/PpYiqEJpB0GumuJtdbv1Z+1mroaRbTcwrqI8ElO/4jnvK
         HE3cDkXO6Ft/tSSbYtijACWnYTr8JbO7Tk+3aB0x2wEtRTh9nIVDgWK3SG3rirl+Aa0p
         LVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733756781; x=1734361581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBemlKVePg1M8JMVZCDuH/Kc392eD263a2QapCaGV9U=;
        b=mdZWRBc+Fx+XRJ2Ex2DCuW9LLwkY97XZQEpv0fZzuMZxt4v+c28N7jA3s5laELRhsU
         Q17OVXBcd35JAVTDY8tnqRDFfFXcEEFJqkAhSmzcxBk5y63GgGFftR6ZUjWaJw3huRKA
         taTgSx4yelCe6MtCTbCJkbYoNeEQxJREgFyFckSxjbVyV3SX3jmKrpGUNavEffg52q1z
         B93oj935G1Ba8+agkr1OPJ6aommByikLBPOGY4Dc4Uth5C+Sg55GXlOVBY5saYTfOmwg
         vMk0si3rbNjAnfx/KAfq0KjFlIywpFWK4S6al7kfYNzP2LtNZASgzJuZ0lS1RpvQ1CLd
         uXIw==
X-Forwarded-Encrypted: i=1; AJvYcCXsEy5hkmGYpfe8Z70H5KpK4kSQNdLEM+dZj/6H5+XoPVUL8MqqyWNgOgQJKZfzTV8U6m49BCALTd/w@vger.kernel.org
X-Gm-Message-State: AOJu0YynPEM/XootvaLVwSaHbdbttf1DkOpv0sEWcF+RhDLtFFbz18Qd
	EhJUI+Ifx63BISoRcvccLuO/oPy28VynESBm6hbKHghwlnPctBw/duVy5F1t42U=
X-Gm-Gg: ASbGncuNFRC79o2lLEsuuaeidwUHE4TmZXUKSNETSMD0CV+/KCViqpBsH/JSYBshjwJ
	z93TRICJwlSVC9I8YlEmBNWtQHEC/YErFmJ4CQ9ysnMTjG2sOaVZfHPJyLkpE0arfgd7oOKGqbC
	0VJqcQxE3NdcetslQC3ueE0n846j5Pi4bCWK2BstHsafBdKQ7FwURvFNGZdNLn493j7E75R0kX/
	Et0NuAXf8fD1eQZ5goPc2U/QHikp12cBaDf2oAA
X-Google-Smtp-Source: AGHT+IEaMojRUAQLLwed4/ER+OeZapLgzpX/2UyzkziLJwq8W59lZWRdfU3Peh7xaUCEk69zEFgm5A==
X-Received: by 2002:a05:600c:a09:b0:434:fb65:ebbb with SMTP id 5b1f17b1804b1-434fb65ecb9mr25947035e9.17.1733756781170;
        Mon, 09 Dec 2024 07:06:21 -0800 (PST)
Received: from fedora.. ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d43809fdsm103296665e9.1.2024.12.09.07.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 07:06:20 -0800 (PST)
From: Daniel Semkowicz <dse@thaumatec.com>
To: heiko@sntech.de
Cc: Laurent.pinchart@ideasonboard.com,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	quentin.schulz@cherry.de,
	rfoss@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Mon,  9 Dec 2024 16:06:08 +0100
Message-ID: <20241209150619.33998-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241203165450.1501219-1-heiko@sntech.de>
References: <20241203165450.1501219-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello Heiko,

On 03.12.24 21:54, Heiko Stuebner wrote:
> This series adds a bridge and glue driver for the DSI2 controller found
> in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.
> 
> As the manual states:
> The Display Serial Interface 2 (DSI-2) is part of a group of communication
> protocols defined by the MIPI Alliance. The MIPI DSI-2 Host Controller is
> a digital core that implements all protocol functions defined in the
> MIPI DSI-2 Specification.
> 
> 
> While the driver structure is very similar to the previous DSI controller,
> the programming model of the core is quite different, with a completely
> new register set.
> 
> Another notable difference is that the phy interface is variable now too
> in its width and some other settings.
> 

I did more tests with different LVDS displays. I tested following
configurations with DSI/LVDS bridge:
- 1024x600@60.01
- 1024x768@60.02
- 1280x800@60.07
- 1366x768@60.06

All of them worked without issues, except 1366x768.
With this resolution, video is blurry, and offset incorrectly
to the left. There are also repeating errors on the console:

  rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp3

In correct operation with other resolutions, there is no error.
I am not sure if this is a problem in your series or rather in VOP2
driver.

I tried to track down the problem, and it seems to be a generic issue
when horizontal line width is not divisible by 4.
Lowering line width to 1364px fixes the issue, but of course I have two
vertical lines of black pixels on the right.
I also made some tests with 720x1280 DSI display. Lowering horizontal
line to 718px shows the same problem. With 720px and 716px it works
correctly.

Kind regards
Daniel


