Return-Path: <devicetree+bounces-138803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA51A12541
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C02003A9C0C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C470244FA9;
	Wed, 15 Jan 2025 13:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ljaoHBUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F88D2442FD
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948651; cv=none; b=u55gHAtDjZxRyoOYkrKG6NhaEy/ZE8UIEnk2Fyb/IWVJLWLhFnfpij/FmxqrQFgzqk2hkyubHFbiwUqxpB864zf8MokYRApR5WQbhKkmObVMXoKvUSrLCnBE3zxSj3cjHQHvyyfEx5FNQsTtY16yE04v2OFCcNCwHGGCZ+fsOeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948651; c=relaxed/simple;
	bh=UxJJ2vmOkJivP1vF3mBeCHCgN3ZON8eherWl/ihv3Kw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DXBP0y1TgIHl3ZjV6hqc3Sf1XFp1K0Pm7cxx1u+uV18bwxzYmeUcGJCUG0Bpr9XmdBrdUBsYyU+QygNl4+AdkEedWXP6WMOdfK1jYQZDpwTNXoTysLtsKf7v+SBTsrFhc5UyKrISfJHUAkUK7CT/4kPFtOwXZnMM6p2xdN/dp3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ljaoHBUQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43690d4605dso46969305e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 05:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736948647; x=1737553447; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RyhSZi+d7zv7QIEL6yrWTJIyhAWTvHF7VFTHAZZHpkI=;
        b=ljaoHBUQkksdVsW26eJGP/n3+MVGwOe6rTVPvfW3SWeFBgRdDDUxnyNEBqzJ3zbu57
         /QvxJhvk6MG/ajBLbbsSQcGNFL8hf5U3d9Soe4ZUgQ5eGCBE9Mq2B785s1iiYUbeuN0O
         u/QQf56ENW1SP5SE3VifbCPv72gyC7DTEfFcQK56cxxxQBMME4VZuRu+8qg3etUnquf/
         1gAafTw7GtOKW+PCmdO2J1n7Idj3NGLyOpUQsmMlGq/11kQ5Gu7skMQDRz1QKvmiDMBO
         YAfMpO3RefLpNA4WDjE1xiBGSBrWYEDnDo6ZyuSMtwH8jXVFUBULpAYuKGRMD/ZEhVyT
         S5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736948647; x=1737553447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RyhSZi+d7zv7QIEL6yrWTJIyhAWTvHF7VFTHAZZHpkI=;
        b=iuK/OAJ/aO1EuabYHLgOHTyrQEqHAi66SVbC1ez4UDhHkdRF1pQ0ympwp+04f5f9BH
         vROyiLM5D0G1UiKwpzfgZty1gwjF6QwBpfUJqtaYq32rlNSmIcauC4/MRns58waQosrC
         Gp4ojiiMNo1pJiNzNOec6hwJ1RfLZ8PziixWY6UrduHly8m1TcqulU+4D/PsbidzD9RW
         OVwhmtRgzn24SBGXQOFUe5Uy0xczgHjlSivdKNy2+mLLvmCJrKIsekDHHOgw3N68lPDM
         F5CzwCAN04SBs67t4BKpIr23UA4oloV/zzFwgeWTBVj/WZnFk9Q3SpMATQnu8kJsF+3l
         kmLw==
X-Forwarded-Encrypted: i=1; AJvYcCVcVpR8sgyutzc7vs+wS0gLZuPScbEbFeKMdVuBgavPtCiqy2SuoR0bRtwM1HgpdV8I897ZrnTLRzAj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4A/CQF/EgIbQSRHlqwCsR5FI36hnScMGQbp+xRuB2Jj4U+WVi
	Cmt+hoToltNj/N09Qi47Sz1+8AbANOzmQMMCWw1w37m+i7maRzKJWzYMEaWAArQ=
X-Gm-Gg: ASbGncvnxj2ruepfkFoGg3ka07FTKJWaVz7FnMVncoonPYFv31Q+Ih2SzT8Gssf0CU1
	TO86JCfpyOm1rHke6fDnwwg8GVvsSchJZbwnlPWCZKH72gOwFYvpD562L54qS/aL1U4QK/UN3By
	Nm/+FgudVdxO/dhAu306mo1Nxx2QLDeKzEDzAAtsbF3eht7Wjy4GDJ7jh+xZNyZXMQ77lVbIt4E
	xBWpQd3H76z7uaiDnv84Oe2stl68jWKWlIpSON/lnKmeyJCv/KDyVw3WTk6utkk+DE7esKY1JQS
	sw==
