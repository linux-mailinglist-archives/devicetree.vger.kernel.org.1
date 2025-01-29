Return-Path: <devicetree+bounces-141625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C7FA21A72
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5ED853A051E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34CCF1AF0B7;
	Wed, 29 Jan 2025 09:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a2seCfpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E1C1AED5C
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 09:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738144490; cv=none; b=W2htZeT1KRAYOBI+ROFwlZ9CHCCVsP1cf0YMISeFRWQtxCgMWbhlbpkt8BXg7Oc7UWacV55QHSI/7rvV6IbWdVR/U9oDP/LLO3CtluCnl/dEkKV+B5mOWSCsJTfdbE16zivldraLbAlL1/8eTYu8R2zTOhzjSlcrQvZA0BA+5EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738144490; c=relaxed/simple;
	bh=Ox8DI1vNynztPQWAchfdWPkJnUKaI+A+oWm1MSYhJwE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YI5AXsIS8HQYR1CTcfrjx7+mfWdnME7Sv9+OO0s+LV1SVD0B1AmtHolS6VjvpIzxIkQJJs/EXJLpjxqTJ4Q2khfWhp/7z/KWH13ZV+EUZZcI2r9EFfBRomaJx/V5khoqoJtIN8xEaEopfKZQknHX6r4hhW/7CCI5nXxGsx3fvtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a2seCfpt; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3863494591bso3618771f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 01:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738144486; x=1738749286; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RV+18RR0KTt3CBdCSKWLJSx34O+SF91aNDW4i8G4/Gg=;
        b=a2seCfptpw5i2t2EOhYvALbAFH7ihembaZR2qo3XQnBGGhJtvbqqDaXPyFmEZYEU12
         yLo4cOsfuqCNF5BdcliO1v6aBbvbUekrbLtmwMxOcNWKGv83ZC/bkP4z3NukpsUWgizb
         l0W6QgyTueOEHz6sVE/K4qccg3vtGIrzeGpBTGUqQuC1UvCcrGpzPTiKU/arDaosIQN2
         aXu5wlnnr748LiE8IJY5LdVOOIxAne19yyuBNvh4Mzh79YGeYjF49q7SxSCliPmQNy6d
         AWO2iJ+9JpDUjuDI8i2M2iMG7VbVzdTBVp4ZSjeqaxXPr5xr5WmIOMXL7LbVOQo7yjM/
         gMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738144486; x=1738749286;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RV+18RR0KTt3CBdCSKWLJSx34O+SF91aNDW4i8G4/Gg=;
        b=c7U9wfut+jKHVCTAXeszCuS9PJSkfLHVCDAaJTAZ1pW3/Ox8hS6RDvOcE1L+3ODTKF
         8CQdaV6kvqr04lcXPUquplcgM2ffhbsLvbPE1VORtJu3bzHz0RPsiSfG1k5B2FJEozlY
         qI/kXQaBCKrgH7bnbkFs4T/isuKyad5gxwF7XsK4zoKXypQkOZi5VKDeHhB4zdoiEt21
         hDkbcjK/EcqHpjvdhB0groNL3tp8z4CMQL6JsRiMk4TIMGjBKFJXyEYCPJg8ylMvdKrw
         HlgUVhgCO1aFuQnOjdwgpOMhJ7IyMZMNaDgB8euKcxhrYwDpkM6P60CyG14257fGW6gv
         nbzA==
X-Forwarded-Encrypted: i=1; AJvYcCXfOSZ+cRUV9xX7TwGqzRCJPV9PaNwABYSZ9qaEHAsFKTabpw52NR76FlpY1BHI95XjhBbOLE49xLBp@vger.kernel.org
X-Gm-Message-State: AOJu0YwVqlZ1Lom6N67QIrgiqCNl/BuT9cFQhGSwvd5JMdvkI8syv1tp
	bVPqNmKD3E/eF5AisBe1aAKQS3DtYx0RwIxZB3tJeeoKu/jM1VUa/nBVuOQvHIzo7RYkwEfWfQQ
	H
X-Gm-Gg: ASbGncv474NWCk+NiT7aUuQ4k+NSt+MJOZ2lT9/UxipwIMxJnzm7I7hYt6j4VSazMHa
	ms9m/EPxAq0UAExD38LMInJfpZAENOrzp1iMOfngssIeUrPEBtfh1g84BLjgyV4AywocnblYMNB
	76O4YXzXeeSsIAWHzq3ms2bOgLy1t1HBNe/reXuxu8K3O3M5tcvXpdMbGEZ8KFwxRDyJFafwPjt
	KYocxBKZClo50wSmxkxXbQQ9OM3SZwYMGGi3F6wqaFj3LgOqS104yNM943rolil8qYxFtRBmg03
	pjyGjc2oEgmL++CblZxqZibIrjHyO/LDYxds
X-Google-Smtp-Source: AGHT+IFE3iOWa3letRM4oLYRossTkUN4qcodFsJWk3LGyKChzeV++Cmqzm82g4wWBaVKxrQ5bck27w==
X-Received: by 2002:a5d:47c2:0:b0:385:ee40:2d88 with SMTP id ffacd0b85a97d-38c5194655fmr1887566f8f.3.1738144486316;
        Wed, 29 Jan 2025 01:54:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1bbc8dsm16656002f8f.72.2025.01.29.01.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 01:54:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Jan 2025 10:54:44 +0100
Subject: [PATCH] arm64: dts: qcom: add all 7 coresight ETE nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-topic-sm8650-upstream-add-all-coresight-cpus-v1-1-96996d37df8e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOP6mWcC/x3NQQqDMBBA0avIrDuQRBNsr1JcpMlUB9SETCwF8
 e4NXb7N/ycIFSaBR3dCoQ8Lp71B3zoIi99nQo7NYJSxSps71pQ5oGyjswqPLLWQ39DHiH5dMaR
 CwvNSMeRD0PeDHp1yr94O0JK50Ju//91zuq4fLzW3034AAAA=
