Return-Path: <devicetree+bounces-25240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3C1812B60
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC8AFB21217
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992DE2E3E0;
	Thu, 14 Dec 2023 09:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSmmSVQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD75128
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:46 -0800 (PST)
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-77f37772ab6so490944685a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545166; x=1703149966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=GSmmSVQ6n4phhTJUIx0pcX5tKIAnI1/2BGlcPTO4DAUywUsd5Gszhj4xF6XwIUH1Fj
         QAZJ9OXqBDY1EcdSu2PcuVdK1z3PhbZA4srn3+B7mloOUzxZbzofAVv9Kwq36Be7Y5Vg
         gQYeTSGK3Rm3efPLqgLwivOSSHKZFMu+9Hm9RK9GAPfqwPvbm9zjJPjXzVciI3PXZ/c4
         xTgA/e5Ea1HyrODKO5gm2tm9m1r7mQcBN3/wJmkhr3fmLogrUX4bPlWMVRym2Dx1tqZI
         IIcyLN7nDuu+T664TJj4igJBZIbzaUOKyG/o/ij5OBKnjaEfsdPfSIhMGgAG55oO7Aka
         Ckhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545166; x=1703149966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=fDgY/c534poDwWXwzlX7jSLBTC3taUoNw3H+EIWyufJPI5Not04JwTxiiyRmQs0hfJ
         j38PSj+mgqmyCtuFhJ5eFDrHb2uxMmi1qtI6EzDL8if+BojIh4yHgsMqENVKKpyGdpQy
         SMn8Cczvv74DqQAcwzckSEIN+ZXYFCMqzjE4DlFDLst+urgl87vrGNyfVzGdPmE+tb0r
         3dJLjovZFNzpsvP2gCXjcswNBcGkGQqJf0ld/96hZ+keXZqshz5xMVB5rL8SaQ8iJ2qs
         fmkXlh5MZSYcM6Q+pTxV5c2Gj8BFELxtJAFqwkW/7OpN+QOVecqk/oyPyaKQ87gjqALO
         pfCQ==
X-Gm-Message-State: AOJu0Ywxu4VS6MAJ0mOu23OUSclURzX24gLNAm6yRAPBpkL5uWPO7ggC
	b+b4W3uVFX+knBkgOykeCs+k
X-Google-Smtp-Source: AGHT+IHhZr6wQfQIpC5Du8Ua96GS+QkCSnpo7BicRmN+1IcfH8Ki2ucla4gKq+YP7Ucu3fIwuMU7Pw==
X-Received: by 2002:ae9:e00d:0:b0:77d:7446:d4df with SMTP id m13-20020ae9e00d000000b0077d7446d4dfmr11263131qkk.76.1702545166023;
        Thu, 14 Dec 2023 01:12:46 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:45 -0800 (PST)
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
Subject: [PATCH 15/16] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:41:00 +0530
Message-Id: <20231214091101.45713-16-manivannan.sadhasivam@linaro.org>
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

QMP PHY used in SM8350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index f4b8439200f5..38a09d71b3e9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1727,10 +1727,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


