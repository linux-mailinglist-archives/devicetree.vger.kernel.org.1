Return-Path: <devicetree+bounces-171016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8989A9CFF5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AF759E806E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA79E21C9E9;
	Fri, 25 Apr 2025 17:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EPQKad8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AEC21ABDD
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603247; cv=none; b=onJ1p+t1PM/qvaewWFw8/49sG2bRxi8UK7ALxYY2iOlz8/2SfP20SjJ/sQrKMq/6OMN7Bz4+lsrDaRjY8z6ivu9m5s9Z8EjMkISHtlWRzeA9qZzBC6eKJs1g0miSBrJ67xFjb+xbDE1SQE7P2ekCwivJaoBCigZaIf+G4NSp4Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603247; c=relaxed/simple;
	bh=FDMCvMj7/PXLNCw1GpXL+w9RnufE1DoZqoZIjeR8HUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cGeEf17bj9YkeYKpNrtxw2ypkEz3GbBlg4VfhxgiEnm+JNh4SashCH72nAvLyBHQMhTGh9VceeTn0sTmDJjYvKDjedaVdZgkSXRiyXVQlkRlgYMnIYKIUtavjyh2/RrLmFj4tDG3hZ5frNfvL6G4gM6KSUxsYRy9ZA5ILUg8WS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EPQKad8h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJqSw004615
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A0WlV/ORzBoIjlEcynq13EUQZNwykShO61g0I+cym80=; b=EPQKad8hO+29ci5N
	HJSfcbOEZie5Zo97e1xlAqtTeSokTebKcepERYbR3CIiNftn468nuauTdYuAC4AM
	yxpHX3LkNSDtIyudDRIhAHTt55kTnQkAWc+mlGZQDUyDWRAAxVvuOg1yXLC78vh4
	6MGaT+ofKWo7DnWLlmrqruCmgCQBVgPHgDTH7ZlLMitNshPapGRu1+MHpgEsmrg9
	caVldj/irbs2dMDQgjOGMIwOINIg5POo0w3jNGKwcDZaTbBfVI9LGF5WPy9ygoXD
	Q59l0wUyvWUpDxQgN/p1FJ9S8Fbmkiv6+XK0aaFc/TKXuP1hZMHl8FQfPlecqcXv
	i1srbw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh09w7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:24 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c791987cf6so511385085a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603244; x=1746208044;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0WlV/ORzBoIjlEcynq13EUQZNwykShO61g0I+cym80=;
        b=O92KAla8nMgQQN2SrnsWp0pEeLuOTXvwSgiPfRQ+M8bu3xvoET7ZIcvqO9LRRF7LuZ
         tC4fXDkhl0IURJCg+3LQJu9JPlVz58LBsCwp/ggHEVDUMav4ym7CXkBhlt3nd3tN2wmw
         jAuKVveGubPKDLATusvHs5Jy79xkL0oK/KetX14yzBIWF6/tb0+J5RlB6tY/5HtZ5phj
         OTFkYgNFJh0Vk7Zql4tZzA60gGfEf5ePZWmEPyr7rMUz9ty3AX+XT1zZCOerz7rlmhsk
         WY59+6BouIBsjwK8xYTt6Io3Qx92xS+LCJpOClRTcWWvtsHskYQ25Y8y8lhw05ziu9a4
         oy8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWQdX2M1Z6U3aP86m7oq1fpLfVRWBPzqxCKnGtt7th/bRh2juxA02WcwOmmtCJpB9uy5wlXeIkZl9GJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwcXfexT6HmFo9XSk8DfMgxJswSAcLMM/cyCaVkKkxK0pJ8X4kt
	0UD7zwjI7R6uIFy1OrkpJK29ACXPerfT+mztOA1sbJNIN04ODF2K++YxKdd7nvLtZyLJhvxKkKc
	58P9jP/OlH/mwzEJk5cciauE4Hu6g3PT0lJqdY6PIi/GdVrzTsBWv5yO9wG2H
X-Gm-Gg: ASbGncuNGVVOJhB41kIocmzBKA7v9x7Z3oawmh8deERhOOVb8LSG7B0AJPHYVfuKGMH
	beH08IeT70fhCPrrjrc85cE9qJQKouFI06GKvrKQqta9rVOiOL3eAmBoW+lLj/fD9grevzMAY5n
	b/2bhoBm3Zi/66RQXcLldt/tH3cJMIBt+pyNYeSI9pvXxxkghPuVf0+f5FwjP5hJJFhMGPGm6Nk
	/39yWx7Hqxn1Uc1aHjJ83O7QMFnnBxC8h/gyDjuuTPCxD96yyCNkOTz23oTfjUeMLrU4q/msNlo
	dmJV2zdJi96/EBMZL9AA+P97fF1B7vHyOPiUSQ+59LXnlgbZx5ImpfGas/I51pQdwebmBhAHFSh
	Fvl0Pa2qOw6Dn4jEekTgqrcUT
