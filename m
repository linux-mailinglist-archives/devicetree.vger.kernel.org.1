Return-Path: <devicetree+bounces-275122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNymI63os2nZcwAAu9opvQ
	(envelope-from <devicetree+bounces-275122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:36:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 970542818BD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EA24F3043E13
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADE738B137;
	Fri, 13 Mar 2026 10:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NeB4eUrE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W8TNZfIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5191F388E63
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398115; cv=none; b=s2U1dDnmoYQ7yxvjkqUXzFxPqR+2QZVBscBSe5ANMt/nD/vp2v1BBB3ARgnWoj1/TDGEfDIszhe4hivO8FvHyHPLKJuMeQSZ6h5AshqkyJsAt5AAwlPW60pgR3cuxG76a61NueNHljfqZg/OEXVvd2XR6SSEeWOt6GU6eOnnfbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398115; c=relaxed/simple;
	bh=P9s3h50N2DquJr7pozaTKWXlCMWFJrMhOTCcu89Ms4g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SgQbrduQIl4oaYY47VlVLDO3IFgOLNsl+hBBR0ulNcAbbWzZekdwiHj83NKNgNKrL0F8JW9nbE80gr1LKe2KYyM2jZNjHbmrTP+VFDa7+SnLqY7fuZztbP517E3wXe0NgGjrYta6N9Ew1o0JUWlmjmXno4A9C8bW9tvhK681IK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NeB4eUrE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W8TNZfIi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA83nh1749335
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SK666/rm9G/
	ZqiycA8CRPRgTGGiOWM1qcx8cS/VavRg=; b=NeB4eUrEDekxadZR3dYCE23nAgY
	dvzywy7jI9RATd4x7/W/iLTeExPlXrZ5Tm/OW1IGiesg8Hpdx5dLvMXPxWM51G7I
	dkIY6NLl+bW158aR6K84hS27yKFdDQbOwMnKsXCBst60YdwAm2HT0MXqXJrOpy3T
	pbKH3QVSwpMBp0BEDPjIy34VDg+1W80ZieLbHRStZP6NQUEZE9iafq2ne/f9zocW
	No6gJSObLb20Jj/Vk9gmBdynVtfnyE/bZBfnNusg41cGNWQNbqCEFt+w4GV8ZKeG
	7N8rdsnl7UlUZOJdBZ8FTc1AHKq8VpH7zTI4AqXwZO1ull38UHNQOQIQWpw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6g2xq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:35:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad5fec175so91969225ad.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398113; x=1774002913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SK666/rm9G/ZqiycA8CRPRgTGGiOWM1qcx8cS/VavRg=;
        b=W8TNZfIiMBdCpUXnpZDwLUM+6ifu/RkxNfifXGX8MMecXvJruj9pgh0riEivtn4cxB
         Wh0MkQvdde+NvHdYlB8sBndty9OEBeaXRxtGChZ3BFeL9NkBCgLQKSbVcQojO1ofyMK5
         EiUORkpb4ObqjQwXj6nN865kPeh7AIyzuCB9V7nDcHlezlebMGrHj8SxkkbPv5xkokOY
         yBDUQzvNK7i1k3fdvteoelnyOag1C0MWjjfVFvCGOGovSIOMugr+BrE/cssT8O3TCqZo
         4ECsKxeWq/1Dus8wJdm/LNsIzUku+Mtlcl3+a6LfEVseL//xlkZJyfagQCY/TrxSB+J9
         LjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398113; x=1774002913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SK666/rm9G/ZqiycA8CRPRgTGGiOWM1qcx8cS/VavRg=;
        b=ZFFv5ri7JBaN+/eiB9dmdCLQaWtThZAc02KMZx7/EEtjNQX1S7c99SHnSSNmLuGs+Z
         qtu9tSmnusTD7Mu0TOdj5ksptes4UnmwcsE5gI1DsHK9+THwzSJO/KNGp7ECeB5NLnEG
         nZxpUKYtT3VMF4WsmuMWydC5CXSS7Upco5FKVHf/m3b6xQLude551OY8H9nDO7FqVjJ0
         1Wqn6opSuGLgv73vIytzjeWEUlVj9EFlnxjQwtyIwJ3CmhtB8KORnP9RY9LwcjVR2EMz
         2imLOQMXMGcGnz4ifhQCNAbIIMcD1SCeBGtC3mHAzkypiVWZbNBSBCyr2FKw3GTM/qfv
         K8dA==
X-Forwarded-Encrypted: i=1; AJvYcCXLWxURnG9toKREPxjN0W7/+H7MzMmZn29+OsQ3XCYZ28Ug7gG45+IYReknU8qy+W/A7WpvgaGyg7qy@vger.kernel.org
X-Gm-Message-State: AOJu0YxJuGw5sZPhw5QMOuiRx2Lu7N5ky65q3JaldiTMwf8Z8iizLflv
	LWtQHxvuk0VEtLu6SP79szbaQFq9k0Vvk/05i9HoDXJQ2Yod2cobhZHh8xqVz3idrM5cdlygFZz
	apH3rhzj5ws7zoR2IRz2vBjWLuTyj5WvGUeNg/ebV4JVS9O7rmajAeF2eXH6hdxz6
X-Gm-Gg: ATEYQzwxQ+InkkPQ1ZDp2LaPEss6mmqCXw2lWJGW4fZcotiy1VZpT0P8IwlseqMGxZ8
	53QlA/JkO7hlMrryhEhlEPtvQGwSBPtckM1QOxT978qRI/XGAyYo2Rw1ulUqqlJsy5iBGev0b+o
	uBubP05f4YdzyrK/HGt3M1V75NXb7sObIq5i2sVyHWboxbSebXq+Cn4/61ckucbC6WExtOS30fN
	BTYEY8xgXFs7E0qD+KKbxKm68YO/6Iv6agwgQfdn0r2L20hCnyyM8PSF4+MaORm3UWAfgF9TCTA
	dffizjXZi+cEyuaTg419up7vBj7XoCLJtQ+6CT/xxqEoUhqb/9TsOikCLV4nfz7SNo30S82fEhH
	SDnfuVoUhb3IAhbcflIsvQDDmgZvV1I60zwQ/OgDHcdPA9KvOzPHWkC1rZFdsWHqbI58YOeLutS
	goHPpHWS+4W6CRGQk4YIU5gYM496V++wnPBq78
X-Received: by 2002:a17:903:11d1:b0:2ae:a8a8:92f3 with SMTP id d9443c01a7336-2aecab1fc5cmr26720245ad.44.1773398112812;
        Fri, 13 Mar 2026 03:35:12 -0700 (PDT)
X-Received: by 2002:a17:903:11d1:b0:2ae:a8a8:92f3 with SMTP id d9443c01a7336-2aecab1fc5cmr26719875ad.44.1773398112310;
        Fri, 13 Mar 2026 03:35:12 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece84d57asm18120745ad.85.2026.03.13.03.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:35:11 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V2 2/2] arm64: dts: qcom: glymur: Fix deprecated cpu compatibles
