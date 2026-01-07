Return-Path: <devicetree+bounces-252186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D70CFC16A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 06:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AD363046561
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 05:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E102274652;
	Wed,  7 Jan 2026 05:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WjnZ1OVL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SP+UX8NX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F27726ED41
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 05:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764119; cv=none; b=Bb02OhyNRgsbuMfYgjPvZYn43FPM8251XMoXevNtPlUcIOQXXjR8SWESOQgD1bxG6KzhEV0VUa/Dls95r26xa7VwdyxjD/kJnGxOMjhqkRAomn6/gN66aJxzdvMfmwfXBGNCY1pphlkX1wI5nr5IsSfODHgvsOAiDpe4mwbWZiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764119; c=relaxed/simple;
	bh=cwBVN2p60rjrKTFiJWlOrsVWPGObKbfTCuIqR47wra4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A+2bCOl8mOszc7iAk3D5G4peE7UDNhqVxroWY17GyEUtR0CY8m4ponaXr8crSYgl+LWG5gWrLtRMPT7dJ2CL3/Rr29XVZzcq7oj5TxkGZxE/lwdnJK41chFRiqOUpT/7RFNA6MIbL0AcO69ZDm2jmNtR9WRUux4EBpsDfaSfKXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WjnZ1OVL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SP+UX8NX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6070KCpC322770
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 05:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	grndNakJefCe7BAMVUGGrGDSXuyP8/t6z8NpUG01rhw=; b=WjnZ1OVL4JK+VBlk
	YzVLIRzhr56WcL80AkVlq9LRuzl6xocVPj5eTGjdCOFuJ3bPB/3bqCM5fJzeUKB0
	kYNdbPe6JvvToEBFYCldgvTJO+yY6jyCKq0DW7SXvl8UDJ92IuSwlF7jyUum4qCU
	zHLIbYGL961DYpYsuXItnXsxh22U48ykfQiM9Cq7zfoV7/p1VXbWYG1MJ18dnCnz
	wMM3QiJvcRzRHdI4AaJrXNNkk8Dk1Yqwdi/uxzYb14kkCPsPP50/C5svcW7IRCvI
	BYaAxqk86xTYDrXJlDacoDS83YPrSouQhupDOJI+xD1IbPuxY8vLkcdjTF6SOpmA
	FMfI8w==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh4crjbjt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:35:16 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b04f8c5e84so1058368eec.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 21:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767764116; x=1768368916; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=grndNakJefCe7BAMVUGGrGDSXuyP8/t6z8NpUG01rhw=;
        b=SP+UX8NX6i/qaadyqCK4NJvCVRYM3jZlr009bE4ucRC+7ZxOOVPkSSQ6VqYsXLcwhU
         ZPsktKUZ7FZcXThndp6ZnQnh9WqMVv3FTtiGJDohuEEpCeJwvUrKLYeSw7S6buPrwr3x
         azVc16E9qwUegRBfiu8vG+gNz4BpFMUXCldsAUYhN6xFOYlrBmwzUuHLukVFIfkm1ewL
         gK2kWoN/QZUelplFN2ja6nV/j/MjKpOgnpazGoh1ht25bZ6/nWZzFqSLU97wLcw8mu8M
         +WZTfXZdUBmRIJbolUsg5ZJND4RsCMfk0Zf3WCoSqcI6CUi3TXhbIhmY4L1Io9NXfadE
         zLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767764116; x=1768368916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=grndNakJefCe7BAMVUGGrGDSXuyP8/t6z8NpUG01rhw=;
        b=cKVTP2b0LhUrTV6/RD+gWjfNzg9e6T0EAc4pky4wXitk56DqA69gDltj8ag/n8dRHk
         TwskeHSpnxxSa52Nqg/nSBOOF+Wg9gCvl44uHG5LorrrKxGN15v75CpesLQWTMHWZA7q
         n5GiJyBybraBSZoyQQRzn8sfcYwXNLo/Iz3NbQ3ry1BUV3aWSHeUuJzv2J6nrbXIKxjA
         AJnJe4zxxdUkQcIZ8Jlxh93ckcYFO4xK/mItE54DLiaqfpkBLlQr3bB7qaA15P9goTiv
         gy9R+RXngEfDIStDwqs+B5YLkKxf6wYPmBYxn+R16ox4WRg54I1ZmYg91OOXlgJZtS4M
         jTFg==
