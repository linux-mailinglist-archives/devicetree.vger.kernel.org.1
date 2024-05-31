Return-Path: <devicetree+bounces-71367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF78D678D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 19:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0A2B1C24F76
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 17:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1880E176AAE;
	Fri, 31 May 2024 17:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HGQc1jhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE6172777
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 17:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717174846; cv=none; b=O0O5XvDw7sYuOeCmKnM68DlNN2GmJ4wpGK0CwUgRkkcbE+/ElV39qa/KDdw44JV9ODO1u8vAOSExwdq1V6o5dzGYE28OY9eRhU1obTvd86DQSVk8OmPFb0hR5UUS6aW4QaIu4HQlvcGYVD/y9QD+BSr6aw7yInfV5QaoNKqci9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717174846; c=relaxed/simple;
	bh=1pUM/4LzJCDPYUEd3pPvnIewA7UpkqQbAeUUXYz1Tjc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=teZrRxPqNGF+ZzlB0hAqkDvl74bl6OCYdc7LHHpQwPQ0RGSEK4AR947NoKFzRi0Ein0S9PaBifEKU+F7yJ1tui7OUIlJQmybpBlhuVqEl2vqcFZWjLCVuvEf7tV8qjqY3FBUj+N/b1X/I49zD3nSMczoBIoPS/rZvBU40bvhZ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HGQc1jhI; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a635a74e031so298072966b.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717174843; x=1717779643; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RvWgfQcQbuDCgGWUKetp1c/1qaJujsfwtgdILldRIk=;
        b=HGQc1jhIZa45G1Do3u6Mubox6kNJFbD7R2BLfw0X6jclCSKob40l0+fmaa+sQWqyOD
         X3OyAuM2QnVGzztRrrQtc0PoUhDFVbXKJPxFsl4Vw6jTPbVQM3Cnge6BIR2GXg+efdDQ
         rlF9y924UsoalRO25HEReRuH6JosyWeqC2/Vmn26XQ5eK6Xrq2Divr40ZPl2GZQXMNi+
         LW36KtJR4aDqSCQKW1/Ye7xgEgAwjFKfn3oEDc6wsFKMdG+bTh+8YrdhGKG4DXkoEz0u
         R84VZJF5KFImLHp/BAnREXNail0nKKTxWB1BTrI9npvglALMsA75lSTCeF7NJTNRxb/A
         MGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717174843; x=1717779643;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8RvWgfQcQbuDCgGWUKetp1c/1qaJujsfwtgdILldRIk=;
        b=PzqBuNeIXwLyUtu/YPZbp2bAmYSNwDzJV/Rj1WqEyGKmufZoeyleMMNIr1xySR1Bji
         nLI9viRftSgPb4CQn415cCTbHzeQdmsQFTwiud9C2JPENZxsH6tuA+4AYTXVJ18b3Arq
         sXaSSOC7SW7mbFvAznTT7FK8yiGO9J6T1sXZkQPLJBkQP5P+kPpX1HG7a9msj7u4tULr
         CcrgIWKxfr0RZrOgFV5sQ05hbUBgyAVuxXgB+QMv+LTqSFm4FvGHmHD3vqp4Sv9Q/HKm
         gA5uMb6ha/9xalhbHlNiPQNvQabCrpmAoIqVls/NopmTZThlzv4LPtQVNioVri9O+giV
         1Zbw==
X-Forwarded-Encrypted: i=1; AJvYcCXCEVGSrxAjKxvsB7TAm+Ls4ocuHnP4cdYlnsR6/7HZe4QpF5Bkc9vIvZfAiV+TRrxtSQrZVmcOg8R0Q4OoS3J3ilOR+7TeTjRkhQ==
X-Gm-Message-State: AOJu0Yx74936tBTTjdOgvYH0rNCcXiyEY2dMkTVgiIT8ZrprPnf1Xgex
	ULNFM3Lq0oRXhKEL4WvKIzNTk33jkXGu8j3Da7EgRTXiXWocylmIiSo6FWZMOr8K8ynxeCXTS17
	u
X-Google-Smtp-Source: AGHT+IFcQZGWvx4mTX70DHfOXQ6Y+dwwpe+FVJqr1aoFnH3uCubXyjdfCw4LL1F4v3RTRsM9ShdDCA==
X-Received: by 2002:a17:906:3c06:b0:a5a:1a:b0e6 with SMTP id a640c23a62f3a-a681fc5ce7emr219899766b.9.1717174842576;
        Fri, 31 May 2024 10:00:42 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73f9a22sm105533166b.60.2024.05.31.10.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 10:00:42 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 31 May 2024 20:00:32 +0300
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100: Make the PCIe 6a PHY
 support 4 lanes mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240531-x1e80100-dts-fixes-pcie6a-v1-2-1573ebcae1e8@linaro.org>
