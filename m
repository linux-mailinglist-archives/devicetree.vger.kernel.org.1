Return-Path: <devicetree+bounces-114832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FD69AD1B7
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B4321F252BE
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E8C1FEFDA;
	Wed, 23 Oct 2024 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="NjyeBKG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F7C1F9A98
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702233; cv=none; b=YhXLMPE5y8WgIOZp+o8S1neAiCNuu1+vKb/n1vAcmnqa08cjB7aIpPa9U/FfFCHofaU44JC1kocURdz2cNxZvQMSHjPQoczsHt9mpHbNcsZ/26oKFI5z+71xN6cIa1bCRO8Md4BdKv3UceSxHILMpwz0EVqhhRExzp1qe/FUKiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702233; c=relaxed/simple;
	bh=FoDTmoKj86GggdhHgaL5iFjtkw3aCxNXnx5OxNjr+l0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZm1CA1mIdB8yshJxZeDGvqnb2/9SA3RY6mg5w2wuUIjNeOWCkPBcX+M92Mt0q5xM7iMyozlgXywbLcgQ6EH6BoxyjcIohuHdAVD9yPDfgso+/xNmuzNgf/8F6IDhh+B9LUrbYCcv5tujoDHvXL7HtRh/i6cw5SDJjZ0TStKcGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=NjyeBKG1; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so51272895e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702228; x=1730307028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aR3ccJeL4HxyxPZlSDJvOHeahmWhAae+eo+r1fakok4=;
        b=NjyeBKG1C7u9b+BJOtUj8C9G2CdU8odHLPGFUTO+WhSyVoxN03pPYyPnMi6r0cqO+E
         xWOlufywOOmeFn8RSJg2YlijNDXPrwzDx5UrC8rtwRbNt0qMRkMEW+8K+MEVuQCm6kix
         kRLhTNjIEG+GFag8iRbjH2fupBFV34/SnW+buaPa+ySjehIoOzoyp22MI/bY9JfyxJ6j
         9YRRCppujbIhsL5YbgQVgqq6Tw1cvnGbuqJmjPR3+viU6ZYvS6cAxyDAFbzMcnq4ZtEE
         OpJXcc8R10tGXgq5Wid4OqpfPtT3jGiZNOG3i7yLzHZISyQpP6TmJaf1fYHprXXcP4XD
         PLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702228; x=1730307028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aR3ccJeL4HxyxPZlSDJvOHeahmWhAae+eo+r1fakok4=;
        b=rlMZBFqY3IQH2mcdU4+Mkyuz+gCKV4spOau/nRTc1Bpmq3bN8Y3L1RPADcDMvFdycC
         4Bxx8jIfcmjuD10rUfMr8cwa5bGREwJNj1x1GwhOH9OtEOzIeJmB9PnnYc0+gg/+2d2L
         b0vrHgcMKPbFADys01YrweHZJbp+xnNcK0QmojmL/A61qaXCIEkszlwQtc8Q686cGdhj
         tZFynQZ1eAzXmJN69u+OuZU1dNbhoa6j7FqLu8SmvAek2QbgbGGB6SQLFLCyAqS6fHOD
         glEIJ7jUZoSKnPEoKtAH7L8GszqyvTWWOi29TFXQS4Dgl/HsFYR1NPaGZBPsx1R5Uupw
         3HFQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+YzwbfMCyiPjtKt7YrohV7peUkHD7+v+fpXhOLU08OFSnd/JQM/jlrIE2OLXDj3ZZ4rDr1ByntNeP@vger.kernel.org
X-Gm-Message-State: AOJu0YwLQsuIOE1TDr3zSATfgQeefLC5RnMUpxUCI5khm7g8PBvpCthU
	2GoYCuZOz7PR7rIUdlyq+EFfrJbNIyRi7MSqsUvbkvyP3ZNduITInE5+eJNsjAg=
X-Google-Smtp-Source: AGHT+IEOy2zNXTO+qZ1pnkj3ZxfwjmFB8Lyi/Hjl1VbMlKymDIO9YzNaeAU/T3UkTjjwbJe440glJA==
X-Received: by 2002:a05:600c:55d5:b0:431:46fe:4cc1 with SMTP id 5b1f17b1804b1-431841440c2mr30585085e9.10.1729702228114;
        Wed, 23 Oct 2024 09:50:28 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:27 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:17 +0100
Subject: [PATCH 20/37] drm/vc4: txp: Add a new TXP encoder type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-20-1cc2d5594907@raspberrypi.com>
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

