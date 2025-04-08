Return-Path: <devicetree+bounces-164241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C0DA7F9B3
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDF8D16832A
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC52266F05;
	Tue,  8 Apr 2025 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JmzeRlTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A651265CDA
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104757; cv=none; b=P5C6RLVNxexBMK60GWpx2zjj6Ck5byaqBcrDN8As6LZ0uHQYhDqq238dMUiSXhQHh/pYU22cgFlIP2gZpVjNAltmfbfVTMb8MC2Opd9ynt1YLlLuLGgRV2g9jQg4ebI5CZFIbvr1IddNE11v00hV0K2Q9d/UW+fm1MFmXx0sxA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104757; c=relaxed/simple;
	bh=qgCGnNOyOQyHK/OP33T1QoTLfD5WjwR8xFwGP8VhfJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lhdok0cCh3bcrxV60M+mQnOR5k7XI9oePk0btOCFPIASY7KJpYifokz2eKpAQ3SiZZ8v4hgMAailQbbPS+FR28UUSo/ZiRpJE/PLoakQTbbiiqmcmo0H2SJeXSPadx1TDYUSZPYPmTTjJhN8fHY+poSS5OxLmSy1sQ94TDza4Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JmzeRlTG; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5230705e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104753; x=1744709553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M4zINbafqQo5bJd0aZoumqfCG4PCR/EbOPBasJQiOjw=;
        b=JmzeRlTGarDhL61I88FqMF1csQpG3LEbU64PLwIlIvYan8B9Gq+H3ecBk0btdn8/du
         bEeQgrWEijhCZ7PkplxaAoz29DoC+sqfkKmjZd/l55iNRwJe23kfl8R8z7Rn8rL3w/0q
         lld2bPagGwInNQ2ZiOWxRK4qomb0SD/6hUU1k0dBYz3EDR9/uONxHghw6spOKzZrfyAc
         brytW4rxbWnNw9AnuWnhluOivgEds/Vyd0myDLLyDRFPfIMYizo1C2PUT1F9XOI1fz0j
         cIJevRi4CveZ839iccrE4JYhbcxYTkGRErRiXpbG02sDNyEcZPNSN+SsVLgX7ZuhpOHj
         Xozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104753; x=1744709553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4zINbafqQo5bJd0aZoumqfCG4PCR/EbOPBasJQiOjw=;
        b=hlShoQRsbWG8JADDecwlR9tBrDHhkGZeMEcxproypAPzejJBKNupxb0iiMUKDWUtEf
         bHy1UhwceFVGDixNer1nrx7Bp8XAOalEakKm3n9Nr3QC06fwYDYrjGJMM4vfgSK8Tl57
         BqkgmnJI1Ll8lysxWfOfx/CR5uKO8ZUV8+EZ0WJUsm8IjhLgW0osiRz+B+tSOv9FmAGU
         f1jrvOAnHhd/X0hCjHWek9iRd+/VoUJqO9GUkzHnF6D8y6RV23T/PupYSkpGUriR4b7+
         rBEW6j55jbpHIlmU3gjKND4U+5l2SUxvjF5I52OTeYpdISOfpmzxxWW3pzbf9yQcHdo6
         3mGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd8zu2uSgoSNMM2Ci0NMe0kMHc/wESfrmOwPEkS8UqZlgER62V0RXMHyBX/47ILus/80cxx3LepVJR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2looxZFwhioBslcYdTDR/sSSowcBzsFLdCqFmuXFStSaI5aNf
	20A9wWq0LzIP4jHoBC2DhgjN9BxX95e8kzVN/OTH/SMqIYrKp/KCt5ObAl8VPT0=
