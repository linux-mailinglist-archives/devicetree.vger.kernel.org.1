Return-Path: <devicetree+bounces-11608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE70C7D637D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AC6EB2116C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67D61A284;
	Wed, 25 Oct 2023 07:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AOTo+omI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA171944F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:37:31 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8361728
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:19 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32da7ac5c4fso3556154f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219317; x=1698824117; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5z/V4Jmy9kuxnbn3ouk6FBjzE9CgTURmmBJt5Ad2jiY=;
        b=AOTo+omI54EuzRgJU6FFYbmhLSP2ahHlTlBAOeMPyt82qtZj2qaz2wripmrbMFUgPw
         MIjMB27yZQ9BCHBrSf2fkANWFyTE/2Mt+zI1fmSNEdNtJuOSuGBk5YlDLFAFg+A49z+S
         h6C4PiGL0ihftB0/kwfztFUfbS/I+8m1ZhRkGxkhsrTdY2OMjN6Kvcp6GeIN2Jjz5uaR
         D8Li4fAyUdyjd0P9jlYdbW/sgQpn3zzi47jSyNoTPZT6ASfumuGZ//1P6NXoS+Vcl0A0
         OIVljZhk5pcAjhgxHSjSReafpckhJeTKZglSWrS6uBK+q20tSZ5dnzhnnkmWF5kA/rvH
         cfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219317; x=1698824117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5z/V4Jmy9kuxnbn3ouk6FBjzE9CgTURmmBJt5Ad2jiY=;
        b=BvxPCIl4glSRlpY3e9jhbkLiujZeT68jvnTQAFGrqlG6NgpiYGVZLdDTXPVdhr0pqX
         E66yvOKYdKLWvAtgpL62d1XgH/CoTyV74UlnGlUofbF1nMKi01DQuN7EuOH0X570VuZR
         ima7Ue92TJoF7OHuDzr1u2REaOspVmWJLeIUgfLuiHXcG2B2CyczAq2O5aqWZbw1TUC2
         +ZB+BmI7thGaC90UeCM88z07SiKgN4VTLO0kpXm0FznM3TJeGzKpxzUp2BTT6pG99Myy
         fG/WsMsJH4eMq3XiwxqvKyAV+JhcmC53WYKawoRCkWJwN6oXX28O4QGNTRLP88H8xBHm
         JkRA==
X-Gm-Message-State: AOJu0Yw01UFTghwJ0IkQV8K359eXNuq7QTHaHwWJGoQAXS9j5cQwescY
	cjZNP/A89mVUNJy6JMC0QOR6GA==
X-Google-Smtp-Source: AGHT+IE5zyDvAyehklMpJ1ZEUwAbRzg6PLLJ4r41F8kakjZ1hGGNicIg9kP4MsQSpO+6DvjHlvWxgQ==
X-Received: by 2002:a5d:67c5:0:b0:32d:b9c5:82fb with SMTP id n5-20020a5d67c5000000b0032db9c582fbmr10037908wrw.30.1698219317422;
        Wed, 25 Oct 2023 00:35:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d60d2000000b003248a490e3asm11449058wrt.39.2023.10.25.00.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:35:06 +0200
Subject: [PATCH 8/8] drm/msm: dsi: add support for DSI 2.8.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-mdss-v1-8-bb219b8c7a51@linaro.org>
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2106;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=0yTTxYhVn2OwUhlFrykG9TyQLX4KleetjzQPvdPaNCE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUoKLkNIC0plpTG8eAgW09BRrCnILlvA5niTNpw
 8X6TYmKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFKAAKCRB33NvayMhJ0QDhD/
 9PTVjrCJUYTDE+PBfqY1lyYKPJqK/UFS51fCg5PPHBX2ZHtBLT/xO+uCr9k902qMhFZYm07vODeIEN
 CbxMb6NmFMoHqfMV4Xn5r9lKSQsQzmfhwhTbZlNf+2G6s0dwmZnKde01l+jJurrq4HFPl+P15J7vp5
 UmLWGA+3AG5iRHIm+FxKhTZ1P8RGwuKm03LB8QXSdiuvVNtpofdCT7H4EdU86xDyZp/8TU9fouYC/v
 pniJ4sgVi5ESVKu5xOjEWhzK5a1P/uFenfM8Ab0q/MofAlv5lZndIKZjo84LsFcbvZof7/THY2pm2T
 V1vB3YxIeNzhkM+hhELyzcSzimR71fzY4zfinl8cljz61aggfrRRe2We8x8jofoVQXmpSLpK5X6Jum
 KJKqQ608tJ1HLyedpJ+UIzzOYZoLYTC1+ml9hg8oTddd8PIvm/mxOc3wLRsnQWRRgYApfZq6hsEJUO
 AxjhwryeBeeaBvptdtNlTZKEfjQ8DG/aWA6pFa6FUEj8fA+ubM8FrY7AnAlaC+lxtaFaYMRpGXD9M4
 gM4nQbFz7uzmtM/Cng2l8iroXuwSIWURZKNnKWU3mBTA/Nh5CCRgX+BD4LW3UwmE4rDrX3RYfQnz31
 0E8BlRbvtcpo1WZXwJDBJnT7M+rnxQA5QQl/W6KIkp3cfiQpLaLY372wlWlQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add DSI Controller version 2.8.0 support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_cfg.c | 17 +++++++++++++++++
 drivers/gpu/drm/msm/dsi/dsi_cfg.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
index 1f98ff74ceb0..10ba7d153d1c 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
@@ -190,6 +190,21 @@ static const struct msm_dsi_config sm8550_dsi_cfg = {
 	},
 };
 
+static const struct regulator_bulk_data sm8650_dsi_regulators[] = {
+	{ .supply = "vdda", .init_load_uA = 16600 },	/* 1.2 V */
+};
+
+static const struct msm_dsi_config sm8650_dsi_cfg = {
+	.io_offset = DSI_6G_REG_SHIFT,
+	.regulator_data = sm8650_dsi_regulators,
+	.num_regulators = ARRAY_SIZE(sm8650_dsi_regulators),
+	.bus_clk_names = dsi_v2_4_clk_names,
+	.num_bus_clks = ARRAY_SIZE(dsi_v2_4_clk_names),
+	.io_start = {
+		{ 0xae94000, 0xae96000 },
+	},
+};
+
 static const struct regulator_bulk_data sc7280_dsi_regulators[] = {
 	{ .supply = "vdda", .init_load_uA = 8350 },	/* 1.2 V */
 	{ .supply = "refgen" },
@@ -281,6 +296,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_7_0,
 		&sm8550_dsi_cfg, &msm_dsi_6g_v2_host_ops},
+	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_8_0,
+		&sm8650_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 };
 
 const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
index 43f0dd74edb6..4c9b4b37681b 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
@@ -28,6 +28,7 @@
 #define MSM_DSI_6G_VER_MINOR_V2_5_0	0x20050000
 #define MSM_DSI_6G_VER_MINOR_V2_6_0	0x20060000
 #define MSM_DSI_6G_VER_MINOR_V2_7_0	0x20070000
+#define MSM_DSI_6G_VER_MINOR_V2_8_0	0x20080000
 
 #define MSM_DSI_V2_VER_MINOR_8064	0x0
 

-- 
2.34.1


