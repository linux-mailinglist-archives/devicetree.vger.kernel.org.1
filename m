Return-Path: <devicetree+bounces-34553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAE183A306
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F2781C23741
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25B9171C8;
	Wed, 24 Jan 2024 07:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jaiLRkh+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F771757D
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081815; cv=none; b=sawdk6CStnZFcE1N6CDR8ZNM05bZ7Aq/cvM0KerlQKB1FmXCpAhQOIE6ONUbbVnDYDRqdyhpUIgjug9LaV8hjbHa4t+pXQSsINHevVjUoJVOpgoeuMkTRGKFlZzw/nIekamBqV9PDK4UdUe4Q4hycqadhREVQwDNOC3FNdn33Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081815; c=relaxed/simple;
	bh=fGj8Hc8YGkorO50XWw23uE3LCV1avN5lQsXZGvyanM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TzOS0Kx6FvTqX6CI130W9vUpjMPUhECo0ZRnmL5D+nRRC3ZrLF82vMURtRm4gi/YRS+/drX/xPJ1CTimiPcX2bY3dV4yN5Z5ZFQVjpXczvgI9olPn00e8VIs6v2Vb6/I+ptBHAIxJYPnOAlg/hpaezL4Mp5uMk1iEJjJYSAw66U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jaiLRkh+; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5cddc5455aeso2836572a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081814; x=1706686614; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NEnCFhhmwsb7wajVYXLbkhkhFCstNg2EJe/RBvp+MYA=;
        b=jaiLRkh+G9oeuYq5xDC194NAeEZ1X0oFtK+FMyKiaOREI2NMW6FGetaHc8w8iorTVv
         f5/YGeXFEk61kAdJf66yaDwWay3All1rKZLRzD+x6JHPkn/HR2NXlC9jWjTDSGxzf/UH
         UXrXDLepj4L+eEVdBJ9BGjcaegHATAhp7j3VIydil3NECe6Th+Sa7+9yZ5Hv8bdSfmBB
         iIid2ug1eTJpjXTmS2mGhS2gJ3E64O3CgR9+83It4KT5zJxztYTMdWSHJusjonf/Qgds
         Ewx/AVZCgIRzpDhy4xu0VKgd4f8w4TH0CubUwivXNTQKpSYrS5QVUIV8ACp+1uMZtVp2
         9Flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081814; x=1706686614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEnCFhhmwsb7wajVYXLbkhkhFCstNg2EJe/RBvp+MYA=;
        b=MGcglgwp1XsfLEnSt93JY9p5oxqg9E7+6KJQ81uNrwJ5w4ELb0Yw7dTlItDyYZofc8
         Ys65DhXP7GdvqAnijBHIMNgzCOBfqKgJwmhFXV2g5IRb/2g+RuILvTwj3MA2a1L19Nsi
         v33Af8Oani+re5Zyja8vMkP+GfSCnHIoTG6WGOL5xdXEPQXfjCL8m6gkjhemIx66DR7N
         u6k6kJYaQIHRZocg80ruptFoGIiKBtCv2jcSjtz7s4uSc1yfH4idysevMdgvFGCmQh/V
         PkaB/TXCPlDlr5PuzlW6WLm+fD1dJenrtF3kEbHj8TAPDUdUSoVhJoe0ckOTVniUDxL7
         LbFw==
X-Gm-Message-State: AOJu0YzY5lh+NFGoRs9Y08nnwOMO07WX2Zy5Y7cGNs1AudyYu/MJSEEm
	X8SoRtpcDEzUDAj8OUTPMjV+UkBodD1Bi94eQpJd7qecq5qPH1dlss6hKBMkGw==
X-Google-Smtp-Source: AGHT+IF5vLJU2eGh5b5arpYHW5lYcd7oWV3PajDcJ2tAy3xBarUKGSR/ATJC0UF0GUZB4gYaeGJ2JA==
X-Received: by 2002:a17:903:120a:b0:1d4:2330:85a3 with SMTP id l10-20020a170903120a00b001d4233085a3mr341846plh.20.1706081813873;
        Tue, 23 Jan 2024 23:36:53 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:36:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:30 +0530
Subject: [PATCH 02/14] arm64: dts: qcom: ipq6018: Drop PCIE_AUX_CLK from
 pcie_phy node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-pcie-aux-clk-fix-v1-2-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=979;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=fGj8Hc8YGkorO50XWw23uE3LCV1avN5lQsXZGvyanM8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4CGTLW5PHE4v+QOjUwEzMEiiZ5MfA5DaNcj
 cyvMk7JDkGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AgAKCRBVnxHm/pHO
 9fWvB/42xwjITFqhAyVbIdl55fGwYHKR5rjdxAep68tNBpd/TDx47zwOB4CQorP44+PsGLFCCuJ
 Kd+miwAqOtGDcUbCdlmEtGByRdfJ4lYIJSThJHw+8cZMHdJfPOTbQgQx72cRm21eTxP62gerfNU
 ghiEAGHcO4Cn7M0s4yznO6JUcBxCJJh2ZvD0Xrq1pMZXtErnpGMvMTxcI2qlSzVHLqCFvfUVViK
 1lMyaKbezsLE8Erot6tjnO8oqu+s8kQL2Fz/eSWOPxygbqdJhwiBM5sfhFSJjeu91I3ZFhfE7Jv
 1SRvB5M7rigAG/cuuo3CWLPvKtwZAMZt/sdlvK8ka2s6b+m6
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 5e1277fea725..1767e5abd76d 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -283,11 +283,9 @@ pcie_phy: phy@84000 {
 			reg = <0x0 0x00084000 0x0 0x1000>;
 			status = "disabled";
 
-			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE0_AHB_CLK>,
 				<&gcc GCC_PCIE0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "pipe";
 
 			clock-output-names = "gcc_pcie0_pipe_clk_src";

-- 
2.25.1


