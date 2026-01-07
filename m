Return-Path: <devicetree+bounces-252187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 030E5CFC154
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 06:35:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1471D30031AD
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 05:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271EA25BEE5;
	Wed,  7 Jan 2026 05:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k62d1brc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CvTmRe2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288D0274B42
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 05:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764122; cv=none; b=YfiOqDwm184yW8gnSQfrT3KU/w7XROH4hxfYo5IZOGfpbk8oYMP94eBZHYSNSorEpcpYnwNx8+I1kR7i/4+3uloipuTR9zO1Cek7iIA+tFDbpE/4ER4O7K90Gt+6z5hK75iAdk0s7BLvhtc5E1UKbSsCWS8t1aKql1qlHmtRewk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764122; c=relaxed/simple;
	bh=Rd2oWqy4jH6gKVmMJzaxHYBgnnp5fxDA9W332BFwjEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BvbyQ0Er5mC2FfjKzXLRGFTkwpzlaK/KVG8H3O8majc+Z5gI3QjgKkI9Uv81ArPRQ/4RJoBFD5QkPsgE4TOL5YFDB9JRYICIiHf62ZjcC4UWhdOHRXfwj861/xcxR2+2sZm/IZL6dCtSu0hINB0My1WbWR6KMiPQhem2874LqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k62d1brc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CvTmRe2+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074CaJP806319
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 05:35:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	epN5pM4ro8J0aEbfvjQJQmjf6Qd/DnroV833V8PcV48=; b=k62d1brcr5iWhA5d
	h3iTiqLaikEusciTlSYDp8cwj0D+yPIerjnGceWYqbtTVUDCnDUUSoHhRCyD/w0K
	H6DfIdTV9txn9IMBMkd6GSuAXc/Kt/G8fJH5AtvW3k7P0iBxYsJElB3bFv+jZeXc
	xclq1YpFBdl6LkkbxX/7P9LFUwFwUwY/TiHW9x9asYcqCXvsUZxnSjzkbzLCeHoN
	qnSXAbVVzrRmeMF5iEypvsDsm8SPLeHt62rBkGD2ZCOJCnOGrrPDUEs4zLu+GGZE
	DAaWCbZoeLRfTvogCGWuYGKgC8AbtHRFUnrBwwL/yQ99Wg21sA0zMF8ccu3dSpbZ
	PiMYrg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh7t9hnjx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:35:18 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b0751d8de7so1425015eec.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 21:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767764118; x=1768368918; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epN5pM4ro8J0aEbfvjQJQmjf6Qd/DnroV833V8PcV48=;
        b=CvTmRe2+naxyj6fBq3cGxbsEkyLvVi+jOX/9+nDm+EM4ev3FlENBpo1zguj6jSgxyT
         g+eEzcu6AGr26uk82pvE266XFAr64nhUQ2Kav9oZtSs/KUJDYL5u+BbVgkpwOTHRpr7K
         tKY1sA87iVWMNMKYPbrEmgs+gaNDq8l5+9PX0FW4F9A+cfe2JgIXaKujGWNKTCvrFv0d
         v/Xo0D5CjDAXr8QnBBMMkQyYrgl0I6EGPqQPQVC+sSMv2iSXG/3rYpVn0pL8jsIHTlYz
         mYu1R+nEQm0VeQQ8+6/YadkCTBeZMmzpyPoDC+JBP/QrL9e+CPnXOfqOiYZKnzjo/SEd
         LzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767764118; x=1768368918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=epN5pM4ro8J0aEbfvjQJQmjf6Qd/DnroV833V8PcV48=;
        b=MS0EXBMcCUEJjxbnZZHfCoNTKWjFnOhoJKiLxwU+dFwEecc3r7FGsB3T6h6qA6rEFZ
         Mj9FRY2fBkc7GC79dkcHG/rJadIQE+6h7h+WHXlulp2rL75wEKdwaZzQY6jZ59EG89Xy
         7JEseT8OLCvGq8rCIUZhkFMy0ryfmY9PgfcuzMhFWtecIpSd8redZvcEiRufRTIFMDjH
         t0Qg5iwrPjqeyVco4qFOzonGFUlku6V4W3iduRsPx4ZaxIx6TQct3STZV3cnqz8SVG0Z
         1h3nwsaS22kkFKy1hSSJnTBEnz4LXAmnp1PSr7oYjcresRQlZk6mHn4n7E/0t+gCu2Mw
         hahw==
X-Forwarded-Encrypted: i=1; AJvYcCWYqqvgIThjb418vUnFhco9BRNkTZRFi14px9Rw/gONrq3QDSZlmenEVGXIAPl5o8bFUUsKwXtPgMp/@vger.kernel.org
X-Gm-Message-State: AOJu0YxL8Jd1Vo1syy/3dQizl5uAll7lnFbKT0TGKUS2SciLQx8SE98u
	/HWBYt56PZK4MDYQ7T3/4+0OrNVaZXY4wodDsp6ERtHHZJAccnGq5zuG2Hc7E3KQ2Qcb2bqK2/O
	NzVTyhF77Fg4Fbq5qIKEl2LZAhZEYuMBVW7/koifT0OusDCTWVVP10Bka4WQybv+7
