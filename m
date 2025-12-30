Return-Path: <devicetree+bounces-250520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFDCCE9B84
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6128E3002515
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289F52AD3D;
	Tue, 30 Dec 2025 12:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k1aia87N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89D21A9F91
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099570; cv=none; b=ZooMkSvYk2hAmJwhD528VYJScjd/K2vATh/b3P8C4fBToUBsnbowsUSix8IJuvkmYOOPsXY4KXvuSF6Vsm/IKMBWopCWkijNXcFi0yP42W12A7FDDLY4WMw5En9HD3MOcd+rCb7AZbLctoUZIvY4jCCQEmfGKVwZFb7vhalJrXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099570; c=relaxed/simple;
	bh=wIlSycugRTJQUTwWh7Q5oFic+pQ3pbzCv/mH0FSTar8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LpJdXln9gGs7DQe/KgcuCc9RR2O3nN13EJMSkU3LmmCxuUAfKusqJUBBqndK3JjFYadHZzxdEnfNTdTmEY/I1AOuL6aCO/1LBCjwCeI841IPNB9yMVGpxGqRQP8w5J7iagLdHQwenSVQQc3WUZk8p/TijXwt2rhjvPKWKDDMjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k1aia87N; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0f3f74587so141637875ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 04:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099568; x=1767704368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jG1mbeCtoKdKSqmTwCxzqoc0CL/c5V/aFZf0JDXVCB4=;
        b=k1aia87NCeyxb9ba0nFW2epdudOI1kcnjdxRY68u5qzApv6mHSIT3ZAoMysA4MB3eK
         fGdc1Snq1lCY/KlNliQ9lGKgkNpbCkDTJPPTth5F28ae40jnApCBikNyOiLk2GZe987d
         WjdpsldmTEVMwKhGG/6n7D1Q/bMSuzbgFt8VHMCfHpZTf7k+I7EtMSeFnYtXlOBqS70i
         NEhKNZwWHQR5tygsAM6fhVdW3jRJNDg7RXP1dJe/nudSMuV6OKBajNmg0OGDnAFeEw3F
         JfD3nz+CUmv0zmW/y/MmjN26UHCvNi1IH/ZQ95j1Gb0sTX9RFE270EeGncRoDCyEb3qD
         bIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099568; x=1767704368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jG1mbeCtoKdKSqmTwCxzqoc0CL/c5V/aFZf0JDXVCB4=;
        b=oxWSGiJU3m4AsC11Sr+qDP8PAjUB8RJKpTKNCpvvsK7G6omZSSF4UgeYWLvrKjr6kk
         HPyI3LZLashWOXaCK50qLjjN6KUAdEXL/2rwTDI3kA7jSTF5gpQcC9S9L061u1pq62Su
         WqjTrzPJoh9MO7UJoUmcpLN99zguwLnWbsUv0IUVu16hh8SPMUM8AwTfgvFJ82xhXAoG
         o1xflBAvHSHGmYa/OYa8aOxSemQeIMh60XosghkuhWlAu9xt0f0qlFF/jkaMD+STsYyd
         y+clrehcTwTB2QXsrtBnblK+lXfZ7sNdY4jzuhuB4IDbdp0CperqJqNIbguch6OKFOXh
         pxYA==
X-Forwarded-Encrypted: i=1; AJvYcCXsrQuZnp4I5E5JvRMatEyb9xVgN9COsNOWuZEmSHlId3/xa9Pr4kJjV5qFBrIT/JF9X74jJgvwCdv4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4djAWwgiXTnVBX1Pl4zNTfHR4AQtJC8dlp268vxBBrA0fzWkl
	7kzy9oKNQvp41ZY3yZAlucbUaaPz09w3nKvO/ts4DpyTQQIuXtiLGPUJ
X-Gm-Gg: AY/fxX6PZeZUnsyFLv+7sEDFCGJbRSd6agCY0b4SiJJmHwjYzJNaoZCKHN29z58gLTi
	qi33vyYjyflOYWQqqLnhSvE7QCnnkzvyn6tOEas1EhEUJ1sc7zWPAjTUReFlEaCG01Vm0MNIX8T
	9gkWqjBLn83zASF57VTp+nQeVdzfVSpjx4zBAAvdo1xstXINBV41icha2Tzm++uNwnwI6tVYeK4
	Bh3A/rqpMCO5h8S/TPIaXKNaOISPjUC76RQwRwUHjmvJ69DlbHUUeQ6FJbiGk1Z3zl7ECHgGkI5
	yL+C9hPFoMoVIpkPevpQ4s/VY3d1cd1ZpqCfWV3mpxMsKplJTR5aWLKY31ESAR6PueF6FMVrKN0
	sP3Es2g4GQZKKn2p9+PJpUbaiCyKzOL+xnDp3RId9oHCOEJ0sfQtyNVO5QN0wOZe6qJWLyUHO64
	UuEEE6Ah9aFY/UQKISvx7DLyRK
X-Google-Smtp-Source: AGHT+IHJMfFXi8CJeuCE1+e1JHWGesxleL10YTuQ6J1StQpMNTg/PwHmSKzoAole6DZrAbGfkiLEkg==
X-Received: by 2002:a05:7300:ea95:b0:2b0:52ac:92fe with SMTP id 5a478bee46e88-2b05ec30bbfmr35004053eec.21.1767099567895;
        Tue, 30 Dec 2025 04:59:27 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ae10:4ecf:7e5a:aa6f])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05ffad66fsm75132634eec.4.2025.12.30.04.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 04:59:27 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 2/2] drm/panel: simple: Add Innolux G150XGE-L05 panel entry
Date: Tue, 30 Dec 2025 09:59:13 -0300
Message-Id: <20251230125913.3670617-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230125913.3670617-1-festevam@gmail.com>
References: <20251230125913.3670617-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@nabladev.com>

Add support for the Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 3acc9f3dac16..c606e5932ca7 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2836,6 +2836,32 @@ static const struct panel_desc innolux_g121xce_l01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing innolux_g150xge_l05_timing = {
+	.pixelclock   = { 53350000, 65000000, 80000000 },
+	.hactive      = { 1024, 1024, 1024 },
+	.hfront_porch = { 58, 160, 288 },
+	.hback_porch  = { 58, 160, 288 },
+	.hsync_len    = { 1, 1, 1 },
+	.vactive      = { 768, 768, 768 },
+	.vfront_porch = { 6, 19, 216 },
+	.vback_porch  = { 6, 19, 216 },
+	.vsync_len    = { 1, 1, 1 },
+	.flags        = DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc innolux_g150xge_l05 = {
+	.timings = &innolux_g150xge_l05_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width  = 304,
+		.height = 228,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing innolux_g156hce_l01_timings = {
 	.pixelclock = { 120000000, 141860000, 150000000 },
 	.hactive = { 1920, 1920, 1920 },
@@ -5314,6 +5340,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "innolux,g121xce-l01",
 		.data = &innolux_g121xce_l01,
+	}, {
+		.compatible = "innolux,g150xge-l05",
+		.data = &innolux_g150xge_l05,
 	}, {
 		.compatible = "innolux,g156hce-l01",
 		.data = &innolux_g156hce_l01,
-- 
2.34.1


