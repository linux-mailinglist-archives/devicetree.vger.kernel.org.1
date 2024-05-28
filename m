Return-Path: <devicetree+bounces-70100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 809A68D263E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B28361C25DE0
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5324A1802B6;
	Tue, 28 May 2024 20:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I4f+aIH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0F717BB33
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929026; cv=none; b=f0jgIEXfT1HJqlyg0rehtlW1CbpVSZFyQIHuewPKBeENRSLpO6abmCWBKFu6x3mbIMLELgaTxe9SFtndo6ibPx0uOqNI1JiVTF6i6cX3isWbbGT+IwpX12MF6FIAJRrVZse32rO5HnRg+GvLbaWxz6NXFd0HakWixaJA/hvcEbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929026; c=relaxed/simple;
	bh=XAt6DL1VR9hVvuY+93ZuaPQtdbqMKNXUv5SdCXSc/Gk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V88v5FbVaYimknW+/0pjOFtuibWQL32BVrdkAKs1PtSzvD15KQ50moWHXyRd8/qrZxIcBH9tuQDhYtltZTNDchJ7B3HMeKDcrNj2TtgIkBH6XQ8Opnbphlf4fgmxkSwMiyb1e4JRuWQJ56xhX2U92fts9weJyWJ16wmL0t9CMT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I4f+aIH3; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52389c1308dso1601577e87.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929023; x=1717533823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GVQnFMigylZLrd8REetB+leXaGU3JW+I/8fg5hchdrs=;
        b=I4f+aIH3WHcujX6YhNFZbekE4zDsltFYSOJ71pjggPD3NiKIySNY645/0VnNqorwbD
         WCtg1LIK+sogdi824GyTXR98zgIsDPDMdAyngRQeQnIIX0T4TZgrcVZ+Y8HvbsosfYMQ
         i1zj9WLfuDTRFEEcYDQ6wSdCe30EZrA5UqP0BfbZNGs0gkQrklv6nvRkkBtioSsXmJz2
         e4FgCeJQ59O62kavxCl5CrLsOo4laeoO81Y9clEVAdupS34nNWzrEZgFsdwx+XT0+IxG
         9Bm4FzA2x4OXV1j7/v+4rJ2Tjfwb7t5Uf0B31ptwK4bIysuodc0MMr0jPhOZ6ZVatwma
         gX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929023; x=1717533823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GVQnFMigylZLrd8REetB+leXaGU3JW+I/8fg5hchdrs=;
        b=k8+asX4xmABN24bMOgHI5tknTIB5LWIEmR3+4jl8SGKHuKuFE5GrnfDMC+iihbZCKN
         yGh7aAm21D2ftqPe19uNHOSpyXxCDvR9AkStwJ9rhRNtK/1sXvym1DRwWjGPnwBql6ac
         kyNkWHHRzspXFYFMDvrDhBqg76QzSbelX40J3qc1ciTqEJ9mcoLkTXZFzdGZKLEQD4PS
         Jigm7oPuo1sYPy6Kxs0trPGxJJ+F9a3GOIbLB2P2lUBOqPtHVQJVSFm9uVBHShx47snb
         +f0ypDZJbeEL4YDH6dRaGJf2pCruWLCXrZn+FsBAYAuk9DhBRBztykfYU5FZNxKmOrhK
         pH/A==
X-Forwarded-Encrypted: i=1; AJvYcCWVBIWoCkiVJ/bn5tUb4l+87vBxB734ijxDqjBDrPBWQemrL7AJz8K7EpstMAtpHbe6NaSZIyIgD5L2XKdY3wm0XpjdyFxztElBPg==
X-Gm-Message-State: AOJu0Yw0kHDDZo6/zEo3BvnzTXLY+AnzdQnMTNSVcNbxsjSqQQbF/HBQ
	jtroCKPMCSf9xCnO9VuDdCzmAVgsmZhWSka6+e1amkz0UgT0QKrt5VsUOtRe11k=
X-Google-Smtp-Source: AGHT+IHVHeajDHd6qdd5x2UkgTcqFj1SHcaLWQAgJMko+/ZSGPi7u3g15WtZS/u/HbbwXNVpy/GapQ==
X-Received: by 2002:a05:6512:398b:b0:529:a2d8:3009 with SMTP id 2adb3069b0e04-529a2d830e5mr9339701e87.43.1716929022838;
        Tue, 28 May 2024 13:43:42 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm1095493e87.127.2024.05.28.13.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:43:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 23:43:27 +0300
Subject: [PATCH 09/10] arm64: dts: qcom: ipq6018: fix GCC node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-qcom-gdscs-v1-9-03cf1b102a4f@linaro.org>
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
In-Reply-To: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=759;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XAt6DL1VR9hVvuY+93ZuaPQtdbqMKNXUv5SdCXSc/Gk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkH1LSiwgdumsgN7GI245iREE3NREdx2ZgLHa
 1ME4D/iDMeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZB9QAKCRCLPIo+Aiko
 1fXxB/4+uShtyPhphN66oTyjSctjPUva1y9XMTYRROE29RtE94JE73NbUtcMVJJgOE1oDwPnP+D
 4liFSdcWQZMiUHO1d+T3wnem84erFzMt/BqiJHrXXI5w1MT95sXL/bd2uj7ksVWz1VmnHtDaiEb
 lXmwH1z43/so813V2L8Sl02GILAE2Gp0ePwla2E4e5UJPQEIKMXRBLqVbm56cjP5E03TVL1UctL
 zC4H+ig9J29WM29ddZ9n4Zhpdkq3+lA3DtzKrqspPo/M6Tcz3hjHf4m3f4+a37C03J+ig5zZ9Vf
 XvBIAtPFpTH/4m0x03evWqXw5/89NI7cuPP4yXRDC7woES8K
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Device nodes should have generic names. Use 'clock-controller@' as a GCC
node name instead of a non-generic 'gcc@'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 17ab6c475958..a84cf62d843c 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -396,7 +396,7 @@ qpic_pins: qpic-state {
 			};
 		};
 
-		gcc: gcc@1800000 {
+		gcc: clock-controller@1800000 {
 			compatible = "qcom,gcc-ipq6018";
 			reg = <0x0 0x01800000 0x0 0x80000>;
 			clocks = <&xo>, <&sleep_clk>;

-- 
2.39.2


