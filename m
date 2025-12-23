Return-Path: <devicetree+bounces-249022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C9CD88E1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:17:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EF533077782
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B94A3242C0;
	Tue, 23 Dec 2025 09:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tan1eRhN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cUH/QSED"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AE4324B09
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481266; cv=none; b=ujvhwDY571CY6pvkDNdJPTp9915KEcaT3ODsvSKOIctOQtC6Vl63lfmtO6gBoNasYFQLb+Yyh+gsheoutvQQu0ZHmKJztrmE01RTwp9r5h+YS60BgYHJVRz0dSFRHC9zWdZGiNrgOjjSvSAYPAoH8HmctaloaOjPXYeewlFcCHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481266; c=relaxed/simple;
	bh=Nqu+aOuN5ZaQ3gE/Xy46Qjo+os29grBY+Nkaip5fCwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NK6iGSgPhOAdlBUZv8NhWNl/FEJuZWKkHQ7cTERIsZjoA2ZESVLhl7PdhrMeNs/lx7GxJlOzHEZTHUgMN8wXnvAR7+AaC0GfTm4om1gk/WgIQuSVL+AGZrVjdC4z7sGVZQyq8vQEIP5oM1zf9eZZYOHqq8eo7Cuemp9n718eSj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tan1eRhN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cUH/QSED; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN2iRQZ1568783
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wdgl6CNoit5FZtv6YJ05tLpOZmxe0FwICdVkx26WDa8=; b=Tan1eRhNLo4oz/OE
	gvxR7PRlSK6KqrA8Ieb/Iki/IF52nXjJ1uPJ2I3KYTqNVtUyqvBh7xPh+LrIuluQ
	rlWn9SyLL6CN0h9J3l2BDAd747E9KNOEr4zIZU/mhcd089fAp2j3KwkgSseZt1Nn
	ZjkXDof0z97nX0RVTmjLS9weFgtrUS0s3IUXqtykDVvj0fb/UMLGvIfXuidstfq7
	KmJ+X4x00wT9AOZmwFEb7b7vRPgGu0up2YVaJGfgVFuCol1JudqCANPPhWcXq/7x
	LRcF5Zn9qIn/23Nef7G+zlYHI8OPrBgxKCs1As5Wa7dL4qtloRWfKWN1rXD9shNr
	vu/OAA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b76yy31k0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0d058fc56so78268115ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766481263; x=1767086063; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdgl6CNoit5FZtv6YJ05tLpOZmxe0FwICdVkx26WDa8=;
        b=cUH/QSEDoEg1kJjzkklpPk8t0+qlWTJM16COWepB0Pr7WZySaWLWqNL1jAI6z6mOdz
         JnPiiDN9PY2U0TMJftUNH9RWY620e9RvKJP5OjYXaz/P0a7/+DOhqarVxdGYYnMHHWXL
         +7qEB820sJ/t5p84DhL16+YOzF/rSH3Ox7pI7ARgNaW9y+Jhr5QH+TmjjhnQIto4RolU
         fykZx2FDWvtwnF1SDCDUJ6K6PiNmdAo3Onlu5OSTi6wN7/vvT59BW0oT21PHMa90crLa
         /RJN2jf3XlMUMa2o9sQSU/8peUIDPwK8X/zfjOO3CllgufAxvdzYe/9Dg2Rq3RcV6h7O
         k0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766481263; x=1767086063;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wdgl6CNoit5FZtv6YJ05tLpOZmxe0FwICdVkx26WDa8=;
        b=qoD9LhksxDKrkOYMmBbtUxwMfVKmy5IJWjnBcB8mjOGqVLU42suWj954vTcn7qVxGI
         xGb1MNEKyUHy3PKK+aJwEqmMhzClfws5NbmKSzNO2JNRllQDNcHpob6XvC96/mqnlleP
         8OeD0z0Qkf+N/zBMLpI0ssBPpaaSoNSVU49LOwIG7n8DKhmndp8n/enMw4CwhgFzFsnB
         D2mDKZ5Ed1b2b2lLXWw277Kio3dGI92wwFIhek+zTFzNrZK1WGhKY/WkREhr4Tx1t1Dc
         KR080X9gZ0T6RlzDGf/MuQA2DyVOcmidEq/LSzegzevYPlHac06GvD8MC5hPtFQzANe+
         yP7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWj1ZfjWp4Y8AAGIQ3QTmqEYI2SOnDECEpdgnqBnXmssHuUg+G95dEydlLG6/8z/VwR6aIW05zw2jSb@vger.kernel.org
X-Gm-Message-State: AOJu0YwlXFEL5OacwF40ZmF+/mcdUaodmxpZ5UH5GTZQmefNFeQh54id
	sopR8xGbPVVYc1riE2IgftqS1PkcMHSeVEXBjM3W5eRH5yXSt7DvasA/OGDlqJGoP7BKxlo/OtJ
	edVlX3K4AdmmW3mvkEI+wuoAT/OeFI1oUtPpc03oTxqSGhCsnuF/RHq6q3Htd9sK3
