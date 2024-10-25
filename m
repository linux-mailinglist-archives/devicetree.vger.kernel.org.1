Return-Path: <devicetree+bounces-115802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 322CB9B0B6C
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:26:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8C3F1F25C03
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A367821765A;
	Fri, 25 Oct 2024 17:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="hgtYN84U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE67229B3C
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729876595; cv=none; b=dbMN2lClB306/U4d/LDVDhrlQ9AStXpnZFHnKhSaLIPswI+/VcJISl6+7NHhkkWojLdGAFUtULNeKiOCa7a9+80brC3pZkG0hU2+5MxwZZl2tHlFlAjJByhczPLw+35bFuWBUuA4n45xsoqHueN3+y6dAwzyH58rWgBYThPudek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729876595; c=relaxed/simple;
	bh=0je9Y0xbsCwGhDIv3Ukq4aSt2NhWmJSUC9xO7wwoU+Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=opjbrLoEuKYTXfkh4b3SSWksxHD/ZA06TpaOLamCRGU8BeylRR5oq1CFn+TUqZGMc07cKLNg/hBSRCA9/Y7xKGnWnwDj6TaN54nlZX4oxMSPmkCQmjTOQttjl5G54Io20vX3wWseDocZ/PZMpyHsODS7AJfMeFlK24TzeaOQ4Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=hgtYN84U; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37ed7eb07a4so1721011f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729876589; x=1730481389; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5HllG+0A2vmKjdDSzHIHJZeNfO9C2BUneILRyscFdw0=;
        b=hgtYN84UMLRxLRy3AfPk6vxJa3y5IDiRJTzQJNl3qMKqaQRKQpVMSJJHjuRk6H27Aa
         7GOT2N2SZodJGvmhEvb0R6Jq3q3T3p1g++C1Py2yXIRu7X5syfoe+T60fXeYiXDqzIJ8
         GSR5HqrWVmhxOTdFPkrXhapaq4X0wiSvSE3v56hqV6e1Ro6hQYGlyYzc0+JR6g9S4jbI
         Q0wRwq+k9Kvlvq1ea+6f02/G30QqD8FY7Sl+/zUpKiU92sH6fOPWff1KB49adwYPsIlK
         8TEW9PoWh7uHhQoanpsFi/LqLV/k7bXsfli0ZpKCrFKg0ZNzOXuBWbVOlHNwqmRKUx86
         mXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729876589; x=1730481389;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5HllG+0A2vmKjdDSzHIHJZeNfO9C2BUneILRyscFdw0=;
        b=on8J/8KMO64YicEQAtB+npchXdwcXDv1oYMsLMe339XhIDF/lpdjNEYXRMTsh19W29
         R1pBBBPayZC75u5mY1Qcpmg2LzQaKxY/ZPzJNd+jkEm6sDaO/qlfUEhSt4c0GvFODfvA
         K1KFOGOjjpAcBKPNoJLGRwMFxOZ020XeEjOfg+JYVWYX2jIO6BoO1Ycb/lxX0RIxPRNX
         7Y/UR/e/t10zqua69G0ZV5F6f96C4O1tgeagesVpfgDxuTPl0BWQi/xYUWGJCSdCerzU
         geUuncqfpjGENB5aSEyRVshcXIsfVobKomq+xjJWm8AK2BJZa8utgYksi61+JIxLjaBh
         Q5HA==
X-Forwarded-Encrypted: i=1; AJvYcCV2MLgP+O/rzxAAxr0mey/QsaxR9MyWL6tm8N5AyHXnHCctByKJpVaaaZSL5z8PJGOOuoF9z2zaW1LA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1LGymc/BzC+2rRSaRqszENrs3znho80gCnCjGmuJrRAuG3BYN
	biYR3zOaxNjYssquYvOcEYsSRsuH0Uq06NpoTLcKFIa6KBsQ7CTvx+779Z1urog=
X-Google-Smtp-Source: AGHT+IF1bjTItLZYzib0RmBwDucZt/dcZd/G2s0GqNKrDbIpCMPlI0IgZqsUCGHdxbWn04sHiWM6eQ==
X-Received: by 2002:a5d:440a:0:b0:37c:d1b6:a261 with SMTP id ffacd0b85a97d-3806122feefmr91002f8f.59.1729876589515;
        Fri, 25 Oct 2024 10:16:29 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38058b91f50sm2013649f8f.94.2024.10.25.10.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 10:16:29 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 25 Oct 2024 18:16:00 +0100
Subject: [PATCH v2 29/36] clk: bcm: rpi: Add ISP to exported clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-drm-vc4-2712-support-v2-29-35efa83c8fc0@raspberrypi.com>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dom Cobley <popcornmix@gmail.com>
X-Mailer: b4 0.14.1

From: Dom Cobley <popcornmix@gmail.com>

The ISP clock can be controlled by the driver, so register it
with the clock subsystem.

Signed-off-by: Dom Cobley <popcornmix@gmail.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index a18a8768feb4..6d5ee1cddded 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -118,6 +118,9 @@ raspberrypi_clk_variants[RPI_FIRMWARE_NUM_CLK_ID] = {
 	[RPI_FIRMWARE_HEVC_CLK_ID] = {
 		.export = true,
 	},
+	[RPI_FIRMWARE_ISP_CLK_ID] = {
+		.export = true,
+	},
 	[RPI_FIRMWARE_PIXEL_BVB_CLK_ID] = {
 		.export = true,
 	},

-- 
2.34.1


