Return-Path: <devicetree+bounces-26538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD876816D7A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F1F41C211B5
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6358E495DE;
	Mon, 18 Dec 2023 12:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ODfaBI6M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A5C4EB44
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1d3ad3ad517so2511575ad.0
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 04:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901281; x=1703506081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=ODfaBI6MdLWnZLQs2IFwNd7Z0Q32q1lBgzbLy00zhyEN79d3+wWBGzd442us10TE7+
         haxuduk5aK2zemnoFdjag9PBaF81QoZvR1PedVD5yT2wd0Uq2sk878+m95ccLG25wga+
         4pyQDron9VA9POvLCCW+QQGQM1OWQ307mRl/jDe/YDPpDUvNycLIdteRky8AZSR7xZLB
         OgAbnc4tHEj34Y+rjfLV1QvVsa3IgEwrEA7wZ3r3ix0JK1VV9kfW1LVliiiJzYhoMvHg
         sPDF8g4VFTlNvVvnX/ZTs7Jktln8OfpFdVZauHjubfFgyT/szJ0lfMvGKcesAhNP7FPp
         gWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901281; x=1703506081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E7tHzmERAQbZImeje4EMokx1gYyccc/9b3w+T8ZyCDU=;
        b=QlLys7xq8gEg0xmB2nDOHC+R59YMB54KvWbwWS1wO0yRG81/amvuJihSEdq5XIqtpe
         LOgfuWiWQS53CdN3Gheu4D2sZWBHeMtoUqYtSRoeYHQW2U3ukZjsX9HqePcVymOHDnjl
         CdJ+1bCQ1HLpcSF93RemfJU/nqOL4SlnIoZ6xOsAJCENPXo4JAy8fWUO+presczE6wC6
         TT48YLhVU/z7oThmC3RIl4M4x8IbyoqyvgbdJafK00C1tDv+ScHGcuqyibYkZn4ly5XG
         OX9TO82fbiK5MgjAGJScHrGHuC5UKjv3qyUxy8g3Htz9my0dkAqcyz17T121nen7rnrb
         DkQg==
X-Gm-Message-State: AOJu0YygXtTf8wyo071BZyBrcHoPBDQWoD5tx6fEqmXS/slx4OpnP3sj
	VX4gPod+/X05nfO3QFY0vLrlhAJ5OgkFh+9J6A==
X-Google-Smtp-Source: AGHT+IFpmFbwrX35pR8JXljDwh59BiNAQY5Eow8L0IqGWR6FSSBRUPbJHpRKtOzNMeLuiWR9vuMXoQ==
X-Received: by 2002:a17:902:ced2:b0:1d3:6408:211a with SMTP id d18-20020a170902ced200b001d36408211amr4518454plg.129.1702901281187;
        Mon, 18 Dec 2023 04:08:01 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:00 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 06/16] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:02 +0530
Message-Id: <20231218120712.16438-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
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


