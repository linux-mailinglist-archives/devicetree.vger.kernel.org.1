Return-Path: <devicetree+bounces-12845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D61A57DB84C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 103E3B20D53
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AAC63D9;
	Mon, 30 Oct 2023 10:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GD6jWWMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7544C66
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:36:56 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB99E9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:53 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-508126afb9bso5961972e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698662211; x=1699267011; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i/LtTLT82rgT9htUTsks4vR9GQIg2/589YKV1q6s2IU=;
        b=GD6jWWMQAkpro9JHllHG5hblWxobAXZN2mR0gjcFeTEAfAzNsxECsuNEY/EAOSbt6y
         LoWAHcSgIwA1DctkvAtRu1UyHqeqRL3e4oSyCrA271IOPbS3roJreueiIE/UDqHRNjZk
         dXZNTdJn8FsmoEMQYqa84Q4b0LNP4JUVByBWCUd8e2e52Y2qyMrCXd8RPVk8iZWBZV8W
         5d7BxZ4zSChyvDkBIYjlwjbyvW9gLaglQvnztuAQyD7u0w6/3KgqI0ICMV1eYRm0k0Eh
         wSRyx0Z4ID0NtJU6jHO+h4GF1RLjnayTTS11PkpIrRiX3/P+QuzqQZSBS3hXD9DzBrWJ
         Gp8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698662211; x=1699267011;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/LtTLT82rgT9htUTsks4vR9GQIg2/589YKV1q6s2IU=;
        b=w+w0+8WyCMOZh/aDPu6mskcDM7v+FeDacn9gyA6POO8xbObAjdcEhkZL/UaC2kOP+h
         MYeEU04eZZ8ZPMAPyHjfPFtnotu1Wimvn+jAf+ljYkUhub6V6yuK+0967HjPL6ItL+iH
         bjCbzi0qrph/OJdjCjchSQ4OzJGAIUNj5vbhsCPlDdtULLf4pbxvaXYCh6UkF516h6t9
         gofWjhVRaQabQcfrcdejVU0UtaWTFLATdgorCRS3qQ2F9VTHREeemNo8ZDOyAYRAlb2w
         /815BrxJHF9xq2e4B8iqWVTQOBeRy7UscJowUHvu+5tnYxa5vYri7y2MeLZJFfNEzVXU
         dJOQ==
X-Gm-Message-State: AOJu0YxDyD6n8oPZtN6yGA4/hKTxfrLWbq/m/5jdjpmUEb6qSUqKZ2i1
	5qfhqgv0pXkON9cliP0JOD0Ehw==
X-Google-Smtp-Source: AGHT+IGXtPV0xDMJbRaPOutNVtD35UMCG1GaoeRShtgpP8r1HnomXQhVljZp16fru6A8K67GlFlQdQ==
X-Received: by 2002:ac2:47f4:0:b0:507:9784:644d with SMTP id b20-20020ac247f4000000b005079784644dmr6536499lfp.15.1698662211496;
        Mon, 30 Oct 2023 03:36:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c458500b004060f0a0fd5sm8783209wmo.13.2023.10.30.03.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 03:36:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 11:36:29 +0100
