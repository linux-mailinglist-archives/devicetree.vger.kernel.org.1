Return-Path: <devicetree+bounces-55179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E37D894614
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 22:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1EE6283123
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 20:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C52057884;
	Mon,  1 Apr 2024 20:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WDQjpcn4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495DC5647B
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 20:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712003632; cv=none; b=nErBqkuQGhfNpyhhKEwGOLHNzvUXSQQfjjV6QEvCC89t4xd6uxvFCi+WEFYuLuKajOO5airdQgwGXrRlGpp3SghhhaCyvJJrPiTG5PoHlbdBLYX5M6KLWJIsXIEUSFDJ6DfZk0sqwv8CVKjhdaHNm4PqEmvzIC2yVFcXz/qwMio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712003632; c=relaxed/simple;
	bh=TBIiNNBgZICGeD+NJeW5hxRyvvEMnqmHX98cdDr1ewo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IJT/fpYnh5pWvwb7Brcr2wWzBS8D6CD+/b1vqL8E1Knef3H3yz6yXqKkF61GdIxuWAxZLr+s6TRTz+Yqj9IXtGhxw9A1CbpWZWWMyKx5n1uY7PKSMt0YotlNMAA39iyo20t3Dn1yqavJp/vfReeVYZP7E7ELKaNk9NOL/xR0hVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WDQjpcn4; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513ccc70a6dso7271407e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 13:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712003628; x=1712608428; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=likv4eu7xKsHRY+ZmHx+zM6NgK/jlhd2B+FPr4klQxA=;
        b=WDQjpcn4rOQZgIhRNgyDZY+O7sE6F/gVH0NobGXu9/u+XW92vXSWgZnDQcYbnrrZG4
         hicX5uu9qd6DP+WZL1gW5er75GWH0o5MQ8SPyrx9HLEWAJAwQdR+UPrnoWa3VpXOCghk
         3+3QXU5wTYPSWJ6cwYIgOHp/s7qE4MzrN1MPc01tAUJUx5bwdDojOX/AfMdfYSK+QC3e
         0850eiQs4fTcaJXxX5BElLe5R2Ab+XM/SYj1HanihrW6MBUr9pMLt4Hotl28xRbtQNkE
         qGeJjUEyPE1xeVIYqFW9/T/jq8Wd9EhCbb2OGYZLegvdqCT6xtRZtHD3pttw0Ve1rdpQ
         LsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712003628; x=1712608428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=likv4eu7xKsHRY+ZmHx+zM6NgK/jlhd2B+FPr4klQxA=;
        b=lp4419MJRo949RhnKJQ1FVXygo1Fbj2Jg78175NnuQWXZaj/+pMqZ790hR5ksvCc3v
         Z4+cehbQxsiT+OkwyK32FuNfHb+GBeSaG6cSCeqYB6ApLTn2jcgcdQ49Lv5r/vctm4XF
         5bXAgbxkSJnGTG/wqnOJ8ZDxRTtY0ALogMIM0af9AqtoKb6t3hVX8OKleprkyjNXvEJV
         CkB+9957mfpGHJ560ud/etQCfrv0hNcdoZGWPKtYTapVj8BqVwmGA4u7dk0WrIKQMeed
         O5DUNy6Wj8daO/mgIIodwsadAB3E+1Danx8naiOJkw4xsEeIKNgh3rsmeLVoE+bHeaH0
         /Hyw==
X-Forwarded-Encrypted: i=1; AJvYcCVdk/c9z3VAahzIo6//5oHEmQNCzu3HsiQpIAN1EypLidAoHxKOBIElP/GX+EOQqFYYX4whRBwpJK6gdMB9757PeQxygeTRvaqLPw==
X-Gm-Message-State: AOJu0YwMp8Bdg90JKJuIHh3RnfSR/TunJE/FFuRTy5ibdw8hngEG8ZzN
	HyLghGAFB9jevXuSrRQHTS4+jm/D3uQ4K5r7ryJ73GO71CFskYOqTSIbce8xa3w=
