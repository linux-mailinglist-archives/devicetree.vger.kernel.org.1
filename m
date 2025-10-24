Return-Path: <devicetree+bounces-230880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED82C06E87
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 17:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 439D6346BF4
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 15:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA8E32A3F2;
	Fri, 24 Oct 2025 15:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TFZFzzRV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5394132A3F9
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 15:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761318950; cv=none; b=f4fzWB/eiNb5EQ2GgvifQi1TgxV3LX8HeDWbG9/t5zy0jWBdeP0vvNwm8sUcggfWSEeDXyNPEFU53mKtziEHqWvQUQr4MZl0EP7b/5kBCX749fnTKqAxjUXnr8EMVTtjJ85LiutMdIryVWsPPfYZrBSW6xgFyZr293xJp108t28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761318950; c=relaxed/simple;
	bh=2JxH3SAb5I5RjNeUkzq/LydH+ScowPF8cKoijPFvtTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N8RBT7pPPVpbd0DT+Z117nrUQRRn6CE5SqAWKQ+23G2vTfUhlki4L6h24QZwzXzh3JCNjJ1lQnA35XQMa5/oCI3/NbbQlQf51KfJglzp3aqRrELcLRfkNjbkXMlr44/M+gsK2+305a1H2BxvURYlZLOHo7bAnTW+hybhvsqBwsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TFZFzzRV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OC8idH003518
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 15:15:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IuNGrA3HI88
	okECNz5zskMA9+Az9f8glbFMv0KeN/Q8=; b=TFZFzzRVtHTfM9bU9OSmRYGziff
	7bTFra1Th+L93t0E1+xQTj1dnouGRLZZks4wmKBjlLSOqwI17xkJBaLw8fhnblCa
	yOdnEa5jEkyWOr1xOQGJcSkXtqMqr0aPAhtt1rVECKCE4LxLyFpuKHZLjo6x61NM
	Ai/92X3tYK8YKSgeI9LuVEHkIE+8/SRsFGKRLLxamPuHc6PKekreIXHkuZobWfGX
	eXHuh4lFcmanJqsr9JnszFpUaACiFLnyXcl7iuFGwYITxFNw/CbMAOBWzb5JI05W
	q1N783/yeJ4p3GmDPvzSJlUn7134T9+J74RuES1/OVfNQBpIMOfcMhkbUSA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27jcavw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 15:15:45 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6cedb7bd41so1760241a12.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:15:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761318944; x=1761923744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IuNGrA3HI88okECNz5zskMA9+Az9f8glbFMv0KeN/Q8=;
        b=Sbs9pQ5wZ1KG1yZ1tJy7YMnc8z5PpAWjRZD864jH0bAYGifqDXlC6GpSqOdHzviXsv
         EWfWY7fl4CfPAezwqb8kX/tT+Yp3x7CVr2jgnzVAfJodjIJW4/Zv1uf0rPCL3zADM/vn
         D55eIfCw2lcVtBrpXar4lpdhR9On1NJzQI9uRzCRMQ4qG4RWKrHefnmc2938bU981z/N
         GeWJLKgp+zNYRESgNTuj86AUJEdCT2IxRtrec7yYQCmf4/xJqWlFdGeO7hU4RziurN5h
         gCFg8urP0Bpesu334IwtVAPah+Xe0AmMK4piKWU00vHv8nW7nlEH/zUqumvcuhxnG4j9
         djRg==
X-Forwarded-Encrypted: i=1; AJvYcCUC2NZ15tjC9ylPbN8zYe/XInvvTAwwiW2ymuhvVXJm/kPprtcRUuNP5hNa8ia/6Yh91CxIDrbqooUc@vger.kernel.org
X-Gm-Message-State: AOJu0YzRyKpnCeu2EGfwGqj5wjJ+s7r/TLNKFTQHSW9In2tOaVv93yy8
	GqrbOj1ojoBtXEakePecoSc0G+PlRyH+Pb5eVSYZpXvyQNznD4cuYMoEGNITf5/F1CXmqEItxb4
	ktdwjS8Fg1Uczz4QnMJZ6wPoTLTV/v8GuEEMvu01/y014z7gbS/NkcRTzfTIk3Ho3xAKxkLIq
X-Gm-Gg: ASbGncswC6tmckHI6Xj104C0jUQmIPpuP9Hpf85omJyoR+9psJFWqiUx7od1Vy/rgOB
	OmTQUAtJrX2bUp5In9HDTJZnzxHsCVAIFRQa+kGiAUs7iCqHy+tRfPX3JSkiEaLVhTW6wAYsxCi
	d9kEecGoQLXl7AGq24qjIZJAPPNATsOBtJoAmXits9/5f8/p3sCmInsZhkHFolBObKiqjt+TzNc
	pj2plSiPpQjURcbNxf2794W6jm1dc4ZYy40FWIh7PfazEmoWrxmy/bxVhHn2sQU+/1HWmV1Kaxl
	/JWFGvhpxBbrUrKXK4qsgSaGGImrXPK1LtKhi4oEYns4wx8Q0lnS6NkuGq9X8OUDX6qjULOWxGs
	PcCa6Ig0KHFI+F5avbvQalMSGszp8FkhS/nrq
X-Received: by 2002:a17:902:dacf:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-29489e6c09amr39043555ad.29.1761318943683;
        Fri, 24 Oct 2025 08:15:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS2HlK5lfQnZw/weCGadNiGz6AZhTCUJ88fvYxAvoGDeVcOR3lzXeFAjSFc96bPrGPUiJYxA==
X-Received: by 2002:a17:902:dacf:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-29489e6c09amr39043055ad.29.1761318943099;
        Fri, 24 Oct 2025 08:15:43 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946ddddc34sm58758885ad.20.2025.10.24.08.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 08:15:42 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v9 3/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform
Date: Fri, 24 Oct 2025 20:45:21 +0530
Message-Id: <20251024151521.2365845-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfXyf23aRNqVYDD
 JA/gJi4i9KdWKW0yquPbRGBR2WuZSIOOQ8y3y8iwCt6LEe9vAfO5rCGJJ+3x2dt3GPS3wLlCJXH
 5fTyqhMgUYuES5pi3Q6sbsy5liNZkiWvdZapBsIE8Y4sHPzVSs+Pd6jt+y6QQ/DD9IMC9Nstehv
 9kPSTsAajYyQCeVe4l1mikVFN5tMlOGS4D1H6yTllcCNecoygsNNtwDKlXErhkdYCZ1HfkR+2YW
 Vn4+HniwOVJ2EKeTYYsVcjRtqi3K8YFzqLuxWnMFrCYFesIkpZVvQFC3EkVPt1MrwDlIKUYn1S9
 uIuwDg+RMJHRq7IIAIgANvQJnibYakLPLa2pb3/tYdzQaV5i3sp7elP/HQvly/zK5CcDACCgW5v
 v0+/gwR/JSbnvPxsLF8T9Xq6AfTQuQ==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68fb9821 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=EoOMd-xwxZjzz6zYUw0A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: kmsV-TeyPH9u-tXvK9vRvAtZtkgNbzug
X-Proofpoint-ORIG-GUID: kmsV-TeyPH9u-tXvK9vRvAtZtkgNbzug
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 QRD variant.  The current definition
will start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[Krishna: Flattened usb node QRD DTS]
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index 13c7b9664c89..fc5d12bb41a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -1054,3 +1054,25 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
-- 
2.34.1


