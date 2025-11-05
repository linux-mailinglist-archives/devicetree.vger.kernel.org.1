Return-Path: <devicetree+bounces-235395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E62D0C37D02
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D03F34FE33
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5A0325717;
	Wed,  5 Nov 2025 20:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RkG0OeBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC962D9784
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376388; cv=none; b=shp6+f39Chvx+TNY/XfIdxMBgC1QmBTPifaT6ZXdjJolEg7OYbCf0BUvNXvqQfcGWw++Ut0zIS12UTSubkKCp07Wfe3IH2FVI4EIPj6lYfs+qW3n4ytQpGjfixih3jiXPlcWm57Zb7P5tOW2EjfjI1pt6CVL8X72c8ue08NALcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376388; c=relaxed/simple;
	bh=avrss4Q81E7HsjBuBHdyOLKRz06kSibbq4tl8aToHlE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YZQbG/dOfqdUXeymeGSTuF4r/rCWMs/JR+z8Kf700cHc8Ez8paK1U/oYkG1ZaSaRgIh5/LAGLv9I1G/qfSNDU7ihtwZl6cwsBNnm4OJT2brRnfZD05+i5Dk+/CgwXkrRtPdwb6wYAABd7nBJhPbLWNf5E62bynpxx01aVdc3VzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RkG0OeBW; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-44fffff5f73so138784b6e.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376386; x=1762981186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHzHI/uEJWBs7AX9PfC4NKomIzirQWA2bAmoXS/UXLU=;
        b=RkG0OeBWRwFF2H/kAIZmf+yWukHm60fjkXkjMjc+8nvbFL8ZzifXrSGArTa6glMANj
         fU6fiHt/9/juh2YXKq/1C+AslmVA5PhgpYuTq0dcA0KAjS/Wt7Kr6JL5dRRGbNKWR+zv
         p0Kf6WbNWJcenUMsCZtdBYfBBJDfTRAY7GfwmID5Kg04AtKzv2HZ8rO6HDDZaq8AlEbu
         Xd98RdbIGvE5/6lip9B7xNquMCUpvXIs9/xxfQ8tto/kyMA1MQP3wq1GPbywJ0tQvaZI
         lb39ds32rarzAAHoGPihU6/+XVKhghRmMJUijjgFtWujZkL0I3gpColgPf17g0yMDz2C
         Y3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376386; x=1762981186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IHzHI/uEJWBs7AX9PfC4NKomIzirQWA2bAmoXS/UXLU=;
        b=SAERR4qtaUorC/n3CI2sm33tuwqZO3Fu3RX7ZcnV1TbjmW5F9DqRz4GgaOsezpnede
         0oF/lADCwV7wKY+4Pj/rqCV4wdVAe9FF9u7SL2ZxVZ8Tk5z8//Dc9Gdk0JpewIY3U1bL
         nrUxIbWtoaGZLVojfmQEob7ZbIP5K0mOSfouhDMjNQdHqsqVxxurucm8Z16dPcysVzi6
         plbadIt3eiqXZvLiJG6mvB8TZXYOZCPidTpphlIRnw6iT5BJ22PVJwCkmvr9Pyalq9++
         3AqyDArl8c04SUOWJx/Bpm+PQ08EVnHYDA3zuqGORPZ9aASvSwr/urW28SqcwC4jWBdm
         9zhA==
X-Gm-Message-State: AOJu0YzOR3U+Jgi+SplwCr3iCfvgdIJ/KPXh63gWzsgkS28gi+Ym5M10
	E0XS/q3Xygq2SRblL33aOHxppMsFuv0JuOHgIEUc0BaCc4//u1DWiYk1woYBpQ==
X-Gm-Gg: ASbGncscaGp/4WWj3SrSYiqcqF/kG6/X1NqEhszqZTfwIOc79QjIxv7UxhxUdyukJ2a
	/ahFVfF5oIIT0Ca4phwxxeqrc87pJ1Qx5vHj2OI4ugl09VOd1fdO2q9t3LDkpOC0fouEpVrWTdV
	eP9/doEbz2cm8nhRaGVG6gtGMA+u0s452Lm8GR4b3yPppIB7ajU36EOKPTQ8umAI62gX1w9M83F
	X/OhSQqx1NV68iHj4RdGiuFESzXSZvqrjvf2RE3Qu4fXiEmZy4wo7HgNy1qWhoQkTFOniz61uJg
	8sv+P9Iq0IQc32LP9BgMt0aCmBWVw+H5H3vOhgvGxx9n+73SHiG8M5vrcIAaJAhBsssu8/LINtv
	GIQxqk/Rjltp35c/hsvuRXr4ZWgqhZVhQ7lEuPUDrYbZJsGmWPOYCao2Pv5Lfp0TU22J+1P60dw
	==
X-Google-Smtp-Source: AGHT+IEw6Z2KswJK/Wj3uHzNkx7VsaaMTAmqZCJn8LGeyHLIWeo9iromgRnJ+e9P0NB7mBJPx221zg==
X-Received: by 2002:a05:6808:3095:b0:44d:a5cd:e803 with SMTP id 5614622812f47-44fffd46258mr432083b6e.20.1762376386393;
        Wed, 05 Nov 2025 12:59:46 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:07 -0600
Message-ID: <20251105205708.732125-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Once the DLL_STRBIN_TAPNUM_DEFAULT is set to the correct value [1], the
workaround to ensure stable eMMC operation is no longer needed. I
have observed testing this that hdparm went from:
"Timing buffered disk reads: 502 MB in  3.00 seconds = 167.14 MB/sec"
to the following:
"Timing buffered disk reads: 832 MB in  3.00 seconds = 277.32 MB/sec"

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/mmc/host/sdhci-of-dwcmshc.c?id=a28352cf2d2f8380e7aca8cb61682396dca7a991

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 62c8c8f68713..0796ba6d2504 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -561,10 +561,10 @@ &saradc {
 	status = "okay";
 };
 
-/* HS400 modes seemed to cause io errors. */
 &sdhci {
 	bus-width = <8>;
-	no-mmc-hs400;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
 	no-sd;
 	no-sdio;
 	non-removable;
-- 
2.43.0