X-Change-ID: 20250129-topic-sm8650-upstream-add-all-coresight-cpus-a3418606b354
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Yuanfang Zhang <quic_yuanfang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4016;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Ox8DI1vNynztPQWAchfdWPkJnUKaI+A+oWm1MSYhJwE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnmfrlZg9ZioNJvPlgFjCjrFf8FfIkII8sExnBmVHw
 1kffo46JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ5n65QAKCRB33NvayMhJ0aImEA
 DK+2kV+F/3Q6Fbrf0Nb17+Zag0CvGlwL/hg3wIti33/k6nLUURLwZHVDYmm6vEpi8i8sx1EhHe3duA
 wdrYCeOhtMwDwm6W8Rcy+eC6gbJX7Tjz886tjIRkXxy1U/PCEFyd3a6C/bdPW/dYjVEY65RjCW3taY
 NTQK7woNxNGIOxrkg4rgTqv1GOulRxHggcKQXT0UYqFYozm1rGrT9nVBAblq/UW12ZrHYfJv+UZW2V
 Aa/sXMgu6X+CaWg60E9owoM+KMrlTSqWz5JqkLUmBTjKYg3LbVbUSAk+rk7iwixGNRW0FbYOnmq0wx
 GVUGcvHMPRR3WegHKQEwGuZTLttcj50ngfB66Zf9NlI9VRe2cB6fXDTNmk1MSE1YgsHfrcRQf82NiT
 R99pQh9147cwlfRIV7YcUWG5me6SmmjvNvKND1z/Y82zpWxEbVeAjKfMBr/zh/Zj934jA7TIX5tYSg
 m8GjGfF+WGOiDt8QbAsi8un8iU1soNTDfS+o8McOiEnqzKCwkSB8sUHvfiIz70vwewLqdGerQDf4ao
 dogwfj6Br5fK0sE8v87fo70mnrEiCXS4Uv+GbgFas8cdmHBRrJHQi5hIWJafybJTAXEwrkhtval3wH
 76g+HqNJN8Uu9BZFWDyCcbFvdmjdGs4IN2beeslObpHPidZXH/7IjWmQ8Spg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Only CPU0 Embedded Trace Extension (ETE) was added, but there's one
for all 7 CPUs, so add the missing ones.

Fixes: 256e6937e48a ("arm64: dts: qcom: sm8650: Add coresight nodes")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 163 ++++++++++++++++++++++++++++++++++-
 1 file changed, 161 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..d925d5e2c8182d522dd5b8e1fa0e253f5de2f7a7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -365,7 +365,7 @@ cluster_sleep_1: cluster-sleep-1 {
 		};
 	};
 
-	ete0 {
+	ete-0 {
 		compatible = "arm,embedded-trace-extension";
 
 		cpu = <&cpu0>;
@@ -379,15 +379,174 @@ ete0_out_funnel_ete: endpoint {
 		};
 	};
 
+	ete-1 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu1>;
+
+		out-ports {
+			port {
+				ete1_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete1>;
+				};
+			};
+		};
+	};
+
+	ete-2 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu2>;
+
+		out-ports {
+			port {
+				ete2_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete2>;
+				};
+			};
+		};
+	};
+
+	ete-3 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu3>;
+
+		out-ports {
+			port {
+				ete3_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete3>;
+				};
+			};
+		};
+	};
+
+	ete-4 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu4>;
+
+		out-ports {
+			port {
+				ete4_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete4>;
+				};
+			};
+		};
+	};
+
+	ete-5 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu5>;
+
+		out-ports {
+			port {
+				ete5_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete5>;
+				};
+			};
+		};
+	};
+
+	ete-6 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu6>;
+
+		out-ports {
+			port {
+				ete6_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete6>;
+				};
+			};
+		};
+	};
+
+	ete-7 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu7>;
+
+		out-ports {
+			port {
+				ete7_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete7>;
+				};
+			};
+		};
+	};
+
 	funnel-ete {
 		compatible = "arm,coresight-static-funnel";
 
 		in-ports {
-			port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
 				funnel_ete_in_ete0: endpoint {
 					remote-endpoint = <&ete0_out_funnel_ete>;
 				};
 			};
+
+			port@1 {
+				reg = <1>;
+
+				funnel_ete_in_ete1: endpoint {
+					remote-endpoint = <&ete1_out_funnel_ete>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				funnel_ete_in_ete2: endpoint {
+					remote-endpoint = <&ete2_out_funnel_ete>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				funnel_ete_in_ete3: endpoint {
+					remote-endpoint = <&ete3_out_funnel_ete>;
+				};
+			};
+
+			port@4 {
+				reg = <4>;
+
+				funnel_ete_in_ete4: endpoint {
+					remote-endpoint = <&ete4_out_funnel_ete>;
+				};
+			};
+
+			port@5 {
+				reg = <5>;
+
+				funnel_ete_in_ete5: endpoint {
+					remote-endpoint = <&ete5_out_funnel_ete>;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+
+				funnel_ete_in_ete6: endpoint {
+					remote-endpoint = <&ete6_out_funnel_ete>;
+				};
+			};
+
+			port@7 {
+				reg = <7>;
+
+				funnel_ete_in_ete7: endpoint {
+					remote-endpoint = <&ete7_out_funnel_ete>;
+				};
+			};
 		};
 
 		out-ports {

---
base-commit: da7e6047a6264af16d2cb82bed9b6caa33eaf56a
change-id: 20250129-topic-sm8650-upstream-add-all-coresight-cpus-a3418606b354

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


