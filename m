Return-Path: <devicetree+bounces-37178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D03843EF4
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 12:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4494E1F30720
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3FA78664;
	Wed, 31 Jan 2024 11:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7T6s1rK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCCE7690F
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 11:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706702320; cv=none; b=pFRMJOVc/PGxZ3plB3RmhPDpgdJnHbpOinS4VufSjsu/6ZFq5HNMrgqeTsT7v8kSeiXQUWzYZj0OBGQA32yMJDxKdiQmcHE7zyfBVSSPtvsAXcXuOhjbLm47huUcgj2biFy/pYzuEqtC3z7SyMe4Fa8blIuGrRTBPWkI0+Sxhac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706702320; c=relaxed/simple;
	bh=Bsk6tAe8HP8m/VR5DeyZcP+7oFX7ES/B7TSkV1Xt6Q0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=X+hNZFZgkdtjcZaA5hSvRzznhbNYA8LYsHfvo8N7CEtWWsAoBqu6p3/FGqIsKG2D7EuTkBzLRj+g3v36aC4/bOfREK9xkaI6HN6jYRC25Ed7VIJIFU0ZSlAtABaHQLnsugaXtVkrTK2FyVLxYMNdRABzap3r7hCOpu0VDl01EaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7T6s1rK; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-510e0d700c6so3756588e87.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 03:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706702316; x=1707307116; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AoV2jurmNv6iwkxDFUQ5o01ah3c3XSHtCrzZXaQBuqA=;
        b=u7T6s1rKdQZ/WUTswi9HPT8mPzn9h57OyH+aePIMuP+g6I1h8glau8lNsV1Hkp/7dU
         nJcNnqwq/iy00HAyI1PPu/yB/w8fck2NtjRCXzpvXUSmua0UAt+8dc38llB1iPl9lB62
         aZybjvZDsVRE64YxDQ5p+70eA6vxwJw8ViVc2wdffqPowE+thNLRyxRM4ZGkhpVWYl4e
         0fg57CczKSt/SU6k3rIKLXUVoIt9AUHf8gZRpJxzGS1d0n35GbPKTxn/doNByMDC7qpF
         O21UVXNDGMGiKpkadus/ndn0f6JYM/mq36W41JoOoqIWjfaqSSgUieQjAwRYGsr9tzOe
         8Shg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706702316; x=1707307116;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AoV2jurmNv6iwkxDFUQ5o01ah3c3XSHtCrzZXaQBuqA=;
        b=MTFIekajyf1xuep7RhSafWHAoVtlGYQXVCBbqCLGFJQyYAe8mcGSKblDyQHbxYeqWQ
         yKjIblVfTaS7iYwannlhSj2FTdmUQC101cprLrN3QxWftCZlBc4b1jPZyz0FfcR6y5f/
         wYUDhyiQUhHAy1pVVu4qsdvXEhP5WVBkkdesJ1y6FoCwcrrlQNVtA5VjQDcXdDkkuTie
         J+FMue8uDS61pk6Kd/IqccqZeJBAqayx7q9AKBo3aP1pdM2zkcWsoOjJdgVncQXl1wS6
         iyGBCSPAkrjVIcweQkBE6DglCCDBX+nlb8cFq0DESxrXqKru3/ZqLp6bILfIud2jzWpm
         ISBA==
X-Gm-Message-State: AOJu0YzoUq+Z6Yz1xK7S3pmcxVYHqPHP9lq+1iU1DMEG0M/szesvoPTU
	6HlwCpdfxo0hzu/d/aRIjUc3rcv1dA7h91z9YtFmgY9V/XAvt4aXzWgnjC5g4+0=
X-Google-Smtp-Source: AGHT+IHKkzK2z6FUik9mZ7iVyw74T0XS48ch3DSuNy2MgJ/6xZiHyjGjtHghtsUZVoD0hrxrysmgUw==
X-Received: by 2002:a05:6512:3d9f:b0:511:16df:b31 with SMTP id k31-20020a0565123d9f00b0051116df0b31mr1210546lfv.51.1706702316382;
        Wed, 31 Jan 2024 03:58:36 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id u1-20020a05600c138100b0040f035bebfcsm1413114wmf.12.2024.01.31.03.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 03:58:35 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 31 Jan 2024 12:58:34 +0100