X-Gm-Gg: AY/fxX4QafJ50GYnLAgPuv0v+vm6CKHbpeXIDNcIgOwXHHlWLvSzLi2bzB/Sfrj6XYf
	ZIhgDHhLl4NtQK0UPfo27IuyCMma3d7wuwj7Hk5hK2kDcToFXBaJQex02w5q8jTNyurpONdhCxg
	FnOMWaD4e/+raUlpyCmyXDR+eh7Gg3oVI4I+bde4ZC2r2ixdXnnj4FezrElJ2d7TbL+LnVH1+/Z
	96IjeJ5TBMa477J0M+IprcKN9wTrpGedVrJSGOp6uIHaKbJZay3W5lDBmtaBfFdIidcSwrBpGaM
	H/KydwNJSA10tJGy8os0rg2xlG6xLyDrGHQZPNKr20hunn2eABu7y+aeMXuteccT6ImiGG5JM9L
	UtLkl51YAddIzSWJcq/iXt+Dg0uqndgJCwaNYTMPRPtN2SHHOQX+cVXpXM1B1
X-Received: by 2002:a05:7022:220b:b0:11a:61ef:7949 with SMTP id a92af1059eb24-121722ac425mr15639667c88.9.1766481262623;
        Tue, 23 Dec 2025 01:14:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDGKzPr8T5IOXZA5LHezIEugBbVPAkJMkTPFlmVIcYmdmUJ+qW6gIul05+V1TWB5xZtLzhUg==
X-Received: by 2002:a05:7022:220b:b0:11a:61ef:7949 with SMTP id a92af1059eb24-121722ac425mr15639640c88.9.1766481262050;
        Tue, 23 Dec 2025 01:14:22 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm56931833c88.14.2025.12.23.01.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:14:21 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 01:13:51 -0800
Subject: [PATCH v3 5/5] remoteproc: qcom_q6v5_pas: Add SoCCP node on
 Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-knp-remoteproc-v3-5-5b09885c55a5@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
In-Reply-To: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766481257; l=1580;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Nqu+aOuN5ZaQ3gE/Xy46Qjo+os29grBY+Nkaip5fCwU=;
 b=IgqiGhdQVv4PE18x02hoRXU65WTPD9xOkUEAef9Md1fHjJlYgEARRi63h34JfZlqs7S2ECCFD
 HXJFq+irlWwCCnbtEIqOiMcRvnzdOW5gR/8dNNY/+roUfPsPQYunVFw
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA3NCBTYWx0ZWRfX1wvJMCmQSYEg
 0IPonPUai/A7Axzry/Ug1hQVEE9Ph4rFt9RiDGxmxmaewreXuNrLjbpfpj/3qvRNp+NOn+5V61X
 IW1mvs8cTXrGCxPyMtvIyJcTQ203nvCmZ3tki9VyE4iAYaJtC1+heZA63+ddCsrVpSheqYfubSL
 4EgIzK8gj5m0kwdz04z5rAHw1d6AVS0icGHXRFGzLzUWEjwui0CAIQMXu09q6YHsktLimi5kSf7
 S2tuUPbqjY3sU9Rvtq5Zu7C7k07HwG4afGwqVkthXXya2Rmjd0bJr0I1yLJNOelEXsmaeQfFtsI
 7iV11iS4LvMC9hP1yBiGP4E5jfI4Job5wW9sw9RFJrPtKK7iFdm5RCaqquujZk5DVlqFuM1rdV/
 scrsRVtPurtmOsyaigAYX8xDh0Gf+1TK6k+wgjL812XeyroditKm5EbiApqBOsKvzBelLBdacxz
 iG6t3UZDofchz9NpRng==
X-Authority-Analysis: v=2.4 cv=Zb0Q98VA c=1 sm=1 tr=0 ts=694a5d6f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-54vo4t_4OUFHp6kYXwA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: WiUw4cMluJHq9vcqxVbqQLFE0j87rx1q
X-Proofpoint-GUID: WiUw4cMluJHq9vcqxVbqQLFE0j87rx1q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230074

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
index 7e890e18dd82..e0028143377a 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1530,7 +1530,25 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
 	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
 };
 
+static const struct qcom_pas_data kaanapali_soccp_resource = {
+	.crash_reason_smem = 656,
+	.firmware_name = "soccp.mbn",
+	.dtb_firmware_name = "soccp_dtb.mbn",
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
 	{ .compatible = "qcom,milos-adsp-pas", .data = &sm8550_adsp_resource},
 	{ .compatible = "qcom,milos-cdsp-pas", .data = &milos_cdsp_resource},
 	{ .compatible = "qcom,milos-mpss-pas", .data = &sm8450_mpss_resource},

-- 
2.25.1