X-Forwarded-Encrypted: i=1; AJvYcCU0ys6HqW76ywszpc86GNV+DKxAKntVBWEZp5vhZ3UdiARjXJAffSvk7j3ZOuTAcQHsOB0aGkiOfU5O@vger.kernel.org
X-Gm-Message-State: AOJu0YzOWh/wtR9tJd6iY9QOjgeYzHp3dStrzY50vBIN5THPyk+Zzif7
	x/7E4boBejYyAuZeiNZiElM8djCCHLuLNf0SEbWFOfKF8r/DJEs8HZb6JmW7GneUXd+ynkt0NtS
	rvoOz+9/f9SvjGXI6DN42pdzGwCBl4qgwPqYJ6zJByS/cr+2hGCR3SraIPFS4HOno
X-Gm-Gg: AY/fxX7V/8KrmaenhNeLV/t8rBrnav9PPJ6if98TAN8nm+Wc9LvEVph2UiYSQpEU5Je
	nGlyNRfVf5O0dI+hlgWnXUy7UsaPrEtvthhhWNl8rN8a7nhtSxD1P0/Sm1ga3VIjsWF0OFPfOmY
	+nR5h8pyEBMzJFEV+GCpfNmIDyam7nY5FF1tv334jllxLh89NrVW6YhCVxJd0nK35tFYk6eGC01
	isOl/herS/ajJIVqoXTWMqE3B+0UKUp0LZKAiPYH+oGP8B0lAbyIHW+Ubx2W3JvYdbzYRfkOhwc
	vqmzXxoF/j55TfUguiNrFlSvcBvIeSXO0ymuOUbYlZpPvpz/TBtA999vA2NY271UZ6dgQVj+s+p
	GH0TKTlYYt2DEg8yji4VtGP7JMmkGKuMaz6q4Ovqcqy6JWJ4veG7V
X-Received: by 2002:a05:7301:7108:b0:2b0:5609:a593 with SMTP id 5a478bee46e88-2b17d26717fmr866954eec.16.1767764115902;
        Tue, 06 Jan 2026 21:35:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKJc9VqQl3qxyIzMEgyRkYi3m3sUorstQOEpnRABG9L6VGuW02joWgVDTs3xC6psOnY+/e1g==
X-Received: by 2002:a05:7301:7108:b0:2b0:5609:a593 with SMTP id 5a478bee46e88-2b17d26717fmr866922eec.16.1767764115208;
        Tue, 06 Jan 2026 21:35:15 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170675076sm6120311eec.2.2026.01.06.21.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 21:35:14 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 21:35:12 -0800
Subject: [PATCH v2 3/5] clk: qcom: cmnpll: Add IPQ5332 SoC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260106-qcom_ipq5332_cmnpll-v2-3-f9f7e4efbd79@oss.qualcomm.com>
References: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
In-Reply-To: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com, Luo Jie <jie.luo@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767764111; l=3013;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=cwBVN2p60rjrKTFiJWlOrsVWPGObKbfTCuIqR47wra4=;
 b=WugIbeZCCo5W2ApK/wCncXzufh38o9v89ziinEJAeHy4ZKwMNWcW3WU5Jv/iv9z9zOsHN3ar6
 /CSE26RDveBC0MS8EkXA4P9JXzyt3ivFQ672lK9r0mmkDaXGZQs61sA
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Authority-Analysis: v=2.4 cv=V9FwEOni c=1 sm=1 tr=0 ts=695df094 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=34uckhk-FeckjHo7bNMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: sO65lKNYDI0lYIZqgCoanYO_Ci2SmipQ
X-Proofpoint-GUID: sO65lKNYDI0lYIZqgCoanYO_Ci2SmipQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0MiBTYWx0ZWRfXzzhqCz2tjTrw
 DHJSfh4Bzoib/92zppTZODz8kJSKffd/TxGaV21tVfXG7l4p83EZlZTU4zXiqPS3ftb5q6OIiwR
 nW8Xp9eLLFEDOzYHjQHRusIskrO6Sh0DmOH/caDU8lmuKSqpuYxmE8j/16iMDTrT2yr3ujuLAQs
 /jEsElpoHi6asXYkTNUfYY2ceDlgd7VGbR1AnwPIYZaBsC/UUl1Xhc8cKtEVRnxdtyTvd9ZoSIc
 paw47SfUnlHqmDZAE1TJNVUAWv2Mjsl7NeZf+7yI3TkguDf2gfDqCpDdaVJOPevyO66sYUD7pwO
 piKuV48R9P1MRRJUeD1L+BTibVGybQDVvNRBVZscuWRNXNVnv4rKYOmbUz6LUi9jhT+fhJhCy9y
 7xdlZnQpQg8dEZXkC6nzs2jMgAX6/p4N1PpyRFX8GEK6uJfnsokSuQ5MT4eLggTttfJqOEE1URB
 yHJ2J11rGbbyNEtdR1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070042