Subject: [PATCH] arm64: dts: qcom: sm8550-qrd: enable Touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-topic-sm8550-upstream-qrd8550-touch-v1-1-007f61158aa8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOk1umUC/x2Nuw7CMAwAf6XyjKUkYPH4FcQQJS710CbYKUKq+
 u9EHe+Guw2MVdjgMWyg/BWTsnTwpwHSFJc3o+TOEFy4OH/22EqVhDbfiByu1ZpynPGj+RCtrGn
 CSPc8UiCX3BV6qSqP8jsuz9e+/wHsv/oMdQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1860;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Bsk6tAe8HP8m/VR5DeyZcP+7oFX7ES/B7TSkV1Xt6Q0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlujXrpKUzVB8vr6aWbW4RwTq+8/Y3AdwGKhxqT1X/
 VZUXYROJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbo16wAKCRB33NvayMhJ0WRLEA
 DBhRvZmNqxs/wLW4dpx3fWWNXvKX1eRMNjOyTb2mCWwQDQ1mGwSA/hWp3gsfehs04XLQf/+SdwUv/Z
 qHhf+P5TZ5j9KEaeQkWoziaRQOo+8EjHZzTE2GUJiJIMk95Hm7HSU38JTAf+TelBb/7VkmjSTl2zkZ
 7bOSsBs/DRMelsBmGEzQpvuE0cgz3Freh0UQfH/Y2zpxsSqbKedM8pChG9Gllw0PNbUG1E7Y2WrmFx
 n0M/UHl+2uD4ZZH64BFRmz2lw6hveG5KrFV8KB823wbuXQWuatsy0/g8YYPgDASNVb9IybmCFyig3X
 qTTEGOl6i92M8J0CBW7oan0/Io7gwLI6WCMlKRTsaKQtlzQAjT4dXwrTbrP/ll8mbrihysffB96XSP
 BRH2ULw1+Vm4CWF9/4edZIkj6sxerUYbhNiJlwwMv0pfcA2hMibqLRhBGX4S530ixlbdWP8DIMAcHM
 PeVtB5c3oYtK0UEYslhBLa30PBniS2bYgWTCNzesh8W6NCNhruoBTScKrMKm9xx3dAGQTq+2FOS05G
 wrlSNETbILuroK6PvANXivJ0u9o5sdtW7leshEC9Av/MAJpCvumwqO2he9KesNYC7HQ1oNvLwllAnV
 /2auxfWvxx/kA4cGuEbVhuKwsDkuXLJspZFcvIiNS16Crxfk+BjJ4QEa5ahw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add Goodix Berlin touchscreen controller node for the SM8550 QRD
connected to the SPI4 controller.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 42 +++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index d401d63e5c4d..4c0a863024da 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -724,6 +724,10 @@ &gcc {
 		 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 };
 
+&gpi_dma1 {
+	status = "okay";
+};
+
 &gpu {
 	status = "okay";
 
@@ -960,6 +964,30 @@ south_spkr: speaker@0,1 {
 	};
 };
 
+&spi4 {
+	status = "okay";
+
+	touchscreen@0 {
+		compatible = "goodix,gt9916";
+		reg = <0>;
+
+		interrupt-parent = <&tlmm>;
+		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&tlmm 24 GPIO_ACTIVE_LOW>;
+
+		avdd-supply = <&vreg_l14b_3p2>;
+
+		spi-max-frequency = <1000000>;
+
+		touchscreen-size-x = <1080>;
+		touchscreen-size-y = <2400>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_irq>, <&ts_reset>;
+	};
+};
+
 &swr1 {
 	status = "okay";
 
@@ -1028,6 +1056,20 @@ sde_te_suspend: sde-te-suspend-state {
 		bias-pull-down;
 	};
 
+	ts_irq: ts-irq-state {
+		pins = "gpio25";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
+
+	ts_reset: ts-reset-state {
+		pins = "gpio24";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio108";
 		function = "gpio";

---
base-commit: 06f658aadff0e483ee4f807b0b46c9e5cba62bfa
change-id: 20240131-topic-sm8550-upstream-qrd8550-touch-a59df5250c07

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