Date: Fri, 13 Mar 2026 16:04:39 +0530
Message-Id: <20260313103439.1255247-3-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
References: <20260313103439.1255247-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX3efPPfv0j1iU
 ODfAEjmqYvyUCj0P6MksgZWhIEjBLoWzFqoC5aIGQ+b6NGjhXXWSO9M+HS/gKzKJXeqkRVjHGa9
 pHEWUoAqtP00BLkyIqciUSKZNWzruAWhGoaqmYCDIk5XdaO4tDblktCnXHPxy3nmqA8g1YoyEYi
 qKZwm4aTbne32o2Mjrs9m/R7dZl95u5daCRvQUILSIBJFoCPgKcyb9uESIMhYIq+sPoFkf6xnGs
 6CwU9IU/XJf+ejo+7VDKOuqGhX8p5FBqo7HJ6jIwIZXe/AJjs66H28FD2L8wSanZ5pB5Bbc9c0N
 tsaVt7Zm3oDIbidSsESFSNjlgalMTX4k7hpxccffojU/A2P6jJKQdPZhvhi5qhtX8MPNMKSRLbc
 zNSgNU8eNrD/hXu6ABL08/xfdJGxB6sBHZmvqTNdKz2JWWmw2qJMfbKoBE/M3ksKhi2r+HMRW+c
 L0TgRHms4fAGzLw5bhw==