X-Google-Smtp-Source: AGHT+IE76GUEwz7lu7fLvdaKWch7gbeCYUkgXAouucZP7MI1ejx6ArVewX9ijzvV0zDf0+skLCubaQ==
X-Received: by 2002:ac2:5b1e:0:b0:514:2f24:b0b6 with SMTP id v30-20020ac25b1e000000b005142f24b0b6mr8470181lfn.67.1712003628358;
        Mon, 01 Apr 2024 13:33:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j11-20020ac2550b000000b00515a6e4bdbdsm1478342lfk.250.2024.04.01.13.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 13:33:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 01 Apr 2024 23:33:47 +0300
Subject: [PATCH v3 8/9] arm64: dts: qcom: x1e80100: describe USB signals
 properly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240401-typec-fix-sm8250-v3-8-604dce3ad103@linaro.org>
References: <20240401-typec-fix-sm8250-v3-0-604dce3ad103@linaro.org>
In-Reply-To: <20240401-typec-fix-sm8250-v3-0-604dce3ad103@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4103;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=TBIiNNBgZICGeD+NJeW5hxRyvvEMnqmHX98cdDr1ewo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCxolctFm0CNkwO5e3t2N98mW4RdPVs1cBwY4z
 1yMa9if3LiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgsaJQAKCRCLPIo+Aiko
 1RXwCAClh4NsehEIBHq7283mSUZkJVVAluMWGxSUsRScphIzCBljRO/jxut72DBuLsSvLnyF0tL
 epzRJvOw9jWThWPTilT7vVV7G0fRVD3ZXrDTTDXP/s6K03fR+QKKl7t/dzASP5BIwEX1Ex/MGPB
 bO0PQcEIq5XV/T8JM+ydNP4aC8kC6V/XkT7eiobuwTSB2YOpFc5kqbUfrEPZ+MJjXjakoQIXZxK
 UyB+DjPLIcLnAFUPqbNxJygbN4tOsqKXW3akMRJvwT9nsM+vKCuMb57y8suM4A/m3dsvALxKYve
 ez27JMSuC5QmLkn0hb4GBmswtd99j/C2ZTD82iTr499ty+fG
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Follow example of other platforms. Rename HS graph nodes to contain
'dwc3_hs' and link SS lanes from DWC3 controllers to QMP PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 149 +++++++++++++++++++++++++++++++--
 1 file changed, 141 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index f5a3b39ae70e..3213eccc3a3a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2543,6 +2543,33 @@ usb_1_ss0_qmpphy: phy@fd5000 {
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
+					usb_1_ss0_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss0_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss0_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss0_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_1_ss1_hsphy: phy@fd9000 {
@@ -2583,6 +2610,33 @@ usb_1_ss1_qmpphy: phy@fda000 {
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
+					usb_1_ss1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_1_ss2_hsphy: phy@fde000 {
@@ -2623,6 +2677,33 @@ usb_1_ss2_qmpphy: phy@fdf000 {
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
+					usb_1_ss2_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_ss2_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_ss2_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_ss2_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		cnoc_main: interconnect@1500000 {
@@ -3445,8 +3526,23 @@ usb_1_ss2_dwc3: usb@a000000 {
 
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
+							remote-endpoint = <&usb_1_ss2_qmpphy_usb_ss_in>;
+						};
 					};
 				};
 			};
@@ -3514,8 +3610,15 @@ usb_2_dwc3: usb@a200000 {
 				phy-names = "usb2-phy";
 				maximum-speed = "high-speed";
 
-				port {
-					usb_2_role_switch: endpoint {
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_2_dwc3_hs: endpoint {
+						};
 					};
 				};
 			};
@@ -3590,8 +3693,23 @@ usb_1_ss0_dwc3: usb@a600000 {
 
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
+							remote-endpoint = <&usb_1_ss0_qmpphy_usb_ss_in>;
+						};
 					};
 				};
 			};
@@ -3673,8 +3791,23 @@ usb_1_ss1_dwc3: usb@a800000 {
 
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
+							remote-endpoint = <&usb_1_ss1_qmpphy_usb_ss_in>;
+						};
 					};
 				};
 			};

-- 
2.39.2


