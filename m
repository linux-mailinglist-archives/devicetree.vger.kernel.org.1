Return-Path: <devicetree+bounces-219661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C089B8D614
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:12:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3E1E18A0319
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CBA72D4812;
	Sun, 21 Sep 2025 07:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pu5wsuXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF542D3A6E
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438705; cv=none; b=KJzG9U46sRT5BLIn83XcjZSs/rRcl6QFzQE6XAIaIQ68ASmV4o85dL3W4k6KYr+lZ5wubAs14cGQf1utO3LTdOU7PIRr3KHEdHpUjyj2cMvxAFxLr9eXAiL0jzGl2B5lUostIrsVlemlgqAnCowl7UzAl3I6nlQe877g17c09bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438705; c=relaxed/simple;
	bh=1RoAFURhJrvly7ZLvTZU/OkE9NnQj/ClSoO+/ODqWqo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KonAHERMDB8MJb86tJhweL9RFpmJYak8Fuuy35UroTeUzHD2ZSJliYN7ObPMaEpVzTqyMJADUMJ4Ez8Tr+TV5lvLXppgVGjz56VUjX+739O4HQ9F0xAhed8rph41mx7YSlFCOSi7z3SW1gixlXZJbHiHRq5W9krRNka7/G0Vx6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pu5wsuXW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L5H7YY016450
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ejKCJjXaWa+4Btg2sDOmh3RzkdRjnyELJjjh7uxooLA=; b=Pu5wsuXWV91TvvFH
	mi7vISt3JRX+HX1X4G6qbgrtQ9Zln+gSoRqrdCMuef1gfEjN05mRYBH274oR4fC4
	EivC9oIvEVoi6bRd+SrQttgDwMnc5KV4mKRyDVjlsCvtCzJaNq4mg2ByxvmfjdYq
	p877KX9JVF4ue8/afEcVC0d99pp/DQCKboIRPCE7oJWOT/TazAZ+/zEVFloOtpL0
	W9WgZpipn4pU0BHlLWIComEOOdxxxfS7TLXAWy06c2ZWTNXrLpTyhNze1SGGUeKn
	aGQP9zN/zjAMnDq5yb/UTMa90AiogotQj1Ar1GLz2S/rox8nPQTfrSf/HZaihScC
	oPpd5A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499neksnwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5d5cc0f25so60277091cf.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438700; x=1759043500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ejKCJjXaWa+4Btg2sDOmh3RzkdRjnyELJjjh7uxooLA=;
        b=ek6X05xgby7Kq8im4RYMbPFs/mlYX99J7FqKZjm0jLnwzooI+x2194ZMiLzTYh8AUX
         jI968JaAwTAdwIx2F4DsFkQV3WRjqCJAspl+RVJJw07kguuh8DyJQNN8Kqja/zMbVtQB
         grzopjewIinOC6be3yuqU63WmApin1cw4MzMPBkLO36iNVgjlQUyCAhHILM4EJREvU3G
         n8g5tRCW0vM8jt9sGY7AfTSQOHL5iDlps5lxbA2eXCbackY6gzZtmAZSgQ5X6v1V0ndX
         PWfZ8SR2tgNU5S+5ZPdXeW8ZoI851JQC86nY1QJmGTI1xNcIS7kmced4WFzVYDWPE8RP
         SInw==
X-Forwarded-Encrypted: i=1; AJvYcCVCBbOuJ2QJrFe3dOXAyTPgixTkZM3H7vGI0qqTVTLDS+pnOs6r0srWcvR7N2CLT3P2Qg4rcT2y9RGD@vger.kernel.org
X-Gm-Message-State: AOJu0YxCldoe65xtSsIBjFkVOnMuXUpGKQPWtnVAUWE22IlejESNKCZl
	Jd7U9TSk6VQMIBUvvrKeZV7GmrVgw0jan5YXCzQ3kA9G4sX0QI8kHgIFBoH49t/P/MWkH7KC82K
	IbqaChBAikAbiNHB1XSHh/zQIHxdVmqIqsQWBi8ps9RbVYKhn3suAJzpD9r9UA14o
X-Gm-Gg: ASbGncvoL/59yb3uyNtOTZoxkRyZyq9OpWm1R9UufpJWvLgFB6kkcnVKhpE1amVHydj
	jRbyLR1qqTozvLoapdD+QPkBhIdbHu/IOyvr0l2MGyEcbIqULAD9o0WMboqpoCzennZ3GZx3+a4
	zhZjQnAxV2DF47ULzcAob461iF+XHctMolqflt2dmQ55OOeyhgvENB0RVE7vOk5K82KlZTuVsxq
	7zuBS23K+wl16pWHQ5NTjS9ARHzQj3sNP6RWxzFPF8h32uN0+yI3prd998GrQpbLDHoPki2Djhf
	c8ttSV2bxohpWNGPs33Nm9c8GKdqRd77qtVtNPZ771BOsEcmCRZgnRzCcw3hEw0Wjz+Mzhq98hi
	oOBmw3Q2Zx7tiHmTtsHVKl022vxClK6Vrs+xfV0QzOi6ceuwdkjNW