X-Proofpoint-GUID: 3sNPgwlmLQyRuRbn_-neowkgZIJsRBEE
X-Proofpoint-ORIG-GUID: 3sNPgwlmLQyRuRbn_-neowkgZIJsRBEE
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b3e861 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=ISJSzXulsw8YtW9LTRMA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275122-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 970542818BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The generic Qualcomm Oryon CPU compatible used by the Glymur
SoC is deprecated and incorrect since it uses a single compatible
to describe two different core variants. It is now replaced with
two different core-specific compatibles based on MIDR part and
variant number.

CPUS 0-5:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x2

CPUS 6-17:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x1

Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 36 ++++++++++++++--------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c..5de4b2801321 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -33,7 +33,7 @@ cpus {
 
 		cpu0: cpu@0 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd0>, <&scmi_perf 0>;
@@ -49,7 +49,7 @@ l2_0: l2-cache {
 
 		cpu1: cpu@100 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd1>, <&scmi_perf 0>;
@@ -59,7 +59,7 @@ cpu1: cpu@100 {
 
 		cpu2: cpu@200 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd2>, <&scmi_perf 0>;
@@ -69,7 +69,7 @@ cpu2: cpu@200 {
 
 		cpu3: cpu@300 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd3>, <&scmi_perf 0>;
@@ -79,7 +79,7 @@ cpu3: cpu@300 {
 
 		cpu4: cpu@400 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x400>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd4>, <&scmi_perf 0>;
@@ -89,7 +89,7 @@ cpu4: cpu@400 {
 
 		cpu5: cpu@500 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x500>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd5>, <&scmi_perf 0>;
@@ -99,7 +99,7 @@ cpu5: cpu@500 {
 
 		cpu6: cpu@10000 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10000>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd6>, <&scmi_perf 1>;
@@ -115,7 +115,7 @@ l2_1: l2-cache {
 
 		cpu7: cpu@10100 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10100>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd7>, <&scmi_perf 1>;
@@ -125,7 +125,7 @@ cpu7: cpu@10100 {
 
 		cpu8: cpu@10200 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10200>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd8>, <&scmi_perf 1>;
@@ -135,7 +135,7 @@ cpu8: cpu@10200 {
 
 		cpu9: cpu@10300 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10300>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd9>, <&scmi_perf 1>;
@@ -145,7 +145,7 @@ cpu9: cpu@10300 {
 
 		cpu10: cpu@10400 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10400>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd10>, <&scmi_perf 1>;
@@ -155,7 +155,7 @@ cpu10: cpu@10400 {
 
 		cpu11: cpu@10500 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x10500>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd11>, <&scmi_perf 1>;
@@ -165,7 +165,7 @@ cpu11: cpu@10500 {
 
 		cpu12: cpu@20000 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20000>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd12>, <&scmi_perf 2>;
@@ -181,7 +181,7 @@ l2_2: l2-cache {
 
 		cpu13: cpu@20100 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20100>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd13>, <&scmi_perf 2>;
@@ -191,7 +191,7 @@ cpu13: cpu@20100 {
 
 		cpu14: cpu@20200 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20200>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd14>, <&scmi_perf 2>;
@@ -201,7 +201,7 @@ cpu14: cpu@20200 {
 
 		cpu15: cpu@20300 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20300>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd15>, <&scmi_perf 2>;
@@ -211,7 +211,7 @@ cpu15: cpu@20300 {
 
 		cpu16: cpu@20400 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20400>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd16>, <&scmi_perf 2>;
@@ -221,7 +221,7 @@ cpu16: cpu@20400 {
 
 		cpu17: cpu@20500 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-1";
 			reg = <0x0 0x20500>;
 			enable-method = "psci";
 			power-domains = <&cpu_pd17>, <&scmi_perf 2>;
-- 
2.34.1


