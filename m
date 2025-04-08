Return-Path: <devicetree+bounces-164248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8688A7F9D1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C3291890BED
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25E2267F47;
	Tue,  8 Apr 2025 09:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U9NILFe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6C6267722
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104770; cv=none; b=ppXVilrFZwH3onek+v0PcHfrWw9k8bHIP43gHcpdylsTDO++3Z2EbzLWRf+TeBeT8jgrC+6SlYBtWYnGy1tfNOWQO/1786GorkQxU2VhFutYMRp8ho99sNFBb5untmHKa2CJTIeRJH0c1ZnTjUVnXPcldmG3FDQSlDZBaFnRwaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104770; c=relaxed/simple;
	bh=wyemaxi9F/WK+ikAwcpVodtyRlnYtOZlK2ouk1iRRPU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pecDOt/8poYnQUQJgs9oGwRPO6M4TjNof9+svqQox+awIX0aRH9kCM+ASdkwK/FcHt33t/PApD4e+BH8O1RWWWVi1qyNterkyZets22OFfISSLWPCuOJaYgRXmFCayoKJ+ow0TcxQ/PFJsjSf79wVyzE77l4rtHy44gbibkA80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U9NILFe9; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cee550af2so5216225e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104766; x=1744709566; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yNXHwX3MjBjZlrv7zfjQGDnKrhbHGVdV4rt7uEzlqwI=;
        b=U9NILFe9XUrtEEMMzUHgmEKGmItlropp3ZFlYM8ZkNQbQwA5/cgU8EbuAlSE88Ap5+
         I4tUS0ebh+TEHEhW6WdqAS9CpszQWL19ST0RycXkwyKrFi4L7e4957hdHWbgmByomXw1
         +YgCHvmo/EhQsMiDoz3y/7Ogsl5uJvMIOZgPM3Bel7oiYIYHAE4VVuI6vRXJJTeXDlOp
         iFDIcotWQeUJ7P+FUWimQ3d0cNr7umJs+4BYHtyKg9rwqYdxlI94BZ5U5XJ7WKZVjA9C
         cpdhSmgbzVg81aBBXk+4UO/bwFwD41lFMjmVDW0L7Bd5JYJsk4yu1v/H5enUD5AhP7jE
         iw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104766; x=1744709566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNXHwX3MjBjZlrv7zfjQGDnKrhbHGVdV4rt7uEzlqwI=;
        b=PotC4/T5XqBnezoxEKuGEFZKHo5Y+Crmg9ZMmzNYEZlTWFpNWdSCFu/BXIXxUWZC97
         31dqIEmZv1WBKIjCib3zSz/AnG+TN9xnmXZ/imSeoeQAckmuCribxspdGPkWX+lLg9Ae
         Awlpn+tDmKI5mVB0jAKNT2/vam+VFDXixb0QYRsn4ftaahFRXwLT8KIXbDuLXqbSGytd
         SJjrYKuZPt2Dlh2kDBdz/4fd7v/eNgt05jIX06fXSrPGM40X1I3sCD47JbybtdQ9qPSC
         wY9XOkkSzflyoiOr8U2XqG1pGfAVC+C1t3lSKdPDsbV8l4FrTbDaNJmRL7zjBkhKq3VM
         iDMw==
X-Forwarded-Encrypted: i=1; AJvYcCVYAuIVlZCkvvoh2d72ZiSqtgDKLJxwYknFIQp53o3I1FsvB9RK63UKw3BfZd40SfabOUG8uCtJdwUP@vger.kernel.org
X-Gm-Message-State: AOJu0YyZOeHRY4qtBP+wdKoCU3s9o/gfkQfLbqGPA2P5g3iVy+hTZeOR
	beH3dpE1Sb1p/KrAjoeE6o1iTPpN3YQxQ4mQmSOdeMUm0rOIFOLrtmj5c6d1WRc=
