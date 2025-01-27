Return-Path: <devicetree+bounces-141117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A48A1D756
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ED0A165CC7
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80D92046AE;
	Mon, 27 Jan 2025 13:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E6b3V1dN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8FA204594
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985709; cv=none; b=NO2s0pfdwVv9WCk5j6CIcadiq+9C2A7MuPtnrIC6wDvNsJN6jS/3ntQ6DqjjKUIJoodo4LcRqpKeyCKsybbhWUgrgL1/Y5MuGkOttqP+ohL8Xb32uvlss3rJF4vLxzhoXH/+ahCRZ1JZ8AHQqy/kfr57LGSm0ksDHkVjOdPXlqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985709; c=relaxed/simple;
	bh=RHakl6Gwe9BOnWGUgPUObCru2zciOH1VzMJFF6WWnmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u8rK98VKaHJUs60rcYhtqxbA0zlX4oVjbmdJfDZtgW8evpqmdyhNrFEGGfBRMMEDBrHYEg2RYPfOwmL+0b61x4sVveuXlWxz45xhUcPQC7X01JSUYCY/wF4O6+VP3svhh8hpuovHDc0Dw/ajM2dLGZf6Y6QGJ4/IjQ24YIl01VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E6b3V1dN; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361f09be37so7287575e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985706; x=1738590506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9nW0kswqbaD7wcuc2Omvx4WC9VvYaapDa+Yvo/2x25Q=;
        b=E6b3V1dNkSbfBWT2Y78MdwblvuDsNUkVAtXODEH7gAcmHZddpuddBsUjqLSEcC9Xos
         K4gbAfljw/uIIRJMEndhQoEl3L5/JYphuqmzmXvm4MxbK3HzaH0lZ8PONbiqzSzIVj06
         e+xQHq2tAqML7ID3OCzE7MqYmrwvS8CAsPFWAiTPfRW23zcPJH+EoDiWg9fbSBb5zpVB
         +VzoPcXKhGyK9YtHEwLruMUL+prZoDMaSeqKom/MGbfIcc0OIj1TjFYGT9QjX57tu8qT
         R9Lv/XUbOr+uFA9UsQUEbFYP8dp6+0e9fZRTHCJYAqCJCBIgtwG9HZ+BuXNRn6I8m46l
         k9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985706; x=1738590506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9nW0kswqbaD7wcuc2Omvx4WC9VvYaapDa+Yvo/2x25Q=;
        b=HERq4dwi8HRsefZrO3PaV+uQvHl0uvgknBG8jaole3ElINpYePIA0//UZSnJS1JJ1q
         j9glKKYHwQe1T5lI68QjbS5YSDXUonE/wcwPcoz6K5/mbGk9ps2cwpBuSpHtZoJVu8nh
         U4YIssjxYHf3bv74crFODIz6agu5rofVwX13NO3hXzbg7RLS0P5tKZDXTPWX6ipEXLYg
         uqNrQKlNj3cqXlhpOf2uJszDP5TlZqx7wjJ0OkR9yAKMWnYM2avtUKtt/+WlOvGpn9se
         LgD8mzhnq02KuZ6hqIB94f5KUSlaL6Hl4Vonc9/IQbs7+V8yjuBmnxcp+RDZExomexG9
         2oCA==
X-Forwarded-Encrypted: i=1; AJvYcCUoTrpcjX+oBQQiHE4cDawDfABlxa48Otd1diiretMXR6J8v4gNDH3TbGjEztLJV1KZKwrPSs0IsULZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzWx6SaXRk9rhuBG9qVul0gwXRIZ8lWSGSznOMAEbaI23KDV+5F
	vNO967hhxzbLq7L207QnOMzAGIN8MHHxAHaeSUyckrsfSKLG77e959VJ/CEDL6I=
X-Gm-Gg: ASbGncvcBdITFC9cmMZ4QarGiSMIsatb+jhBQHNIiTIX69p2ty9AnJFIK4nb0g3rAdz
	bbv7YBfmdfVWGc4fKIDbrZcZqub0FsYU7R7yiK9G69ap7gUnnLny1m9dm9CD7kLnjhs4F+35MVB
	Aa7Bmybw1BPIUFqWfjuv6hrF+XDbO7wtlyldXPwJuGrd9X3Xccl8NH1foMzJf0ngOu5DqD7xr2F
	n0aH1va5t1X5cgbOF8j5Mu+BWWjnNdTetFM/9O5eiO79tZEsxdDyRopl7bzN4u35ZCNNpdYncyk
	fQI959aW8G46pBPIGkpXGDZOs+VxUw==