Subject: [PATCH v2 7/8] drm/msm: dsi: add support for DSI-PHY on SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-mdss-v2-7-43f1887c82b8@linaro.org>
References: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3055;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=PmGwbQW3PICKIZTxI02L37m8WsgoZLD8E/kiS6Mxoy4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP4c4d/Lu8Kn0hOMfxlhcIgt6778dU9GL/rNxcM72
 rMPjhqmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT+HOAAKCRB33NvayMhJ0StWD/
 9Jt+oRdXMdvvQMyXJ0weDupdyGKzSCqNWtqaTYJxpre6WCTIEbfD8YOWRpuqne63xM0WwRsR6pM8jt
 y+hLDD/HSzZk39Ge4gEtBV6SRhTZxDfcP0eFf+3aGByOLZYd3iMLlbL8eeWmKL4ZIbCaIS3tEvU1sG
 yJNvDr2o0MpjYeK4Q+ALQH0sgttfPcKjzLJcye8Mk//hReMyZWC4cfa1mT6owTImG8vsvAmAsU4GSR
 z7lHVHETTnuhUKNvlSDdgzzp7t8dMrrhleQZjP/rhW8iOxoCbxCs75Pii5fpeXgvkuyRkxXlCYCGd3
 BV26bPlrtPB5NrfCCTlO5a3fkuzMMPRo9U4o0PmRQBcLW4CBt2yDTrb4hBGAcf6Db7DmZmbSFIkdJh
 ih72Lf3VHeJYe97lKynh3esi+UkmImgfk8or7Z+jMLvoYj0jH1oPUZnVEPATdIGNOpiHs8iaOY3ol7
 HKg0M0EU19SEIwyr8y6dG89l/lcw46rFe8Kv9S/9pyzSyHdHrClfupAYpr7JAXvA1NbJYowQ4/01jl
 4kaM020DbUKHvT3Up3JL9h2NkZEz3LKvopcSAIlM+o46hTW+20MTOt906CtFT2SP/+0RMAIcAkCuc8
 KUpNBBKO/ocAvWF/gME6QnOV7VA1lSGY9y00s36xGA2HcjagKw/PXbTO4Pqw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add DSI PHY support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 27 +++++++++++++++++++++++++++
 3 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
index 05621e5e7d63..7612be6c3618 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
@@ -585,6 +585,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
 	  .data = &dsi_phy_5nm_8450_cfgs },
 	{ .compatible = "qcom,sm8550-dsi-phy-4nm",
 	  .data = &dsi_phy_4nm_8550_cfgs },
+	{ .compatible = "qcom,sm8650-dsi-phy-4nm",
+	  .data = &dsi_phy_4nm_8650_cfgs },
 #endif
 	{}
 };
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
index 8b640d174785..e4275d3ad581 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
@@ -62,6 +62,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_7nm_7280_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8350_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8450_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs;
+extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs;
 
 struct msm_dsi_dphy_timing {
 	u32 clk_zero;
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index 3b1ed02f644d..c66193f2dc0d 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -1121,6 +1121,10 @@ static const struct regulator_bulk_data dsi_phy_7nm_37750uA_regulators[] = {
 	{ .supply = "vdds", .init_load_uA = 37550 },
 };
 
+static const struct regulator_bulk_data dsi_phy_7nm_98000uA_regulators[] = {
+	{ .supply = "vdds", .init_load_uA = 98000 },
+};
+
 static const struct regulator_bulk_data dsi_phy_7nm_97800uA_regulators[] = {
 	{ .supply = "vdds", .init_load_uA = 97800 },
 };
@@ -1281,3 +1285,26 @@ const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs = {
 	.num_dsi_phy = 2,
 	.quirks = DSI_PHY_7NM_QUIRK_V5_2,
 };
+
+const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs = {
+	.has_phy_lane = true,
+	.regulator_data = dsi_phy_7nm_98000uA_regulators,
+	.num_regulators = ARRAY_SIZE(dsi_phy_7nm_98000uA_regulators),
+	.ops = {
+		.enable = dsi_7nm_phy_enable,
+		.disable = dsi_7nm_phy_disable,
+		.pll_init = dsi_pll_7nm_init,
+		.save_pll_state = dsi_7nm_pll_save_state,
+		.restore_pll_state = dsi_7nm_pll_restore_state,
+		.set_continuous_clock = dsi_7nm_set_continuous_clock,
+	},
+	.min_pll_rate = 600000000UL,
+#ifdef CONFIG_64BIT
+	.max_pll_rate = 5000000000UL,
+#else
+	.max_pll_rate = ULONG_MAX,
+#endif
+	.io_start = { 0xae95000, 0xae97000 },
+	.num_dsi_phy = 2,
+	.quirks = DSI_PHY_7NM_QUIRK_V5_2,
+};

-- 
2.34.1


