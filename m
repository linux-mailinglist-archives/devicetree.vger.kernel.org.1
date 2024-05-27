Return-Path: <devicetree+bounces-69347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E578CFAFD
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46E881C20A47
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348D23EA72;
	Mon, 27 May 2024 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IAZpFFFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D776482DB
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716797264; cv=none; b=LCCjAzkJQDpB9UZMFFlztQD9qKzmie9wRJwzJlsyrg7ewAKmUYdr7zv2qr9aMbaoYka5IpVlpSkKsoeoilqiXC+DHgQkPUgcPFMsQNxDjy2fecVHFQPZ5mlB+mbR0fO/6DGwDAfPjQ9Voc21fS9sp3D3UfBVqAM+19A+sRavlqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716797264; c=relaxed/simple;
	bh=KMVLOx3REGaGaXyqmAcSoaLTboQAh4cj94OU/0DAty4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JTJ5j02IXFIAnQ659lzdF17T22H0+6LqVLFyF4JclcpAqB+ls0C/9gMjfs06YXEOOpMLwtss6zG+OVtJYiLpah7YJNfxSIUb2IS3LZoAQxPj0/lMJd1hm9IBrG97BUHJCnG0scI/KHYX8BtDccoF6qiZymhyebDUZenqHLGBz40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IAZpFFFF; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5785eab8d5dso3012493a12.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716797261; x=1717402061; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cqFv5XGhdHzEfchviLI5Q/0AVcjvrpH4YcyB2EY4mWs=;
        b=IAZpFFFFqPPDwdoQ7i4uzb4XGtAwPXsJ2ppWD+YUOeYa9+Jj8MFt5ppNGEZ8gOIt2/
         zLpUAfyLXWd6c03ncmpDGbjRCMUkHoNZ3oACuWfgWMfso8Jv0zG1VmXvBQejDa6iFtsx
         s0V6RMAx87IGHyVBGCOa7GPRaEgNYZlV6htCqt6gijmocNUfLHXFE7gcG/dYTmqETwnC
         apLJ39q/GeWTFk39sm4ggQZU+9lSPwTCEN4TbP8PYrCRAoJ2X6Tc0sjdBbUfkN4CYehD
         7LhkWN3SHQWXj1DwoLx3UV9ELdQrLYMLCBDPtEVgjc6L8f9/FiXu4KesXBlkADmNWPyR
         Y6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716797261; x=1717402061;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cqFv5XGhdHzEfchviLI5Q/0AVcjvrpH4YcyB2EY4mWs=;
        b=pye2/jAfJ1AVW24Q9yqlBGjDXTjkjTvzWICGs5Pf4oNqwuoYvhe//RhMe8wQZ8qhz+
         XklaORN6UjnnRYzyVhnWgrmBQ+B0Bj6f17CkQHTA/PE0WjWljctOK8oqShQL5MNKIZDL
         JC6hscqTPS429g9LVxkvmvOeIwG2LP3iizv+un2hHs4IeFYawInAGAwS8WjoFVdxeEeE
         eYIWhTW3mSACGGULQGKnLga4w0c6uM/QigEfsbUYEn6qwuGHC1XcgUcxC4wjbfE272If
         Q/xYhrgN+UBtXpunh74jB0Lssbdu8Qhf6NcLvKRo4tZxrxBruJWKgpo707O6ldYV97qq
         ab1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXScrT8I2nBTLUKy2dU3yPzfc0ww1TGKk/uEC1ccUDPvW3hsWiY5dICOw5juWWBcvFcbyoZNdy90fQryN+ActEdwiMOd4S5ERikdA==
X-Gm-Message-State: AOJu0YxoytBKH5gcRomwQCbbDJq6R6NUCl/mrnBHpsHiDiJdp2nx3F9h
	XnGK5/b4OSoXB914Wl9LriwzpRGCRc7N3L1TA1g9JwPUTHegYngWl/Xh7lGN68o=
X-Google-Smtp-Source: AGHT+IGnh6OiptW7p4aCvbETK/yx27q1C+KuVsn8Z68az6B0kqBZEXT2Fw4WAkmkaEly6+KhoVHTIw==
X-Received: by 2002:a50:9f62:0:b0:578:68a1:8f74 with SMTP id 4fb4d7f45d1cf-57868a19101mr2791276a12.19.1716797260635;
        Mon, 27 May 2024 01:07:40 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579d30b82a8sm1240893a12.79.2024.05.27.01.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:07:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 27 May 2024 11:07:27 +0300
