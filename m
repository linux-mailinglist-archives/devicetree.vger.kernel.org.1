Return-Path: <devicetree+bounces-197754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7EBB0A83D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DBDD1C81675
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992832E613C;
	Fri, 18 Jul 2025 16:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dna9LmBx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E502E6134
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752855238; cv=none; b=uSZXnRhJ3Dr/NxOz3VM3vfUx9ySLakoxPw+PTU544zlr/sO9lJwu0ft0eH9Pil2O1jx0s3dAmUT1i8lvRxZ3VcmQ1mDjZkdWtvCPnb2BxpyVVHqBbDvhVQ0qeOp//Ry0XcNvxJ/ei5TMyMTwtJ4b63f+G8cWLLUIpk6y/zch3is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752855238; c=relaxed/simple;
	bh=J9J5s3ZT8qppRfzTVRn+3+0mDOD8laySW8Eg2GginiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DUOgVqEDfUal0UQqoO2luinHeFVStxeVesJAPip2bMIKat0hj3k90CdBVXmuQGvgTMQUEJZuEY0ZCQkpKIzVBO0lLsKlJBFd9XZpL8Atbb8h/EULfAWMt4kVW0UxLS7zWI4nQqVerXbQkQ8UwSst+cW8bpYa38DJrSu010Kap68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dna9LmBx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I8D2Tv000564
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZCzwxr7iMtuP14zekGihLh8lesU3QR6bkF8d5rNiDCg=; b=Dna9LmBx27bFYz+Q
	W2UG31YR5KVjHRho8ThR5+3r/6QAim7RNsNUk7LeXxmLJK0IShB/bnuWYgbiryLc
	AGSxvMNI62d8IxbRKIQQqcsD1QDfNY+yx0ooiRBiMKSp1lXDOXpBa+O0Gr3g4N4y
	45OYvUYONv5oKa6kv+9/z5PM60y8NXTAlv7m1IVBCN8KKuS4va0K0DSMMdNYTyFV
	XP2A7kG63VY6cBHluZm4VGWcePrYRXKQvcPVk873Pk6cDVHSIwLnuZ4QrKiXa96w
	JTYM4D8rr54IwfpTqvzjJuV34G38hLUv5Kq+Gi2L4OSPh7J7SeBhlBoTOStA3UsY
	0yHRMg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dry8xe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:13:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7ceb5b5140eso372665385a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752855235; x=1753460035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCzwxr7iMtuP14zekGihLh8lesU3QR6bkF8d5rNiDCg=;
        b=xLt+nQn/4yI+PmMtM+Ur45WDYBzPxEVzicRm5rG3eAKir+rC7Rueif56z6Ttfox9I9
         2uFVsOnaYD3Lr9TCtHSLuM5CwFU1FxGHCNkhFCtTadNmYMew2rpHA4ODsOXksaMImDRB
         fPQjqsE+nIf0peUE73EhLtwzWWBR2Bdxg++Z9l2Nq3GXT1OkOGSFlwyKudcxOfhIdEvC
         hygrHPKbGHPj/yOeCj/BI1Umn1D9aggkVg+9XUl4VKDayQRwW3oSXSoKcjEhkXu8YUhS
         JCbyZQpEE3dILjFvdDvkv7WfNvTTdGRmk0B06Ow5Cs+9lvWW7+MmQxCf3NGvfhoz5EqB
         +vqA==
X-Forwarded-Encrypted: i=1; AJvYcCUJWJcskozYFMXrYJnIjREHPdacOJEsuEMpQKG+6OeBtWapzsKI7kewzFKMN98VMWQv2wSY07euGcHO@vger.kernel.org
X-Gm-Message-State: AOJu0YwKFMgxGjpttYyStecEWRM+fnqkeGxXff3qkNe0r1ULnXzbkzTm
	wBPB0gd3dIPh2hzuafG2owrZiYlF1828tMLrOYIjUtsfR6bxtIsMGv2W7BBTInFhp0rY+hmAyEe
	DEbfmurFFmgN+fssagjV6QWtpiy6/YCg+2LKczduQsLxvl/arUx2tZza9ogb58y1W
