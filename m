Return-Path: <devicetree+bounces-25235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3FB812B4A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4518B1C2137A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C832C1B4;
	Thu, 14 Dec 2023 09:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EZtDLq/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90443127
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:17 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-77f35009e78so461366785a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545136; x=1703149936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=EZtDLq/HI79bcsz2P1q56tHB+9aIk3GB44kaMqKEyr/ZNhFBygCWZxafZhG0LD/EdK
         wLEv8+WgXswNUAMOn5cAnEGAnqdYhT5BHf7h0OOOl+OlTxfVLvn2D4Sddmqv7xh1xykc
         aGVXEdUraCWWV8GRM6il1JMCwxt+Yxj/cSH+Uo6gI3Iq+1NvPLlG6dXhk49PGJYAY57X
         OgVW+tIeII6DLbdteNNObDmfy/3q+Juu4WP7T2GsQ5esVtqpshCyDUKma9iqJV+Aj8eX
         d7HyiJIzL6/KqnOOf84vYwjXGvQbEPKatamIsXngigWczEehHQOxFFfnpzAbqNBsQAml
         fftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545136; x=1703149936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=fwn0dhH4es/6drUx9JnQD2mYoIGim8meMX7aL82tHXYZoi8X/T6/doJbRWil2HHFJi
         qU3urPA2EfVUM/gWoinSuX/1yBkEDNNuSRi2arYZRpr5RZM14J+/Jx0uSiNMDNBXJAwc
         mMvTTtK2FePPrZl7nAz3VM/ioZ73Qlr1dLadgzjhZ6Sy9DhQh+B5rFZ9cWO+0dMCETNN
         nUBF7nAS5hI8wQDCFXlb7nYDzteW8y2pg/oN+YSmx5Htd7bgqqmZbJdoNjCv9ZuvDB5C
         JdkSsxyGUTKJLS+lnAfJ1cGFSmg7GxUyi3bg9ke1AKQ0DEqPTBZpFtVmTOVkCcQ4XikP
         zJWw==
X-Gm-Message-State: AOJu0Yx+E3wjUFoCKAQPVOK1TIVyVSB5qqlHi3aV+dvZ1j/Ilq61rrlY
	t8bJB176D8Y9rOKzqTKzzYX5
X-Google-Smtp-Source: AGHT+IFeqUZblWasaHyv4TNb43kurEEqUO9LouxNXSij17ija+k+4i+/EtljJ8EFj0dMBIAuZum45g==
X-Received: by 2002:a05:620a:6109:b0:77f:983d:9606 with SMTP id oq9-20020a05620a610900b0077f983d9606mr1935569qkn.98.1702545136695;
        Thu, 14 Dec 2023 01:12:16 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:16 -0800 (PST)
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
Subject: [PATCH 10/16] arm64: dts: qcom: sm6350: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:55 +0530
Message-Id: <20231214091101.45713-11-manivannan.sadhasivam@linaro.org>
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

QMP PHY used in SM6350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8fd6f4d03490..ef793d48316d 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1192,10 +1192,12 @@ ufs_mem_phy: phy@1d87000 {
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