Starting with BCM2712, we'll have a two TXP. Let's follow the HDMI
example and add two encoder types for TXP: TXP0 and TXP1.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/tests/vc4_mock.c           |   4 +-
 drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c | 106 ++++++++++++-------------
 drivers/gpu/drm/vc4/vc4_drv.h                  |   3 +-
 drivers/gpu/drm/vc4/vc4_kms.c                  |   2 +-
 drivers/gpu/drm/vc4/vc4_txp.c                  |   2 +-
 5 files changed, 59 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock.c b/drivers/gpu/drm/vc4/tests/vc4_mock.c
index 372482fcd6c7..e276a957b01c 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock.c
@@ -52,7 +52,7 @@ struct vc4_mock_desc {
 static const struct vc4_mock_desc vc4_mock =
 	VC4_MOCK_DESC(
 		VC4_MOCK_CRTC_DESC(&bcm2835_txp_data.base,
-				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP,
+				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP0,
 							DRM_MODE_ENCODER_VIRTUAL,
 							DRM_MODE_CONNECTOR_WRITEBACK)),
 		VC4_MOCK_PIXELVALVE_DESC(&bcm2835_pv0_data,
@@ -78,7 +78,7 @@ static const struct vc4_mock_desc vc4_mock =
 static const struct vc4_mock_desc vc5_mock =
 	VC4_MOCK_DESC(
 		VC4_MOCK_CRTC_DESC(&bcm2835_txp_data.base,
-				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP,
+				   VC4_MOCK_OUTPUT_DESC(VC4_ENCODER_TYPE_TXP0,
 							DRM_MODE_ENCODER_VIRTUAL,
 							DRM_MODE_CONNECTOR_WRITEBACK)),
 		VC4_MOCK_PIXELVALVE_DESC(&bcm2711_pv0_data,
diff --git a/drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c b/drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c
index 61622e951031..40a05869a50e 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c
@@ -90,7 +90,7 @@ static const struct encoder_constraint vc4_encoder_constraints[] = {
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_DSI0, 0),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_HDMI0, 1),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_VEC, 1),
-	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_TXP, 2),
+	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_TXP0, 2),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_DSI1, 2),
 };
 
@@ -98,7 +98,7 @@ static const struct encoder_constraint vc5_encoder_constraints[] = {
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_DPI, 0),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_DSI0, 0),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_VEC, 1),
-	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_TXP, 0, 2),
+	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_TXP0, 0, 2),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_DSI1, 0, 1, 2),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_HDMI0, 0, 1, 2),
 	ENCODER_CONSTRAINT(VC4_ENCODER_TYPE_HDMI1, 0, 1, 2),