X-Gm-Gg: ASbGncth4b1jvUMPsg38+MF7M05ob1cqg/Ba0rXNcoDKfGPgirf+0ISr7Fw/n3uLhBb
	qGagJ5QEaeECDyv4jpYn7jyLqoduikZ6Lu9Ie35isBAdO0OcWha0gJMqr1wkenXyxkYTZY2D/nj
	jamitaqjrHZgSxUKzt/Q3uW/uiFhuB3MXxWxfWywlY23DCfhwh+B6q+CVOArY2AJ2DCaGXRVGQJ
	+18KMuGO9zXrzzdUvmqoSS67RlpjeP6dXwNyZjKPjO81U/XmoZKj+jhOb3uBwPzR+impt5bTReU
	Qq4bBENwsRmadQi0If0vzN3JqcEC9Naw0xVx+wSbZCfuo7Uy6BSVFHg2iJcL91m98GDzDMi7OQ3
	9R3cTRjek3DmxpXSF+6GXvRZWf2tJ2F/wahPfTDHICHonXX+XE7Fu
X-Received: by 2002:a05:620a:2619:b0:7d5:2332:2830 with SMTP id af79cd13be357-7e342b36709mr1514338285a.33.1752855234322;
        Fri, 18 Jul 2025 09:13:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJqhbUfsJcgskPt5gFSsEFmUoM869N3h4c6DWZdwSQ7WM+DzUs0Eyz4ta6GT222TI9nBDg8g==
X-Received: by 2002:a05:620a:2619:b0:7d5:2332:2830 with SMTP id af79cd13be357-7e342b36709mr1514330285a.33.1752855233571;
        Fri, 18 Jul 2025 09:13:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91c1ab7sm2388131fa.50.2025.07.18.09.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 09:13:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:13:43 +0300
Subject: [PATCH 5/8] arm64: dts: qcom: dts: switch to RPMPD_* indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-rework-rpmhpd-rpmpd-v1-5-eedca108e540@oss.qualcomm.com>
References: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
In-Reply-To: <20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10548;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=J9J5s3ZT8qppRfzTVRn+3+0mDOD8laySW8Eg2GginiY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoenK3KYawurHCbAYIJ0Q4CQdzPRjR8zEj37Kyy
 IF02mgP0yeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpytwAKCRCLPIo+Aiko
 1WFXB/9ORH804iejkaKkwkJyKdgcA2PvTgOCFm9rVIEV9Tex05dxpfDyqTkADXOZ9Hxk9OJN1gM
 gpacrzEOlW2/YuuXI4eD+NPU1ArxXw3ETfF2LIC3yNpAXLgnzcYr7iS2D16nHHP033q37/lMRnC
 U5aHkgg6L5FtmXhagFD03m8Wwe7AUCCiXAcGRwRI3rcMFuq5BRLtHoa/2A3P/ythyyRr3qHoI31
 iD3+rf3rX5ruMaNuupHA/YbDY5Yp/veJe+I4aCmO2HvEsnyERAyMXR+xcUtXX+MkbeU2z+kc4CM
 HBd02eBtMBiio5t9lYHE7RydXk7dbrh+/mIIqrX+xA7ofLwt
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 1PzwWXRg9sRmbCX8iHnpPhsXtl3XWbbP
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=687a72c4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Y3wYzle4tNZGDD-pgqsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 1PzwWXRg9sRmbCX8iHnpPhsXtl3XWbbP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyNiBTYWx0ZWRfX48jNriz6Zk6p
 /twSrvir9PdNaKywYcSkJCsIegjgUJDkHWLXRsd3NQvTCg9PzfntWNOfaNnHxwRo2CZFCfKXMCf
 BIEhRYqzqrXEtqn6j8mGFkjfNfE9IJC5nscUP7rd1/GFFNdIL3L1WWKA6Nw7s6MQt8ddjSvhjMz
 4I11BLtiuNXDjQQs7cKBzqX3/nn9eneWBuaN4wg81uFgGsLt4s1qiGBkfxjIBbMB8k9nHhtK1ei
 0rZSEWkpeJPUkogdTHCl38FF4RliafsfEdKbLNkmlbDd9t4TZsjZAJJiLFfJx2TmVnujKxsVBD7
 fZ/7mlyv/S/AYy3jTfOR/G2BROxclWthlDWsy84ybiJLPckiyThU66t4uYKVaqSYqaIzg/H6O79
 IyiXiYqzJciNM1cBZvnfLD0PiASJMKfa+UC+Dse8baKaLkxGsgl9SEU0jKaco+4H15ZKMFbt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=655 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180126

