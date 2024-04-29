Return-Path: <devicetree+bounces-63615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B669F8B5957
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6BC91C243A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3CC82881;
	Mon, 29 Apr 2024 13:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u9PKNevT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63ADC157
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714395754; cv=none; b=e5nPO9seVYOhCxG7aWz3YSxyRCJ60xKx/lwjK9NzWIqgudij0kq6IoiL8LwdKi2obZDr6wttZiFDpSg9bOJlYeEsAj0aHsVWtDJiS2rwT1lZgshg6cwEMjxe4fwBwn6tE5PbEh9/UuO9zoVuqT7MQm8c2PB7JmNMkhvt8W5D/nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714395754; c=relaxed/simple;
	bh=DZYBaxqwcEmwPs1ZBYEvDr2ZHYw8sszSnlRnhKCuzPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=btcYh3tIYCRDIqtHeHFXBWxSAcZVtSV8N4n8tRERLburbSZpbQFolA7MUTxbNjACC+eOmBkPg8gPDrbUr9ZZAj/vJy4qTLsEH2eZfdw1bHr6uSXBj2iuw4tCxEhaFvFEu17byCb36UACOfhGbDO1S1CXr9Av7JQCUeuTAXIc2x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u9PKNevT; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so5472307a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714395751; x=1715000551; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k8m194tVyfvhAHThcWtJ6ol3HDFzRPp7tqEYrp1oAhA=;
        b=u9PKNevTYtP1iz3H6uwBvkc/g9qRiDIPNOx5AV3/az+PjeXqZV+UAptX5A9c00aOVW
         yOtuW9SjsPvXfpqBsj4DfxW0m0mm2cbte+Va8k0UJEyPq50L/t0ghvSRGl8Gf0JNla2q
         xn82j8b5c6WP+OEQRUk1N7TVCuw8H98H2tR2xMaLPujDeDy7NFZCEnTLdOobOm4qZvKm
         6dE9S+KWVAxJN1H/v7Nhj13oAmJ60xlfSIHYqXdT4F+dKmtTxwuhodQml9Idq0nVszjE
         /OlMPwGK/18s6ZLY4kVkw+ARcmcnA43jffM60ZzYnmmo4Ms18Kb7OPvwpnAEtUn2m5yB
         CnkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714395751; x=1715000551;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8m194tVyfvhAHThcWtJ6ol3HDFzRPp7tqEYrp1oAhA=;
        b=Mqw/OSpoycCFgiczyMzOfl3LuUGCAQj3XHweL0zFz7OMchoHx0N3vftALRu9WiaARD
         3no7RBhpd5G38jzw9yWN9H9Qsn5Tre3EJGuI8NKb7nZBAn0ADWBod2OwBOiQ4MnlPfwj
         kmXrvU2lC4NOu+wJyetCwfh6Asrveax6zso/jld7rD8GncPY+HyILbVRZYtuxTBy/guf
         hI8i1KRbkIprytB4ndS7IxJkEGFv84nQUnt5xSBl846tCGFGA1k+bG9RBHwDUS7G/TgB
         vTmXdUVkf0t1YvUcWuQ4beDD8vGbiMO4QQkPHzxQNSk8c+sQjWeFRoshgVljex9rFA+e
         boqg==
X-Forwarded-Encrypted: i=1; AJvYcCXiq4pEwm4NLNzXuxCQOF3T+qVzcv2M3Hj5EIT1Sgok3dWDfvX06zCkVUjHnm8mKfJlmK4Ql+akzjQtHuyk7fVWW5egmwUcvoZmrA==
X-Gm-Message-State: AOJu0YymWtnoamKvMJMAPf1VK2CN8cUjAj3c3dCB5kT/QZaKrqbMIuQT
	5/VfctV9g7EGyWRej6bbHBdoEIfMuNxY4sUHy00gkGffmrnh2f92GiaztsDFHW4=
X-Google-Smtp-Source: AGHT+IEVP/ykRvqh2aa90pf7CIFpzyRJ4k2h16bpOnfAW2//12P8BXsotMhLz9PUd8P9wQcJ3jGoBw==
X-Received: by 2002:a17:906:fcc2:b0:a58:e75e:b04c with SMTP id qx2-20020a170906fcc200b00a58e75eb04cmr5392065ejb.0.1714395750950;
        Mon, 29 Apr 2024 06:02:30 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id dk21-20020a170907941500b00a55aee4bf74sm9976074ejc.79.2024.04.29.06.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 06:02:30 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 29 Apr 2024 14:02:18 +0100
Subject: [PATCH v3 2/3] arm64: dts: exynos: gs101: enable cmu-hsi2 clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240429-hsi0-gs101-v3-2-f233be0a2455@linaro.org>
References: <20240429-hsi0-gs101-v3-0-f233be0a2455@linaro.org>
In-Reply-To: <20240429-hsi0-gs101-v3-0-f233be0a2455@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

From: Peter Griffin <peter.griffin@linaro.org>

Enable the cmu_hsi2 clock management unit. It feeds some of
the high speed interfaces such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* s/ufs_embd/ufs
* s/mmc_card/mmc
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9755a0bb70a1..a0305555c4fd 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1267,6 +1267,18 @@ pinctrl_hsi1: pinctrl@11840000 {
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		cmu_hsi2: clock-controller@14400000 {
+			compatible = "google,gs101-cmu-hsi2";
+			reg = <0x14400000 0x4000>;
+			#clock-cells = <1>;
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
+			clock-names = "oscclk", "bus", "pcie", "ufs", "mmc";
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;

-- 
2.44.0.769.g3c40516874-goog


