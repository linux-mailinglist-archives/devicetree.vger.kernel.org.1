Return-Path: <devicetree+bounces-115807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D109B0B7D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AC64B238AC
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0352620EA39;
	Fri, 25 Oct 2024 17:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="FT+Y3A8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E61F217659
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876600; cv=none; b=ioGlrpEbPnKElWBxabsobiZlS3fGNNMpsW9PpUvcI8opDgs3MuUl2gJzuIWIrtyj+nbyoaWlxTXKN8BPTAk9nLXE/dNcs/6G0H5dztk4syUUliXicgY/i00zg0WcJSce5fAtWBNeOTejO7wGxO19kDBwwjh+zZH1DXRO0m+lHy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876600; c=relaxed/simple;
	bh=6GIQGcktZBfb3EW9sCT/3N7/H28SyLep9RyAXNQs71k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Km3ykioCGPLLmEzq8wt3RGS2LU/GtxGV/fLYBJ33iMNknmSLvMdZEcLJ+aVXGfdQtpBaSUCdiB7Z2P50oggtjsAbchZXT1CNeWfjvlkAHmr987XSMULSe/g7/wGLV8u4WrMmDJTk6U35llnrDLeBrFbOM+WODchrV/Ah4x1V4Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=FT+Y3A8V; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f72c8fc1so2879182e87.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876594; x=1730481394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n6ynqPw+aFyVqyQgEAy8+ChgZ/7ftlVoUYbZGJVl5Fw=;
        b=FT+Y3A8V/+YGlObiLixX4Rziq0wpuA9Q0vDpxFpaNSNq63BBHs0rMZ8gINxTHCd19J
         IA+D/5jVhSip9X/QBrwJCuYOuQa3CB/xfgypAspMJ8hegbSHoy/ZX7bV++OTi3Wd8/va
         gK0gzA74gjwJIRxcHUxlfzol7KJKUXqGuNsmZx/8IfGg1rbVrCqdGf3xHjgowpcApjAD
         o4upqzf5nAQWEJtLiQGmSAI3sALU+1kD8NX35I3HJa3rW4VW5xrdVNWUZlejlg5R26bw
         MhABhqPprno/lpTtNhADc5Mr6Gna93XcRpRUao76OUlRYcJKQmo0wsnd001niVNcSSC6
         dkfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876594; x=1730481394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6ynqPw+aFyVqyQgEAy8+ChgZ/7ftlVoUYbZGJVl5Fw=;
        b=Fi+Wfxn/iAz9v/wTg1ARUwleCHip8Q4447L6oY1ivT2Fz+Yw+QS1rPtjkVLaG2kLaP
         kC1QRMDjPJjFd818+aThbvf8tha9DqPcNzf4hD6AQopv32YnuuSZ7j1GCxoCurFKdJVt
         E7xAz6Jk+NeNcbevXKYl8ung+gqk3ws9PXTArr2T99x7RgFh7vfKJvMGky1Sbf5bbVMm
         CzxDTb3KACoVhz+g0OO99oC1D050q6Lb0SPQuH4i+UqgFGqrMtnkAef2kV19eL6Vvja3
         oUMitzBnjGzeKyBnetg9a8PRDvM+AKg1YPSuKp5yvJRE+xbxlU3d/rNyBRtBom9AD3wQ
         3r5w==
X-Forwarded-Encrypted: i=1; AJvYcCUsR37N2K7sf0FcS46OmbBklDuu1ftIZpYOGVpbc3q4ob5skWvzv4nM9ezKI00lTbrFzaJ/tFnrSMmb@vger.kernel.org
X-Gm-Message-State: AOJu0YwQRTAqAMqGPYPEyDpxT3IpcWMniVYu0AOkVkP3gU4ot8TcKIMN
	vr/fca+ETwp2BqfK+AlPYbJLRm9VuAVlULUa7/BATHzkrm/Jye+suwZ6X7K5wr4=
X-Google-Smtp-Source: AGHT+IHK/c1INay68uUhSO5TRsMi7vzJxRxlcdjPaei9dfk9EKPm8CK9FYYjgLp5rLJi/EGzMMN1vQ==
X-Received: by 2002:a05:6512:398a:b0:539:f2f6:c70f with SMTP id 2adb3069b0e04-53b1a2fed80mr5844694e87.8.1729876594028;
        Fri, 25 Oct 2024 10:16:34 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:33 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:16:05 +0100
Subject: [PATCH v2 34/36] arm64: dts: broadcom: Add firmware clocks and
 power nodes to Pi5 DT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-34-35efa83c8fc0@raspberrypi.com>
References: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
In-Reply-To: <20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com>
To: Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

BCM2712 still uses the firmware clocks and power drivers, so add
them to the base device tree.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 2bdbb6780242..92a2ada037f3 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -62,3 +62,31 @@ &sdio1 {
 	sd-uhs-ddr50;
 	sd-uhs-sdr104;
 };
+
+&soc {
+	firmware: firmware {
+		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		mboxes = <&mailbox>;
+		dma-ranges;
+
+		firmware_clocks: clocks {
+			compatible = "raspberrypi,firmware-clocks";
+			#clock-cells = <1>;
+		};
+
+		reset: reset {
+			compatible = "raspberrypi,firmware-reset";
+			#reset-cells = <1>;
+		};
+	};
+
+	power: power {
+		compatible = "raspberrypi,bcm2835-power";
+		firmware = <&firmware>;
+		#power-domain-cells = <1>;
+	};
+
+};

-- 
2.34.1


