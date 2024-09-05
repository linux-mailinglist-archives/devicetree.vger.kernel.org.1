Return-Path: <devicetree+bounces-100508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED80096DEC8
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F75B1F2348D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909881A00D2;
	Thu,  5 Sep 2024 15:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YNYZtjpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E02719EEBA
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725551232; cv=none; b=qAcQp0u+qrprTtBo9VkbNOAhDFM+0upOCrzgbaUIGUBGiQdwTlUjFr3T2odYTLTiVaLEzHp/v1DvZpYp2pbHkPXe+cpe78b+nDcn31X50UuzUo+IDSe2I0jUqb/MxHTQrlly0vteebxdmDIdwhuJgXUECU66sntPiiY+2ZvA5cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725551232; c=relaxed/simple;
	bh=vETxKMl/DF5HfjJB5MUKUwnvHBZ/+k7cADKi5Fcz2Ks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E5yeeEcvgUmjKiCvozg4Pif1GmlnllFA5CUWk/rdglkuP8uxmrC0uBF8i2o90VZHuraYb9StH3RmR16tfg6GxIN+kqqtc7z/N+nPWo+hasxNXwMGFjytUmu9foT20HpISiRItP2WKtx606GQ4TET35ioO0fXIkpWzeuK2J1H+SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YNYZtjpb; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f3f99ccb76so1357671fa.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725551229; x=1726156029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C9cQ3debtKzW4k+t59ycSW97m7g5wWOMXgV9mfNlF+8=;
        b=YNYZtjpbxDLvLfNpk0RgWLh3PX7TGvk++CmvtozIl9ni8Fsv5G4iM99mnqTw9vPI9J
         r5nKlSUxTbQ21uolg2PszAE0TaqCgBurOGxrXHDIBbxCo6B7nQe1MHNQdTSukBfs5mw9
         P6ZOaoDatdAQ9fKXZufVzHUjfCeF7CRk/SLqTbdP+yKOaUk8pCpes01Pzex/tr1TSAGD
         wiDc4BiLgqFq/2WjNlQKwZy5IilHK8Ak9t3br1eDlZly2GNmXa6rylu8yVgVBXhzsW0i
         /Rt7Bl3S9cd7NZT/VqnNm2Culm4P6HqCAi2DgafB7wA3O8TGKEtFx9DlL52+ayk0ONaN
         Esug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725551229; x=1726156029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C9cQ3debtKzW4k+t59ycSW97m7g5wWOMXgV9mfNlF+8=;
        b=MLl9onQNWOaKhd7OqolYlgQeZgmWv/TkWSWinBXs7nZpmh/99ghhxAPsX9y1tte0sX
         mhbOHEK7DGRc55kesr2l/3vpfL2vMySLT2+LHn91nHBMM7OfMd0QqWo+bBqW0u8FikDA
         1R8dd8wOlHRciK7NSlEPudu4ETb0BrI9qYM/fZN22RKxiDXt8vRCMKVegMMOUP/5nbVZ
         tRBMiqpmrFvP3md3G0sMUxlaAJN9AVJJv51GeEXXcZDLvYE2XjDJlISLQD0LtAswBmeO
         Mu2VNABpdKXuXXWivgw8QhZPrn6ZIv/Qo0eJA4DyBhU8FMDgI44+NUbGbKSjDrqjXiDr
         1hVg==
X-Forwarded-Encrypted: i=1; AJvYcCWCP5dnPF91ahwyyeLVgfeCmP/Dc1IEMkOn2edB1XIrlIFf4zuDpnxZt87y+ybIVnKClTU6hZafSqGt@vger.kernel.org
X-Gm-Message-State: AOJu0YxMuiyp00BMrXSUMDrM+py6gbNJ0BqRgCk2/IFI1PoCwSNxsDTy
	+eyV9sxo8+/HH2WRuJogRg9AP7KzCqDXmxSCmcNVtW7ltq6Byr3HcsNFgUef6q0=
