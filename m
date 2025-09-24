Return-Path: <devicetree+bounces-220972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5574FB9CA54
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CB253B5E94
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661612D2480;
	Wed, 24 Sep 2025 23:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KPuGP72A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25032D0C7D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757060; cv=none; b=mLHJpKNHfnK0+TzPUnSjFhgG1TpUslaxLmFw3dxr/Zhpgf7wgBdytdheQMosSflVuJZU0Jn9f/11lXkOBUqa679hlA2qYkh1E4UoBgN0/GlC+Jq2whbxd9JYwu3RS4YUd5ZDNmzpHQ50iqMyE/B7HxjwZykbwEvO2DSaIVkmEcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757060; c=relaxed/simple;
	bh=nx0dHtwCuHPuOqGztNINoB6tkECO4h7844UgsOU5S8Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a66WCwBcwtfNqQ85LI/8rM1zR4P86HDtDwkDXLoiIXqe0rlTnER2JpD8HkxI5SfJvEYHKD7hd4FaS0XzDjEF0S2lKBkgJbFCKIeKhDgDupZsnf675YuuJpOZ1U6jB6XtugF2tbsIURZwUIziNWi/FFFnLgIqxMtieZahd/Y++dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KPuGP72A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD1rwK016435
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nR7RgImdeuGECfm8oEmT1uV2KbxxIPWin03Qltlq0XA=; b=KPuGP72APXf3DpDW
	2Jf95yD6XEzRnOm6letcIDnrEe1dfg4PBB74p35V9uE7Syd2p6c7qflDPY6+7ymh
	xBeVhqCJsfw/JYh3WGQRnRlHE81aEDr8qIGCVT66TDMh4Gmz4NKdKh6l1OgWCHbY
	tHUxP9fphphpkgnkG3elQp3ICLuqwUoLdaBORjwAYfoo9lg2Y97ZJZJwsazrmxfo
	VbvOQN2mdWx/0Aa7PiLFADHqzkkaySSkyzjkgV9vbtx92lsw7+/31E/peoPFmGyX
	Aie82ZtVajDUvx8O1xyMs2yDSEKMn8M8XlJ1EROWC1vdShLBPBJ02p/ELGbyOmlv
	SqY4MQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhvc2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2445806b18aso3052935ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:37:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757057; x=1759361857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nR7RgImdeuGECfm8oEmT1uV2KbxxIPWin03Qltlq0XA=;
        b=ncRjKYAPeSPjaOB0WOCKTMU27k/ua22u4Tl1LMel8qR6zKp9Q+SgO2VSDWl+gLiX1R
         UPuT6ZVrPIz2B9jtt3zTNtTmwr+qDmTYAGkf5Modxs4SRg8+3S+ENGW5awMBTxC6TDyb
         EWWFu8TqeeGye8Y+PQH/0Q0kBxH6vYUUinuEvrfMjjbhEt3qfjJBLKZN68Jzuk4lT9a9
         B2ohan3w7DeTjB5tCwcZ5T8FTh5QGRrQnkoFtwP+e1pn02gR1M05sNO6W0vmOI0RAwuk
         1O9pB7zQ8J0qk/YefEIs+U+jGzfN3UNMqnsTKOFacr85MFoMzDP9B8G4qJZSpA15py/a
         klDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtO6XPHpY/DqA4/jJi7Pgn8spNMlNwb7nHMcEdr9M4yZiyU+KdBV//55Vpp0U2EY2ecr/PKZYNPIif@vger.kernel.org
X-Gm-Message-State: AOJu0YxOk7IAGPAC+utTzTCmVt/IThJWJVy+O0HWJF7J0NKuth63c8gD
	+j1/kprx68oPdkjpF6R2BveZj6vB0abi64W8k+A3WwE1KPYMp6Mul+RQiMm8K4WJjS/ghGuR4vM
	X8kCa8SbdulutXB4pelmaS8xBwgqKsBzKUpYyWuEg/1XQzzDBfDfutaKUbNedogB1
X-Gm-Gg: ASbGnctzjGZe1QIRrsLzPMLejB08TykI4X+vZ7J+9lC43U7s2wd2h7VqBDt1xw8rTfo
	lfzFiddud9JWKLRC/M7MhVo8JEo+RGyR3jaAPGCVvqWLUGyMOWiIP2QN8nK/Y8rmNec5S8K0pM2
	+WS0BpK1ykpud6N4mwRN56hNrgeQENUjn9UkEc5WyZ4FYhZbUP09+FJOOxCeYyPZ7UfccF8xREV
	L0MEXj4Ozg1mmfy4Btx4ZDdYiVb4SiP6ywKPeWJC7Dq9RuM7laMMJakYITj/Cwf99fVo0GCETIi
	Wmsg4Kl2muMZOj6C8qg2qYuXS+k4NxIdupS0Kr/N2hZzy93l4aOyR+DysFUV6u3C/feaFb2cOqR
	raRQIr0g2L2DMaVo=
