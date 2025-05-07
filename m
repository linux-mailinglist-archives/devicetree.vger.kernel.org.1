Return-Path: <devicetree+bounces-174832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C41C3AAECFB
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C65089E260F
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A3B28F523;
	Wed,  7 May 2025 20:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NbpaqZvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ACA18D643
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649366; cv=none; b=Yo7ZVKSjq56d7wYQFBsUdE+5JV8QGRxAdScQWYWCdGDIAQ0nDU6zSdyRDV+V8+GvU0FANaNkuzHH5Stk5yCmoTBk+aodZQuUQXjh4uZU9wD1d9VYD1AL3CnZlqhBfEGFqPxFg5qO3/LQtrtSPNGzYBm6A5Gj+94JUbLfPrxrl+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649366; c=relaxed/simple;
	bh=9DaiIhuT05anulPNoShPYKhxsY4puRsUVmB+KkjMsF8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bv+4UGC3C+aqSsHgXGLx7ZXY5jSqQ6FgRCY3Kx9ntltoD1dRLbsq9lmzNL7DIyILX0+I6WA5hO4/f/rMpWFz5nP99HIurfOc7QpfcSP54A0lWXw0/mmbwrKLP5kNGtR/6E5858ArpnMYEzbc3qQP22O5BYQF+dKUACC0zyGXeKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NbpaqZvs; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7311a8bb581so159745a34.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649364; x=1747254164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dceCEKVUOKGa77JloXxMoEjB3aM9WeA8fBzF7lUwBv4=;
        b=NbpaqZvsOYaINI+KnEKkqCfiIqIEcnADxDzFspQWarVnGKpoJk0NF05Et6tnsP31UR
         /ir42rGL30xKuJ7LZoZ7B1rlzLFhew3bSZC8DkI2t3c+Up0+zge3dmfWm/0wiLULFlqU
         THYVryOisOWsswN6IdeghrxNMz3rIFvo4cwPmtrwtchod5ASLRC0lrz5HCywYhp/3pVk
         RIy1bRlpriCBSOAt9g7WJ31YC4F2BJ8/5c2euNH13Utn9FeTSGR75g1SjTLnYh8gKksb
         HpVw07G4ht1gFAPIHsBKGMInRxnUyTdUPo8FCQmLfMmqOUzLR0mrdw7+NJFBQujpl75i
         gGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649364; x=1747254164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dceCEKVUOKGa77JloXxMoEjB3aM9WeA8fBzF7lUwBv4=;
        b=irSnp6/6jXAJsMsFE3v/mqcvrnUhlm7fjGG5ZWxzXxK6FjFD1VlkmpcOyBxF+i0WXX
         6c1DDo74D2BaURmfsdy/YvzWEPhxvpmtt4b51XDYH3+rcXr1ycybrTFrkjrhlD/t98yO
         fTjoKlN8dnC4UyEvzCdZpKEIEP7QXoMO1Vv/m41HIRy90uyAnvafCMSMWxAxqn0KVTy5
         440I2xOEZC9J4xlnQ28h05nIe7TC/Vi7/UOmYb0aASNu8pgtw88wq0n40FYOrBqQ1WuZ
         OjV7Y040/e1io2kzaksWshJsxxiDmzFyEG5GCx7ULhtkaMOPtFcr9mCYW0T906L9CdLL
         uxoQ==
X-Gm-Message-State: AOJu0YzRk/P4m3FOGDVKnO1j0W4EXyf+HgJOjNp6jk+3pRCkTxvDe2Jy
	qhW3q+ka02qQ/TYpH8W1vJIIHsRMIMYDixvPfOVmeZtMCKKeiWY7
X-Gm-Gg: ASbGnctLHH42IZIrOdbusUpkk2xIOummzGPnpyD8IWDh8cdGnO6RQv8iyZ/ALK/sRlM
	0bOh/MX6xkA3YumbjMqq90DZeY0Mvsg/FEOzEZNRoT7Bam1DJi+ack8r0TRBnVf44fTM5CqNTqG
	sgIF8T/znL7HViBKoT4skpi9CQWhsXCePay7021i5WyJmTBskN1IoLDubCbOXAC9Lc787OaI7co
	xb9giB+/uSekY3mMvKZ8R7dhQxQV+yyg2i2W9j8RlyvcqF/0a40CyghpnlT4HSNUkGXwaYrIPyq
	7W+Zu0EbBV+DYt6vwbDuoeBVW9bHqufoJ7h1cf03M0PfEARDrLmoAJ2P9w9V
X-Google-Smtp-Source: AGHT+IHzDb7Qz5DZFiGSa6Z3lnHv+87ODFBjRHAjTiD7jtWVu9q1Y73F4kwu/+T85cIKLmYaJUt5FA==
X-Received: by 2002:a05:6830:25d4:b0:727:2f79:ce33 with SMTP id 46e09a7af769-7321c949800mr404858a34.28.1746649364088;
        Wed, 07 May 2025 13:22:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 22/24] arm64: dts: allwinner: h616: add LCD and LVDS pins
Date: Wed,  7 May 2025 15:19:41 -0500
Message-ID: <20250507201943.330111-23-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 (and its H618, H700 and T507 package variants with
the same die) have 28 video output pins for RGB/SPI and LVDS display.
These are in GPIO Bank D and are multiplexed.

In RGB mode, pins PD0-PD23 are for 24-bit RGB pixel output, pins
PD24-PD27 are for clock, DE, HSYNC and VSYNC.

In LVDS mode, pins PD0-PD9 are for LVDS0 and LVDS1, and can be
configured by the H616 display engine for either one high-resolution
(dual link) or two low resolution displays.

Add device tree nodes for the LCD, LVDS0, and LVDS1 pins.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 129ce78ae5f3..3d8b412afb88 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -325,6 +325,32 @@ ir_rx_pin: ir-rx-pin {
 				function = "ir_rx";
 			};
 
+			/omit-if-no-ref/
+			lcd0_rgb888_pins: lcd0-rgb888-pins {
+				pins = "PD0", "PD1", "PD2", "PD3",
+				       "PD4", "PD5", "PD6", "PD7",
+				       "PD8", "PD9", "PD10", "PD11",
+				       "PD12", "PD13", "PD14", "PD15",
+				       "PD16", "PD17", "PD18", "PD19",
+				       "PD20", "PD21", "PD22", "PD23",
+				       "PD24", "PD25", "PD26", "PD27";
+				function = "lcd0";
+			};
+
+			/omit-if-no-ref/
+			lvds0_pins: lvds0-pins {
+				pins = "PD0", "PD1", "PD2", "PD3", "PD4",
+				       "PD5", "PD6", "PD7", "PD8", "PD9";
+				function = "lvds0";
+			};
+
+			/omit-if-no-ref/
+			lvds1_pins: lvds1-pins {
+				pins = "PD10", "PD11", "PD12", "PD13", "PD14",
+				       "PD15", "PD16", "PD17", "PD18", "PD19";
+				function = "lvds1";
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2", "PF3",
 				       "PF4", "PF5";
-- 
2.43.0


