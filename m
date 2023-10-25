Return-Path: <devicetree+bounces-11561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AAE7D62CA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 220C8B21175
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4678318047;
	Wed, 25 Oct 2023 07:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e1DT7R0f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6119F2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:31:18 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D9F10E5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:31:15 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so81109531fa.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219074; x=1698823874; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lBWrjj6loRYq5BKdnDa4SkUsmmY02JfhSwBMKyXE3kI=;
        b=e1DT7R0fVIn0oUZB60XRIPRZDFlMsYosYElmTvk9AS5bpQUJYwjMAKroem4x5Xih5b
         bYWodWZzBp2Xjt0jlsb4riLG4u4CLDiwvIpVM+SZ0m8ipxSeYCc4pC2l9kobWfHDz4nj
         1NCshwEwQYvD7+BWY7xyxpiHoTwLBsSRsX/GWyBxijTPc1b7lvOO3nYZD0Y1lf/UlTAd
         +TXLo7Lsd8v95cG66tagEFSyK9fOBZNpd0358KFdnP9MKnVcVlaRkYVrvdcdjY3Gnn3+
         EEozLqbsn9pOE4fMpT37mvwtIxpVGhbTBwHHeSQ2U8i3KvvJnMbCI08Tvd7YdKGnwhcs
         xLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219074; x=1698823874;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lBWrjj6loRYq5BKdnDa4SkUsmmY02JfhSwBMKyXE3kI=;
        b=C09vVK61bxq7YivkKWlIYTbhkHMl9oOeAkEpIiQ9iZ3xJlP/3/0f0FP9hrkm3ThgRO
         V94bMXEDP05mvC+7kTXgrN2mf8j2GvomeiL3BHwXipX5PauEc4Z/+XdZSGLQDki6QY+r
         f7FpavVfKTSSNkhW12E4INlIZiEGwjRqZEosEyysKNuMJja742i5RJG0V3Qplc7tI3vn
         Hl/eZ4ygVnKt5CaW1dX22wury/eHvE5md+QPH203qldJknsIABKg4vkImFTQF8d5SJed
         iX/50oKS+qZDtWoDf+TiLag2KEK4wg1YMOeZ2fjChAbkS8aK84uiwWepeZax6PKV8uCu
         /5xA==
X-Gm-Message-State: AOJu0YwFAGj3BuOVLgLeM3eq7CjhC06ahJBd55vrsBWR85svozLNYXmR
	TVKLWzaD2H72li7m+IWwkdsecw==
X-Google-Smtp-Source: AGHT+IH8up4Jiujoea6IKHrkO6WE94yNAtvyV2dpk4JuhvvVXScxJvSSpC8IlnxTSazoTvw5G1EPdw==
X-Received: by 2002:a05:651c:1695:b0:2c5:1a89:41c6 with SMTP id bd21-20020a05651c169500b002c51a8941c6mr9922535ljb.33.1698219073772;
        Wed, 25 Oct 2023 00:31:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c511300b003fe15ac0934sm790563wms.1.2023.10.25.00.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:31:13 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:31:12 +0200
Subject: [PATCH] soc: qcom: socinfo: Add SM8650 SoC ID
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-socinfo-v1-1-6776a5183fa0@linaro.org>
X-B4-Tracking: v=1; b=H4sIAD/EOGUC/x3MQQ6DIBAAwK+YPXcTQGq1X2k8EFzaPQiExcbE+
 HeJx7nMAUKFSeDdHVDoz8IpNuhHB/7n4peQl2YwyvRa6QFryuxR1nF4Ktyy1EJuRUmeY0jorH0
 pZ6wPk4Z25EKB9/v/zOd5AeO0SkFvAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1550;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=S/kxhY5hyKd6ZWpNvLQubweTRYoskRC3jilV5uoTGlc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMRAvIJdqLqCpko+CqJiGbBQ9ugsuJiNKU2BKS5Q
 jV9HaIiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEQAAKCRB33NvayMhJ0cviEA
 CSYN58LMDoafxdi98u7fWxyKT6UCitXoL49tY/6BwOYyhGIFwQlMYxDq4yS00R+tuD8lTVy7IWryTW
 gzg0luXYM1IM/FgmROWXMyaOZhCN2altwJrjpzlZMhuJaKgLwwr/+CcDrX7ZZ7EsA/TUK59cGKwJTZ
 7iZAY1okKzivEuFhjsrKrOaynEkfqpa0k6qXQ8gi5lTIDcr6KrDU0Psyoo2F3mJ8z4Gl2PykIVeavX
 dC6cXDbE7JwTImFwwGpBCKE/S5s5mF8Evifbq5mPt3GbxXjWR/qL6EEcUb+jGoZIbdXrS8c6JPXlrc
 ONDWnUxhY8p4xS44RmHZNHQ1QnEW4X76P8R4uIjPSBt6M6plEAvh5U/YX58txLJHuE3hWX2V0D8poP
 bn1whdrE5sv7Rigr5PrW1C190t4W32R24hSr5mk4oLQUdsqyHac2UP4hyZh2TJvcc0pVMqbmlhZ9cg
 WU4kksy7VE65zCvXm5tCLNG5cn0Nh4AbdXg9gIxUBjImmWHjjjEIFAfB87viSblTZrpG8dyGAJ8Mmt
 KKUInLZg7N95XYoBo/n9bqmYFoLpmvVR27MtdjVnmLx6DtMTrjVn+llDmuyGtuycfcOqdYHWFwyvs5
 wYCfyltpzWeaMJKI8PXUU7LBZXAkZmwFKsINstqgL9Zx3pfLiBDi3WatU6eA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add SoC Info support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 51e05bec5bfc..8e8cd4ea58d1 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -417,6 +417,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(SA8775P) },
 	{ qcom_board_id(QRU1000) },
 	{ qcom_board_id(QDU1000) },
+	{ qcom_board_id(SM8650) },
 	{ qcom_board_id(SM4450) },
 	{ qcom_board_id(QDU1010) },
 	{ qcom_board_id(QRU1032) },
diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index f7248348a459..51e0f6059410 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -255,6 +255,7 @@
 #define QCOM_ID_SA8775P			534
 #define QCOM_ID_QRU1000			539
 #define QCOM_ID_QDU1000			545
+#define QCOM_ID_SM8650			557
 #define QCOM_ID_SM4450			568
 #define QCOM_ID_QDU1010			587
 #define QCOM_ID_QRU1032			588

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-socinfo-a4470a24cf91

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


