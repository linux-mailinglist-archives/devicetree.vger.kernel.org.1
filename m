Return-Path: <devicetree+bounces-25234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E29CC812B48
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EC761F2150B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80F228E1E;
	Thu, 14 Dec 2023 09:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y9U5aAtV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84BA312A
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:11 -0800 (PST)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-77f408d123bso297160685a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545130; x=1703149930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=Y9U5aAtVpuqyaHEOhPjqJQWRjaWfK1VHaRThfYhNah5w7ATQgZ0rivTV+d77wPCCiE
         plEpYJekA13ZFYgCc9Csi3/3D+9voMgdSJibOfuTwbEOsFvbQb/hBxaDAIKIEkHdHR89
         G7QT/qHSVGRzRDbRhJQDIUqVc7HAGrfG1opQpW7CBILy+jKDZhjgKcJD5Q+/m3GxHln7
         DoR4VphYtNiJNQwJkZZr4arLGaVGIGEPAOUsd1ptKciVukh50p91Btun05BYLUBoJSQI
         yfPaXM1GZYgIjgwXyKTyMn+IurijwBDdSOYYNx/aImODFtH+7m1b6bye+Rnd4Zj0Q9rU
         AHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545130; x=1703149930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=ORqRb3i2RBOh6fiylSalGiWKYuRWFDzb7K56camUFbC1uHnQ4AG5Zjf9CADlLtD+Uh
         LXWuTal0qTqRrscOybYc7GnFAuoWm/z7aBOipQTByqbeqmz53c3u7euoPo6oHEgLwr9F
         yoRo2JVG1uUgeFxh5JsVhOIYH2aWwVGGtODm6oIa83l4pXcENwweokOqndVb4FsVtMLT
         4fyXYvO6hXeJsKvRerFtNjjPOQr/eZB7w/U7ekK3XklBG4lPcMzB91HGjZCsyXL09iY+
         z2v18V8ambP3zWiXqYh8wHlLNABoRSl9Ap1pebvgs3uCHxPyf04DU4CxXeYZNUDigDX2
         XngQ==
X-Gm-Message-State: AOJu0YwohXsIzC2nhGuz/VtocoHuZFqacl01kUV4a2eQQjQy/9LSNfVs
	Zpn1xA0QVOpFDvmbTuOcSK6/
X-Google-Smtp-Source: AGHT+IH8nNO0Z2A5qhy/eFw6w9HCLUFnLPwuisRFUq9Zu9qVpiWOG+IrWYg6mGZN6+oEXnqT2Pz8tQ==
X-Received: by 2002:a05:620a:2707:b0:776:f5bb:f2fc with SMTP id b7-20020a05620a270700b00776f5bbf2fcmr8186278qkp.9.1702545130709;
        Thu, 14 Dec 2023 01:12:10 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:10 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 09/16] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:54 +0530
Message-Id: <20231214091101.45713-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QMP PHY used in SM6125 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: f8399e8a2f80 ("arm64: dts: qcom: sm6125: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index eb07eca3a48d..b46d3c1fa47a 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -812,10 +812,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6125-qmp-ufs-phy";
 			reg = <0x04807000 0xdb8>;
 
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