X-Google-Smtp-Source: AGHT+IF6I0voTAgOl6SLCV3o6NeGPq6CuKZKQd771UVYJ32yz4lHzjSs7PHgZvrDQLiiezhjo3mZYg==
X-Received: by 2002:a7b:cc14:0:b0:436:e751:e417 with SMTP id 5b1f17b1804b1-436e751e4ddmr258696895e9.7.1736948646966;
        Wed, 15 Jan 2025 05:44:06 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm23454655e9.33.2025.01.15.05.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:44:06 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 15 Jan 2025 14:44:00 +0100
Subject: [PATCH 08/10] arm64: dts: qcom: sm8650: add OPP table support to
 PCIe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-8-eaa8b10e2af7@linaro.org>
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3609;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UxJJ2vmOkJivP1vF3mBeCHCgN3ZON8eherWl/ihv3Kw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnh7ue+EB/n83NOVH+e5MD+a2GTuI7GXMZK8MiWxwA
 kbzviRuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4e7ngAKCRB33NvayMhJ0d6jD/
 4nD4cfnrIs8lSeDJ+79d33odNmnWw3qHlq1crroZk18Gzountj3F/un4s5f/7IBKBQi3+ynTEAAqV4
 xxfh6CrtVjKgFALegOsUcRBG29bA80qMWGJNvYd928k50l55Mn1u8p08RaBo9cDYLTPYzU8SZLF9DP
 8mk6Z8V7miAzBOP2TpcBo/qvU5s4yLdK5nRHbVYYosGD1gvFMF7zaKsscS/R2y5Ovw9KHXMkjjwYrR
 koceQ38YLQndaH4g70Mn7PnD/lNFCgbXXWhmbxSCONYGFg59P6BdNswlOGvZxhpSjc++XjfLr9NiZY
 g6cHp6mO1LpMlk1vRn6/fCG4grJHXuFLLk/ESe7xec4YIMSBUCSY91JD/NJFzgbfrOJLQLxy2Z0kKB
 ERcMdunb/wnjHDQ2U3GDT2s5fsW6TfuCyi0hafTl17UFHK6vfR2O2Te/GLrOD8iPAzcdEWsPuIwGdO
 wR7OxzJCWlaqz7piyJz7p1Mr3iwxTVQGFGGLsgQfRF4RmCxNjylGyiEIGdrlI14RkdJW9cPceV4nco
 Ri+X6ehQqr1hAo3tPX+rEwVZsVzRAaMx5Al+3HUWLAS5IH2PjbxBzi7fAs9NA+TIksCc5S7fQv7u20
 crac3QDCnFueaMVnKgwN0pnHSjE+kK25PyRD/VaO+/O7GFavDvoQoIogktHg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe bus interconnect path can be scaled depending on the
PCIe link established, add the OPP table with all the possible
link speeds and the associated power domain level.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 89 ++++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 5982fd4d66d903d638f0eeaaac221f3007abf68b..737d1901ca10fe0a49ae4685d0363be74cc0668d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2308,6 +2308,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
+			operating-points-v2 = <&pcie0_opp_table>;
+
 			iommu-map = <0     &apps_smmu 0x1400 0x1>,
 				    <0x100 &apps_smmu 0x1401 0x1>;
 
@@ -2338,6 +2340,45 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			status = "disabled";
 
+			pcie0_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+			};
+
 			pcieport0: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
@@ -2447,6 +2488,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
+			operating-points-v2 = <&pcie1_opp_table>;
+
 			iommu-map = <0     &apps_smmu 0x1480 0x1>,
 				    <0x100 &apps_smmu 0x1481 0x1>;
 
@@ -2477,6 +2520,52 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			status = "disabled";
 
+			pcie1_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+				};
+
+				/* GEN 1 x2 and GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+				};
+
+				/* GEN 2 x2 */
+				opp-10000000 {
+					opp-hz = /bits/ 64 <10000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1000000 1>;
+				};
+
+				/* GEN 3 x1 */
+				opp-8000000 {
+					opp-hz = /bits/ 64 <8000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <984500 1>;
+				};
+
+				/* GEN 3 x2 and GEN 4 x1 */
+				opp-16000000 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+				};
+
+				/* GEN 4 x2 */
+				opp-32000000 {
+					opp-hz = /bits/ 64 <32000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <3938000 1>;
+				};
+			};
+
 			pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;

-- 
2.34.1


