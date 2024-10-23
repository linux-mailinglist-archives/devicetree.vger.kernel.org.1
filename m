Return-Path: <devicetree+bounces-114821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5539AD194
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CACE5B22D1B
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1271D1F50;
	Wed, 23 Oct 2024 16:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="FPQlmBwA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3882D1CEAB1
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702220; cv=none; b=G4w7wzOwQPcz2Xk8wq6pmhBo3oe6TXn7kQRDPNEFkFF74VaGqGNATxMpJm+QZlr5ldESAKgTktBW6xlaH+XOhOOmerlfl9w03QYjst8e9jHuWhiNP0MTsY/e2QH6wdhVxFB1t/Kzj04DQtzRkToKq6AH8NerUS5An8Gng17wqxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702220; c=relaxed/simple;
	bh=ApuGSaPtjA2ma9AXolR9QTW6QitKycIfOSZu386qHHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZFOGts+Ibow/O2WwekcX0YeyOTbDHd4PsBoU2iecMsTyZQD3XNnuOL/3Fe5/d/6GRB647hvHjm4eUqFW3nI7V6zQqoyHzddfIm0Adz468hsooRaNIUdsTYEvstro1AEDTWDzL8mNi2DV0UZwR5xA1Z4bKhUox0F9AAQ1wJA3WUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=FPQlmBwA; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4314f38d274so95857805e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702217; x=1730307017; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CAjOVOm4fq5ab1k5/gNzUlva5QRzYnK+y6SB2b/LE7w=;
        b=FPQlmBwAM3klDjAltHEb4c/HxtkGK2YolRJQ2OAz8DzRYXs5wvkdY3kcl/OWZFvMoE
         AkVbla8fuu8DmFY6dOMHRjEtpq7a8+w5jHw8zWVawQ7Bh0mQwIfcv2y1Go1LQ6aEpPWi
         A64YENq70f8tP8ZksdyT8LYmSLW9ne11DtDkIA5CJkH3M/BpOqAK+PJEeuO0xIGGs9Ce
         T/0nPBzcYwY1uEWX4X5mPIgerGq6ckq11PJa3FPn+R2xRbU4Uu+DhDXL6PRLvLpoTgrQ
         d+FJB+2OAdsf9KHSiPiZ7bMIEdZKjPVgWN1sNhkpBoiiIM+QF0FMyNNlcN1Qc8AjlSW9
         TDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702217; x=1730307017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAjOVOm4fq5ab1k5/gNzUlva5QRzYnK+y6SB2b/LE7w=;
        b=nXiaHtqyWrqTu87OW/h/HwI0sqZvH7SzYO8oLtHarmTm++6wpBa5FAlsrI7orKCckt
         TuEClqJ6+uQCbkf9skZCok0nqAWByem0qEVDDJHmQfXCzf6ip1xhwlh+5NK405196OvK
         rvXcK6dPZ52Tlm4135qYwmwPHF1GHFyEL2v3jbmLRC8G5O4zfkaKp9cGOK5+zFPu8yqg
         N9K6BqWSPggt58CU1kmUwZqAJmBGaJ53/jUA+hTcigQO3rqY+dJ9KH7VB9PcmDZzxjnK
         NaTpG0DmT6G2o8Buh3ZupqnF87BiwfPgdCky4avSkEZF+tfxwWRqedzUKP72kX9LtnNB
         F+EA==
X-Forwarded-Encrypted: i=1; AJvYcCUB3eGB2kUO4jbwMOhJS4d4/vCR+AK1zeQ0AH37WoywyHUlPiV2dbdK0cyXBFemfXPa8k+99MUP4CKZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4UGPg7ZeN3A7ciNZ6AIRui/tzLeSUNI6QRSEwtnwCcQT+ReV2
	5S+S7V35azp3h5bHb/NqjPb3ESkncKRocJ73l29Q1bliYXhKxh1ClcMpLh0G1E8=
X-Google-Smtp-Source: AGHT+IHVp9QeS4FFrjIcAc7te/fMFNp+o2nMTjsFY0IqZ4kCDK5fJrYCjN0EL5R16sqRCOtTkRC5yw==
X-Received: by 2002:a05:600c:6b06:b0:431:557e:b40c with SMTP id 5b1f17b1804b1-43184241fa3mr29032185e9.27.1729702216599;
        Wed, 23 Oct 2024 09:50:16 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:16 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:06 +0100
Subject: [PATCH 09/37] dt-bindings: display: Add BCM2712 KMS driver
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-9-1cc2d5594907@raspberrypi.com>
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
In-Reply-To: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
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

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 SoC comes with a new variation of the videocore display
pipeline. Let's create a new compatible for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
index 49a5e041aa49..2aa9d5d2afff 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - brcm,bcm2711-vc5
+      - brcm,bcm2712-vc6
       - brcm,bcm2835-vc4
       - brcm,cygnus-vc4
 

-- 
2.34.1


