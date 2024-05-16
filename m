Return-Path: <devicetree+bounces-67347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA938C7A83
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:42:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AFC11F22418
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F30DF60;
	Thu, 16 May 2024 16:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="R9GMsiK5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D75CA7A
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877729; cv=none; b=Ce40CtoLbZYzqE+uyxelbXhNyObnvVKGBQafo817GCX6bFIlgn5RdlFPxyBAh+ERWN3V8lART5WNBz4qEICDX0FLFuJzCrP8rMt84UQPrq2oDvGVpiGemHX+POS66B0hFpjURQRdcttPO0mw7xraznVGdTqRMNVGlf1aqbbo158=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877729; c=relaxed/simple;
	bh=Pi637p/bTB0lkWkPF8F7Ynr0/P72arsieb2+Igg8v48=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=URiriRNSvakXSOYxz9p4GZif2SOUd7lNUsJryamwn2PdgZ6QprSb7OP0QOKZ6iqjVFFFq9p2Qv+rDt1EcLYeRpXe3NgZ8ktnn0rqMyGIg7S0WJDCkQ9OLZ2l1o6N8VzHPcDUNn4PWnH+Hca8cIzMzGuFGAMzhbnwF6CD/uixez8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=R9GMsiK5; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a5a88339780so364736466b.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1715877726; x=1716482526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ej6jwVDe49NxPVP2xZdB0Jv6xzX6u/ARkVFfi+swRno=;
        b=R9GMsiK5Q0dLK8+BKlm9BCa6UHp0wm7YenAM2Yfhzup6SyE84zJOYr69ZCuDGtP+aJ
         wDRkSOSSpIdrfeGP+i4jO1wFzxZI3RQyojKqHWC6TorG7pw/XmkIkOommpK4pMylDIJe
         SzmnVC16NGXMTgbeCVvGzBSrtox0WjpY0+x9vcBcHhtNdxudNZN+n4BnJkZE47WiqPe7
         spjHIbL+b7iI6Z9yQg9NBcd55FGj62E2TyEMYwakEazT5cvmFSWnjcWyH+YApljAGTrU
         PoSjuk+3Tz5lA09ZOAiWMYWAKPYsz2gzlW6LMuOlJn7EHkb0Jpq2cmQnb/4dfyP1oCIX
         YTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877726; x=1716482526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ej6jwVDe49NxPVP2xZdB0Jv6xzX6u/ARkVFfi+swRno=;
        b=Mbevpo3Ye6KS7u7VxLdgx085L3u1cu9BDD68Io/6Bl6Ihe5WgyCd32lMibzIjsO+/o
         mPFRFY2RB1/EOogEbsVZ1Wd09z8KvTZr5D5WL8a7k0SkYYO9b8HPH2hNBL142dCpkFww
         PA/Y9Ua6ZATVqfmk5CMSPiIocDx6lA0osQu3ft/9/Lm3seKcXinmrD5uBAYbhLfNP10b
         6Q66mQR0RPqflk0m9KTQVMkyC4EDt4udKpFmZKxjQobP+6J0jZiELmVzszzgZu1Fuibq
         zMjG11xAa3ALYSfA3N0Xx0kAlx1jcrquiLvQC9wvhSbuw6zN4CAg4kakIbvzHhUnnJHF
         6BzA==
X-Forwarded-Encrypted: i=1; AJvYcCXkn/Cced7G31seGLhUBAIFpDJObuKWmF1sqQxhhoxYOaY6ZrZLYIgng5nge2SXqwFCpN1i3qpP3d/j7/kIt4MgxRRO5Q/RdRWk5w==
X-Gm-Message-State: AOJu0Yy7sUaiLPrRtJULdsVFqNBS3faCTgzHyP9yXX1CWTefqGddAFbt
	xxr7Hed23wAWW3Hv7xztMOJY75jM+C2xZS89777gaEeiykIFbQBsFhuL0VEd/Q==
X-Google-Smtp-Source: AGHT+IEEfjI8Kc3o+hOYjuRV9jGg7ljtuNIZI919I5rhvcttKVZf6MMDwbxs3mvjCURVZOJcAkI40A==
X-Received: by 2002:a17:907:9455:b0:a59:b88c:2b2a with SMTP id a640c23a62f3a-a5a2d66a7cdmr1557549166b.50.1715877726633;
        Thu, 16 May 2024 09:42:06 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a8a55f2e8sm315276666b.126.2024.05.16.09.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 09:42:06 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v6 02/10] media: v4l: ctrls: Add camera trigger controls
Date: Thu, 16 May 2024 19:41:47 +0300
Message-Id: <fc393de60e5ef31352c354dcb1e2fc716e9fcf5a.1715871189.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1715871189.git.vkh@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add V4L2_CID_CAMERA_TRIGGER_MODE as a menu item control to set
trigger mode. Also proposed some standard modes.
Another item is V4L2_CID_CAMERA_TRIGGER as a button to send
trigger in V4L2_TRIGGER_MODE_INTERNAL mode.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-defs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-defs.c b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
index 8696eb1cdd61..db596cb43ad0 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-defs.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-defs.c
@@ -611,6 +611,12 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		"Cyclic",
 		NULL,
 	};
+	static const char * const camera_trigger_mode[] = {
+		"Continuous",
+		"Internal",
+		"External",
+		NULL,
+	};
 
 	switch (id) {
 	case V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ:
@@ -750,6 +756,8 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		return camera_orientation;
 	case V4L2_CID_MPEG_VIDEO_INTRA_REFRESH_PERIOD_TYPE:
 		return intra_refresh_period_type;
+	case V4L2_CID_CAMERA_TRIGGER_MODE:
+		return camera_trigger_mode;
 	default:
 		return NULL;
 	}
@@ -1086,6 +1094,8 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_CAMERA_ORIENTATION:	return "Camera Orientation";
 	case V4L2_CID_CAMERA_SENSOR_ROTATION:	return "Camera Sensor Rotation";
 	case V4L2_CID_HDR_SENSOR_MODE:		return "HDR Sensor Mode";
+	case V4L2_CID_CAMERA_TRIGGER:		return "Camera Trigger";
+	case V4L2_CID_CAMERA_TRIGGER_MODE:	return "Camera Trigger Mode";
 
 	/* FM Radio Modulator controls */
 	/* Keep the order of the 'case's the same as in v4l2-controls.h! */
@@ -1342,6 +1352,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_AUTO_FOCUS_START:
 	case V4L2_CID_AUTO_FOCUS_STOP:
 	case V4L2_CID_DO_WHITE_BALANCE:
+	case V4L2_CID_CAMERA_TRIGGER:
 		*type = V4L2_CTRL_TYPE_BUTTON;
 		*flags |= V4L2_CTRL_FLAG_WRITE_ONLY |
 			  V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
@@ -1420,6 +1431,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_CAMERA_ORIENTATION:
 	case V4L2_CID_MPEG_VIDEO_INTRA_REFRESH_PERIOD_TYPE:
 	case V4L2_CID_HDR_SENSOR_MODE:
+	case V4L2_CID_CAMERA_TRIGGER_MODE:
 		*type = V4L2_CTRL_TYPE_MENU;
 		break;
 	case V4L2_CID_LINK_FREQ:
-- 
BR,
Volodymyr Kharuk


