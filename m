Return-Path: <devicetree+bounces-29907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E022A8257DB
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 17:16:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2957B2838FE
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 16:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC6A31A89;
	Fri,  5 Jan 2024 16:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="U0SY9mNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D912E85D
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 16:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a26f73732c5so186507966b.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 08:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704471348; x=1705076148; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2EkrLPpfX68IA8d/5CPpZuMAmVCLu73Yzxl8t1E6w2M=;
        b=U0SY9mNRzOHLg2oAJuki4XzHlnHxFPPVkogg4Bsg9gAjcixsZ7XWE9nydc3ZOuiHsT
         Wl9VlAwNnK/OWl7qMZjd+yvuhS2ocl+0uMDZNcEUzlpXGhJqIXLqeyKlO2HHJFxH3Jvz
         77AacKA9ADY95/ZLd/pWxo6ykcbUfYNIcs4aoRfNLXlQ6RLfYH0K6QSMP7GHRGac2F3R
         zfL5LlJoZvzwwzSTDfsW9ZH5UPidQ1miL0/CKzbsLHItD4HBf6+ztuMFZBGpd2HaNXbG
         ZFGykocPpCUUM4yo+esWqko0/GuA+BGj3SJpgSEbFWRtAXryW6aVv2bC3g/bQRDhfCcp
         rnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704471348; x=1705076148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2EkrLPpfX68IA8d/5CPpZuMAmVCLu73Yzxl8t1E6w2M=;
        b=OZ0UmDIhOAcoz6usZIxqnL3M2k0GRzzC98kvNbZdi3H17zdhYYOdxZaPx/ddG/Tcvc
         tb/A90nZyb4Fx6VXOTaeQrpjdL/5sBiAWvfdrTk5MI44eaYzk634Z2CycqbQMjmcaf4v
         y5fnAhYY60bnfSu+Dfg8oz9b3PNfCDgdM9tQgAf52ihTHJZLhA4wmIaX2ZbcVJdlZ6Hv
         ANTiHwzt1N8dWeoTT/CL4mxVkXF88eRaZcprAu1lHEz/j9ntqmMQuNlSGDFr+N5OBLcB
         PRJWlqZjqTPqHsD6n72aeebqjmQkQMATEb99LhKwtLC49OtMZ8SUX5GT89FtM7mAazfj
         o2LQ==
X-Gm-Message-State: AOJu0Ywx9ywcsUrT6nu2iKYoHfZJemPLdztUSt03bTbZBNeH5T5x3u3v
	ETaS3TN7Qf75L9r0saSSe/QMs02Lmcd/ZA==
X-Google-Smtp-Source: AGHT+IF0F4kBNIMfJY2WeUh31uZD8/I9CGX4aE/9HYT9YMdxaniTBXNbap7APj6H4vgi4j2E/4Gi1w==
X-Received: by 2002:a17:906:261a:b0:a26:d20e:35a7 with SMTP id h26-20020a170906261a00b00a26d20e35a7mr1259647ejc.127.1704471348452;
        Fri, 05 Jan 2024 08:15:48 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ft33-20020a170907802100b00a26a5632d8fsm1031726ejc.13.2024.01.05.08.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 08:15:47 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jan 2024 17:15:44 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: sm6350: Add Crypto Engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240105-sm6350-qce-v1-2-416e5c7319ac@fairphone.com>
References: <20240105-sm6350-qce-v1-0-416e5c7319ac@fairphone.com>
In-Reply-To: <20240105-sm6350-qce-v1-0-416e5c7319ac@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Add crypto engine (CE) and CE BAM related nodes and definitions for this
SoC.

For reference:

  [    2.297419] qcrypto 1dfa000.crypto: Crypto device found, version 5.5.1

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8fd6f4d03490..516aadbb16bb 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1212,6 +1212,37 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			num-channels = <16>;
+			qcom,num-ees = <4>;
+			iommus = <&apps_smmu 0x432 0x0000>,
+				 <&apps_smmu 0x438 0x0001>,
+				 <&apps_smmu 0x43f 0x0000>,
+				 <&apps_smmu 0x426 0x0011>,
+				 <&apps_smmu 0x436 0x0011>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm6350-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x432 0x0000>,
+				 <&apps_smmu 0x438 0x0001>,
+				 <&apps_smmu 0x43f 0x0000>,
+				 <&apps_smmu 0x426 0x0011>,
+				 <&apps_smmu 0x436 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_EBI_CH0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "memory";
+		};
+
 		ipa: ipa@1e40000 {
 			compatible = "qcom,sm6350-ipa";
 

-- 
2.43.0