X-Received: by 2002:a05:622a:8c5:b0:4b7:aa99:5449 with SMTP id d75a77b69052e-4c06fc182d1mr114448151cf.2.1758438700548;
        Sun, 21 Sep 2025 00:11:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbEffiODdDcEV6/sySy7mH2Tl7Xwz0TgRlTuJxwJiCt9ulkuemj3hCOkK4O6r7hzICYNQuXQ==
X-Received: by 2002:a05:622a:8c5:b0:4b7:aa99:5449 with SMTP id d75a77b69052e-4c06fc182d1mr114447931cf.2.1758438700131;
        Sun, 21 Sep 2025 00:11:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:20 +0300
Subject: [PATCH 04/14] arm64: dts: qcom: sc7180: add refgen regulator and
 use it for DSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-4-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1056;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=1RoAFURhJrvly7ZLvTZU/OkE9NnQj/ClSoO+/ODqWqo=;
 b=kA0DAAoBizyKPgIpKNUByyZiAGjPpSGhU3kG+04h8mDK7HnW5wHScIkebZ3SE0c5PWUmnJaWV
 YkBMwQAAQoAHRYhBExwhJVcsmNW8LiVf4s8ij4CKSjVBQJoz6UhAAoJEIs8ij4CKSjVCtAIAIVm
 6/Hf6HGfB33mXPfDhnnBwrR/6PmBMneksnlEduC3h7QdfGL8t0RHQsAjoTM3CgbGVK/I6UPiHRy
 typkj1suNShGktdYCXxR3bgGgQ7yhUKooU/gVZ2ETgwbJipffo86TdHu1tjRSrFGF+U4IBTmTFd
 mwiBJBnGdwMMINEpFmle5SjJDUa8ORm8vMqcuqYBQ8S/dJDDUuhYWCkpfS6kHOpqq1jb3W1LRyU
 r0PU5OLe4AUMLLtCtCmAvcZSfP5MCONG5HEtT7scLNrl++USYfW69e6n/ZiIzHWzLcdd3o7Iqg/
 SmIkthKvA1ccz0Jz2ZAF8ZD5GnVLLfxV2tmGB1c=
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: DzTYdkoV1VVtVwMSu1S0RYT7G85Ejkfy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MSBTYWx0ZWRfX6FpdEqKMOMNY
 +uI9QCgQS/LV2P6i8L/oTsXcZwYEYMOyEpQPJAaCriA5nrXSifdKkpa+fY8Hxc07cBTyl508mpI
 ZdOoRRNAtf3DicBb9M/xdQu9jBgEPY8d8hkkN8/U4DoXUFNGGBM03bosy+beaLWs6RNfj8WfN2T
 I0AVp21HImp2K/hPJtl3d4Cw+j02grN9nrQXhxzSonHNdEwSJTSgG02s8+yrSfjDaCDeaff9h8F
 5fOt4hAOhmSbJAKgXO6i8SQ/OX1viKUrBVF007kb9CgNOkNMXTbO0/kP12YWtGD8m84+A1AE0sj
 rMKQ5sOSvmZSIVVsOpKe+YhoqObFwL+GOpcEeYkBLop8mysjP/UetoPkYQFPit8zjlekScrDllP
 2NuzXm/q
X-Authority-Analysis: v=2.4 cv=b+Oy4sGx c=1 sm=1 tr=0 ts=68cfa52d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VWJQ3tB3OeTIR7vIxygA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: DzTYdkoV1VVtVwMSu1S0RYT7G85Ejkfy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200041

Add the refgen regulator block and use it for the DSI controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index a0df10a97c7f8aa5cd468c8983e74256490d1d06..a47182994c564e036dba25c772454320dc41cc7c 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1474,6 +1474,12 @@ uart11: serial@a94000 {
 			};
 		};
 
+		refgen: regulator@ff1000 {
+			compatible = "qcom,sc7180-refgen-regulator",
+				     "qcom,sdm845-refgen-regulator";
+			reg = <0x0 0x00ff1000 0x0 0x60>;
+		};
+
 		config_noc: interconnect@1500000 {
 			compatible = "qcom,sc7180-config-noc";
 			reg = <0 0x01500000 0 0x28000>;
@@ -3332,6 +3338,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				phys = <&mdss_dsi0_phy>;
 
+				refgen-supply = <&refgen>;
+
 				#address-cells = <1>;
 				#size-cells = <0>;
 

-- 
2.47.3


