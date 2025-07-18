Return-Path: <devicetree+bounces-197735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69519B0A75B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:31:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE7121C8360B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29152DECBC;
	Fri, 18 Jul 2025 15:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iOuGNCl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC272E4990
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852357; cv=none; b=B87UmcQ1YZFBHdp7oTcmkiIqd8mM3lugU3wq1gWO8EPH9Rzbcf4oaZ5QNtArYvs19xO5pBLYQDNdidwzgTlYJePHRsi0+i8tawklPYayfay63VntTKBGwZKBq/4i2YOFmlmnqSPeDVpCZP4f+xid1PovtavioLF7vvi3kjods8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852357; c=relaxed/simple;
	bh=H5UmIvUo7LQWe2Migv7tSh5KSIEnuEJyZElnvQeZk5I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YWt61e3BUz+BC0P/wFU3NVTgdYYqFC4iIQ7P8Vx/KDv2DQR/kT+1Ikg0PhOPWV83bEz7jUl6kAZoB+H/EbQcY3/9jEuH1Z2sMCIs9Lm4zjv+xmpRJA5pEV3bUCm3k7dL3XYPi24qlqQlvoFCcwbF4Jq1JyJ+sHOKtYaCsFSZYQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iOuGNCl3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8wIns008417
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5K2XGMBh9O5MReKiBN1SLoFGkqLPj7SyaVN7/UiJX0Y=; b=iOuGNCl3yrRE26TS
	vH4H1+fKyxxrrXD67MqktB3qaDss/N0c8NaPrXmFR7VFwTi3o+riIea36RgA9K5u
	NabZzLLd7isgzy7YfJvWSugamwqg7VQCumi/I2t3GAfAsJVVNIN1XVqDA4icqLX8
	fikyD4hdVeGlA9fNfJODcdGwtFE6wcYImHPg5CEhCDLM7eNolt21CzrWd8S6ebJG
	tiPaHLYJm4bVLs8O10MU8o1IkYMwjISGJY+jX2M5XHr59NE68ao6TdZqfrvCUmNX
	70sDxPs/sufesmjBgFAqKmiO9F7c0z2S6pWvrWkGWMBC+WkJFocO1wHZc6uwOk33
	u/yPKQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcad7xk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e095227f5dso350398085a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852354; x=1753457154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5K2XGMBh9O5MReKiBN1SLoFGkqLPj7SyaVN7/UiJX0Y=;
        b=Mt/kfD9/Kn/5mGhUX7yVcBIrCo4ZjFpuDw3yfJOZUQdhF5q9AIrdy6y/T87IzkN2rf
         kD74wFNm7fy4B9QnU+D2mXXTX1nfGu3fFRaX+iirtJAsDxC6kMoC5l3tjXjSRnbOgIQc
         eOGqwVyee51NGl566ekeHvprnGFID14nEPTrFzGlFI6so8Z3OZowU5Cw6+Qtq/81gZSd
         wGTdSeg3IkQd9bjqdN1WjeaOmUmkePnKK5KRmg/UNqsxznHBk3dK4tzWZZL2dVeHYZM9
         iqIG5OSPm+1UpooOtrXNCVmLGeyYzGfE7jxFMdA+50Bilu/2n8ZV8kd3lzo4FA3TdNcA
         tVNw==
X-Forwarded-Encrypted: i=1; AJvYcCXm3Thd5rV19q6sI3SqCQctVHuYSxpeiUO6Hy/jOOS8nYSpu7NGnGGVkIRA4PF99bgrzifdB63Zq97o@vger.kernel.org
X-Gm-Message-State: AOJu0YwGUsTyVHYMs7SBxaxDASIEzkhi3VNMebksjGYXqBXTJznyXS1B
	M7nBuFciX+Glr4p8psy+kRbjEQ0KmSJHqnYl2HWA2c32NIfgLQqMFc9IMAbBXWChqi/o7IXq4Sm
	WCk1v5LB+Xi+WPCgZT/QQ6Gs1RKZtRM+begh6Gv8EBIPO0zDDmm57uR+s5SZvmH/U