References: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
In-Reply-To: <20240531-x1e80100-dts-fixes-pcie6a-v1-0-1573ebcae1e8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2178; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=1pUM/4LzJCDPYUEd3pPvnIewA7UpkqQbAeUUXYz1Tjc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWgI1Bd6Eclj0ezKyGl5ZYD3aiJquCHn6Dl6gM
 uuosgL7RCKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZloCNQAKCRAbX0TJAJUV
 Viq2EADDwrkm5p1u8yij7aGc/LcZuRSWiPorDu7esQ/BXsaJLSmxP1BBF+Nlh9N6I5PSSnitYJA
 dJmdRstqSUF+anohoOndw4wcDoUIU6heLHGuTbmx8FCGU1NtJNoajiThIQcl81jVEf+qfx621Z0
 blDM3qcr1mxaQ5HEmP7cdZmR+dbmBCKITbHe0u5wdIZco1bRXM7PYVz/FMB7Derrx/oBJZt0p0G
 Qv6FNXwDwQC2UYmnm7rJlWar+1ZdxBn8K8giX4+KMybsEzBskNdPI7nKCmkEsds/zdmRJmBrpWo
 OUb44CgiicxAo58xTore8URPrxnWPA8Q0fWLXLUauXusDgigoppaOCvfYWja7ocum6+pQe6ANSu
 SYo8aG8uP8vutoR8WYZotYBL/HOmVTzHUR7/kET1cQcbHlG1WzoZ7Rnc1gXllt5+CQmdU70Mhxw
 IBkG8ZMpQHZYuVblyxqWdoWxTsz+MMBrZTObIlMWbao54It4q6K7cLe2nAg/+bV7pMZk29fanU8
 Zxq9JjKsAPZ7luoGxgKpvepKXuJOPnp1Cp4WC5ar/Cqc1rkbbb0rggqfG1bSBVuDD96nc+v/Klv
 l+yq0HBZEHBMdFqdYZXlBpPqnogQvJByWtP8zQu3I0tgr8UCaY3DbdTaYna7wji97q/VlJR/9uZ
 d4ury2UCo6h8Row==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

So the PCIe 6 can be configured in 4-lane mode or 2-lane mode. For
4-lane mode, it fetches the lanes provided by PCIe 6b. For 2-lane mode,
PCIe 6a uses 2 lanes and then PCIe 6b uses the other 2 lanes. Configure
it in 4-lane mode and then each board can configure it depending on the
design. Both the QCP and CRD boards, currently upstream, use the 6a for
NVMe in 4-lane mode. Also, mark the controller as 4-lane as well.

Fixes: 5eb83fc10289 ("arm64: dts: qcom: x1e80100: Add PCIe nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index fe7ca2a73f9d..17e4c5cda22d 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2838,7 +2838,7 @@ pcie6a: pci@1bf8000 {
 			dma-coherent;
 
 			linux,pci-domain = <7>;
-			num-lanes = <2>;
+			num-lanes = <4>;
 
 			interrupts = <GIC_SPI 773 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 774 IRQ_TYPE_LEVEL_HIGH>,
@@ -2903,19 +2903,21 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 		};
 
 		pcie6a_phy: phy@1bfc000 {
-			compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy";
-			reg = <0 0x01bfc000 0 0x2000>;
+			compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy";
+			reg = <0 0x01bfc000 0 0x2000>,
+			      <0 0x01bfe000 0 0x2000>;
 
 			clocks = <&gcc GCC_PCIE_6A_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_6A_CFG_AHB_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_6A_PHY_RCHNG_CLK>,
-				 <&gcc GCC_PCIE_6A_PIPE_CLK>;
+				 <&gcc GCC_PCIE_6A_PIPEDIV2_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
 				      "rchng",
-				      "pipe";
+				      "pipe",
+				      "pipediv2";
 
 			resets = <&gcc GCC_PCIE_6A_PHY_BCR>,
 				 <&gcc GCC_PCIE_6A_NOCSR_COM_PHY_BCR>;
@@ -2927,6 +2929,8 @@ pcie6a_phy: phy@1bfc000 {
 
 			power-domains = <&gcc GCC_PCIE_6_PHY_GDSC>;
 
+			qcom,4ln-config-sel = <&tcsr 0x1a000 0>;
+
 			#clock-cells = <0>;
 			clock-output-names = "pcie6a_pipe_clk";
 

-- 
2.34.1