X-Google-Smtp-Source: AGHT+IEaWPdJpPX0G6acQ6p1KP8FI/EHHbe2Y5kGusTehjpZFRV+kY49QuPPGzv/8FN+mgz28pqnYw==
X-Received: by 2002:a2e:bc22:0:b0:2f0:29e7:4dc2 with SMTP id 38308e7fff4ca-2f61e08bf9cmr84420301fa.5.1725551228458;
        Thu, 05 Sep 2024 08:47:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3cc6a5a94sm1416858a12.90.2024.09.05.08.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:47:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 05 Sep 2024 17:46:54 +0200
Subject: [PATCH 2/4] ARM: dts: qcom: minor whitespace cleanup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-dts-cleanup-v1-2-f4c5f7b2c8c2@linaro.org>
References: <20240905-dts-cleanup-v1-0-f4c5f7b2c8c2@linaro.org>
In-Reply-To: <20240905-dts-cleanup-v1-0-f4c5f7b2c8c2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4141;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=vETxKMl/DF5HfjJB5MUKUwnvHBZ/+k7cADKi5Fcz2Ks=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm2dJ0t+ab7yR9JYmhEHn6hH5a0hDiWRGCTX0nq
 8PZUrKgLi6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtnSdAAKCRDBN2bmhouD
 1x9iEACCxUHcQOsx1n5GuEbw3+LILFjaBUpQR8np/cXmfm3FKyHmY0OGmPAo+pv6z8YHW36mMS6
 VPjCmST+q1mRBavn6VH1dbxNkS70WhQIS0RHvu4jHDdeYiszcE4laOYiuphZx3JoYX88vnkNCYS
 IhtpIgRh5k8gSYqo1CEX+gl7YciZUkybKqNxyogDqsIf+PmB9LWIgMaYK6+5tW+6pQJIHcmvKjY
 sh4BDjfLcAtJWneJhyjGNZ5xwnXtuQDVJuBsdC2qXoFIlt4uILgXc5isVpO0y+48F79lv4LdWZa
 5rFzh+Zs+O3iJlAoXsS8kHD3iVU018zz9zpbBHRGyXV67rjvi6UKawZkSakLlLSzRcrknQ6OJSM
 SwTfY4Ww1FiohVG0zJY1gpRJPVVwaEV6rz//PQzaq5M8Gth16b0RJ8N/jevAczwV2PaIQarYvu3
 TGcAPjDEPZNnS0Lbpbc+Ri9SOTblSRE0oaqbXL2TdC5xEDX6EyuQbSTmOjMdsfP020cIRemPcsn
 y6JiOcR6D3E3JOhay77tB5pEl4AQkoLTfHsPP0/HI/TkB3FrkG5WTU3ghTGewuoGDmR3J6G0rga
 rh9rLA2PDOenqvyFW7Rzhp3h2g+2B5R+DhoI9b5Kk8fimYjdHYNr1nr46a/y9OpI8nzm4XxczGh
 4PrcfL4DksmIUuA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4018-jalapeno.dts |  2 +-
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi           | 66 ++++++++++++------------
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4018-jalapeno.dts b/arch/arm/boot/dts/qcom/qcom-ipq4018-jalapeno.dts
index ac3b30072a22..6640ea7b6acb 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4018-jalapeno.dts
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4018-jalapeno.dts
@@ -25,7 +25,7 @@ mdc-pins {
 		};
 	};
 
-	serial_pins: serial-state{
+	serial_pins: serial-state {
 		pins = "gpio60", "gpio61";
 		function = "blsp_uart0";
 		bias-disable;
diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index a949454212e9..9354896da6e6 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -592,39 +592,39 @@ apps_smmu: iommu@15000000 {
 			reg = <0x15000000 0x40000>;
 			#iommu-cells = <2>;
 			#global-interrupts = <1>;
-			interrupts =	<GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 303 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
-					<GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 303 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		intc: interrupt-controller@17800000 {

-- 
2.43.0