X-Gm-Gg: ASbGncttUcf1RdmDRol3qn5hyvyUbHdAWlVUIfol4fD/bKgVm0xucHtYw/Z8MRRbBgy
	83INA0CdR6cHui9sfHh+C8IMK5ZfrBum71ph83eQOh2xGMnGWC7uNStFC6fOoce7ZXsVLnDXx7A
	bLcnE2r7nqJ8xQyX7TKKIvrr2QD7O/xlNPFFdbLC4RnvW1c1iJd2j6j2fVdiRsmWBqc2wQW0H8o
	J9Bu/mw4PRBvv4nRe0yxzsuqATHy4DFLkcOTbJK36T1PrGR1bSJwTMJ15gJJ0R5sMig6MLCd7Zr
	QjRWB6HL0xX5ThoqGRqfbKuD+17m7QonmHAMqbYtt9CgEYasV6fGeHyHtGU+WeKydTQQrOYJRXb
	ZzMmHO3ZVL/RYZkbimLjGUfpxhNnVDXVFLS/t0wf3TBw95kUnbs59
X-Received: by 2002:a05:620a:6007:b0:7d4:3bcc:85bf with SMTP id af79cd13be357-7e342a5eda7mr1399725985a.12.1752852353695;
        Fri, 18 Jul 2025 08:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEggOb9po8Z3KgzQOQPbQZul31JWCo9ugabQ7H/MSY3eKHvImtsITPWszPtj+g49k/Y+6XRAg==
X-Received: by 2002:a05:620a:6007:b0:7d4:3bcc:85bf with SMTP id af79cd13be357-7e342a5eda7mr1399683785a.12.1752852347508;
        Fri, 18 Jul 2025 08:25:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d994csm2466821fa.84.2025.07.18.08.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:25:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 18:25:41 +0300
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8550: stop using SoC-specific
 genpd indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-fix-rpmhpd-abi-v2-4-0059edb9ddb3@oss.qualcomm.com>
References: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
In-Reply-To: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1159;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=H5UmIvUo7LQWe2Migv7tSh5KSIEnuEJyZElnvQeZk5I=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoemdzL+wwxdRAvn/dW/Fgxt9ssFTlQfCMVMZ8j
 eFEaMzeiXyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpncwAKCRCLPIo+Aiko
 1RkJCACuN9DQAUNI4hr20SEIbwT6XwG3vTte/s2Xaox+qFhz60zOZI9kTeiNjzLXskGp7mr2kSX
 YFHe4+PR2Lc1GXvz9hCTIRUzjZk7cOR5n/X5HbuPn5XTu+iTVaSZpe1d0/czlxgdJpqF9x7w9U5
 GBSz9quyNBMI1MZEI1LecIVOWa0KOJmRnZ5mWsE+WP34rNBhctH84OUProDO/9oZn0+vVA7OeMs
 ISwAiL1XkQNF/Rhxpp3XkaQjX0TZUq/JYRjpcYdPpf2fVe4A5ZFr2CUQ/mNsQ20MVyfQ84l/kcM
 a0a86mnuvzGxwDj5DQyqmdMYUpLBcJo9ijV6w9yJ5F15IanK
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExOSBTYWx0ZWRfX4nfb+EvYPDAo
 NNDc2W8MJfhP8IQWbrRV++ypcs8hnVDH6i5LrlqxiC1j2WSoCaDKpmnevimK0pqo6q0XdwKrnGE
 NAK8TSbum5apsP/etgUAxQTLkejSH9FlFGLeKG8et/xoP5A2XeU5r3Pe8uijU/FqxDwBIkJdbqt
 Np68X04Qb7VmkBYM55mNy/KTSNYu82EbHwK4TwQqm3YWG4+hccyaV+yJFZmFUdyb+8jakn9nSAb
 a8njn2v82Bm1Aj9dLRNz1UrhJRaq/fj17i4STlbDryPudQmvaP1Bxye6+FhCAIok4jVotdujgWI
 Zg++vdKLGm07TLTvi+pnm3JF/b97KBLThGtR4+tgdhqNm1EHM87UDPrUpdCWgBtmeb0mjCsIGK6
 YfnrTCzblbgCnrMd3rkBSePJAskcjmD83z82PQjfuLXH04ldIGWacSNil5CJxsN9hTlNDJ+R
X-Proofpoint-GUID: Lv0-xidqA76sGXlg9FaFEou9yQJloz2v
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=687a6782 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=e06P08YCo0CmzbESZgoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Lv0-xidqA76sGXlg9FaFEou9yQJloz2v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=788 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180119

The SM8550 has switched to RPMHPD_* indices for RPMh power domains,
however commit e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock
controller") brought some more old-style indices. Convert all of them to
use common RPMh PD indices.

Fixes: e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock controller")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 45713d46f3c52487d2638b7ab194c111f58679ce..a4ca06679c2f1eebacdd5938e380981c1b17925b 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3623,7 +3623,7 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd SM8550_MMCX>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.39.5