Subject: [PATCH 1/3] arm64: dts: qcom: x1e80100: Add ports nodes to USB1
 SS[0-2] PHYs and controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-x1e80100-dts-pmic-glink-v1-1-7ea5c8eb4d2b@linaro.org>
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
In-Reply-To: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3421; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=KMVLOx3REGaGaXyqmAcSoaLTboQAh4cj94OU/0DAty4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmVD9G2C+pgqI2VXJ2shzVTl+SGXKR+N+6Cpv0f
 /SoPmKeYlqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlQ/RgAKCRAbX0TJAJUV
 ViBAD/9CDA4Ijquw+E4JIO56StAs9efxUOd9f9LZ5waYv+OI+oU/3P31QFkZ+dLOik5utlV8pRn
 VWwTyRn3sS0lq2wq8+KfSpbQhltLL0nzTfH+rcpV2TAoVfsw8FNj/A3sE4radPwc/8R9rvHviT0
 FeUgkmyYs3AZ8VfGZdJB5xzD27RAFMZV7wMJn7gu+3L2B1/sqrtGvsDk1cZUzKHk7yFMv0+YTxq
 s9fZ1hREBDVnvRXrvvwXBwUayiY67jdUUGu3MeMZ2v90xc1vXZEILzUhcEYpr+dWSjrt1L/EQJ/
 TG/ZhxnmBvdNXhFw2lwh4UcFVD3xC00lbcV+MDNqByq3HrVvt7btOm7iPuRRdxQu+IZWddgSlDr
 2prDvSxFvErAE2+oyxRzvGSvFBBtGPlSC3/n4nyKrpwjEpY/ENMjIlB2uVbKrRFYlROLJ+25t8k
 mdjJDL4vK751DWwP9tiYWZdd8gMGEDI7mYtIrT+6baRp656QfAS5gt9u51lKNhycwK85t1agYNg
 cMeOcxwVTWR5STsXRoxK5TXkM9/fg+nFJspd0ID+Dirr7NGsW2o7axZvnaS8kr/xmKpsEk70w6Q
 HiSodSrMRfuFv7c6qbwEr0UhjrHmt+pOttLbphuAOp/XoHISWjJzbnMh7c45v/ewrIrripdCSJY
 VtUXW+hxJ7TggRA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

All PHYs, being QMP combo type, implement both USB and DP. Add the port
nodes for high-speed, super-speed and DP to all 3 PHYs belonging to
USB1. Also add the counterpart nodes for the DWC3 controllers.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 123 +++++++++++++++++++++++++++++++--
 1 file changed, 117 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 5f90a0b3c016..63e85c5ea6c9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2543,6 +2543,29 @@ usb_1_ss0_qmpphy: phy@fd5000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_ss0_qmpphy_out: endpoint {};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss0_qmpphy_usb_ss_in: endpoint {};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss0_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		usb_1_ss1_hsphy: phy@fd9000 {
@@ -2583,6 +2606,29 @@ usb_1_ss1_qmpphy: phy@fda000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_ss1_qmpphy_out: endpoint {};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss1_qmpphy_usb_ss_in: endpoint {};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss1_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		usb_1_ss2_hsphy: phy@fde000 {
@@ -2623,6 +2669,29 @@ usb_1_ss2_qmpphy: phy@fdf000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_ss2_qmpphy_out: endpoint {};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss2_qmpphy_usb_ss_in: endpoint {};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss2_qmpphy_dp_in: endpoint {};
+				};
+			};
 		};
 
 		cnoc_main: interconnect@1500000 {
@@ -3445,8 +3514,22 @@ usb_1_ss2_dwc3: usb@a000000 {
 
 				dma-coherent;
 
-				port {
-					usb_1_ss2_role_switch: endpoint {
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_ss2_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_ss2_dwc3_ss: endpoint {
+						};
 					};
 				};
 			};
@@ -3590,8 +3673,22 @@ usb_1_ss0_dwc3: usb@a600000 {
 
 				dma-coherent;
 
-				port {
-					usb_1_ss0_role_switch: endpoint {
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_ss0_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_ss0_dwc3_ss: endpoint {
+						};
 					};
 				};
 			};
@@ -3673,8 +3770,22 @@ usb_1_ss1_dwc3: usb@a800000 {
 
 				dma-coherent;
 
-				port {
-					usb_1_ss1_role_switch: endpoint {
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_ss1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_ss1_dwc3_ss: endpoint {
+						};
 					};
 				};
 			};

-- 
2.34.1


