Return-Path: <devicetree+bounces-130350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B387F9EF1AC
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7078D1773D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C115241F21;
	Thu, 12 Dec 2024 16:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="JzCLzrSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A923240365
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020355; cv=none; b=ByKwoQlHnmFmfLLVFI9XPQPD0MURRqJqPrIsZNlLzIIvcJU/Nu/qiUKGeShZGCeLO7vyRSKD6/+QibKpdU0n9qJ5UJToj4V/w5PqrDof3UC+Uzd5flb/UH4eRsLSblOldSsKKFocnyE4ejwISENTfSit44Y0znOmmPHBdHm5IQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020355; c=relaxed/simple;
	bh=Qqxoymj22X4R98zAPdTR2WxILJdbVSevs8eEpI4zaVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IrXhT/w/HulEoCMl5uLwytYYQyryv0D5iiBKowqbJGwOT4Yo0lG40wlTLBqZJ3QfGUBm2rBTRj/GdZLWyi5n5Vs+ji0wxe59HrsrVEPjbJQRNhW0XlGsIpCZgfd/vZDiuQ24iWcICQ2+zRQNKpoYG0HteGRLOcCUHrZMpfjQqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=JzCLzrSQ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso5267265e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020352; x=1734625152; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNTGzlog7Q9IZQyQd4eTU3kXEBDBdmsulQeLjahgS6Q=;
        b=JzCLzrSQMYEq1VzojdJ/gHcREQUCkodfQu3W+Vs81MWbizeatahAr+LWIlcytp403q
         KuaKAPnhjxOOix39XGR2CPt92d6G1IVbLLZrzzDqpebpUnS72pBtdbUTNLMEl4uoNiC3
         OI8WDrj4ka5uyJbWGQATH2uabF5VgOqUcUqZw7snudGxBKr2MyShgtJYOBVWi+SpjBpz
         vcXEd1q7AfMBeLeqzmZS0Szb5BgIISH2wOEOuu+oYl5yx+L7rf5otCXCKSxauiVvLx7l
         UmKxzHAfebvxU3xT8z8/ZhCM5mLEyuk2IBbxLO826JbSfL6xIOop9ZfrzxN8+TUBCpYk
         4h0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020352; x=1734625152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNTGzlog7Q9IZQyQd4eTU3kXEBDBdmsulQeLjahgS6Q=;
        b=cFZ56YXaJ6kgkRlBcriNngk5bM+AmNzR/S+9PGVq92LM6aRKRoR6EsEsG7RfNuQVxJ
         toeojycozb9vstOTnc5jcIwBAN1h/J8AHZtPh7kSNn7hf9oZEA2Qt8gDtMURAHH8KPGq
         Wl25C0zJkBnBG1ZjoJ0QpEwtOEvjh+NKo+FwW7jCe7D4mlKMkGl2PbWsM9pcZ8h0aNz3
         OvPxT1DnuQ1d6+wfnHPUb7adEKoCAEP4367mG59IEpRS0gbu3iiMW9smTSn9FLTGJxHd
         jpWVMbW5A46BAxXOfPVKDuTlzT5ogKCa4qxBPvdcRJdkTcAkyNuXy1xpGBlh+jGQPcGa
         DyVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtxsRKa6JY1sPNV41Ln6He4wTfmN00kC00cQ7CsJK5AGLSW/QXPwSh0RBqxbURdCK5jSjEOzNjWD9Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxvNFu8QfJuoU/Imo9Qhaq58q9EksybsJASxUy+GHskDu7h9jTj
	9Zy5oHzfwG+/nGC09OPunFfxJMvq9AQOphMCmQvpfeFADd9rx9uOBnk/8MpJoVk=
X-Gm-Gg: ASbGncuqGHWOKOuc3b2+Bp+F18WKOEeyKGHTRAsQP/WmVjZeL0i2j6VxoTTzuhry+SG
	A1oLpLoouK8uCm7RHuIal3Sy5vvlkxKCZEQIfhfVvabldfDhKNTcjd/LFsrWrzn6DAxsERsNpx5
	X1T3pd90JhLtCDUvetmUF8ZnSYim4YlY4SgWQTPISBsXBUDC4sK7GJvNROlucsb/tx4MRI+T+Yo
	/wO8OyYlQpSMc5JemzLe9a6VwvArPmYIMC6Zv8xRw4BtNz+
X-Google-Smtp-Source: AGHT+IH8oJmO1yg1ubSZ+z90KdtGpUstGhHd0JFOT72Tqf8VNjDPTT60N6GaHw5YeT5mJn8XmnjWIQ==
X-Received: by 2002:a05:600c:c8c:b0:434:f9ad:7222 with SMTP id 5b1f17b1804b1-436230dfe7cmr29162515e9.7.1734020351732;
        Thu, 12 Dec 2024 08:19:11 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:11 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:57 +0000
Subject: [PATCH v2 7/7] arm64: dts: broadcom: Remove intc controller on
 BCM2712.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-7-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The brcm,bcm2836-l1-intc controller isn't used on this platform.
It is used on 32-bit kernels for the smp_boot_secondary hook, but
BCM2712 can't run a 32-bit kernel.

Remove the node.

Fixes: e1417095a139 ("arm64: dts: broadcom: Add firmware clocks and power nodes to Pi5 DT")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index f42fad2d8b37..9a426aa27c74 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -221,11 +221,6 @@ mailbox: mailbox@7c013880 {
 			#mbox-cells = <0>;
 		};
 
-		local_intc: interrupt-controller@7cd00000 {
-			compatible = "brcm,bcm2836-l1-intc";
-			reg = <0x7cd00000 0x100>;
-		};
-
 		uart10: serial@7d001000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x7d001000 0x200>;

-- 
2.34.1


