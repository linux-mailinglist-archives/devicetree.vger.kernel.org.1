Return-Path: <devicetree+bounces-8558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA047C8B84
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B70C1C210BA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E0B1F19A;
	Fri, 13 Oct 2023 16:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mPmROBSl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14378219E5
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:40:35 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5D11D49;
	Fri, 13 Oct 2023 09:40:31 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9bdf5829000so67243666b.0;
        Fri, 13 Oct 2023 09:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697215230; x=1697820030; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbunySK2ORAUFspaIT6piWBLusGPbytUTvQrXLVvdqg=;
        b=mPmROBSlvXpT35Fcc9zEtnWZfD/e+bw0E0QTw1VyaRtVhkbT7m7ZX7os1wCOVEHArY
         A9xnok/XQ026tiykVIjzjQ4zHFnYLfsDKWyHMesqljTdG7AscmMt86EfJycfNjseV/ip
         Xvdc0FpDW+rXshU17ElFo6Z4ofEBBH1CThkRUyVePriPjO2ZwiDUxbPI1jzpDp50y727
         Q/29PwYmkFF1MKNo6MyMhMEeoBnierHTuUgqAOn8VK2ZiKd/FFUdiqjjFq1CgCsWL1ij
         hqV4bfb3wYir9YqJwgw7jExEW2HLWO2RXs9dgVNbgWTlf+KN3I9VxzGvOQmNOpyzXAiR
         +P/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697215230; x=1697820030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qbunySK2ORAUFspaIT6piWBLusGPbytUTvQrXLVvdqg=;
        b=hr4hhOWKFHX237KlA/fVzZYWmSpEUhXO9h2uo+0qi77ADG8FdlMxKPkS1DpOpzFjCp
         Eyq3i/oYmkncMoLcSZSymKGaJCxFPCUOGohrGY9DV0Pm3X0ZbGdMmSFj29Mh83mv9hYI
         7S6fIzzq4q3iYWvlpKTGSjV7wzf9gJ8Aq33jrjfYzCRubtf2PuJixPo2RRlV/jbF9E0c
         IqHVUzq6wFJqhQYVaUN9L1cNZV43bxTJvwdgHJKc2j1VTYBdv1bHgMKAgniGSr8OzD58
         IozRx0FCpZUKHRsMPYck/ovqZ2NbCk4qCSpzPIxsDVrn/dd1bM9GU7160T8OTjyGizuf
         j38A==
X-Gm-Message-State: AOJu0Yxi5+gtAaO7EcqRMC6eFMQW3oRTIq4rT58jZh+R58UUso0KH95k
	V1Fva6W5otthqlCHz5WB9Hw=
X-Google-Smtp-Source: AGHT+IHmj1mtIYgjRhCi/gpFtIh/PLAzhsfuBCj6bliBeaAAdrg4q4rzfoFqrlmUqK9Dw/TRupKN6w==
X-Received: by 2002:a17:907:94cf:b0:9be:705:d7d0 with SMTP id dn15-20020a17090794cf00b009be0705d7d0mr833914ejc.0.1697215230003;
        Fri, 13 Oct 2023 09:40:30 -0700 (PDT)
Received: from fedora.. ([213.149.38.59])
        by smtp.googlemail.com with ESMTPSA id rn4-20020a170906d92400b0099bc038eb2bsm12531902ejb.58.2023.10.13.09.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 09:40:29 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH v3 2/2] arm64: dts: qcom: ipq8074: pass QMP PCI PHY PIPE clocks to GCC
Date: Fri, 13 Oct 2023 18:39:34 +0200
Message-ID: <20231013164025.3541606-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231013164025.3541606-1-robimarko@gmail.com>
References: <20231013164025.3541606-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Pass QMP PCI PHY PIPE clocks to the GCC controller so it does not have to
find them by matching globaly by name.

If not passed directly, driver maintains backwards compatibility by then
falling back to global lookup.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
Changes in v2:
* Make clocks and clock-names one-per-line

 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 38fcb2675b9a..d8e8a5cded64 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -579,8 +579,14 @@ qpic_pins: qpic-state {
 		gcc: gcc@1800000 {
 			compatible = "qcom,gcc-ipq8074";
 			reg = <0x01800000 0x80000>;
-			clocks = <&xo>, <&sleep_clk>;
-			clock-names = "xo", "sleep_clk";
+			clocks = <&xo>,
+				 <&sleep_clk>,
+				 <&pcie_qmp0>,
+				 <&pcie_qmp1>;
+			clock-names = "xo",
+				      "sleep_clk",
+				      "pcie0_pipe",
+				      "pcie1_pipe";
 			#clock-cells = <1>;
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
-- 
2.41.0


