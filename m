Return-Path: <devicetree+bounces-130056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6219EDCB7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 983F81889F1E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2F913AA20;
	Thu, 12 Dec 2024 00:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P8X5pHkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02A1BF37
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964464; cv=none; b=i9eiM6vaegT2P/BBuoQS89Doo2+XJknGLHKokEGGW+h5fCaVYDj8BcfdHEbl+366/Lql8LmcA+BKCGEazsD+kdNUgpZzCFgZdPus3+H1WZACPvMlGRuHaGMMo1CwgMzoiIfzvt6R7AqbzZJj3BLAd0X5efychK/43Inzxxw2OR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964464; c=relaxed/simple;
	bh=KYn3uuYZj7NpZtiTkHvPGGaN8yS+R6O8JQi1SN8+UfI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fIlPCVI7RxN08FNbN1I6MuCOgXpGY9pkaoMMSqNZN1v7TQIfVdXe49eh+YFTUkbYUDiCQ/I+Y16x7nxIJbnEqUhPvUUBWwYnfH//GCcAbfy+ejOTMjlbIjeYMZbjHlIhvAvLBHrlgoJF6WPfjbVEIVLZqpUkDjynlnZMiYbyDNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P8X5pHkK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43622267b2eso512995e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964460; x=1734569260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jrR6DiKypyiSRNkIPUHsCZVzuVT+9VDdCizIFEiX0fc=;
        b=P8X5pHkKaapQm5/0VngGGSBDrJtx8b89/suvo5A7H4wZ4/6g9xQ0Yf1EZeXJGgRJDH
         NcjPo3nZ6Wd60bMuWsfXHVrNslfDAE7SWxL0uQoVuNnhAaDMKo3XgT/y4XtTbYiAaQTY
         V+xb8fi8+0Qr0cb9ICn+/Nb2kzbtJ7Wkgi4WMyHQtFpCOOf4H3kRvVJqVdVtCe+Kl9dT
         whLjValdX3GpbxOGEd5aZB3h/L56H9mImFcjzrOsaP85moHCKtk0tPQxaPem/kzEjqsz
         j5xDRokQY4e1PFq5QsbvSEQaqydMXkK6pjplrL+EK27ZKGh04I2pbZYbTFcuAX1W4F4f
         IK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964460; x=1734569260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jrR6DiKypyiSRNkIPUHsCZVzuVT+9VDdCizIFEiX0fc=;
        b=Mg7iPaxUb6TeUd/16opb4MKPghMSW4AB4DBWpeDyKko3VS3d3Ui6HZypwUsKETMwBi
         y7yAyX6Ra/SA94osQ4qKtGPrqf38fdKoOBE5QMnSFFLY+l78NjiVEHNKpRC93tzk0E1N
         o9ipaeyyYhNJo8KINw1rg5jUEh8ppZBjaWEx5qHTj2RgLflcLIl3OS7H8rb62IQxhEWv
         Wnv3WRY8DWlYXeeQ9rpA8OwXj2TY9a1dfC5OAD89HScZSra6rFju6XWYeYnvL36eEahk
         fPkS4mGJa+LamK1yXTg+ya0p4RPdLqLm8GAWnrj7ko0o63O8/xude9srJsmugvV4dZXG
         tzjw==
X-Forwarded-Encrypted: i=1; AJvYcCU9JYyVLrKlpsRUvm707vkzLM6z6Y8QSgznGwn34uTXQPh+zGNZYMsCt2jhCUNKgqUefLk7f9ZKXuxI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2Senq2skbYn+p8Yuyg3TtvIq8k2HObXY0UP0b61XagUmMdTps
	oKOSkpZ5TNj4zrRofqe+9RAyc4u44bd/JrRShK9zZegbGk8nvMbTNf3aalq2ZH8=
