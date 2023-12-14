Return-Path: <devicetree+bounces-25231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C78B7812B3C
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 573582822C3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FCE286B9;
	Thu, 14 Dec 2023 09:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nsoE5Gvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEBDB118
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:53 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77f58040770so405329885a.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545113; x=1703149913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=nsoE5GvvuR4zeneIC7GSzPT0AE4uvcjN4jG7MFp3iU905/kDfZHPPrsgmUXfjw7NEw
         ye7bSdc40al4BmMT3hLPxeLCfw50luTh4oh2DLnSwh9f4QW19lD704cPd/FPT0BTUZ/M
         /JDWMR5NHdfS9lbHEPytFosz3Bm6NDxACuuhOuyx5RdBWSgTTGAFPCngvXEKts0nBQK8
         Lo/XCWwchlQ5XQgJXaiMgcKkyhbMEdafWdb0Y0NJ6nim2FXenci8vYjCwzBlOa2rMGIu
         Us9Zp9VbpznRnkVYE60ukVe4VdW642pXFwzevxIBw7CbArQnqTnTzqbVE7jb0w2lY6g9
         B56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545113; x=1703149913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=TZyFsxBHFq5tNSiVwUp+2TZbTpdo10fIqWPiqCuwoJJ8uVnilnQGdDizPeiO3WSonA
         rSSLlZygjSfZXGALERqdbgJXQctgu6U2vj8+NoHP5dOaATlR8iDOrTVTr7WPmgWMyaZS
         Dmi9KbDcBmyKTa8ppAnhhROozIlrMm62JNlhqTQnUVBwM3NG244Ia3xo1qFqa932G8u9
         lfb2K/knKufI566xKqEJbt0I88YsKB/7z9dZBJfsfdN5wy7JAcNf0uXlVAMabG3N72ZH
         fzaNQ2O/d7w5kBHVlozAy79l4KzVdxRdvK0YqRB8OHMZQQ0H7XQBqItwOx6h09LClpKC
         lD4g==
X-Gm-Message-State: AOJu0Yx085EZRO1RqBHm2pVU2oDOjle4kbNqdJVOeF6lmzeKsKB2trmN
	QcwOtJwag1Nk3Ep2kPkpOUay
X-Google-Smtp-Source: AGHT+IGGOd9jlu9qhHJFGypL3G+lZIGRt/9aClzI8nCmgZYkeu4ehYfW0e9S6L8lARh5IDvJykKmNA==
X-Received: by 2002:a05:620a:21d5:b0:77f:3813:4212 with SMTP id h21-20020a05620a21d500b0077f38134212mr11387231qka.86.1702545112885;
        Thu, 14 Dec 2023 01:11:52 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:52 -0800 (PST)
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
Subject: [PATCH 06/16] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:51 +0530
Message-Id: <20231214091101.45713-7-manivannan.sadhasivam@linaro.org>
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

QMP PHY used in MSM8998 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: cd3dbe2a4e6c ("arm64: dts: qcom: msm8998: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index b6a3e6afaefd..d4c55e2b0043 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1051,12 +1051,12 @@ ufsphy: phy@1da7000 {
 			status = "disabled";
 			ranges;
 
-			clock-names =
-				"ref",
-				"ref_aux";
-			clocks =
-				<&gcc GCC_UFS_CLKREF_CLK>,
-				<&gcc GCC_UFS_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK1>,
+				 <&gcc GCC_UFS_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
-- 
2.25.1


