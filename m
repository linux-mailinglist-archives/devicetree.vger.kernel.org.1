Return-Path: <devicetree+bounces-23477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C458480B593
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00F681C208D1
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8391865C;
	Sat,  9 Dec 2023 17:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FU/wWcCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB3A19BE
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:05 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54f4fa5002cso2034526a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143063; x=1702747863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6m7JKD+ylF3U0pXdJ9z4W2nTldRa7P9helTdI7kd4Q=;
        b=FU/wWcCYyD2j7+2hPvCbhImpxDFcdC2oDhvV+UhGvIP89x1ynor5m9Y5hsjB2oiNRl
         IRc45RqxM97JzVaC0L+8MUHiDpZfYqMioLab/urqC23bEjk+Sm65KS+MYicBraIe3yMG
         1xLCudcOKqxZgryXqRHY7m5eQl5iEGgxQzZ+W0hF+IS3bZYV95JPRo/ZpmFQB/8lrN0U
         zJN2KyJ3IFhkBUAHSRTb3ZKyDvf8b9xXy9MkQkpU73tGEYCe6i/67jxImSDnbmQcY55N
         Y/D4HcS77LOSaZ2+mnnPWWUBqs5y/2DLZNwF4SYFkMgIleyZMV26MSC8ucpjqMwoOFmV
         /TGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143063; x=1702747863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6m7JKD+ylF3U0pXdJ9z4W2nTldRa7P9helTdI7kd4Q=;
        b=qgyX/3la9+ENMY9AAGVCNKHp90PHHZU584SRXw6hCJU3z7xAoiDXnljV3VqSdyPkjc
         zWzmRvS8ILRjGQ1PzDV3BL2+gNmgE0ytpEtN3XqCD9zTsj1FiEnXPCTd8Y6o1NkCWoyl
         q5kbWlJ42oQ8qLhaqKBdahylZOuSUNijO9her437IvBZtrIMbUSKL1sA1YW6NDad60UY
         +chkOgRpsyyAYzs8G/TP7vaePIj+u5G5k07TB1eVj1oG2a0/jiywkuFfuje6Z6rwvYsx
         9E8uXRbDSc0as9iGZofKreBwcLXB7sgBuMB9eeMHx0T1QD3SGzwRnKnUWpTqLCnBbSig
         aWlQ==
X-Gm-Message-State: AOJu0YxPZ7rb0/vkHwpJ3HAIMa1ucbHLXKHWMY+DxGw2FzK+gxxM+kdm
	LLb7kN1TnTsc9e70VmRY9TwGlQ==
X-Google-Smtp-Source: AGHT+IH6ZkkVtGtOYkc22zNVYOtpSdrQusw9pZ9+MrrUsIVB9zDgvzdpcvpX5Sjl0P75kbNp7USZpA==
X-Received: by 2002:a50:c94d:0:b0:54c:4837:81e0 with SMTP id p13-20020a50c94d000000b0054c483781e0mr940765edh.49.1702143062791;
        Sat, 09 Dec 2023 09:31:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:31:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 12/15] arm64: dts: socfpga: agilex: move FPGA region out of soc node
Date: Sat,  9 Dec 2023 18:30:41 +0100
Message-Id: <20231209173044.257684-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "soc" node is supposed to have only MMIO children, so move the FPGA
region node to top level to fix dtc W=1 warnings like:

  socfpga_agilex.dtsi:141.20-146.5: Warning (simple_bus_reg): /soc@0/base_fpga_region: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index de1453a951d6..77d03caea25b 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -60,6 +60,13 @@ cpu3: cpu@3 {
 		};
 	};
 
+	fpga-region {
+		compatible = "fpga-region";
+		#address-cells = <0x2>;
+		#size-cells = <0x2>;
+		fpga-mgr = <&fpga_mgr>;
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
@@ -138,13 +145,6 @@ soc {
 		interrupt-parent = <&intc>;
 		ranges = <0 0 0 0xffffffff>;
 
-		base_fpga_region {
-			#address-cells = <0x2>;
-			#size-cells = <0x2>;
-			compatible = "fpga-region";
-			fpga-mgr = <&fpga_mgr>;
-		};
-
 		clkmgr: clock-controller@ffd10000 {
 			compatible = "intel,agilex-clkmgr";
 			reg = <0xffd10000 0x1000>;
-- 
2.34.1


