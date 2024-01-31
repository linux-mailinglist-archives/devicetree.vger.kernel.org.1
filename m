Return-Path: <devicetree+bounces-37006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE22843761
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CBFA1F2505E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2B9745C4;
	Wed, 31 Jan 2024 07:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="htrXQSCX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F0876023
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684969; cv=none; b=nWVfUIkm2MRGhaW+nEmYJ7NWa4ApS4rhFiqNZ+XTQSNmNRzhLYAa2LXJ2AY5pa2mGcJo+OpCQncykFX/YEdXZYczSSD5CUeR6gZb1nicfZ2heSCVAr91x6+xTLSD1rLmmG3FF4i3l753Xs29lruqPDkOgiUSPJrHy/SCVCJjCVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684969; c=relaxed/simple;
	bh=2pFeMFE9K1lnH+vs0mTsUIbBpmIvmtvsqfj+wGRcs4c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tuJCxE+WEY5QDV9P6rfF7U1XxA+xqIPecwuBC3vMRfJh/uIt/JvCCNykkNU3yPQhs+9bOfa6ZHQJKbtNTFhSEbMW3G2tlKZceNdksz4bKJ8LMd9uf7LbNKLgi91uzOCDRNxwfo6/CcsxXmKjXMn9dHR59/7S1pTC79ie14JBztU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=htrXQSCX; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3be6ff4f660so1444111b6e.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684966; x=1707289766; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VsKsHLnZZRVFbdLOT/GXrxZpNNOvT2cxF7mVntjOUtA=;
        b=htrXQSCX5xozg0Z6PwcSZxhYjkHo7PPevIFXiSbm6iS5mbW6hDUKOItg8eRE+3cK4x
         PrtXI98kjyYrsqz9+rJaQvpgbQd+4KIjSifuMlNmMIq+0pVoR2T+MBtPta1FiNkdvBKA
         5v9ZTd8hoG3EbyvHG0DM4d0xf5BZ3yPYwdxYTkm1HLWUzi3tTjFgjlu8yYyV85FeEd7j
         BdiFgelpDeu38MyqM7xV2xESS+radZd/qq++3WcNRkccIGmyvEXM8CNOzr+tlOHN3NpN
         28/lGLb3Z8rQYyV6mGz+mXf9lanIDJ3oMGhNl0lTRNJq73bP/ymiaJO6S6uUMqiqbyGr
         QxvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684966; x=1707289766;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VsKsHLnZZRVFbdLOT/GXrxZpNNOvT2cxF7mVntjOUtA=;
        b=XmxFnxjjPCk61LSkfHzo6d5eCAT/W5HqGfWPALIC3zxdOh+fZfjhJ+ZSS8sluIl4vc
         jbwnIRVm/oh0zwTDwSEEhft9JIhOz1dM75eQE87JwZY1FexBZIhfY8kFN7zKSoLCK0T6
         jR7nIEABkdNToTpmBKdWR4JS5SooLbuFED+byDwjq8zfPeF6l0ba5SnomNYAiM3UWQPx
         zw9uOweDJrMYChR0m1mvOSPiT1vNgdFxIk0ousM0yfYeJdty+qZ2JJriaR0x+0Ste9SG
         X9dfDe9tuJhWMWBVupg6aEvwmwYYt/fsRFfGb4E59v0FpVSQKVaJghJhCbUTaXf8iSPM
         88Kw==
X-Gm-Message-State: AOJu0YzN5kMlsTGvC5dt9BoCz71b3sewVu1nvODlyMD2JIB4L1+jzYkF
	1ZEt8Yk9iF/QtFS1C5/z0EFHNdec7zQPpBwSMxyocKhyZYz5HOyMzPsOYFLxaw==
X-Google-Smtp-Source: AGHT+IHM5zi4vLAiNj22W4jpSpd3N2fH0/FFQdfPtbAfaFZN9NSSK0LLs03P3esKJl6fT9DRlfeCUg==
X-Received: by 2002:a05:6808:13c9:b0:3be:bc8f:d0e8 with SMTP id d9-20020a05680813c900b003bebc8fd0e8mr1143400oiw.49.1706684966747;
        Tue, 30 Jan 2024 23:09:26 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:26 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:39 +0530
Subject: [PATCH v3 16/17] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-16-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=2pFeMFE9K1lnH+vs0mTsUIbBpmIvmtvsqfj+wGRcs4c=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG/LkeEDpyAXXI9tmW2PAOllJpYAlYBTh3G7
 ajZnNtM6JSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvwAKCRBVnxHm/pHO
 9e4YB/9RYVsBBrUDxm5/cgJp5gO+DfrL7ei5FAUTqVTqBVGUYfDq1X//2pHq6gKjp7rISeHeNrA
 WwkQekYMBf5igsNx9LsTKI34z3QHr85+MA77fhfGFDPKyb7yE34k/dX3XSTshdteuEa4URZLxaI
 kGneL/rMdtLKFxRBfo9nijp2dF9IoHfXHCIgpl4/cLG6srNQ3fjHYUWR5yE1zVWgEL1Ea4Py1Vw
 RMe1Bt7HfrU/RzY2fbMONwbcR7hNQe70NDSaoiQdS83thRxZFgp4041RPefcSMCUOAJvon+FM5P
 FG7PD5VOkCqGFxzIftQHKdIloMQnpO55ePBxjveNndr9g023
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SM8550 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 35cf1aaab169 ("arm64: dts: qcom: sm8550: Add UFS host controller and phy nodes")
Reviewed-by: Can Guo <quic_cang@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index c89d8f3dad21..736e40564a5f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1933,9 +1933,12 @@ crypto: crypto@1dfa000 {
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8550-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
 

-- 
2.25.1


