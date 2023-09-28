Return-Path: <devicetree+bounces-4210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A88C7B18FD
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E9BD128276F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F3536AE1;
	Thu, 28 Sep 2023 11:03:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97C3715A
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:18 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B06419F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:16 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50482ba2b20so3118195e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898994; x=1696503794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YcbEnFCtTA9UEjtUWN7yvDCOIDS8kBLNF+kymOo1R3w=;
        b=XGGI+kp0/qXlT5//x7grR2PVzpMd4uf1COX6CiPai0r1M5ScgsilVIGEAWGy654fDe
         RLgTeO6f5h94hpkEebFstF5/gmlKuf3HdETXc8xmmvvlz7ZM8EA2aEt5CINKMGASZ2ID
         a/SX4YgWtqg74tC9QSX37P9+MKi86iONdlR6XrhfYSiS4jlMRi9Hwj/S2OR3RZ4bgJJe
         eV8/UrAyqmlxK0ZRZN3o1aDFnu2UBOMMJLM2sKY9Owjry+JE4SXzmYWwbY3+54y700Wu
         4eAMQxaYlhrykct/VO5FkTGYtjJI5s6HljmDv6Zdx4rFIZJBnN0wjPe0WH4OcBzg16O4
         9ePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898994; x=1696503794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YcbEnFCtTA9UEjtUWN7yvDCOIDS8kBLNF+kymOo1R3w=;
        b=qo6hGuMd5KS4MzIOKM+SROc8h7Lv+z2IWgCAcfuVE7TLwkUnlHjtsw9nC8lif6QiGc
         iGToE9mw/zGlI5svW1DDlv/+2SH1eRC3eshek0USNp95+mbLcwunxmPzQuieobhie4Cb
         Q9LpTCF7YQ6v/OYZvEKHOY1zRfqz/Xqou0x10pgKPOVHduAcMwVH+9emPRDKLjOZuY3u
         F4M9PZNF2YnwpAPBcCQP0XnEcfk9xIZXzh/5dtl0fY++JmmCafI2cgsW+I9q9sO2Au/a
         56428la6t7i07bwxKFom//UCWgloe1dLEoDvQsbz8Ajtkq1SOK8uh7t0iAPZ9Q9K0iRT
         v6oA==
X-Gm-Message-State: AOJu0YxFpDDdogl10U5BIRZesUywjybCVTzJ5j+iRrnOQHgukrkvQjWW
	1MTvc8jFHQvsS0Wk9pSPEWo3zvKSRkPWAPrDzoyp0g==
X-Google-Smtp-Source: AGHT+IGmD3MZcI2IX6oW6M0HolTT4LRlMTF99wjfX9Y+ziiwI6W9E8czU6AVfzukUwF80LQ+rH7uQg==
X-Received: by 2002:a05:6512:2242:b0:503:1ca2:7673 with SMTP id i2-20020a056512224200b005031ca27673mr688121lfu.14.1695898994693;
        Thu, 28 Sep 2023 04:03:14 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 05/36] ARM: dts: qcom: apq8064-nexus7: move sdcc1 node to proper place
Date: Thu, 28 Sep 2023 14:02:38 +0300
Message-Id: <20230928110309.1212221-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Move sdcc1 device node to follow the alphanumberic sorting order.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
index c57c27cd8a20..0e80a5a8e3c6 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
@@ -181,13 +181,6 @@ &mdp {
 	status = "okay";
 };
 
-/* eMMC */
-&sdcc1 {
-	vmmc-supply = <&pm8921_l5>;
-	vqmmc-supply = <&pm8921_s4>;
-	status = "okay";
-};
-
 &mdp_dsi1_out {
 	remote-endpoint = <&dsi0_in>;
 };
@@ -336,6 +329,13 @@ lvs7 {
 	};
 };
 
+/* eMMC */
+&sdcc1 {
+	vmmc-supply = <&pm8921_l5>;
+	vqmmc-supply = <&pm8921_s4>;
+	status = "okay";
+};
+
 &usb_hs1_phy {
 	v3p3-supply = <&pm8921_l3>;
 	v1p8-supply = <&pm8921_l4>;
-- 
2.39.2


