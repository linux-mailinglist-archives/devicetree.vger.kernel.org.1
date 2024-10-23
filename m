Return-Path: <devicetree+bounces-114815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5529AD174
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:50:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 211821F242F7
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8931CFEA5;
	Wed, 23 Oct 2024 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="YBY3BT7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DD71CEAD8
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729702215; cv=none; b=enM9isD09x9V6ZtwlMRmgc9A48b+feFlaFEMlEUmhzIvgLt8ObtVg3roHcf9P1Ru9b8cqQ9pr+pXg6IKpO0WbGaANBD79zIYb0lmQg6nUlg2lBiQBSV6/ije+DwnWVS9v6L1BS6kngbPzU/9fHTjSrcC8x7QaeNfagLhRJo+NHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729702215; c=relaxed/simple;
	bh=Dqczlx+ynt3PAOikWn3MGYfXWnzVie5xe2exXcESs0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qlM0xkGdejLapmJ/MoWaILNte7vtTLdImRbbTpCZYEK5JUnAXcXy4hus1eVpsVC8HWVDEZRZCZlUi9ZHOX4GVr7BvcyG1X0rHY6bRK6cMzEFIiyjmwJq3NRMerJIixFritZ9qjFPxsJGBSkIbjfgImaIsaADyfgqPhoWm0G5gxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=YBY3BT7D; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43163667f0eso55398045e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729702211; x=1730307011; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DHsrd+uLJ3zzJTfflluftUpg1xM7uGde28YhgXiEaII=;
        b=YBY3BT7Ders9IQVnJW1XIBS/YZ4DIId78A5axYD8sm3qKISBZ4B3LObGvyuy1OTAXp
         rD+92JrCd1Dnx/bvp0sp+7S6USQlnXjQA53lqEY9IOd3kH8e95DWOHNFnecuI21OZYv2
         faJ0Dcn879PZoqLiB2ryU36CPyZ+UGrAcUGNQ2ImwYx3+5JXlYnuDhV/lQv29ziWFfQ1
         S2DMPZ36csc/xQxPQjpJUntPYKZqjW00WgyWif5hrFW9A6zX9WXOYOsg7j/eDDdBspry
         1iquv38rlHasvp2llhg5cdWSKuJOAYMcCFvkV4oztSFiJe5+4QGcUnzpJD20GYSCNXUb
         sSxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729702211; x=1730307011;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DHsrd+uLJ3zzJTfflluftUpg1xM7uGde28YhgXiEaII=;
        b=oNoYoMW8gvTZXF2+PBSDAGrvMvqkymQs9Jvc/yMi3uFXd9pfGTNpn0FBEqId0Z1kge
         HuT4u5oZU0nRK7joLpPUaeWMQocQrGxE4ayWXKjgNbGgSjY2ceFD0hyuJxi4B9XZsBbZ
         xdowa0qq0Ax0XQVOSPTNABhCcOx3FyP7Cgb9vqXJPE55DQZ7qVfI5Q1SYasBDqqBOi7i
         Zvph7tAXfZhmx+bnf331jazeecfzXpfLhrgah76JmWxHijcqdpzadkHkHj7Mq6aFaEow
         TgLDRcWcigtKPpT4BXh0D1ZRbBh63C0JA9V0DTk80bz848GMKj9+8kXd+4MDP+TJZW21
         Y8Jw==
X-Forwarded-Encrypted: i=1; AJvYcCWTe9eenw9K5EoakIDSJ+AdXT7LgYmoGMcDkgi/yE9I//H0YvgwrKkQVB0TpdXfPiJElxUBZopLM4Rk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9BA4FBVLr3/DA7pVWonWc04Q5HRX0cEb51oUqRMZ5cRT7Noqg
	ZmkPj9IO5dkromN4mfsjLWBuPltq7KeTbx4q6e/6rUlaP5+I+ZJT1+rPbPgiyJw=