X-Google-Smtp-Source: AGHT+IEIbITCww9p7YTyiyRU6ri2PgRYfZEXmA5pm2lEbb1IQhlwafmn/5kQVt7FfB6v/5JxCSXZFw==
X-Received: by 2002:a05:600c:4f54:b0:434:f9c1:a5b1 with SMTP id 5b1f17b1804b1-4389141c9cemr144223335e9.3.1737985706173;
        Mon, 27 Jan 2025 05:48:26 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:48 +0100
Subject: [PATCH 15/24] arm64: dts: qcom: sdm845: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-15-9d8ddbcb1c7f@linaro.org>
References: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
In-Reply-To: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4072;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=RHakl6Gwe9BOnWGUgPUObCru2zciOH1VzMJFF6WWnmQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46Mjqvx8HsY5ayuuiiEjYUUeFPjFJlPlGcg6
 0Jiujexu7aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOjAAKCRDBN2bmhouD
 13LgD/9dz1YsIMQw36Y9c47lwENUW5jh03+ew5lqV9xJhxBj8mPArbuSX4/ED3eEnQypWcsdbQ1
 jQD6T9UtTX4TKKT/b5Ag0L9VkHLMM0RLe7jjLpJCe+7UHCd6BZ6OhPORbNBlFJ6/Pdi0D+3JBCm
 0mglagwrogiG2MbGau297dt+L2zImuay6OeyTkYODhKGotApc0ltO+fs0odIhueIB9mwkY+1Y9s
 GVnjYIsamdozHH6z9VfQdqYbnGKvmJoqZqaASM/0Hd6f1ECTfT0KYaj45OKIncS2FE+3NufAgmO
 BeObZPiFFyxkDiKv4OE4JCdr+3kzpl5KbrIbJzqWCvogvTg7zt/PKb0o8xWx+BhgSn2HNh7cjzD
 X28/FzcNWIvg8dzUXmGq8zUCE7GmprvgKK1oPUdcpLVgpBsWoywz5POK6d2sMZHpxm3Af3oaSCz
 ldDQphrPJJlwD4X1anPzaA4r6jTyfzXyWfGTKO1QQGu4Y7ZpJ3EuYBTsuU1g9oHokT72tdzGsgo
 niR5e2k2oMSjoMPbpwh6tHV4Hm2ODCXYcfoGsfvQD/PvrqhQD8zbkJHwKYalmux97ayvaXwzmEn
 0X6VJHxKU6iQOvXQ/OscyPvK7HeX9CJOYpAa8sAoYzZYRvSOuo3taTe9FU2gTTgN2f8OOW27G/Y
 ftPpbs+NMkCkRww==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts    |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 21 +++++++++++++--------
 3 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 1cc0f571e1f7f3023efa08adf2791ffce5f2fecf..850c4307cfa903938b56d5805e4e0cf37f565cd5 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -559,7 +559,8 @@ &mdss_dsi1 {
 	qcom,dual-dsi-mode;
 
 	/* DSI1 is slave, so use DSI0 clocks */
-	assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 2391f842c9038a3030511a1c9c8edd31bbacf2b0..11b19613bc0e607df219fe800fe64b660bb6d027 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -499,7 +499,8 @@ &mdss_dsi1 {
 	qcom,dual-dsi-mode;
 
 	/* DSI1 is slave, so use DSI0 clocks */
-	assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	ports {
 		port@1 {
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index e0ce804bb1a35047b092d4745988170738a3cd03..d7fc3d301f64ce64e71921d234c2d1b3a9655d09 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/clock/qcom,camcc-sdm845.h>
 #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
 #include <dt-bindings/clock/qcom,lpass-sdm845.h>
@@ -4708,8 +4709,10 @@ mdss_dsi0: dsi@ae94000 {
 					      "core",
 					      "iface",
 					      "bus";
-				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM845_CX>;
@@ -4780,8 +4783,10 @@ mdss_dsi1: dsi@ae96000 {
 					      "core",
 					      "iface",
 					      "bus";
-				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>;
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM845_CX>;
@@ -4975,10 +4980,10 @@ dispcc: clock-controller@af00000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.43.0