X-Gm-Gg: ASbGncsVxo3xRZ1TpFX5SGqVu3QYdLrvglbLqk2LjzoiEg8aNe4x3J9+yTn9RurnbSp
	DuXk07GVRiD4fQ/xp6LKQJoZk+SbMwnuXALjnb7R1lSRLgsyKfGb8I8PE6iB3/62QCJnYFfzBUt
	a0yiKwU6ZFO54JtilDwzZngq6tC+e9DKWn/kpJHmRoR83W2NJigKoSKTsK9CJ8uIyrgGWREWGAC
	faM2KCtLq5tE+k47BbxtbQgQdXnMgyFVlw/lrLGfs1N8nPr8XAayVylZZm4elTf7XVxMI6p
X-Google-Smtp-Source: AGHT+IGkBmZlNH90HFm8x5XhlTxKfUTueo4mDUUf5V2mYTwxmdvnSzy08A+89Jn4AKPGnkZs6ppvcA==
X-Received: by 2002:a05:600c:4446:b0:434:fa73:a907 with SMTP id 5b1f17b1804b1-4361c3723acmr38051395e9.13.1733964460449;
        Wed, 11 Dec 2024 16:47:40 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:39 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/14] arm64: dts: qcom: sm4250: add description of soundwire and dmic pins
Date: Thu, 12 Dec 2024 00:47:18 +0000
Message-ID: <20241212004727.2903846-6-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds data and clock pins description (their active state) of
soundwire masters and onboard DMIC.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm4250.dtsi | 62 ++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm4250.dtsi b/arch/arm64/boot/dts/qcom/sm4250.dtsi
index cd8c8e59976e..723391ba9aa2 100644
--- a/arch/arm64/boot/dts/qcom/sm4250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm4250.dtsi
@@ -37,10 +37,36 @@ &cpu7 {
 	compatible = "qcom,kryo240";
 };
 
+&swr0 {
+	pinctrl-0 = <&lpass_tx_swr_active>;
+	pinctrl-names = "default";
+};
+
+&swr1 {
+	pinctrl-0 = <&lpass_rx_swr_active>;
+	pinctrl-names = "default";
+};
+
 &lpass_tlmm {
 	compatible = "qcom,sm4250-lpass-lpi-pinctrl";
 	gpio-ranges = <&lpass_tlmm 0 0 27>;
 
+	lpass_dmic01_active: lpass-dmic01-active-state {
+		clk-pins {
+			pins = "gpio6";
+			function = "dmic01_clk";
+			drive-strength = <8>;
+			output-high;
+		};
+
+		data-pins {
+			pins = "gpio7";
+			function = "dmic01_data";
+			drive-strength = <8>;
+			input-enable;
+		};
+	};
+
 	lpi_i2s2_active: lpi-i2s2-active-state {
 		sck-pins {
 			pins = "gpio10";
@@ -74,4 +100,40 @@ ext-mclk1-pins {
 			output-high;
 		};
 	};
+
+	lpass_tx_swr_active: lpass-tx-swr-active-state {
+		clk-pins {
+			pins = "gpio0";
+			function = "swr_tx_clk";
+			drive-strength = <10>;
+			slew-rate = <3>;
+			bias-disable;
+		};
+
+		data-pins {
+			pins = "gpio1", "gpio2";
+			function = "swr_tx_data";
+			drive-strength = <10>;
+			slew-rate = <3>;
+			bias-bus-hold;
+		};
+	};
+
+	lpass_rx_swr_active: lpass-rx-swr-active-state {
+		clk-pins {
+			pins = "gpio3";
+			function = "swr_rx_clk";
+			drive-strength = <10>;
+			slew-rate = <3>;
+			bias-disable;
+		};
+
+		data-pins {
+			pins = "gpio4", "gpio5";
+			function = "swr_rx_data";
+			drive-strength = <10>;
+			slew-rate = <3>;
+			bias-bus-hold;
+		};
+	};
 };
-- 
2.45.2


