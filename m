Return-Path: <devicetree+bounces-37007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0575E843764
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87E0F1F219F0
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39AA74E3E;
	Wed, 31 Jan 2024 07:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Po1/UOcF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B752F6F
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684973; cv=none; b=qyyCcYbmVSS3aGhA9oIpYzsKfpQ7jOH0Jbx1mnp7l4yeAMPUkgkrXgPNldyaeAh833NcuPttTtPEwRpUm14hcX/TfbyQ0V+uA6ktpLcfsZbzq7Bst9R386H/ko40Bx3U0zB/GB3HU2NTw+p/XLx08otRLKT7DtVUkVZ7amX7iM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684973; c=relaxed/simple;
	bh=VvvbKDQ1v37NesUwZ4Ka5npjjk3GwT+dettCywR4LiA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EYNi3gtEQ/F2s1in3Xs+1FZ1iGL4qSduh8YU/A44a4wL1RGXUIIu0s3XQFvDKTM3l9bY173vuyZWMN1bcOw3cvIQV3RZvQRLUax/6uE9SqFP48Oy/al7wwUxfK37DBKhjfb/WW6Mp7RHkjLPrrPR2P9IQBMPY19fZP/f2pC+LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Po1/UOcF; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6e1196dc31bso2270056a34.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684971; x=1707289771; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lWsO+esC0d2AYKWWl4iIuis67padS7ySZZsjP3PTjQQ=;
        b=Po1/UOcFqUB69jOTINgZXGImyU+565kXS6v55kUBEiCMZZGX8waWz58suugqgS++e9
         EkTARhik5BPDoawbeZdlROt8MVdYQm4V+Xax1a5VM9gFi2ZeMSyo3pXqs1zdBOMrEOrR
         gHGOqeXfIAn/bUrBn4DlIUTOc51rtv29wbGepla2oz+T9ZBJvoFurkSy3MTJ1MzICpUN
         HdE7Sk4GtQs4a6NCAVb32qfDHM7K2+RjSfeMU7OR+REwXvSy3yeHfdwg72rnAIfk2aT0
         cdckJtDmOhbU0W88oNf9ykeUAG/P8mhq+ripKdTf9nn8DyeDUySwapZzN3MmG04wn5Th
         0QYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684971; x=1707289771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWsO+esC0d2AYKWWl4iIuis67padS7ySZZsjP3PTjQQ=;
        b=VKlXoscuVYZct04bIuWmmhPvasVasLQyPZT5gzICZbx93z+g3IIVKc4iNSSEo55Cnw
         D6xBN2hS8Q1cdr9iAi7lBEluVfF4gbv5TDKBIa5UQWIKl320Kc5UNAOj9GTawXZg7fTV
         ZFiAo2xMij2Fj5ykgrLFfTGXoiN9PKXqDeHpq04R5ynwonihkHUBfKFoIo034h4p2hpg
         Bl4s9nyYeCuXuUFpyq5KIAv9/8u1OGhJlgsQnVAi4Oj8v8E4nwxE/KFRd17ujL6fuPSX
         iUq6RUTG9NpXo4UYRvqv1+okcVIvU2dBAT6LxBfuGIgiWfboOkbGkjZ/yImduUdT2fnh
         obKA==
X-Gm-Message-State: AOJu0YyhZ7edAyf3UWbGq0TdH8ibsC2/z2iR/RYevo+EhLXNuTFZ89tw
	UOo/rWSlkePsfVcThaLvENi09I8WA/h4h+OWtxw7/WHvtG4ZqB1n5npu3q9hCQ==
X-Google-Smtp-Source: AGHT+IHteOzFOILISoB8e3ZraEytXha6YtyVTN5AGfm+j1w2zTnAEYNcgu6UVnIMSyvUiyY/g965XQ==
X-Received: by 2002:a05:6808:2f0a:b0:3bd:a866:124a with SMTP id gu10-20020a0568082f0a00b003bda866124amr1473409oib.9.1706684971390;
        Tue, 30 Jan 2024 23:09:31 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:31 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:40 +0530
Subject: [PATCH v3 17/17] arm64: dts: qcom: sm8650: Fix UFS PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-17-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1160;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=VvvbKDQ1v37NesUwZ4Ka5npjjk3GwT+dettCywR4LiA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG/WVdKYwr5kNyolAW+hmSR6O4P1ei0YSKpH
 3slSGtvb7yJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvwAKCRBVnxHm/pHO
 9eXSCACPXL4Nd0gJ9qj4Vafm9PgyB4uU60lf4fyE480qMy0Mx3O5B4+qFlvym/AyZrSYeg9cj2z
 MVCQJigCXOIbQcpQy7FQaBY811D358xrbzjBgU1HdNI81CVsr6flwPbimmvGvTKJ6TvLUFYzDAq
 NS4JEvnZciye6ZeLn8xDWEQByqCgOfP5/Vg+fEotuUi219ldpkHwmIrPz6E7sQX9uzirKoX+ubn
 MFLH5iXTwLXvyE7LEFZ7sczDQdD5OHbK4rLbkxkvOAaat+CnK4TqpveCHpclEbIaWSF6DBG0y5u
 Zg1tguc7IQG5gmBhi3CTiyAHpElFCOmPCMZ/TzdX4P3Ap39C
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

QMP PHY used in SM8650 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 942e602bfc97..464b871ebcb7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2476,10 +2476,12 @@ ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8650-qmp-ufs-phy";
 			reg = <0 0x01d80000 0 0x2000>;
 
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


