Return-Path: <devicetree+bounces-25232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F96812B3F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E83C1F2150B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3E528DAD;
	Thu, 14 Dec 2023 09:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bnvqq210"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FFF7114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:59 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3ba2dd905f9so670559b6e.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545119; x=1703149919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=bnvqq210/sD9uB5iUjNiccXabIWTbWHGSlfSfgtUe2fhIpPOj0QpgAz1kNKzA6Z2Qe
         HrwNAiZYLGmnCb+/wUxEYvakgpjnLVGusDl6UTHH/ioS5ccABMe0gY2r3ZCCdEkTfz98
         ZPr8OP+JfQx/njHzFi2BigjevR/3qv7ct1E0SesSm6wnUYBQ8wH/186zM/qiwIa49pV7
         sj15f1JN2Ppk3vh2ZW2rWZNoyQBsf6J0WutZ5IxJx47+tbeiYV0ALbJI97mDo97+Ap9j
         YlMRumb8n+d9zxCjErTgTPF+rPnIc0NWR/fmrubxyd5VxBHlclJCqIpLWsZ3LpPcKV0W
         H3Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545119; x=1703149919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=qyVcVDJWZJY7mho+yxJGJyXNgVbUMIJjaqAznOMwtE8m9tSg8qdpowlU/QMU0o9Rw3
         kQo9o7DYmGjoVd9LEJUxyNMzM8mogRddLL7ygsuPC0Y31wJnxtVxGK/Nfp+0xO9uPoJI
         XMBJm4BK9Mmuvis4L26CEupHjQeqxPme2Ib5oEmfWslRXsDewtCUA5O/Thy5Lqc/spY5
         W9t9HsLaNQ2Qj15A7CdmymAKFN/IRINBr8TXlArZPjSibAtwXXmnIf1AMGQ+/lbpDrZ/
         D17fFireWwh1iNauhdx4Ne/hRXW4ix/Up7BwXnxqYIBEZXBHcrBVDkq7AsRNlRMDMW6e
         oTIA==
X-Gm-Message-State: AOJu0Yw7OvN9gK0i4ZTueL/YskHW8+OcGyfku2aByan3BSjvJ1kQmDs9
	Sv2GqELtc6Ir0D/xUBK88N4M
X-Google-Smtp-Source: AGHT+IE2ZXrQH/tkC6vPcWBqL20LyUag+GiHHbxwgkxRG6aaqafMpRD6r+uRgW7b4qI1XbBm1Rau0w==
X-Received: by 2002:a05:6808:1b11:b0:3b8:b063:5d67 with SMTP id bx17-20020a0568081b1100b003b8b0635d67mr11293668oib.78.1702545118828;
        Thu, 14 Dec 2023 01:11:58 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 07/16] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:52 +0530
Message-Id: <20231214091101.45713-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QMP PHY used in SDM845 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index cb3bfd262851..a7529af5bc6d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2619,10 +2619,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