X-Gm-Gg: AY/fxX5e0zldscCEQ4HqGY3MJuVDoBYDkz27+SwxZExCGigrEOfttDqbs6Usjb3bkuP
	jFY2m/8JWt93iO1FtH8dEFOQICw5gznT8rOMqxv6jpLvCS/2EsIsSNMeLUEw8zwdxcPJN4p/CYT
	1FXnJ6w01xvunU0BX+g9BQLWTUnOboJ5OG1unCTXL9kajblGhKgIxR+neOqaohF5RVLL5RZQFCE
	khEc+rxAexQqIhqEjmflkx+9/gXXmEa51sxR4OGcIvDEv8mQU/edo4k/1PcQmlrLhz8jDIzz2SK
	LIJ6jl18OYa0zYIBfNV4f5N8xWeQxkT1VbngmzXnjK0REUGfo7Z8aOdF/ll163Jvcns66Oaf/tz
	8o/yAlFLNtGKbPZUWT5VZlLijm23b50t3MYAZJwKgs2AZU1y1GgrE
X-Received: by 2002:a05:7301:6505:b0:2ae:5d5e:9b1c with SMTP id 5a478bee46e88-2b17d1fb255mr1175687eec.2.1767764117695;
        Tue, 06 Jan 2026 21:35:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/QxKhmI1qvpTLhwmp9JWBE90uwQOqMfiggqzQL1n2dlmXvB8sr69JKO3HqfiCGdg6gn7JyQ==
X-Received: by 2002:a05:7301:6505:b0:2ae:5d5e:9b1c with SMTP id 5a478bee46e88-2b17d1fb255mr1175656eec.2.1767764117167;
        Tue, 06 Jan 2026 21:35:17 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170675076sm6120311eec.2.2026.01.06.21.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 21:35:16 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 21:35:14 -0800
Subject: [PATCH v2 5/5] arm64: dts: qcom: Represent xo_board as
 fixed-factor clock on IPQ5332
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-qcom_ipq5332_cmnpll-v2-5-f9f7e4efbd79@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767764111; l=1690;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=Rd2oWqy4jH6gKVmMJzaxHYBgnnp5fxDA9W332BFwjEA=;
 b=pbXe/zapz7RZIExVQUGbhTHrjkIywJz5nnPEHaJdE+KdNKlQKZqGfn1rXtxzsA5sgvhAAPtlK
 A/BJYcRwJXuCFN5irrod0p6gHo7Trh/CAGqtc9hX4y8tZ43WAOg5wwK
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Proofpoint-GUID: NRuk_qKB2N93ui2I2commcU0uxjmtL6i
X-Authority-Analysis: v=2.4 cv=QfRrf8bv c=1 sm=1 tr=0 ts=695df096 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cZQRF-JHJlm1EiHCSyEA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0MiBTYWx0ZWRfXxNJi9Jj4KTv3
 f3vsX6SbFy1+a1kCWh1O82OMGTrnXuD4ia353/W/F3kqjEMGVB8bkKylIRiTR9yviNmQOf03ySs
 nXmYBJer5HrDWrb/lGktxkr7/v+xU+i62DTyfChHBwyUR0IJKCT36+DqdIGY6g9ecRT2IBnHoeW
 AlrUwuHwOuKZ6v3Cer0Tc8K5ntR9akhi+aa1SWsO/JQgInoACQibxiMpcQPijr38HMuiYm01hq8
 0m+ihqBs41ymyANIVlFmJ8+6/j0IdGu5ZZcEHkUCuZx6GHB3BA15FLMYcZVi1CtX5NUvjpqT+bq
 iLojNH+xEubp7E6w+JnrXO7LXsgIQTGycKLjzmAXhKdVmFDd79eR0DR66kk3lFVkhEuuj+FMNVD
 7Qb8DiwXjzTjhcv9qpNPaLrWqckoFTqxLUrxia7bMc5S2Ytkn1TZ4XW6vmCICcctnmYPXf+TSXX
 rJaHXC3U9zfbuXabK6A==
X-Proofpoint-ORIG-GUID: NRuk_qKB2N93ui2I2commcU0uxjmtL6i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070042

The xo_board clock is derived from the 48 MHz WiFi output clock (divided
by 2), and not a standalone fixed frequency source.

The previous implementation incorrectly modelled it as a fixed-clock with
fixed frequency, which doesn't reflect the actual hardware clock tree.
Update for fixed-factor-clock compatibility, and properly reference the
source clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi | 7 ++++++-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 3 ++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
index 471024ee1ddd..e1346098ab0e 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
@@ -70,8 +70,13 @@ &sleep_clk {
 	clock-frequency = <32000>;
 };
 
+/*
+ * The frequency of xo_board is fixed to 24 MHZ, which is routed
+ * from WiFi output clock 48 MHZ divided by 2.
+ */
 &xo_board {
-	clock-frequency = <24000000>;
+	clock-div = <2>;
+	clock-mult = <1>;
 };
 
 &xo_clk {
diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 2b1d098f9424..c076537c6504 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -29,7 +29,8 @@ sleep_clk: sleep-clk {
 		};
 
 		xo_board: xo-board-clk {
-			compatible = "fixed-clock";
+			compatible = "fixed-factor-clock";
+			clocks = <&ref_48mhz_clk>;
 			#clock-cells = <0>;
 		};
 

-- 
2.43.0


