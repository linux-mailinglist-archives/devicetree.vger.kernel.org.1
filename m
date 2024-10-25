Return-Path: <devicetree+bounces-115777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 814929B0B22
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B33A71C25BBD
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08FEE215C52;
	Fri, 25 Oct 2024 17:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="KSVVkqgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE00214407
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876569; cv=none; b=dMWeSNBBQNk3XpuugU3j7rg9Q3bf9BcZAed7GnJpWu/8JYOZXTBZvw2n6T322g12RFEHDhes6i1mIeOqMMSjoWhhvbzeCb6OYumCCD2czwl5G6xr17nAmbfcTOIufUjPLF3gt6XDw7ilpHPhpDnpPdvtr7fyk/4VPSztH82RpdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876569; c=relaxed/simple;
	bh=EzCY04J3dN6dTWo5FwrMuejIBtmJGz3e+StnFJARUp4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sq13BAfdtK8EYk7AmleMZtmo6lhyd/w2CbSIe5b8ordJf0AyfZNpqvMmu9b0NRnNQZhwHVIR2uxvHVH5ayQY73vF2eMJPydeyUOUF2hkIO9s3v6f13MZFa00eZDJpOkLeO36Tal5nNYuhEWx2bwaXZMD8178Um6cfpvFlNmnCpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=KSVVkqgJ; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so1467693f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876566; x=1730481366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvy6mw3HkfOGNiDeKKmifz1sEp4TpAMlLMBCwtNZJJ8=;
        b=KSVVkqgJIKlthNKX/izMXmNMjDGtLIkFSPXqXt/ujb/FVcQYeW9rcGkTWbrqPnlcV9
         AJvhVSZzK1XBLACYScU3Sf0WY4PTDGawmEQ8O6pJObV+1QmnnicBn1Osrpd9OG7qa5sn
         YRTnYgJU/H3r5dsZ55317voR1tRuUUc8ldPuAlf7r3qXPK2KVOS8ACayZkWRvE2MvDlO
         4M/ypvG86nDSAEvpzMofeymWbpTTrqoDj1Uq9AmzbV44zDoWD+OzSPJYd/H3cMoIG4qY
         Z2YmWNi3EGFTAnuiMqEbXm7TWnNyGnV42c4w+bCs2jGCujca1+g0FxC3FGVzLPeVMgo9
         WkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876566; x=1730481366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uvy6mw3HkfOGNiDeKKmifz1sEp4TpAMlLMBCwtNZJJ8=;
        b=VicbLk1nb5Kn3pPLZTfBY6DpDnB/VSqQDqmhu6m8R0vGPSxfBood3+SOeg/GDLUO3R
         OiZvBEcMWduPRBCn6PPc/790bmOKKp7b85NoCCTzphg+hDYmgrY3ufXq52i3ZbIyeHU9
         3x1heN7is1wKMagPgVf+uJluDp9OQT1ablZrCfF7nFgcTgk/C2JSpGmT5vdTL53g2jod
         9NQQ1vpeNyGj4Z5X7+DNizvimtINn97t2Bqqc+6QL7OHBapdo3mpk/LeDzziXMRoQdg4
         HAlWhU45HCtNwwkgxMPwpQ+9eOSRNZzdwSL/P0w2w3LECkgQ7KSZNquZVesAJgWr0QeE
         +YyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4blmGjBBDMNA0m3HQPIRuTVGMSp4TzhnnszNv07+VFod2o3OEqFcjJOBXaKoJr4LPpED9vXRTeREF@vger.kernel.org
X-Gm-Message-State: AOJu0YwTgSBdYPpgTC9pU5h9RIgR8HtQjZom0Tl5AJUnwzZ1+YvLsIDq
	RMKMeCCNM6lyKYwEHVgVSW13iGdBeGWHJWwwrrXBRoZB7LipSH8UVvHW2k2aWGk=
X-Google-Smtp-Source: AGHT+IHirezA1gYr0G/DUtQrSt/DP/1VMOY/GWyL0+CDPDCZHRfOmDWirKI9sgtwCb0jA2Kn8vQ++g==
X-Received: by 2002:adf:ea8d:0:b0:37c:ddab:a626 with SMTP id ffacd0b85a97d-380610e69f9mr139123f8f.7.1729876565769;
        Fri, 25 Oct 2024 10:16:05 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:05 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:15:36 +0100
Subject: [PATCH v2 05/36] dt-bindings: display: Add BCM2712 PixelValve
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-5-35efa83c8fc0@raspberrypi.com>
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

From: Maxime Ripard <mripard@kernel.org>

The BCM2712 has 3 different pixelvalves that are similar to the ones
found in the previous generations but with slightly different
capabilities.

Express that using a new set of compatibles.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
index 4e1ba03f6477..6b5b1d3fbc0b 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
@@ -20,6 +20,9 @@ properties:
       - brcm,bcm2711-pixelvalve2
       - brcm,bcm2711-pixelvalve3
       - brcm,bcm2711-pixelvalve4
+      - brcm,bcm2712-pixelvalve0
+      - brcm,bcm2712-pixelvalve1
+      - brcm,bcm2712-pixelvalve2
 
   reg:
     maxItems: 1

-- 
2.34.1


