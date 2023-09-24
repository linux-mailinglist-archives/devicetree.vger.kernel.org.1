Return-Path: <devicetree+bounces-2829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A8D7ACB5B
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 9E2B11F23E4E
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF393D528;
	Sun, 24 Sep 2023 18:31:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765C9D294
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:31:13 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4EA5E3
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:11 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-991c786369cso614268966b.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580270; x=1696185070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4KmxZ3EOswmuItr0GgrL4MDEituN3+JToxw0Tk8GmKY=;
        b=bBZu7ToX77MdksIytdawdL8/oJnrHIKUC1+KfP42yVu6Kaw6p1bUSGp8nYJtf/R2FC
         9X4O7H+2NXBelHfc/eco/ssBt8GidA6EQOsgGwl6VzyiaQ42caEJW2XOzpF90tUD+ZQq
         /zZ+qrlnuIVJi8ajmc5lWsPF5i8OqUUI40buF5V+w/UsctZLok1PBZj0t1ZJW2c2hRip
         RcOJcsRdMEYEl4rZEQVpJ9o66OdYI1FgxXXn5iipzigwUU74aHBD5RhqaGpNtLuR91ed
         /cEliiDlC1+BbsMg2EOQlcEKVKsFDGdTy3sKgCLpoQ7ZRdTsbE/3WN1VJUkN4nCmWpcs
         iOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580270; x=1696185070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4KmxZ3EOswmuItr0GgrL4MDEituN3+JToxw0Tk8GmKY=;
        b=a8T9O0+pyGTOb1QvEi/JWJRTj27B3x2HzZ/sqL7qT0pQewevlX84m9fd4Op4doNWPV
         EQY1CMG5tenlDbrCJ1oBDeM890rke+dk9rxMRLr+oGFR9Mw97aTr6W0uSD0OTkqu+hP4
         hJdIaqFlHT2BUuev3gEALJpBAPSI05SSXsGPa9SO7VGHrv6kkADG5kMtuItUtajmBUQX
         EPVNOUcEKcp2qwgjjHnYBRRIs/aFElavMmBgRKbvaC6M+FvQmFG/MU3JRMB0wCRpfxP7
         Y9kJOF2OGJBFu/KoC6wn6M5hqjcW0Qh2dDFirT7IYq47F83ZAifmY/kLoV87wvz0f59Q
         ckoA==
X-Gm-Message-State: AOJu0YzOAGaE1jeWsNukp4dcqsVTyQVjmZnOiKCvy2jvZ2RxJ+RcmsD7
	lIpeC3dLdPW8RghVspDXsknbvg==
X-Google-Smtp-Source: AGHT+IEAgoxbFKuzYTfgKld6ai7WnVOvaktoTotcyqXNzvh6xXpRaYDu2g4K5ci62/nZZZlyQ6kx+g==
X-Received: by 2002:a17:907:77d2:b0:9a5:852f:10bd with SMTP id kz18-20020a17090777d200b009a5852f10bdmr3456673ejc.62.1695580270262;
        Sun, 24 Sep 2023 11:31:10 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id ty15-20020a170907c70f00b009ae6a6451fdsm4599845ejc.35.2023.09.24.11.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:31:09 -0700 (PDT)
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
Subject: [RESEND PATCH 2/3] ARM: dts: qcom: sdx65: add missing GCC clocks
Date: Sun, 24 Sep 2023 20:31:02 +0200
Message-Id: <20230924183103.49487-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
References: <20230924183103.49487-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The SDX65 GCC clock controller expects two required clocks:
pcie_pipe_clk and usb3_phy_wrapper_gcc_usb30_pipe_clk.  The first one is
provided by existing phy node, but second is not yet implemented.

  qcom-sdx65-mtp.dtb: clock-controller@100000: clocks: [[11, 0], [11, 1], [12]] is too short
  qcom-sdx65-mtp.dtb: clock-controller@100000: clock-names: ['bi_tcxo', 'bi_tcxo_ao', 'sleep_clk'] is too short

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index c9790217320b..4a8cc28fa1db 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -204,8 +204,16 @@ soc: soc {
 		gcc: clock-controller@100000 {
 			compatible = "qcom,gcc-sdx65";
 			reg = <0x00100000 0x001f7400>;
-			clocks = <&rpmhcc RPMH_CXO_CLK>, <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>;
-			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>,
+				 <&pcie_phy>,
+				 <0>;
+			clock-names = "bi_tcxo",
+				      "bi_tcxo_ao",
+				      "sleep_clk",
+				      "pcie_pipe_clk",
+				      "usb3_phy_wrapper_gcc_usb30_pipe_clk";
 			#power-domain-cells = <1>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.34.1


