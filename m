Return-Path: <devicetree+bounces-230017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E36BBFEF82
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E53AA4E31C9
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5964521D5BC;
	Thu, 23 Oct 2025 02:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z+/rGLan"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B4B221703
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761188368; cv=none; b=Un1iMevvMIRgRmLO3S6wVUtZ+53tbPMwIdbYtR5W0GtLopL3ucJw6TsyuXSj174CP5CWUhx97ijnlucsbo4rUrj2yXf79dF9igLlUMI89v34AO7lKU/3pZSFdrnRpodii1xFK3/Uq8skeE1W5NdejT2P3PfC0Gmmnx2+8vpAvC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761188368; c=relaxed/simple;
	bh=HFrI3qfDn/lEu7ikt+JEMahFw3juZY7/9RcZQWexwS4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ODXrAnwoV4AxSvXP9ckIKserXS/AoWpc78EUFxgapdH3C+16OSnL7Y28Rs6X5c+A+Vd2ikXCaoTrC4PaKy0kd1An8hcIWeAc12CJOcHzD0ZBiSpLeEiXPIpUuBbkpjyMikKuwX0BlXhj3B3mv0cZpUAonIZ9y1ncvNhrbEJgR3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z+/rGLan; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-592f40b1a40so54268e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 19:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761188364; x=1761793164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UGMFEMDbcJMR9w5TvbJ2s+xf11kr62oED5PQ+9WDg64=;
        b=Z+/rGLaneU8skvVEpO/uW4EybtSwa0D51HWDiNx6hftKWu7BEEw14lDCwICX9b/Sp/
         D+lfrHBWIks5ZHg1I8pireaaGWERr/BjeHHmGFC8qdgu3TLiKsHrIx3dBF5ng6J3j2E1
         f8U6URJsjgOHx/Du4j015W1Rai374LooqUSDXb/XPCO/wBozd67941R6fzTUMYqc69ZL
         GIv88sP/dP469hCD/onkDXf0Nh0UoUkD+k6XBmaA2JTdwEoiIYYGyUpcOrguLx7ey/WY
         dy8nkqZqZFw+5LmG+Dm4RGqlpyRN6VH0ebmH3EvgYf0zdAgh72T1lXnkLbRdMHI1y6wx
         rkbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761188364; x=1761793164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UGMFEMDbcJMR9w5TvbJ2s+xf11kr62oED5PQ+9WDg64=;
        b=W/iHCDlLDCBvKgD+xOfj4IV9E8LZfh0evAJ1bQ/YyKoJFhx/zcxs41einyg0IPLXWB
         uO4s31DpdQXPNuTKpKHGG/+cXzaUUI/5Dw7YC/+kQEbmCM7lulukZHv5nVqtKnOPI1kT
         biZldfDlRvGXps4yDt4VNwol45qnSkcCy4iEGQCwjuUXHEN4OZoVgIvsjkQ+3EooC8G4
         d01dV0tUSB9imZ+2anyVdH/a/cTgkuB4wcei12weG39M30kWXSW2CL70u1VtGS/euijb
         Qg87w16wA68TZMVNiVHPvwYS9tv6mm+TNNnaQ6lBpcfN3w9DWSSijYUzHl+nBxy0eF+c
         yniw==
X-Forwarded-Encrypted: i=1; AJvYcCXBKZiBBuVFH2+jInLUpOeZIkhvkQCOi1C6vM350L7OSUifUQUnt0RFeM/rGSID0ek9cdMphx/e3E9b@vger.kernel.org
X-Gm-Message-State: AOJu0YzVAaTEN96OpdmikwFDG4V9GK/Rsf739BK2Dt6ATezHDZxiFV8v
	ambqHvQYk6AY1IZKdKaIpeOqIthoLUgOFQzRYGg3c4d1eJAKzxDMTQj49mO7RzlqDy0=
X-Gm-Gg: ASbGncvP40ORTT6Pq1wCi9fYK6pVtHjzUrReGcxXeQ8zwl+bM30Kh+kL6+m4gmExaUg
	jn0A8eh7Kxa+jKjXktfgZGapQmJOQOn9yMlQSB22a89AAaXvn4AFRHPDL9ATxnuDNpgwtRbeqNe
	NzU4uEf8RJ5cPAv34GWTHVaEAQe+822hqyczGAmjxhfdoraf64KZIFlZIAIQxgKDs6P19v0/AOR
	apyWGoWkoqXEIXfcalX91gmbdecr2t9tzJqnug5HZG3g4vT4At0ikAKNGtwXu+pLa2kKWbeQxFm
	g1Cvui29UuAFIfFN8Sv9+uSppxJmoP8k+W2DNa6i7fRvOHJx7RWRJKJzIyrw2XTULBc+vEhK5jd
	hD/m8YJrqTzWGk3VHrP8mVPNVZIDwjJ84aO9uKgD7POv50V5ez1Ur70HCyZYOnSqQRV9j35Y5Dt
	ft9Mhp2s7Zr3BDcwub7mRYvm4y5MTB9FoORpGjkTCTKes=
X-Google-Smtp-Source: AGHT+IE5N24ohvfwqJq5Hnr8B9cCQaTbaOoXXpfaZttHKJIYgguo0IGi6O4IxUXyr5otvr2lpwFojQ==
X-Received: by 2002:a05:6512:124f:b0:57d:1082:e137 with SMTP id 2adb3069b0e04-591ea28dc01mr1995813e87.0.1761188364554;
        Wed, 22 Oct 2025 19:59:24 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d16a15sm334471e87.58.2025.10.22.19.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 19:59:23 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: qcom: sm8650-qrd: Enable CAMSS and Samsung S5KJN1 camera sensor
Date: Thu, 23 Oct 2025 05:59:12 +0300
Message-ID: <20251023025913.2421822-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
References: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support of Samsung S5KJN1 camera sensor connected to CSIPHY3 over
MIPI D-PHY interface.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 45 +++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 9e790cf44804..90778602254f 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -741,6 +741,51 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&camss {
+	status = "okay";
+
+	vdd-csiphy35-0p9-supply = <&vreg_l2i_0p88>;
+	vdd-csiphy35-1p2-supply = <&vreg_l3i_1p2>;
+
+	ports {
+		port@3 {
+			csiphy3_ep: endpoint {
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&cam_tele>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c0 {
+	sensor@56 {
+		compatible = "samsung,s5kjn1";
+		reg = <0x56>;
+		clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+		reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam3_default>;
+		pinctrl-names = "default";
+		afvdd-supply = <&vreg_l7m_2p96>;
+		avdd-supply = <&vreg_l4m_2p8>;
+		dovdd-supply = <&vreg_l3n_1p8>;
+		dvdd-supply = <&vreg_l2m_1p056>;
+
+		port {
+			cam_tele: endpoint {
+				link-frequencies = /bits/ 64 <700000000>;
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&csiphy3_ep>;
+			};
+		};
+	};
+};
+
 &gpi_dma1 {
 	status = "okay";
 };
-- 
2.49.0