X-Gm-Gg: ASbGncvBuLEv3oTgvyA8uNj3xsaetNYvjmGD2rZM6WcyqbBAP+yxXo5Dl/iQTeVMJ04
	zBQK2DlIq4rpJv9/5huXvCBB9AgUYSWOrW1Cma07muAuoPQnGlFMpOe2AuAajc118BTO6oEwCsz
	RLTNPAHCeOPLiR2hP8m8c6Viztbi8Q/qdGsV/lBtS0DrosZsrTKBBRvO0FIsi0ezHD9AVl3O310
	AiFcQAvIicQcW1g/1toZEaA3n9LIJwlpNcDNyvN6hPHa5WRQIbYAKjAqTIt1RRruWFtSmypPJvX
	akcwRjT4yy2EEd0ODyM3txOe3ViWHxxNrxeq4K20hQQsykuXmi/TPuEewP0bQMg=
X-Google-Smtp-Source: AGHT+IH7npEgS4OGr7bSg7YGowsNvnEG5t1YRfhG268UF16djuNny1uwLXGn0q7CxrNOcRtLlaaayg==
X-Received: by 2002:a05:600c:1c93:b0:439:88bb:d00b with SMTP id 5b1f17b1804b1-43ecfa02814mr46102395e9.5.1744104753584;
        Tue, 08 Apr 2025 02:32:33 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:00 +0200
Subject: [PATCH v2 03/24] ARM: dts: qcom: msm8916: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-3-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1642;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=qgCGnNOyOQyHK/OP33T1QoTLfD5WjwR8xFwGP8VhfJk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0Yc8dkiC+JKx4D8IVOEOmRCZP6HvNCwnspX
 NJwNjEYmh2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtGAAKCRDBN2bmhouD
 19TJD/9nBKZNLMot8LCHgxr/fjIZAwUrfI+A7cyj/hT9lnNddUHlHuEXHxx8FtbTCmeTdSNFUFW
 pwc2YF/9Nr/CiUdBV7ajVMraw5KoPw5hKtdi6WCdjMcaCTxr12vBrlCDk50p9N18oNhLv0jxNq9
 rOXGAUmfmKsISgOs/uOTuPcOF5TCOh1GjL0pOw/ddj8Vwi2fjoK7ry2k5TV93auk0rJdsNHH16G
 Xel78ZI3glqKNO8+DHuMXAS8Vc8XuzljKNNWEPcfxsCTDdJnk8PN6/yWfSmXA9e83HMIcaQvq6D
 5J3WiaWL5yk4vCrW/MYh13q2gPQYf/1jN9fGD4GIn2HWgES+FuySh0jpAPvqTSAAV6imxyqjxn6
 +PEAcF8kO6bvoV8nCoLsafG3RIBQH6aunpvhPPqeWs8birEF8ubtdtvkXzeqFfkobQ8/PsFaViq
 K7GBHEOP4rbGH3U/6IX9pVdHRrWC6Gak0NDLKbLT6DUOo0jl1GCxqysx1Z6425lE0h8N9hLmHML
 mB5gVryL5U+SK5er3XrKnl1eb1Qk89mVIaeUj5GOzblwoGO03GtBrd2E5RpkyP5ERdmOS/ClocO
 1onnmSehTmxraNSfGRsNgdMQzYY8dJ7F+o6D8MzqLZ/xjPLGr36KKqlKsEKu4M1bysBJJbC5Z+F
 /jDjxPVeqya2Wag==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8f35c9af18782aa1da7089988692e6588c4b7c5d..c89f9e92e832eae8f630555e9e7f5817d6731d4d 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/arm/coresight-cti-dt.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8916.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/interconnect/qcom,msm8916.h>
@@ -1497,8 +1498,8 @@ gcc: clock-controller@1800000 {
 			reg = <0x01800000 0x80000>;
 			clocks = <&xo_board>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
 				 <0>,
 				 <0>,
 				 <0>;
@@ -1590,8 +1591,8 @@ mdss_dsi0: dsi@1a98000 {
 
 				assigned-clocks = <&gcc BYTE0_CLK_SRC>,
 						  <&gcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				clocks = <&gcc GCC_MDSS_MDP_CLK>,
 					 <&gcc GCC_MDSS_AHB_CLK>,

-- 
2.45.2


