Return-Path: <devicetree+bounces-237305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B05C4F2DC
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:05:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 000F33B4638
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2123730F8;
	Tue, 11 Nov 2025 17:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dq6SLOBZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EdnQn9qo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D484E35BDBC
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762880642; cv=none; b=oQXNfXGA4pwFO7vmllWnDi43SldnxBtQ1+mlRrZwGmVmreg34lgeDDD8Aeds3XbPpfn03VKbriiQwYjGpZgaiOUcuoQoJbhfNdopYzudPjJ4jcUJhXomZ5oF2Nkt3deaLwMX9eVT3lOsh6FeQiM3/F7kl0Mat4XC3XCUOSNlPMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762880642; c=relaxed/simple;
	bh=oY4T/ttoreMDsko7aua6FQ5sUjs/KwHa2EFAh1PvwqY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hQ84W9RFSUTXc4c0alBfCLWv853/8Xit/23UVJiD+cKdFM/uAjSIHxFja7uf5uz200V0iK6LbB9tcz3CoS9Jy4VEn4ge6i1l+30N3xK3/48sPcViA1fp/mY2jBryKqf6wSsOldG318jOe94eJt5E7BQAzj/6n6oCJH2IPGLBEqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dq6SLOBZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EdnQn9qo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABFc3lh2853450
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=sSqkmTvk/o1zV2BKESv8sOE2j4hMFGCUeKS
	AHs4JkiY=; b=Dq6SLOBZdEdcLxlp778Gm9OsA+XdoTRZlm4LGBRI3ScwkzOWkyj
	llkMN1k7DLNF3nrFkrRHAu/VE+Zkp3PG/aXLl+76QzCap4QKj6AomfuJuzckqnnV
	yk+XsiH9wkCeTUb/G3YjpTFhhAk5l36M0jNiR+5kX2VaXMnGfarfK6QTMHotdgWW
	UTAHlt4zs9ZXliM4dYG0fGVS2UJp6vj8e2+7N8AB9feoJpV1GNq9ds73I72THouP
	zKXLj9b+56E2UAdMrjv+SwiF0SmfGsVP+dSuqHX9+3m0kQDdJRBe2rib9QDmrHZu
	+yKrEVhn5pwczQbU0IoQWfhSe4TdaJUS9eQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac7y009kw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:03:59 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297b35951b7so70993835ad.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 09:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762880638; x=1763485438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSqkmTvk/o1zV2BKESv8sOE2j4hMFGCUeKSAHs4JkiY=;
        b=EdnQn9qoKz5Is1CNcjtAVTWydTAeqLBux3lp7NN/Jg8Rx7K+0jXhvEcj7awjcgwyd/
         +dDf8AlyZliXmNdpWWMkxD1Rwx+Q+HvAfhaF8+Io9Bf13lHZXkZRHRIybxQguYCZEGN5
         61H2DmZ+Y3F/CEqWR6JNhTWD7AwVViPRoCFLmgg+MKPiV2QFSJT4rjO5n1s9D/peoMNM
         vr8zZZl65z3M1MtXcmgv92yxVtavGmHS/mxfQBb5htCsovFhDP3IAqERAgdE0gNjSDRO
         zBMUcX05ezkGpAHibjjh8adOl/B2qe+/PptcQqwNMQdaIyN2ja3dxm9/SyRbzRdStcDL
         VXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762880638; x=1763485438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSqkmTvk/o1zV2BKESv8sOE2j4hMFGCUeKSAHs4JkiY=;
        b=S/ktHhnmsaA5aPWhhXrt8lk4otKcpmsBW4SWDdK67bpzKHnnSHE5oG7N+cejsQbRQG
         EJiB0yLuiw8+j7eEKbHnp0ClxRvGbfFAicMlACEp3B+yvwox6oXWtLDXXw6PTzo9iLkr
         zNhG3Egbm5nWmHuV0+INRIfG+Dco8M3TbyaXj2osPy8mKBCls6SINx6lWvUWM426GqBB
         UUyscHTMhAWwEU8WALTtFB5AXpOftqgMfrueTzND/NBqC/sWUZF8/5f/546SeHGqAIpw
         aWOqGUtDlDS7pLlDTTgNeDHjorcMfZtJIcy159VWHEeZgmmi6esFoEw7FhW3+EO3Zv1z
         M++Q==
