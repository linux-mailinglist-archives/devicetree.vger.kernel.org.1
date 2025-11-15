Return-Path: <devicetree+bounces-238932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D86C5FF18
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 03:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B1314E418A
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 02:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083B3221F13;
	Sat, 15 Nov 2025 02:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RP9DxNn/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EBE63B9
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 02:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763175520; cv=none; b=JFKJSIrmst0btcwmxzB2/htiTe0aMKIft0UsSjHY4+PtcfwL0Gln286qHcHL+MmjM1mWboWi1eOJhG6swNs+LyMlB+Bagtm++LpN2bn6NeWYrOiw2gG+nCuTI53Zlrq4yIy7rfTVU1eN7vtJ+OpaFGwlopMhObvBpSunXGmd4Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763175520; c=relaxed/simple;
	bh=sYSxPa+HhMWu4HiS1dttsCY0o4iMeKYHERfyGSoRC38=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GXqTtAo5CCvMBt6Ibf9PCq1W4zXoie41ASNJq5lhtl3HDXtX0pnq5jW9NXsQPpeyGA8U7Kd2sgHjwP5OfKdxzOOj2WwlW62iiMPcODL6MBK+c4quRfeA1iu7UUUhpaq9USackzzXUi3+QzZO3ieuJ0MSqdIMwNuxAHoWVxlfOH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RP9DxNn/; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-29568d93e87so23565235ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763175519; x=1763780319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AOThRS7nDmg/X3Ml/NXAcROJCvUeqBDt9QIev12itfU=;
        b=RP9DxNn/qlDVsPSu63EkR6Y53M5wF+PUdjl9pErk5dBvLCzRAlyIsNPMVv7IxeRtC+
         j0GjmjshlDdarmswe/YNT6n2l/Mc2Ld/rJ7K/3luC7HIVHH6LBFV1YImli+ERmO8fNUN
         Tu1GnC2BESMMZTfeKNblNY2MkCraZmtfzF29904j3Td9xgSaOeAyy6lvdMRQTlQ7XU0g
         BdXWYss93bJ250I7RQsdX77DZAS7MAwksB9b1MDPstiyzdMCiM655bP8koDyoUU+wZHE
         UxNdmGKIvDp3h/TmSIjFymUGMoXE7foXgQddjNqsBHx+Vh/A/+aD0p4Y/etoEAkYr3Bx
         hOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763175519; x=1763780319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AOThRS7nDmg/X3Ml/NXAcROJCvUeqBDt9QIev12itfU=;
        b=r/T1dcE/3YD1QzL3xieZD0P40YHvby1XgagiBbRzL+UUkUaaucVE9Wj5m7L+ZlHmL5
         hkJfUwVuJgMV39pIxABgAkT66FOBUwLvYNOlTfMUSnoR9yOq/M6i85goAC0RmLEtZfFK
         V16/ILPbWLeL267Qo2q8RacSuXf708z1OV1ki3IesNWad336zUVlJxFlHh+gV9yhg/35
         nLn9FYaj0lOrGYLDQmJWHgN3lNblXh5TF7s4je5x80gGwAN9GYPWYk14Z10aLfVWL8Na
         cQXLuCuoC8HS5ui+0QfKj5U20rfXATDi9/hDSyTi3T4uGxqEgeJsodwiyrqkq41eTRXo
         suow==
X-Forwarded-Encrypted: i=1; AJvYcCUpLt0ft9nUDQGO2Ru2OddGroxrJyuZHWSjdAxF8VvhPxG4ZWdnHUnEQOgo2cx3mxVpf/isu5G7SzXT@vger.kernel.org
X-Gm-Message-State: AOJu0YwulMqGtlKZQm2MH+TewKOySMG+wFht4tyvgNtWhwhhCsL25fSv
	DqVLt7w+JL2Y48fGcDgMpwq4tIqa9CuqECgqXsQYOW+ar3zqFKiNjORH
X-Gm-Gg: ASbGnctgaAxOyzVvfMrk49K9mkPV9dNUlgRNZm0MuDtXcUIo9Caw/d1wYRpZfyAKP0I
	jrI1t41dUX4JH7OF2JV/P/fQ9BZrmrCa0lxBkG+y19bHGYWXdM62wV73Kiq1qh7KvkK7uskr/8Y
	RgKpBh/d2mtf7WuqRZKaXEY+9DLGC/247G4s1ye1IpiYn9CZtEff6XZk9FFSmaoHKJwUy1gBKAa
	nhiE7q63tkbp0bYMyN8WR1vDmCGN2uPM3q60lkb2lXW6qwa8pBJp+UmsrSm2hLMuZILGlxaWNSM
	klu0HaXacy4rzZyLzh+fhhv+TWDCHfSAhF4Oj390xjZRJMoNpZAUyqD+R4VxEoN0VNXDnmPWXD0
	NQg/p4LHhw7/tTLL/HFpdJ/41VyKv25kjTRTwrpL6mq5Ov9oR+tjLYygNsMKj/UAaPm6EiDord5
	Tb2kuvmsuq7AnZ6vXkYBtVrGLNbmb5bRsQBDg=
X-Google-Smtp-Source: AGHT+IFFyXPe2hbOlJuzSFnfXZ5k15j0K9Bl/h71q3aSIuF4ivVyXXfsblJRf9byE6sfCxRozD/Cog==
X-Received: by 2002:a05:7022:69aa:b0:119:e55a:9c05 with SMTP id a92af1059eb24-11b41202e74mr2205840c88.33.1763175518654;
        Fri, 14 Nov 2025 18:58:38 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:735a:fcf2:fc15:89cd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b86afe12esm4215227c88.6.2025.11.14.18.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 18:58:38 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 3/3] drm/panel: simple: Add Raystar RFF500F-AWH-DNN panel entry
Date: Fri, 14 Nov 2025 23:58:27 -0300
Message-Id: <20251115025827.3113790-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251115025827.3113790-1-festevam@gmail.com>
References: <20251115025827.3113790-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Raystar RFF500F-AWH-DNN 5.0" TFT 840x480 LVDS panel.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index da6b71b70a46..57c44b016957 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4106,6 +4106,30 @@ static const struct panel_desc qishenglong_gopher2b_lcd = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct display_timing raystar_rff500f_awh_dnn_timing = {
+	.pixelclock = { 23000000, 25000000, 27000000 },
+	.hactive = { 800, 800, 800 },
+	.hback_porch = { 4, 8, 48 },
+	.hfront_porch = { 4, 8, 48 },
+	.hsync_len = { 2, 4, 8 },
+	.vactive = { 480, 480, 480 },
+	.vback_porch = { 4, 8, 12 },
+	.vfront_porch = { 4, 8, 12 },
+	.vsync_len = { 2, 4, 8 },
+};
+
+static const struct panel_desc raystar_rff500f_awh_dnn = {
+	.timings = &raystar_rff500f_awh_dnn_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 108,
+		.height = 65,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing rocktech_rk043fn48h_timing = {
 	.pixelclock = { 6000000, 9000000, 12000000 },
 	.hactive = { 480, 480, 480 },
@@ -5378,6 +5402,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "qishenglong,gopher2b-lcd",
 		.data = &qishenglong_gopher2b_lcd,
+	}, {
+		.compatible = "raystar,rff500f-awh-dnn",
+		.data = &raystar_rff500f_awh_dnn,
 	}, {
 		.compatible = "rocktech,rk043fn48h",
 		.data = &rocktech_rk043fn48h,
-- 
2.34.1