X-Received: by 2002:a05:620a:1a17:b0:7c7:9aed:1f36 with SMTP id af79cd13be357-7c9607a93c6mr549159085a.40.1745603244002;
        Fri, 25 Apr 2025 10:47:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGNeIVbm5YyYTfo1SKrEUDYFsHhFGijcH4+jq9I2UwLvyQSPV6mMmcDq5lpZnJqcOChctv7w==
X-Received: by 2002:a05:620a:1a17:b0:7c7:9aed:1f36 with SMTP id af79cd13be357-7c9607a93c6mr549154185a.40.1745603243628;
        Fri, 25 Apr 2025 10:47:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:08 +0300
Subject: [PATCH v3 08/11] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-8-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1454;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=FDMCvMj7/PXLNCw1GpXL+w9RnufE1DoZqoZIjeR8HUU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC8qbVivJ80tpTn9sHqosHf+sN3rHhgA6TY50R
 EOHpfznLIOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvKmwAKCRCLPIo+Aiko
 1dZpB/9dbNHoyODZwnrfGxWAw5+Tm2ncq2NN1i1DpQvJuLY9y/mELKHs60iMFDnQlZeqZpZ7CO1
 XqPdzr8BukLZ3f/b7hUZRB5nl3nkZLm6iWF49Yeb4wDvlogAZmPMWMBUz08mzEFMekHaxYyPk8Q
 ogA5lM5KszNsYIPF0aGP0tH1urvsEAum0ujEOqvP6vr7IERpq/gYqAvrgx7oIjbaAfJ+BluWgjd
 2CqZ3bsmXZBt1Va+6CfVG+3RWok+6PC0s7JrqbwR36bQdNYPj3z7e16aiglwcJzlv01GPRYDFkL
 UrJGj2qd9oH19OfMU8WBVnFoCxlMAsbn+qOyCbaCs2VMTtdD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNSBTYWx0ZWRfXyelKD7jXUsHT FoARvGmWPhxd7qP0tQ54h+53XIYUvlYdkhCdf46QqmX/WMsoqdX6FseqvsoG73ArQNGiHoIqjHd dOzdJ3Y6fbPPhAd+2K1+0wKqxqBaFPUyR9vBUrMUJCwOfMsaSSvb/om2FEKADEndRalPaU32pvA
 QNJVWLpS6r30TZkaH1C5KovVhkyQeiWFvW+zPQTe/pDf8PHUchAh4wB1G04BeOpUsQzWQPRanoQ UejjXtPXXmTs1Opnsu71BaQXSRCCkXtXeDg0+//AqEFMZ1wV5B7LmCGsqgLobevApn4waYRwOmu eT6eoItbUXGN2GFGgOIdxHC5R5h1RXbCSeDjdiUSQ1elQAjIZlg2OKHJfJdDbSO6CiTKaF2YWJV
 KVK2GxwtKP+YGRc6aYsW0Wda4Y61/wqUO/87HYZyeVg8jYGW6XJTzZTpNWIwdcsQsmV1i60W
X-Proofpoint-GUID: LIOisMyU7HnFiDZGkKDNxdKPsWvV4c6J
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680bcaac cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=rbKIQ1AqokDPPu1yVMsA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: LIOisMyU7HnFiDZGkKDNxdKPsWvV4c6J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=672 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250125

Follow up the expected way of describing the SFPB hwspinlock and merge
hwspinlock node into corresponding syscon node, fixing several dt-schema
warnings.

Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e..41f8dcde20819b3134c38dcb3e45b9e5cc24920f 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -213,12 +213,6 @@ sleep_clk: sleep_clk {
 		};
 	};
 
-	sfpb_mutex: hwmutex {
-		compatible = "qcom,sfpb-mutex";
-		syscon = <&sfpb_wrapper_mutex 0x604 0x4>;
-		#hwlock-cells = <1>;
-	};
-
 	smem {
 		compatible = "qcom,smem";
 		memory-region = <&smem_region>;
@@ -305,9 +299,10 @@ tlmm_pinmux: pinctrl@800000 {
 			pinctrl-0 = <&ps_hold_default_state>;
 		};
 
-		sfpb_wrapper_mutex: syscon@1200000 {
-			compatible = "syscon";
-			reg = <0x01200000 0x8000>;
+		sfpb_mutex: hwmutex@1200600 {
+			compatible = "qcom,sfpb-mutex";
+			reg = <0x01200600 0x100>;
+			#hwlock-cells = <1>;
 		};
 
 		intc: interrupt-controller@2000000 {

-- 
2.39.5


