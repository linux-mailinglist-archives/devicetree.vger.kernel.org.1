Return-Path: <devicetree+bounces-36997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A58843737
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 274E51C22C67
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FE154F8B;
	Wed, 31 Jan 2024 07:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oUcZaHRv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E2D5BAFF
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684926; cv=none; b=KD0yE+M+FhT3pAQnORdFJ0kGrpJ9ge+1cUpBTCwrDVNY5nIiXdXhEMb1z9UIhFA6XdIMJobv35cb9CAM9hxYWAP9G8MIczNxbyMEgHMIznkK0IUyuK5ThP0/9QjOFkOUku2hk0K1wwn62OMpNDMRkpIDUGyUkzu14eiM6QbpT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684926; c=relaxed/simple;
	bh=tmSSLxlW22wzGNtyc8Ug8x3jS/9hAQL5kq/X5wSJIeQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Htpvf8YP4Mx+ua0NKD1B1m3UafQLLGsDd5zjpYtpS++LCA019DXaMzrxzHlJpFocbIHPsGEArtsMTUYMiGb4XBzRRYZeEm6Oqo5UZyzDIvDeuS9Rhw1y8VMvKRCP1hZnkPGZyICwSOdd0sSQufHQIlMP8ZvMxAnKJmDMjsCzU54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oUcZaHRv; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3be48947186so1635862b6e.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684923; x=1707289723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njP+OEDQkKn1TrRnppMAcE9vyBEaso10MbSWJKOkprY=;
        b=oUcZaHRvPp2EjTwhlG779UUCAbE+QbVtmtCFESNR6FKhQc9QH9JzNQkzoAURVeVQBA
         AyILQJYMYtqQVYzMufPn7t9oUA86sC/HSoFcDXrd7j7HKFAlVe7oegQBqlb3nM/dLaK0
         Xa8pYANkRnyWIaJdERPBsnukGPCVnblbBETxDZ9Xvj1wi16ZhUbyXB1E7RhNf+7eS3Lf
         HkUF7wYtgwyBB8ZkpT7GIv8DXqP3IInQQxiT8mGIT6Dj4ICPsjswM4xqsr62lETvecD6
         28Vrx5rF6Qb8UBelCkzpBRpAUXFCqQynEA98TtJwZB6gZUPU4+PBXCWVkrtPWTWmr2sp
         CpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684923; x=1707289723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=njP+OEDQkKn1TrRnppMAcE9vyBEaso10MbSWJKOkprY=;
        b=L5FpiEnR3Q0C8TynT4seFfFghoh+MZ6U27wDpXARowKadeJOjtOTYgvCutbMeWNzpK
         dzVkRugizgGrPW+Ptpcw/J5KO0pclO7Fl0TwYFIYBq6P7+JsjBcr1uGzUZU0gZOxlNqb
         Wjsr9QTcV09ZH48OneIq92NvMJYbJNSNXd6JbyWfMnOKX3xY9xhr+zCbJZetAm26XQdx
         zEule7FWc3uIULmDR1MRIiQDmPjRWIjqXmd+DI87cmHHsJ91kLunpXaGA3021u41/Jk3
         5mMe6jvLmWfdL8txLw6cGhu7GwFndKZemhX2kLjgNsarGR/fy1gEWz+cQQHYq526Ja9j
         xT/g==
X-Gm-Message-State: AOJu0YzET1JqY+1u2ZTrTXxEy8dxmf7+yemtoXj9ycxI8nl0oo6iBZ0o
	Pj8KXqutuoV7cRgZroVScw6uCCdnrCgVVr0iYsyLOJmJbCdepRCQmE2LKMy+bQ==
X-Google-Smtp-Source: AGHT+IE/klBzjJJNFOmlyV9NZ7vnLMoex1b5CiTVWu6KTQm+yc59VzxgLRefszH2ayFJtPDmDq1Dbw==
X-Received: by 2002:a05:6808:11c7:b0:3be:3326:bcd2 with SMTP id p7-20020a05680811c700b003be3326bcd2mr894825oiv.15.1706684922921;
        Tue, 30 Jan 2024 23:08:42 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:42 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:30 +0530
Subject: [PATCH v3 07/17] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-7-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1300;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=tmSSLxlW22wzGNtyc8Ug8x3jS/9hAQL5kq/X5wSJIeQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG84WRIqpIT0t2XtB8cfw7v3F+Y9xNoMVn6L
 aZqb4BH0Y+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvAAKCRBVnxHm/pHO
 9dITCACPOuFykTh4yxQHhUpB8zFEvijkc/6n55tor3A3atlv4OC8Aaig39ca55pPDZTpRsdzOvS
 u3o2XfA3i5UIY2Pf5+YEA+54KOq1kcAKApv3LLJgcvPIAb15f7kYTqRYfPIAY+u6DZicjlHvl64
 gDRON7nYBt+Luy5kZ+khEsMAi+aGgFWvPKjNzNOX1MCVHIj5IaLk8v3Flk0nmLAnSKCS+8OgG3F
 e+GSDlqX8F30iNDC8+XMZ8yJ1Rq0moaPTOl97Rd8pGaQvcKd4biXwAr0G/fHSXm6BzLnsk+W8iQ
 ZdlgtoFdkCQNmiCl6fW28VzXA/6HCDCJ4pxPdQVaRIcTYmfP
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SDM845 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index c20592fa7dc8..d655bf5bdb96 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2639,10 +2639,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
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