X-Forwarded-Encrypted: i=1; AJvYcCWuzcyo6leaqXPgBARtTlAFqgqx+1BzxJKe8I91kuxdySaYhukgvgkpApqutxBmqIRFc+B/aBo0t0Xs@vger.kernel.org
X-Gm-Message-State: AOJu0YwTtDrSe27c8O8qAPXw6rcxerNQAnm62UK4GL1pqqtRsp3xDOc1
	2Hhu4vB42n2aM4Ou30sy12PRUJp/9N92lU/6HULRVFV+4mIzmSLmhaGu30jYMpnzyIaP4n2t6uu
	9jWYXCTP5ET2HMJasrVE1/xAvbdZrOvOWuw0jXsEhdXdoaZru2bJe1Fc+WtQM3vul
X-Gm-Gg: ASbGncvZ3yli6xixdD4cZSM/RQxL7rWydmCq97MpYRofvP/royRhYpuNo0Qmlq6wV/T
	zPD29t3UDPZstg7sJvyfNiAvaf96iz7b+idATIrwIZlXoqeH+T5S4hzUsCo9sFV8WibdFyuF/hY
	u01u9rHyMz0ke7Pxc9UWG7yIhrJ9GHVXP53lqmVJ70FJPd/PF+zCe/drzRrLb8xQMzEyRbNHcPd
	IsttBwc+8XVoEcmkXmY+4+c/taQdQOTUP9LSO9EEpemLrPSxuYva+6MamKtfhtjcpvtQMKcJXzJ
	20peLv2xVfPZlw2Yxw2UAdXR65sq16bhXSuMFwvUQo45uqqAAIIXHDd70xiE2tv/W5cpY8U1ZgF
	km0BeH6ROByBi45d7/j04x0sGiP+d074qEA8=
X-Received: by 2002:a17:902:e78b:b0:269:8d1b:40c3 with SMTP id d9443c01a7336-2984ed2b619mr438925ad.12.1762880638462;
        Tue, 11 Nov 2025 09:03:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWdsUBA6eSuHxYDMbD8ULmG3xXxYMXzsqpX6BMtcUFNBsubisaSrMVPigEbV83zZrnBZT5qA==
X-Received: by 2002:a17:902:e78b:b0:269:8d1b:40c3 with SMTP id d9443c01a7336-2984ed2b619mr438335ad.12.1762880637855;
        Tue, 11 Nov 2025 09:03:57 -0800 (PST)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dcea690sm2262405ad.99.2025.11.11.09.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 09:03:57 -0800 (PST)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@linaro.org
Cc: mukesh.savaliya@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH 1/1] arm64: dts: qcom: talos: Drop opp-shared from QUP OPP table
Date: Tue, 11 Nov 2025 22:33:50 +0530
Message-Id: <20251111170350.525832-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SY36t/Ru c=1 sm=1 tr=0 ts=69136c7f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=B_wteF72wSsg3gi9yGIA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Y2G7X8fgPGPKQYs-PP85Suh3yvuJg2kl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEzOCBTYWx0ZWRfXyVuzVpzK1qDU
 MZFXGR9waxJmiaPf1mDjrfGMFa6p/xOy2Ofvv84jd6E7xl5y8MqL2/LhhX7xSQVduOFSwDBrfSw
 cPjKEI5cSBGhPZxSN6vtJvLIplrtDn2fbQsAVG7lg7ihQyn31bHrwliJeoir3509xbzd2LpZ+B8
 vumLuYP81BRdm+ovy3d90IctocY1RaEQLdObgULMIpi9orZAGc8sGgw84oT7oQuTfLt25NgpSK2
 xxLUDw8XvZg+5KqfDUnbXWrT8YZXLZEDEalmimHyAY3wOVlBY0dzE6U4/ct5JHL4HYGpU1+a47X
 BAQ5mRsLsoq6DSSqGmRK6ucg2yTjcJq5xXj+LAwuV5CXZrT8pq+KMCsHTDhXIzSd0aAR1Jn4Q7c
 jzeuoGx9YgLBPTGlYDiF5hhSeYlOvg==
X-Proofpoint-ORIG-GUID: Y2G7X8fgPGPKQYs-PP85Suh3yvuJg2kl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_03,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110138

QUP devices are currently marked with opp-shared in their OPP table,
causing the kernel to treat them as part of a shared OPP domain. This
leads to the qcom_geni_serial driver failing to probe with error
-EBUSY (-16).

Remove the opp-shared property to ensure the OPP framework treats the
QUP OPP table as device-specific, allowing the serial driver to probe
successfully

Fixes: f6746dc9e379 ("arm64: dts: qcom: qcs615: Add QUPv3 configuration")
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index eb6f69be4a82..ed89d2d509d5 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -536,7 +536,6 @@ cdsp_smp2p_in: slave-kernel {
 
 	qup_opp_table: opp-table-qup {
 		compatible = "operating-points-v2";
-		opp-shared;
 
 		opp-75000000 {
 			opp-hz = /bits/ 64 <75000000>;
-- 
2.34.1