Use generic RPMPD_* defines for power domain instead of using
platform-specific defines.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi |  8 ++++----
 arch/arm64/boot/dts/qcom/msm8917.dtsi | 10 +++++-----
 arch/arm64/boot/dts/qcom/msm8976.dtsi |  4 ++--
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 ++++++++--------
 arch/arm64/boot/dts/qcom/sdm630.dtsi  | 16 ++++++++--------
 arch/arm64/boot/dts/qcom/sm6125.dtsi  | 12 ++++++------
 6 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index b50c7e6e0bfcd35ab4f8b84aeabe214fd60e8d7c..ca184ee3af065df0dfb3c7106d29360a860b8b36 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1943,8 +1943,8 @@ mpss: remoteproc@4080000 {
 			interrupt-names = "wdog", "fatal", "ready",
 					  "handover", "stop-ack";
 
-			power-domains = <&rpmpd MSM8916_VDDCX>,
-					<&rpmpd MSM8916_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			clocks = <&gcc GCC_MSS_CFG_AHB_CLK>,
@@ -2445,8 +2445,8 @@ wcnss: remoteproc@a204000 {
 					      <&wcnss_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready", "handover", "stop-ack";
 
-			power-domains = <&rpmpd MSM8916_VDDCX>,
-					<&rpmpd MSM8916_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			qcom,smem-states = <&wcnss_smp2p_out 0>;
diff --git a/arch/arm64/boot/dts/qcom/msm8917.dtsi b/arch/arm64/boot/dts/qcom/msm8917.dtsi
index 8a642fce2e40d6d252a1cfbdfed602e6789ef09a..87dfc1e7e131cd4192ffbdd4913f934af17c5c88 100644
--- a/arch/arm64/boot/dts/qcom/msm8917.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8917.dtsi
@@ -1070,7 +1070,7 @@ mdss_dsi0: dsi@1a94000 {
 				phys = <&mdss_dsi0_phy>;
 
 				operating-points-v2 = <&mdss_dsi0_opp_table>;
-				power-domains = <&rpmpd MSM8917_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -1288,7 +1288,7 @@ sdhc_1: mmc@7824900 {
 			pinctrl-0 = <&sdc1_default>;
 			pinctrl-1 = <&sdc1_sleep>;
 			pinctrl-names = "default", "sleep";
-			power-domains = <&rpmpd MSM8917_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			mmc-hs200-1_8v;
 			mmc-hs400-1_8v;
 			mmc-ddr-1_8v;
@@ -1313,7 +1313,7 @@ sdhc_2: mmc@7864900 {
 			pinctrl-0 = <&sdc2_default>;
 			pinctrl-1 = <&sdc2_sleep>;
 			pinctrl-names = "default", "sleep";
-			power-domains = <&rpmpd MSM8917_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			bus-width = <4>;
 			status = "disabled";
 		};
@@ -1517,8 +1517,8 @@ wcnss: remoteproc@a204000 {
 					      <&wcnss_smp2p_in 3 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "wdog", "fatal", "ready", "handover", "stop-ack";
 
-			power-domains = <&rpmpd MSM8917_VDDCX>,
-					<&rpmpd MSM8917_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			qcom,smem-states = <&wcnss_smp2p_out 0>;
diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
index f9962512f243d6c1af4931787f4602554c63bb39..80a0a09e055d79c5e56f89e5d67baf9971d87069 100644
--- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
@@ -1558,8 +1558,8 @@ wcnss: remoteproc@a204000 {
 					  "handover",
 					  "stop-ack";
 
-			power-domains = <&rpmpd MSM8976_VDDCX>,
-					<&rpmpd MSM8976_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			qcom,smem-states = <&wcnss_smp2p_out 0>;
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 0b0a9379cb05b01ebb17cef9fe7d22d56790efd3..2d7c45fec94e868b41a2b8d7acf8175a7b02c0b7 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1497,8 +1497,8 @@ remoteproc_mss: remoteproc@4080000 {
 
 			qcom,halt-regs = <&tcsr_regs_1 0x3000 0x5000 0x4000>;
 
-			power-domains = <&rpmpd MSM8998_VDDCX>,
-					<&rpmpd MSM8998_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			status = "disabled";
@@ -1544,7 +1544,7 @@ adreno_gpu: gpu@5000000 {
 			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
 			iommus = <&adreno_smmu 0>;
 			operating-points-v2 = <&gpu_opp_table>;
-			power-domains = <&rpmpd MSM8998_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDMX>;
 			status = "disabled";
 
 			gpu_opp_table: opp-table {
@@ -1680,7 +1680,7 @@ remoteproc_slpi: remoteproc@5800000 {
 			qcom,smem-states = <&slpi_smp2p_out 0>;
 			qcom,smem-state-names = "stop";
 
-			power-domains = <&rpmpd MSM8998_SSCCX>;
+			power-domains = <&rpmpd RPMPD_SSCCX>;
 			power-domain-names = "ssc_cx";
 
 			status = "disabled";
@@ -2871,7 +2871,7 @@ mdss_mdp: display-controller@c901000 {
 				assigned-clock-rates = <19200000>;
 
 				operating-points-v2 = <&mdp_opp_table>;
-				power-domains = <&rpmpd MSM8998_VDDMX>;
+				power-domains = <&rpmpd RPMPD_VDDMX>;
 
 				mdp_opp_table: opp-table {
 					compatible = "operating-points-v2";
@@ -2953,7 +2953,7 @@ mdss_dsi0: dsi@c994000 {
 							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
-				power-domains = <&rpmpd MSM8998_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				phys = <&mdss_dsi0_phy>;
 				phy-names = "dsi";
@@ -3029,7 +3029,7 @@ mdss_dsi1: dsi@c996000 {
 							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
-				power-domains = <&rpmpd MSM8998_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				phys = <&mdss_dsi1_phy>;
 				phy-names = "dsi";
@@ -3277,7 +3277,7 @@ remoteproc_adsp: remoteproc@17300000 {
 			qcom,smem-states = <&adsp_smp2p_out 0>;
 			qcom,smem-state-names = "stop";
 
-			power-domains = <&rpmpd MSM8998_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			power-domain-names = "cx";
 
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 8b1a45a4e56ed1ae02e5bb6e78ca6255d87add1c..412d7f7d6de67008c1f406ac5a73a51ff7f4f98d 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1058,8 +1058,8 @@ remoteproc_mss: remoteproc@4080000 {
 
 			qcom,halt-regs = <&tcsr_regs_1 0x3000 0x5000 0x4000>;
 
-			power-domains = <&rpmpd SDM660_VDDCX>,
-					<&rpmpd SDM660_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>,
+					<&rpmpd RPMPD_VDDMX>;
 			power-domain-names = "cx", "mx";
 
 			memory-region = <&mba_region>, <&mpss_region>, <&mdata_mem>;
@@ -1096,7 +1096,7 @@ adreno_gpu: gpu@5000000 {
 				"rbcpr",
 				"core";
 
-			power-domains = <&rpmpd SDM660_VDDMX>;
+			power-domains = <&rpmpd RPMPD_VDDMX>;
 			iommus = <&kgsl_smmu 0>;
 
 			nvmem-cells = <&gpu_speed_bin>;
@@ -1396,7 +1396,7 @@ sdhc_2: mmc@c084000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&sdc2_state_on>;
 			pinctrl-1 = <&sdc2_state_off>;
-			power-domains = <&rpmpd SDM660_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			status = "disabled";
 
@@ -1450,7 +1450,7 @@ sdhc_1: mmc@c0c4000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&sdc1_state_on>;
 			pinctrl-1 = <&sdc1_state_off>;
-			power-domains = <&rpmpd SDM660_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			bus-width = <8>;
 			non-removable;
@@ -1612,7 +1612,7 @@ mdp: display-controller@c901000 {
 						     "rotator-mem";
 				iommus = <&mmss_smmu 0>;
 				operating-points-v2 = <&mdp_opp_table>;
-				power-domains = <&rpmpd SDM660_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				ports {
 					#address-cells = <1>;
@@ -1664,7 +1664,7 @@ mdss_dsi0: dsi@c994000 {
 				reg-names = "dsi_ctrl";
 
 				operating-points-v2 = <&dsi_opp_table>;
-				power-domains = <&rpmpd SDM660_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				interrupt-parent = <&mdss>;
 				interrupts = <4>;
@@ -2280,7 +2280,7 @@ adsp_pil: remoteproc@15700000 {
 			clock-names = "xo";
 
 			memory-region = <&adsp_region>;
-			power-domains = <&rpmpd SDM660_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 			power-domain-names = "cx";
 
 			qcom,smem-states = <&adsp_smp2p_out 0>;
diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 8f2d65543373e70b48b4015478e21e8e74fd23c9..80c42dff5399b7c60576c2b6cf79afdbd8b9b1d4 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -724,7 +724,7 @@ sdhc_1: mmc@4744000 {
 			clock-names = "iface", "core", "xo";
 			iommus = <&apps_smmu 0x160 0x0>;
 
-			power-domains = <&rpmpd SM6125_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			qcom,dll-config = <0x000f642c>;
 			qcom,ddr-config = <0x80040873>;
@@ -755,7 +755,7 @@ sdhc_2: mmc@4784000 {
 			pinctrl-1 = <&sdc2_off_state>;
 			pinctrl-names = "default", "sleep";
 
-			power-domains = <&rpmpd SM6125_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040873>;
@@ -1275,7 +1275,7 @@ mdss_mdp: display-controller@5e01000 {
 				assigned-clock-rates = <19200000>;
 
 				operating-points-v2 = <&mdp_opp_table>;
-				power-domains = <&rpmpd SM6125_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				ports {
 					#address-cells = <1>;
@@ -1345,7 +1345,7 @@ mdss_dsi0: dsi@5e94000 {
 							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
-				power-domains = <&rpmpd SM6125_VDDCX>;
+				power-domains = <&rpmpd RPMPD_VDDCX>;
 
 				phys = <&mdss_dsi0_phy>;
 				phy-names = "dsi";
@@ -1406,7 +1406,7 @@ mdss_dsi0_phy: phy@5e94400 {
 					      "ref";
 
 				required-opps = <&rpmpd_opp_nom>;
-				power-domains = <&rpmpd SM6125_VDDMX>;
+				power-domains = <&rpmpd RPMPD_VDDMX>;
 
 				status = "disabled";
 			};
@@ -1434,7 +1434,7 @@ dispcc: clock-controller@5f00000 {
 				      "gcc_disp_gpll0_div_clk_src";
 
 			required-opps = <&rpmpd_opp_ret>;
-			power-domains = <&rpmpd SM6125_VDDCX>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			#clock-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.39.5


