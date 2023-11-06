Return-Path: <devicetree+bounces-14016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 753A27E1C73
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F25C9B20DDC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF3E2912;
	Mon,  6 Nov 2023 08:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bBID8zDr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB82828E6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:39:24 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4C4110B
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:39:22 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50939d39d0fso5438709e87.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259961; x=1699864761; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lfu2ORpkeCL1UpHBva1eJY9Hjq38Pt6Ou/3N+ye6TmI=;
        b=bBID8zDrDot2B2IARuqHnBrIOzZDj/Hi6qEhJkx/kJ8xJCbUZUujvwtyrMBxM7J7qi
         1aYvwtd8Sg+ca8LeIwI/7VEXNS0yWMZ8TCpMh6ZwchCR9ymevTQE2u95HSjToDyBfXoD
         2bolRs3hY50REIIMNcmWRSo9zb7WvvNbX1kZeXW+qyRVPG8VWYpDupfah/kOdaZody5z
         fwLPK5tqz3yip0ICKP61MLA5erkfupd/wBJxeCdaZSGGBzp1JlGvHR3fc1Wwc3D3PDBm
         OpPETZipgXK4iYh47bdZBUXYkL7xOtGqO0y2y+im/H+d/jpEugpveGldXoznpBKyQQv/
         tbLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259961; x=1699864761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lfu2ORpkeCL1UpHBva1eJY9Hjq38Pt6Ou/3N+ye6TmI=;
        b=GZFQZOEqOLuBOEQW3jVDbDWodRExnKFqMK48hHGhnlImk4UT0swKxCbzl8yuzpYW5x
         xxZuHK3RzsTy90f0e0v4GR4GPNM0EWYfgofFlqgfAAssSDng2Dw8Xq1XBu9bC9I6lqEz
         146ZnxSPONQ9eAXO/SZ7eEAJet8izKRF36M07g0uqDmJdzROqQeYzQZr0Rl/BoqNK3lb
         NrHuPlgJQuhhrI8h1nZaG9FuPn59K6kV5Pc6mFYAGVwVDe7C6R40yZ5yJnx4pOqzZ3XF
         D68YeFQKnwRRnlPHDABUJMx8FQWMy2idPuzUskIJw03Tf5O1OpZtKVIw7TfDQ0gtpxcy
         IwjQ==
X-Gm-Message-State: AOJu0YxA+JrsI4LaSIlM6C15nFcCK5AR9GY9PNJY1AuMkL0CzYPQfzEk
	KmXbUvNf3d58sr/iaADeW5dxxA==
X-Google-Smtp-Source: AGHT+IGJs3NIiITCxIY/DmyXcuOoHbrr1/b6mrB49El5zUdapVuViNjWYKUc69R0NL3hOPSfzeqgzA==
X-Received: by 2002:a05:6512:690:b0:504:3c1f:cbd1 with SMTP id t16-20020a056512069000b005043c1fcbd1mr26454782lfe.12.1699259961002;
        Mon, 06 Nov 2023 00:39:21 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t5-20020adfe445000000b00323293bd023sm8829830wrm.6.2023.11.06.00.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:39:20 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Nov 2023 09:39:11 +0100
Subject: [PATCH v2 3/8] arm64: dts: qcom: pm8550ve: make PMK8550VE SID
 configurable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-topic-sm8650-upstream-dt-v2-3-44d6f9710fa7@linaro.org>
References: <20231106-topic-sm8650-upstream-dt-v2-0-44d6f9710fa7@linaro.org>
In-Reply-To: <20231106-topic-sm8650-upstream-dt-v2-0-44d6f9710fa7@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2054;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=GxogOVA0VSEH06pH186Sg87gTWs7OvO1dtqJiV/PY6g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKYy487d7e16F/VQCUdgC6SkSA3nJ9bqHZtjh4AM
 s/h/ubeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUimMgAKCRB33NvayMhJ0Q7UD/
 0cr1kaabPkMM8dH8pBICvJTMGxJh58Hz8HBM+pH9KIe5Cwb4daku7R7Ru3XmrCF4SroBLtIwnN9DRR
 1gvDRuQqHCkeK8ifUUgZO46qCrNVr5iIz1d6br3+cdA6cSwyK3RGVJi6gy7HRmbZ51J6KV5i3zRHXr
 FqGJteaUDWsIKbq9b95jOnbNIZlyrOi32NBtGYieiDSggRuZGIxggP2VgTEkK7tgh8Omw9NJHsqhKr
 XDp/DpNB7T1m0R9yV5LowW+unlfG2JRJxaQykpWlXbyejD4T2o0JdSAtXSDRdJJzptNR/Am5Ufty6s
 OyGN5SIxMfk5br/qd6NjJkIm76w/qyoCJQOc2SzO3viybDbola0ySo2nLpEH8LTXsYKK6pVAXxqwbd
 bWoTdNNiV/Tp74k/cZE7uj8Fo6NZi27v5aflK0XUB2kdrcE3ckwmMxEZeIks0Vyz0mmCUgFdlKZERm
 MO73el/SEiW5FZsQ3kuLXMsH5angDv+76Ax4uBvMoaSLYSYKKNC+hfR++tXXL8YrpeLgLrV5hfx/1V
 ++vOSwzkdAMnnggcAbi4bSQkTjHp8uSgDNeBPT4onZeEq6JP3fb4w6trxSawlNbnU8K45+4BYOKO9J
 X/sFW+WZIT1gcV/L1twbdMuNruR8wYuXhHuj48YGS6pdgXYJPrwWfEcwW6Pg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The pm8550ve can be found with a different SID on SM8650 platforms,
make it configurable.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550ve.dtsi  | 6 +++---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 1 +
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 1 +
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
index c47646a467be..4dc1f03ab2c7 100644
--- a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
@@ -33,16 +33,16 @@ trip1 {
 
 
 &spmi_bus {
-	pm8550ve: pmic@5 {
+	pm8550ve: pmic@PMK8550VE_SID {
 		compatible = "qcom,pm8550", "qcom,spmi-pmic";
-		reg = <0x5 SPMI_USID>;
+		reg = <PMK8550VE_SID SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
 		pm8550ve_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
-			interrupts = <0x5 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			interrupts = <PMK8550VE_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
 			#thermal-sensor-cells = <0>;
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 9a70875028b7..ac045bfc51e5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -10,6 +10,7 @@
 #include "pm8010.dtsi"
 #include "pm8550.dtsi"
 #include "pm8550b.dtsi"
+#define PMK8550VE_SID 5
 #include "pm8550ve.dtsi"
 #include "pm8550vs.dtsi"
 #include "pmk8550.dtsi"
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index eef811def39b..6d5c2312960f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -11,6 +11,7 @@
 #include "pm8010.dtsi"
 #include "pm8550.dtsi"
 #include "pm8550b.dtsi"
+#define PMK8550VE_SID 5
 #include "pm8550ve.dtsi"
 #include "pm8550vs.dtsi"
 #include "pmk8550.dtsi"

-- 
2.34.1