@@ -207,7 +207,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 	VC4_PV_MUXING_TEST("1 output: DSI1",
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("1 output: TXP",
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("2 outputs: DSI0, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_HDMI0),
@@ -219,7 +219,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("2 outputs: DSI0, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("2 outputs: DPI, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_HDMI0),
@@ -231,19 +231,19 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("2 outputs: DPI, TXP",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("2 outputs: HDMI0, DSI1",
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("2 outputs: HDMI0, TXP",
 			   VC4_ENCODER_TYPE_HDMI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("2 outputs: VEC, DSI1",
 			   VC4_ENCODER_TYPE_VEC,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("2 outputs: VEC, TXP",
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("3 outputs: DSI0, HDMI0, DSI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_HDMI0,
@@ -251,7 +251,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 	VC4_PV_MUXING_TEST("3 outputs: DSI0, HDMI0, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_HDMI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("3 outputs: DSI0, VEC, DSI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
@@ -259,7 +259,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 	VC4_PV_MUXING_TEST("3 outputs: DSI0, VEC, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("3 outputs: DPI, HDMI0, DSI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_HDMI0,
@@ -267,7 +267,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 	VC4_PV_MUXING_TEST("3 outputs: DPI, HDMI0, TXP",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_HDMI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("3 outputs: DPI, VEC, DSI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
@@ -275,7 +275,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_params[] = {
 	VC4_PV_MUXING_TEST("3 outputs: DPI, VEC, TXP",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 };
 
 KUNIT_ARRAY_PARAM(vc4_test_pv_muxing,
@@ -287,7 +287,7 @@ static const struct pv_muxing_param vc4_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_DSI0),
 	VC4_PV_MUXING_TEST("TXP/DSI1 Conflict",
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC4_PV_MUXING_TEST("HDMI0/VEC Conflict",
 			   VC4_ENCODER_TYPE_HDMI0,
@@ -296,22 +296,22 @@ static const struct pv_muxing_param vc4_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_DSI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, DSI1, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
 			   VC4_ENCODER_TYPE_DSI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("More than 3 outputs: DPI, HDMI0, DSI1, TXP",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_DSI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC4_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, DSI1, TXP",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
 			   VC4_ENCODER_TYPE_DSI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 };
 
 KUNIT_ARRAY_PARAM(vc4_test_pv_muxing_invalid,
@@ -342,7 +342,7 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("2 outputs: DPI, TXP",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("2 outputs: DPI, VEC",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC),
@@ -360,7 +360,7 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("2 outputs: DSI0, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("2 outputs: DSI0, VEC",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC),
@@ -372,7 +372,7 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_VEC),
 	VC5_PV_MUXING_TEST("2 outputs: DSI1, TXP",
 			   VC4_ENCODER_TYPE_DSI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("2 outputs: DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0),
@@ -384,7 +384,7 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_VEC),
 	VC5_PV_MUXING_TEST("2 outputs: HDMI0, TXP",
 			   VC4_ENCODER_TYPE_HDMI0,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("2 outputs: HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
@@ -393,14 +393,14 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_VEC),
 	VC5_PV_MUXING_TEST("2 outputs: HDMI1, TXP",
 			   VC4_ENCODER_TYPE_HDMI1,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("2 outputs: TXP, VEC",
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_VEC),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, VEC, TXP",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, VEC, DSI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
@@ -415,15 +415,15 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, TXP, DSI1",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, TXP, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, TXP, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("3 outputs: DPI, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
@@ -440,7 +440,7 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, VEC, TXP",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP),
+			   VC4_ENCODER_TYPE_TXP0),
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, VEC, DSI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
@@ -455,15 +455,15 @@ static const struct pv_muxing_param vc5_test_pv_muxing_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, TXP, DSI1",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, TXP, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, TXP, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("3 outputs: DSI0, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
@@ -490,17 +490,17 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, DSI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
@@ -519,17 +519,17 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, TXP, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, TXP, DSI1, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, TXP, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, DSI1, HDMI0, HDMI1",
@@ -540,19 +540,19 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, DSI1, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, DSI1, HDMI0, HDMI1",
@@ -563,24 +563,24 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, TXP, DSI1, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, DSI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
@@ -599,17 +599,17 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, TXP, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, TXP, DSI1, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, TXP, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, DSI1, HDMI0, HDMI1",
@@ -620,19 +620,19 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, DSI1, HDMI0",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, DSI1, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, DSI1, HDMI0, HDMI1",
@@ -643,27 +643,27 @@ static const struct pv_muxing_param vc5_test_pv_muxing_invalid_params[] = {
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, TXP, DSI1, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: VEC, TXP, DSI1, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DPI, VEC, TXP, DSI1, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DPI,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
 	VC5_PV_MUXING_TEST("More than 3 outputs: DSI0, VEC, TXP, DSI1, HDMI0, HDMI1",
 			   VC4_ENCODER_TYPE_DSI0,
 			   VC4_ENCODER_TYPE_VEC,
-			   VC4_ENCODER_TYPE_TXP,
+			   VC4_ENCODER_TYPE_TXP0,
 			   VC4_ENCODER_TYPE_DSI1,
 			   VC4_ENCODER_TYPE_HDMI0,
 			   VC4_ENCODER_TYPE_HDMI1),
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 70b7a771ff47..de2107e593c2 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -489,7 +489,8 @@ enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_DSI1,
 	VC4_ENCODER_TYPE_SMI,
 	VC4_ENCODER_TYPE_DPI,
-	VC4_ENCODER_TYPE_TXP,
+	VC4_ENCODER_TYPE_TXP0,
+	VC4_ENCODER_TYPE_TXP1,
 };
 
 struct vc4_encoder {
diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index a5cd9da5d6a6..28346729c2dd 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -350,7 +350,7 @@ static void vc6_hvs_pv_muxing_commit(struct vc4_dev *vc4,
 			mux = 0;
 			break;
 
-		case VC4_ENCODER_TYPE_TXP:
+		case VC4_ENCODER_TYPE_TXP1:
 			mux = 2;
 			break;
 
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index ecd2fc5edf45..2979d141f3bb 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -515,7 +515,7 @@ const struct vc4_txp_data bcm2835_txp_data = {
 		.hvs_available_channels = BIT(2),
 		.hvs_output = 2,
 	},
-	.encoder_type = VC4_ENCODER_TYPE_TXP,
+	.encoder_type = VC4_ENCODER_TYPE_TXP0,
 	.has_byte_enable = true,
 };
 

-- 
2.34.1


