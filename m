Return-Path: <devicetree+bounces-32311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A878582EEE7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 13:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3F9FB230D8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C3C1B97C;
	Tue, 16 Jan 2024 12:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CBFBrxHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA491BC23
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 12:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2cd880ceaf2so57056621fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 04:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705407954; x=1706012754; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vtHNMB9CrJB9bLsohLq1/gI1OiUCcjB2QrnHc5Lenps=;
        b=CBFBrxHXUihNCqKvzDvnTuttg91hMExCzcJPhvuDnSheRCdDkzjkJJ4UFl3mTwhnQw
         SG7omy/ZfhgnluFzKd9MS8f3m6ULRakCeI2nbhmmEl/lo4upvM1sEWg3622MlmYHLkeB
         m7jQu+Du+Mum//VcrSRnSSNuSLPhlP9vFR3oDvFbhxcXoIFNEjDjZYZgWQitH2gMx5yU
         hksO3FU8P46NAbKeMBH6Eq7GJeF9XzbHteGAxiZty5K4tbdNrLftoG6f4j+q4S09ozzt
         XA4DJIzCpg5ATqvXI9oHSqThoIEBRq/rREivRPJB2FyH8sSJy/CPSDd5mBJwjTQalhkA
         cnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705407954; x=1706012754;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vtHNMB9CrJB9bLsohLq1/gI1OiUCcjB2QrnHc5Lenps=;
        b=aJe0HItt1I5URRlUfhsUwtC7T6zcXzPdfZk3enyhU2eZGYcqRGJnNSQ+UDqG8LBo29
         QoUP8oQvh48qgKT9MouTQXWgT+uZ9v1JaTOs7pfeH2MNLurtWMVdoRNsaNI3Z1G6Gb+r
         0f4NEuGv5kir2M6SQmFDQENTD6j0CmhXoad8iuxl87Sw5FCKzS06xnIDCOy//4cxKtq+
         NdmqgT1IIfUzTA8MzGQgQQ1pU8nKqwZXEsYunnNwMI/6UMH68QYZoXY+vDHjnNgInEwQ
         x3MmfRGzLVq3e0W8xtm3zR7U6MOn3crk1u0UZzXFrZg4zKJusxtWy9M1wPIrKFlrlqwi
         OMBg==
X-Gm-Message-State: AOJu0YwdtpySwFJe3Jy7nfj5XmlRivSd67tEHH9Yaj0ZiLL9LcgQjReh
	2iGU7uuvvlWW3mhTLq/n2aOkJEWc8XuOzQ==
X-Google-Smtp-Source: AGHT+IE3zSGZxWGKAuv++pQL3YMFa8015zzLrTo3vqBrdw/G5bhv8yVBJQsG9bZ472i0nGrKFDJ6ag==
X-Received: by 2002:a05:651c:93:b0:2cc:def9:793c with SMTP id 19-20020a05651c009300b002ccdef9793cmr3094622ljq.31.1705407954000;
        Tue, 16 Jan 2024 04:25:54 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r14-20020a2e994e000000b002ccb512da04sm1653936ljj.34.2024.01.16.04.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 04:25:53 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 16 Jan 2024 13:25:44 +0100
Subject: [PATCH] arm64: dts: qcom: sm8450: Add missing interconnects to
 serial
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-topic-8450serial-v1-1-b685e6a5ad78@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMh1pmUC/x3MQQqAIBBA0avIrBMc0YiuEi3MxhoIC40IpLtnL
 f/i/QKZElOGXhRIdHHmPdbARoBfXVxI8lwbtNJGIbby3A/2sjNWfdJt0igd/GRJI05Q2ZEo8P0
 vh/F5XlIJlItiAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

The serial ports did not have their interconnect paths specified when
they were first introduced. Fix that.

Fixes: 5188049c9b36 ("arm64: dts: qcom: Add base SM8450 DTSI")
Fixes: f5837418479a ("arm64: dts: qcom: sm8450: add uart20 node")
Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Suggested-by: Georgi Djakov <djakov@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 01e4dfc4babd..06f183ef8c78 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1028,6 +1028,12 @@ uart20: serial@894000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart20_default>;
 				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core",
+						     "qup-config";
 				status = "disabled";
 			};
 
@@ -1420,6 +1426,12 @@ uart7: serial@99c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&qup_uart7_tx>, <&qup_uart7_rx>;
 				interrupts = <GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core",
+						     "qup-config";
 				status = "disabled";
 			};
 		};

---
base-commit: 8d04a7e2ee3fd6aabb8096b00c64db0d735bc874
change-id: 20240116-topic-8450serial-402fcb5e211b

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