The CMN PLL in IPQ5332 SoC produces different output clocks when compared
to IPQ9574. While most clock outputs match IPQ9574, the ethernet PHY/switch
(50 Mhz) and PPE clocks (200 Mhz) in IPQ5332 are different.

Add IPQ5332-specific clock definitions and of_device_id entry.

Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 drivers/clk/qcom/ipq-cmn-pll.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/ipq-cmn-pll.c b/drivers/clk/qcom/ipq-cmn-pll.c
index 369798d1ce42..962462286837 100644
--- a/drivers/clk/qcom/ipq-cmn-pll.c
+++ b/drivers/clk/qcom/ipq-cmn-pll.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
 /*
@@ -20,6 +20,11 @@
  * and an output clock to NSS (network subsystem) at 300 MHZ. The other output
  * clocks from CMN PLL on IPQ5424 are the same as IPQ9574.
  *
+ * On the IPQ5332 SoC, the CMN PLL provides a single 50 MHZ clock output to
+ * the Ethernet PHY (or switch) via the UNIPHY (PCS). It also supplies a 200
+ * MHZ clock to the PPE. The remaining fixed-rate clocks to the GCC and PCS
+ * are the same as those in the IPQ9574 SoC.
+ *
  *               +---------+
  *               |   GCC   |
  *               +--+---+--+
@@ -51,6 +56,7 @@
 
 #include <dt-bindings/clock/qcom,ipq-cmn-pll.h>
 #include <dt-bindings/clock/qcom,ipq5018-cmn-pll.h>
+#include <dt-bindings/clock/qcom,ipq5332-cmn-pll.h>
 #include <dt-bindings/clock/qcom,ipq5424-cmn-pll.h>
 
 #define CMN_PLL_REFCLK_SRC_SELECTION		0x28
@@ -117,6 +123,16 @@ static const struct cmn_pll_fixed_output_clk ipq5018_output_clks[] = {
 	{ /* Sentinel */ }
 };
 
+static const struct cmn_pll_fixed_output_clk ipq5332_output_clks[] = {
+	CLK_PLL_OUTPUT(IPQ5332_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
+	CLK_PLL_OUTPUT(IPQ5332_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
+	CLK_PLL_OUTPUT(IPQ5332_PCS_31P25MHZ_CLK, "pcs-31p25mhz", 31250000UL),
+	CLK_PLL_OUTPUT(IPQ5332_NSS_300MHZ_CLK, "nss-300mhz", 300000000UL),
+	CLK_PLL_OUTPUT(IPQ5332_PPE_200MHZ_CLK, "ppe-200mhz", 200000000UL),
+	CLK_PLL_OUTPUT(IPQ5332_ETH_50MHZ_CLK, "eth-50mhz", 50000000UL),
+	{ /* Sentinel */ }
+};
+
 static const struct cmn_pll_fixed_output_clk ipq5424_output_clks[] = {
 	CLK_PLL_OUTPUT(IPQ5424_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
 	CLK_PLL_OUTPUT(IPQ5424_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
@@ -454,6 +470,7 @@ static const struct dev_pm_ops ipq_cmn_pll_pm_ops = {
 
 static const struct of_device_id ipq_cmn_pll_clk_ids[] = {
 	{ .compatible = "qcom,ipq5018-cmn-pll", .data = &ipq5018_output_clks },
+	{ .compatible = "qcom,ipq5332-cmn-pll", .data = &ipq5332_output_clks },
 	{ .compatible = "qcom,ipq5424-cmn-pll", .data = &ipq5424_output_clks },
 	{ .compatible = "qcom,ipq9574-cmn-pll", .data = &ipq9574_output_clks },
 	{ }

-- 
2.43.0