X-Received: by 2002:a17:902:f545:b0:276:b1ce:c094 with SMTP id d9443c01a7336-27ed4a2d56bmr13859385ad.29.1758757057090;
        Wed, 24 Sep 2025 16:37:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0DpLlCP+Wu//SJaGMVpFeTh4I8dKMTS5/nKg7KoBNZz87O/I+1e3GvUlj2zhRFFWbv242ag==
X-Received: by 2002:a17:902:f545:b0:276:b1ce:c094 with SMTP id d9443c01a7336-27ed4a2d56bmr13859185ad.29.1758757056678;
        Wed, 24 Sep 2025 16:37:36 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d73550sm227187a91.3.2025.09.24.16.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:37:36 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:37:27 -0700
Subject: [PATCH 6/6] remoteproc: qcom_q6v5_pas: Add SoCCP node on Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-remoteproc-v1-6-611bf7be8329@oss.qualcomm.com>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757046; l=1587;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=nx0dHtwCuHPuOqGztNINoB6tkECO4h7844UgsOU5S8Y=;
 b=RVFCeO9HdLik8U13CFsMJrNsbHYXllD9xRH1xIxUhMQ37oLcPFBlmhUaBH1RzC2f1nAWbNyFL
 e+upGHkHY8kBDmwZTOJ9AvWHysXeySnjMDwe47/OVUydoyMDGFhejhY
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d480c2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-54vo4t_4OUFHp6kYXwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: BNqntX6kI3vUUaPi96kGJ2ZtMjweMw-d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX3sSp8hpW+EuF
 lquiB4ihRd8cY3PziYVtYCb811e0lFGEH+Z1CjIpX4voYcbdqnLwmDxy2aAxASJAvgSGAx4/xYw
 Nuw9YgnAewFt8RLkg0iLjZgfhm53l+JPKc9vEcLiL29nIIrlZrOHlAEnHhCEtqUqpwIEkL12nPR
 GwzsN5+/cmYABw78B8qjBQwCBt4ZuMTcZsXSnj+RiHGH4L0jkBU4r8OMKXXs1m9/8xMyw01cLmY
 yNIdLezab81EVH4PRLI+a5F6Wp3IgMZZlqZ/79vUxrXolZNjPbS0GAYkf1VWWis/4aSt1emp8xv
 Xc3qkg36cvn0tCJJXEAHmRYgdhgbqji57TF9FT4Hy8mP5hMBpGcLRNREkkHKJJgLklqT1OV0zDz
 K/9zEgoo
X-Proofpoint-ORIG-GUID: BNqntX6kI3vUUaPi96kGJ2ZtMjweMw-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

The SoC Control Processor (SoCCP) is small RISC-V MCU that controls
USB Type-C, battery charging and various other functions on Qualcomm SoCs.
It provides a solution for control-plane processing, reducing per-subsystem
microcontroller reinvention. Add support for SoCCP PAS loader on Kaanapali
platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 99163e48a76a..5007e1706699 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1487,7 +1487,25 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct qcom_pas_data kaanapali_soccp_resource = {
+	.crash_reason_smem = 656,
+	.firmware_name = "soccp.mdt",
+	.dtb_firmware_name = "soccp_dtb.mdt",
+	.pas_id = 51,
+	.dtb_pas_id = 0x41,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		"mx",
+		NULL
+	},
+	.ssr_name = "soccp",
+	.sysmon_name = "soccp",
+	.auto_boot = true,
+	.early_boot = true,
+};
+
 static const struct of_device_id qcom_pas_of_match[] = {
+	{ .compatible = "qcom,kaanapali-soccp-pas", .data = &kaanapali_soccp_resource},
 	{ .compatible = "qcom,msm8226-adsp-pil", .data = &msm8996_adsp_resource},
 	{ .compatible = "qcom,msm8953-adsp-pil", .data = &msm8996_adsp_resource},
 	{ .compatible = "qcom,msm8974-adsp-pil", .data = &adsp_resource_init},

-- 
2.25.1


