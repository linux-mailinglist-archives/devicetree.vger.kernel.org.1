Return-Path: <devicetree+bounces-2828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE6E7ACB5A
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4C61C281688
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D849FD29D;
	Sun, 24 Sep 2023 18:31:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FAD288
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:31:12 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CE7FB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:09 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9b0168a9e05so381627466b.3
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580268; x=1696185068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B3uSP3o9ardRpaQhkEgd5zKh22mwy8MCGageBq+4jv0=;
        b=xl99iM4XN/rKttbXBDK7NKPRl7tqueh7EpwMXyuNt8rSD2T9rsoKb9USBvyxXEOgPp
         /VInR4z45NuoOSZE7hAMj8qWUv4JXfsqmhb2AnMWn/vlyPQOlCsZZcq6WtuKqtaA8EE3
         9jrGRH9HLvYr3P2uN8YajnpJ2pzj6yC2D0Yb8GuXWrBVT/RKFjots7wRYcu9i4bi8fvt
         Wy/egsUUHaKWlK8IPW9o9JzMIArgg+mw77VMPLVO9xmmMnzZLAlSbI9UkIe9H42/FNGh
         kGBcRnk1VMwP5lQuj1QAovpXTwva9rAkbZr49hTeqcF+0rGvyBU6cRNUt4rZqycraMCG
         DfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580268; x=1696185068;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B3uSP3o9ardRpaQhkEgd5zKh22mwy8MCGageBq+4jv0=;
        b=m3BHbbvxevAUFVNUqIu9t08Vkr5WKEmYvi45QWYChmMS8MWDI7kvJ1yJ+Jr5vrxpaU
         QSVTGmVbrGH0w6DG9J01rlF/5dbekZWbiLLhOBcvP10UwQhbM2g/JJ5uxPcPTZpktAQo
         2TId35GaPuacNgXIHP3eHWZhVRvujtyVyWwuk28XgOB/Lq0d8AaeRlJz9mSLdac1WLyE
         c7jgdqp4RuMg5UHIsUxjW1e1dDt5MixwNlMh8D/PIcecMhgaGZwN1uwoyEIVCMdB68yJ
         2W8g+b8NME4e5QiFnwP5bC5BfVJNWLdbYxMuv1kjuZuwHUnvpka+BpPgEMhUXVcNVGC+
         wuEw==
X-Gm-Message-State: AOJu0YzrgDmxgu650YPjDHoE13HBRUULM3dt2gtfAHEQ37CKG2OxXPzI
	gA5YcUaM8TyfNGDtZBQ3jeFfiusbjG8MeNarQ3I=
X-Google-Smtp-Source: AGHT+IF28QSFVA9qjbvA3dya1Mq4QRPwYd9syrOpP+7JW6Xc61j2s4MuLrohjsyKHTizn7yuPtFUnA==
X-Received: by 2002:a17:906:fe0e:b0:9ae:63bd:e4bb with SMTP id wy14-20020a170906fe0e00b009ae63bde4bbmr5028616ejb.41.1695580268355;
        Sun, 24 Sep 2023 11:31:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id ty15-20020a170907c70f00b009ae6a6451fdsm4599845ejc.35.2023.09.24.11.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:31:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rohit Agarwal <quic_rohiagar@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 1/3] ARM: dts: qcom: sdx65: correct PCIe EP phy-names
Date: Sun, 24 Sep 2023 20:31:01 +0200
Message-Id: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Qualcomm PCIe endpoint bindings expect phy-names to be "pciephy":

  arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dtb: pcie-ep@1c00000: phy-names:0: 'pciephy' was expected

Fixes: 9c0bb38414a4 ("ARM: dts: qcom: sdx65: Add support for PCIe EP")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index dd711484dfc9..c9790217320b 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -337,7 +337,7 @@ pcie_ep: pcie-ep@1c00000 {
 			power-domains = <&gcc PCIE_GDSC>;
 
 			phys = <&pcie_phy>;
-			phy-names = "pcie-phy";
+			phy-names = "pciephy";
 
 			max-link-speed = <3>;
 			num-lanes = <2>;
-- 
2.34.1


