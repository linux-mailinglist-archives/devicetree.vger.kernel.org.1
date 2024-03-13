Return-Path: <devicetree+bounces-50163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3187A0D5
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 02:32:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D98E21F21AAC
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 01:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA368F6E;
	Wed, 13 Mar 2024 01:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pWHgqB9l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655789476
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 01:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710293535; cv=none; b=Bs2l9vhkTgnxbIKpdDUPXvnKPry+v/e8qghFmstVh3EXxI35sbLkj26oaOlModb61/EtqTSGhXM8uhp1VUVcfdyjEP0UUEg/wF8qdL5v67fV2QW08aeFlT+Afyt/jMa284xcJQnm7m4Zu4uSRbZn5RtMnUt1EGx5eNFX8z/b7/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710293535; c=relaxed/simple;
	bh=//FySGpGO0cREpxIBRgWQHcXYczpTi+P/0BqU+2e7jM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=aIWf418zAWX2W2y/2e3sUDFluOkKHvR46/qXXj+pEOvZtj1/ZTvm6IjKn+iLBE095mpEwdLpwNrqbmH5POaIJ2gNc0M8BF6wQVB8PzjXOMM5ayP12jIp+453/JNANoXWS5zEDR+zpzTJsR1Hg7BlwSGtnB3O9XOsYfS8PLVgGDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pWHgqB9l; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5131316693cso592579e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 18:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710293530; x=1710898330; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8sPYE3Id0q+F2jUUBdvOq5McORmYxZJSi+RmXz3jcFs=;
        b=pWHgqB9l1Rxh2v90H31/OwfKVNzYEYFII4GCEx3KlLKFMDksjU5wuqA9hUfbox5zjq
         Xphru8tLjNcjczIzHJo3EVltIPOOhjNnuNTznsxk60yDkt/br9jKTYWo5A+6UJULOjU1
         R6yYs9iY6RgGrloWfZnlaRapCAaOHjqn/Bzl7yU4TJQd4l6icJnDuMuKAKetAJQgjExj
         jeaIYwhpjyhAKi++3MJNWBGg+gZ2x9AiTRkV0ipCIaXLZQ7nI+CVhUVOkZbQ6wufF4rO
         FIzgrsMar/FuhgXeZY9LLeIgefHqlFRQtxdo5adoDYXGXGbqHE35l45R0e1FVhIsXl8o
         4MLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710293530; x=1710898330;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sPYE3Id0q+F2jUUBdvOq5McORmYxZJSi+RmXz3jcFs=;
        b=YePSpLQGdK7VPWCO83LB7nmn5q9MBd6CiuYOUL5LkBiIw6Fp+55V2oRRbWVOf2bOBi
         x9wRScm2YNJ8S2EhZITBBjXYnciKZbsd4ClSjhr0b9S2U7/BChYXHzSYjpKcpHjPlA7K
         NNxp084PVAZ0G2yhVLxdRT2uHOjJtFdjyzLOq4ni7WnJcBohvWaxitNT1t+Ye9NjWbc8
         nkkLrOU1vsoEQzdYBA5wcLFpNeb1Q4ynJulIxFGSBzAiFPc/zjf1xK696Jar2C2qO7kc
         Hc+BjW9PP37R+0xwwWVDey6SIOLUR3hkSqIzrOBd3ABxOD0I6D4rEUOlCfhTks5kBmyP
         7lQA==
X-Forwarded-Encrypted: i=1; AJvYcCUC7+TbuNXRZhXHIfxESnL9gFYPlMx/QaOneyH70qI0cqlTxVJd9thE1THeEy1HorF+CgiYXaHKnflMXkHflq/Td78E9QmxoUFo7A==
X-Gm-Message-State: AOJu0YzhkttADKwzjtYU1Kierfz0MO6u5VOCFu/JBdCezL6ST2KMwDNl
	VhdGgmr0lG20eFEndeC87AaTU1wy/OIFyoFc8ivhHTlsg0SA0ovCDCG+fd8keec=
X-Google-Smtp-Source: AGHT+IGcMHd0ja05EglgHFzq7r0543vjbIAQHy1i6YHfA3Cuvad23qiPx2RoN03pahiWztSlWOR+eQ==
X-Received: by 2002:ac2:5989:0:b0:512:f6a0:1311 with SMTP id w9-20020ac25989000000b00512f6a01311mr3778215lfn.47.1710293530441;
        Tue, 12 Mar 2024 18:32:10 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j15-20020ac2454f000000b00512ee143d25sm397690lfm.105.2024.03.12.18.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 18:32:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Mar 2024 03:32:09 +0200
Subject: [PATCH] arm64: dts: qcom: sm8350: Add interconnects to UFS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240313-sm8350-ufs-icc-v1-1-73fa2da99779@linaro.org>
X-B4-Tracking: v=1; b=H4sIABgC8WUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDY0Nj3eJcC2NTA93StGLdzORkXYPUtBRzQ0tTQyNzYyWgpoKi1LTMCrC
 B0bG1tQCHzQWWYAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1581;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=//FySGpGO0cREpxIBRgWQHcXYczpTi+P/0BqU+2e7jM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl8QIZ/meQUjWJ/xvTENY/0qfGGKQos+aYzhbmK
 SPysyFsKwOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZfECGQAKCRCLPIo+Aiko
 1SfkCACYBI5lJXoB+2H6/Io4DoaKqJfQdoqCMBAux0DoKv64akVfwrWERRy3p8fc5dY9v+i5or3
 HNlUTtBjrE+Rv42cG/HxAfsi9SpO0/aONH8GCb73dXbwmeFbxBgHIVVHxibVLO6VECKM6iyPVxf
 Hl+e4LfWxPyvqcgOlejqQk4kPZB+lPd1rrC7tbP35nnR5SOCJ3Xtq0TMJz5hsoMAhLy1UNeO85d
 /YuTFb+u1m97+4O/s2fwGmYKDp/1aOHOX2rqcx4d4GRGCvAEI8WMZYzePF2nPfiLNGaKvSOhDPE
 OO2cAdLoLRJCaLXW2jmoJ5cwbTjOqb4cSs1RShyblfHk4bzj
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

To ensure that UFS doesn't get disconnected from NoC, add interconnect properties
to the UFS controller.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a5e7dbbd8c6c..a878f5ac5bb5 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
@@ -1730,6 +1731,11 @@ ufs_mem_hc: ufshc@1d84000 {
 				<&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
 				<&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ufs-ddr", "cpu-ufs";
 			freq-table-hz =
 				<75000000 300000000>,
 				<0 0>,

---
base-commit: 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
change-id: 20240313-sm8350-ufs-icc-0efd71951273

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