X-Google-Smtp-Source: AGHT+IERhAzD85giYVwWPW2yr0xeM1afTBRNEqyh3+VJ9Dt+uRH4uKHHawanviz9+PlgBvlZWTrZUA==
X-Received: by 2002:a05:600c:3b07:b0:431:5c1c:250b with SMTP id 5b1f17b1804b1-431841e0ff1mr27913915e9.1.1729702211354;
        Wed, 23 Oct 2024 09:50:11 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43186c50445sm21642035e9.39.2024.10.23.09.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:50:10 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 23 Oct 2024 17:50:00 +0100
Subject: [PATCH 03/37] drm/vc4: Fix reading of frame count on GEN5 / Pi4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-drm-vc4-2712-support-v1-3-1cc2d5594907@raspberrypi.com>
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

The frame count values moved within registers DISPSTAT1 and
DISPSTAT2 with GEN5, so update the accessor function to
accommodate that.

Fixes: b51cd7ad143d ("drm/vc4: hvs: Fix frame count register readout")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/gpu/drm/vc4/vc4_hvs.c  | 45 +++++++++++++++++++++++++++++++-----------
 drivers/gpu/drm/vc4/vc4_regs.h |  6 ++++++
 2 files changed, 40 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 1edf6e3fa7e6..f8edb0791091 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -272,19 +272,42 @@ u8 vc4_hvs_get_fifo_frame_count(struct vc4_hvs *hvs, unsigned int fifo)
 	if (!drm_dev_enter(drm, &idx))
 		return 0;
 
-	switch (fifo) {
-	case 0:
-		field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
-				      SCALER_DISPSTAT1_FRCNT0);
-		break;
-	case 1:
-		field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
-				      SCALER_DISPSTAT1_FRCNT1);
+	switch (vc4->gen) {
+	case VC4_GEN_5:
+		switch (fifo) {
+		case 0:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
+					      SCALER5_DISPSTAT1_FRCNT0);
+			break;
+		case 1:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
+					      SCALER5_DISPSTAT1_FRCNT1);
+			break;
+		case 2:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT2),
+					      SCALER5_DISPSTAT2_FRCNT2);
+			break;
+		}
 		break;
-	case 2:
-		field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT2),
-				      SCALER_DISPSTAT2_FRCNT2);
+	case VC4_GEN_4:
+		switch (fifo) {
+		case 0:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
+					      SCALER_DISPSTAT1_FRCNT0);
+			break;
+		case 1:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT1),
+					      SCALER_DISPSTAT1_FRCNT1);
+			break;
+		case 2:
+			field = VC4_GET_FIELD(HVS_READ(SCALER_DISPSTAT2),
+					      SCALER_DISPSTAT2_FRCNT2);
+			break;
+		}
 		break;
+	default:
+		drm_err(drm, "Unknown VC4 generation: %d", vc4->gen);
+		return 0;
 	}
 
 	drm_dev_exit(idx);
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index c55dec383929..341a75cf92e5 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -418,6 +418,10 @@
 # define SCALER_DISPSTAT1_FRCNT0_SHIFT		18
 # define SCALER_DISPSTAT1_FRCNT1_MASK		VC4_MASK(17, 12)
 # define SCALER_DISPSTAT1_FRCNT1_SHIFT		12
+# define SCALER5_DISPSTAT1_FRCNT0_MASK		VC4_MASK(25, 20)
+# define SCALER5_DISPSTAT1_FRCNT0_SHIFT		20
+# define SCALER5_DISPSTAT1_FRCNT1_MASK		VC4_MASK(19, 14)
+# define SCALER5_DISPSTAT1_FRCNT1_SHIFT		14
 
 #define SCALER_DISPSTATX(x)			(SCALER_DISPSTAT0 +        \
 						 (x) * (SCALER_DISPSTAT1 - \
@@ -436,6 +440,8 @@
 #define SCALER_DISPSTAT2                        0x00000068
 # define SCALER_DISPSTAT2_FRCNT2_MASK		VC4_MASK(17, 12)
 # define SCALER_DISPSTAT2_FRCNT2_SHIFT		12
+# define SCALER5_DISPSTAT2_FRCNT2_MASK		VC4_MASK(19, 14)
+# define SCALER5_DISPSTAT2_FRCNT2_SHIFT		14
 
 #define SCALER_DISPBASE2                        0x0000006c
 #define SCALER_DISPALPHA2                       0x00000070

-- 
2.34.1