X-Gm-Gg: ASbGncsh9NmBuV0o6Pma9YlLBvsi+huOQI9L4/kCCYevvq0RQ2pjRusRWL1oWQb6uJd
	eMtqLGW9WhxmQExZXzqc84tBvko7Rb7KjczWgq233wTXf1a/wX+UTWwrmKMkSwpK5aWqqamJA+9
	gi/AA3AJXSgQmrT9xU7QGsVOVS5rRthFXDl6o5WK4WgXSbBODZjVUrPeL/eJ4MIRL1Uu8wZUtUT
	KWWn2PGTW9fveci+rU2/8y3a09dCPiC+8NhhUMVMyTnfkg3RzBlEIg9IsKeOg6O+pMK/64nxeEz
	Z3JkWHe9CxXIF+Wojo68ug3yDPzKeap+hMq418qmXffP+Ggs3HsAqBXEKThNO98iSaGGD7Y7Hg=
	=
X-Google-Smtp-Source: AGHT+IERxZdoY1wfPSi10ZPhx+Q9Q0+wVMEF5ckSk/Hao4ZtYLIWwgu2JOAUuIeRaUOztnOEqiAs/A==
X-Received: by 2002:a05:600c:3592:b0:439:9ec5:dfa with SMTP id 5b1f17b1804b1-43ecfa18f83mr54545325e9.7.1744104765916;
        Tue, 08 Apr 2025 02:32:45 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:07 +0200
Subject: [PATCH v2 10/24] arm64: dts: qcom: qcm2290: Use the header with
 DSI phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-10-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1795;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=wyemaxi9F/WK+ikAwcpVodtyRlnYtOZlK2ouk1iRRPU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0eLBps0sf65BYJaKrzpQGPZhs6k3fvjpUYa
 /Tj/TEZhxaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtHgAKCRDBN2bmhouD
 1wMRD/9YYLQ6MRHLNtrbIVoj+wekiOAjUrMyQwXRjYYvKo7vMQzUXXhn9nnONuXNHs+bBQa20cB
 yQeVNyBRcU0j9eK3K8PW5PqsygbHBl4cYlX/m4WW8a6MRq4+aelrywE8Law0o+UoeYnp0C6Gdhi
 4w0yO2CRN282ZwX8KbYdgP/kVaqYpGtd6qcpO7+cSzTl+FhlIwO3Igq4M1yBXwj9lEX0XFf3y42
 AWQseoZ6RNjauI6k0W74Ee7uEJQL4Aez7Ew7zabSO1UnCV6EXurEVl/CwULt1CPXyPW9BTg9+1W
 S3kDJsY4xZ5g4b/9NYsFsQxBI10VaScdtRlTWGkW6p0aWBOt1GDkOg7GPtPpUjxKD8NRhsf8fQY
 1qhvtW9E1V3tnDtS8q7ati/xR8UOIl6Vjl71ckW3IRcEkxkI76ODaQj6kjXJIhiK6uKf/GUZX5o
 onGdjvXo86WJLPxP3Dc/Wls+0Z8sZ9xI+0BzgkhE5T51NXTUqLXpUtvL3WutndkOpg9pXTJbeh4
 hB3bfh2YdAXDqnSW8+1kox6mv+AKYrW3G2P1KaEL6pltBpjlPAFTZp0jyWltK4oroih5RgIA2dH
 WPUVRwwm6gTYYzNIqKxCElwxtuPDrPvsIkGjkZEsCM7gAFJqgIDPQUejO0hpap9gXNzfbvY/NDR
 +bZgRSz1ZnAmQzw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 496e493c5845c7d75508ecfb8e0ffc37863303ff..e4741342e14c2be336dfb26d91ec9685884ab474 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -6,6 +6,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
 #include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
@@ -1726,8 +1727,8 @@ mdss_dsi0: dsi@5e94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd QCM2290_VDDCX>;
@@ -1809,8 +1810,8 @@ dispcc: clock-controller@5f00000 {
 				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>;
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 			clock-names = "bi_tcxo",
 				      "bi_tcxo_ao",
 				      "gcc_disp_gpll0_clk_src",

-- 
2.45.2


