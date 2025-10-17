Return-Path: <devicetree+bounces-227925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D9DBE5E43
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 02:31:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8DE7619C6D3C
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2D9221543;
	Fri, 17 Oct 2025 00:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhepwMx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9914421255E
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760661042; cv=none; b=r2L8VDf4k36SoGGC+HKHl2Cd8oPguiTSDCq6jRz/nxDW7dm+epfrD94CMAIPpIRvhuO2VmG+ZO2tJUZe+6/g1ZSqCnrjTSgVLIEST0PFLJemtiYQPH70wzy5SwbsvMZyPCtdo1j0Z2o+ncRgUecjsUQzaQRBavHU1b/nbyej+jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760661042; c=relaxed/simple;
	bh=WByn/huD95vkLRCvHBxG1KJwB7ue46+k82cXqCA5JZg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=moqESAsj8p9HAr6DAR3EmGEg1eui4irNQ/Lv0PLX2FkNEqFimxEAW/otKo9fP0bYghm1iwpYwIkPmbPRk3ZHiqllgf+07DrY0qk4YAI3WoEz2TK4ay6lrcunCXdd7z+jLZKLWn2bu53WIooUF8ooO0UsjBEUV6XyvnhVdi7w8iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhepwMx+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLTYr020347
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4yFDmhuv9dv
	yyZhMJJxear451fNKAo3tkychOEGOyEk=; b=GhepwMx+H1OdAaLM/XvL41Tv7X5
	HSZ2JFKqHD3YJxVRSy7daJhKj1X2T+TPSSj8AuALd6Pfu8wME8UvucPjb/Qp5o9E
	UfR3AjxgCO2gj4XVYDbMMFUeR255q0B3J4kMjbo5UHTUXcrPVfH4d4ek8Pcul6TG
	9/aItDgkWCO/Q7gapmD4GJ9TPh0qttXsw2SyUXeDUz6F9/KyT/lwDb8AvA2wXdgH
	7RuaIfuDLV5QkCeUtse6XRkV7VLAS+HxSFUk1aF7V6UBAp7xvFTXnW2PaYQatsLi
	OU5ReWjFFNV0EGPZV8/L7nEwf5oyt7XyU0yV2AFv6Hv6igJoDAZVqi1qoDQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8rygy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:30:39 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b552f91033cso1908600a12.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760661038; x=1761265838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4yFDmhuv9dvyyZhMJJxear451fNKAo3tkychOEGOyEk=;
        b=BF4D01QPJDlzsMJ2kCsPu9D5B0UnEphY7oq2jdYs834TfZ9rHOukFWmjwEcQrw0atN
         AR82fRIrGlxqEL7SQUYAES2ILK7WfBZc5zxfZZQkkxh26g6NC4NM3QqsqxQ3YACoQ6ZZ
         dKTvW+FShC5luKmJshIxnBSxx/aYjAPaiwut0z5FnsnT8fwXm/BFZwHbsVHw7wdOWwh0
         cGY5in/6Qlp9tVVUUv/jPVDHEE/EcfU33IVf74rw46+HomIK3wqCTDYt4LYbqj/R540o
         o8pyze4Bxm49porN+r+D9i5xxvwXeRVp4IflT0McBt8gaS51dfaST93BS6GfxeD6OQju
         OeBw==
X-Forwarded-Encrypted: i=1; AJvYcCXNiaRPwdjr1fzqky6r54IklX+Z32NYL5DDAfScIG1yJqdGtDn0vLIhclsqnt1SUay+w4wflkEdi+Gs@vger.kernel.org
X-Gm-Message-State: AOJu0YyU2dLgYetjCcf5mtcs7L/BaXL8Q9CYnZN7EeIUhr13n5zyLb2x
	eg4wiQ1KrkNamdJpNC62JR2aECFBq3xjkps5rPEczdKHdZzDFuZM7E6t8z3/lCmK1Go21qqC9J9
	E2qrqM0TYHahj/J55Z7eAH+VEfXPtdAtfAWNQYWOfi58AvPW0dly6N0GI3x6MpAbe
X-Gm-Gg: ASbGncsBw3N3zQ9MofddYN/9e88IgGMfFkTZKiiHyFLU3RdZ/hhoaXCMOa+U4g0DRUE
	7pKVZHYBBhy68TLInlQXQnw7ELTDc2UXb+e6WdC7oIR5sE8qWkogJaDhSGGHi0kj5SLws9AHSkM
	yOLFN657v6+ThtfhyL2cK38+guxTl5EFEs6jME/ux6/YW9aReYC8ucqIgWKIJQJuauNax3mR1gb
	PlRMYvV4bOVIM4uq5aD6HGGUDxMktgwDjXKbbIWGytBeP2FCEnR8x0T4wdpnxV8Q+4wG7LqyuJz
	W1KPB4UgmwZLZ7OvZtwHK46mEgi039Sh4tmwpdzgR1BogLfIXlONw0t6blH1oxHQr4ogeGw0nX9
	S5S+v7LOug2v7LhLFEn/xKypdkxx7Uea5ewvyXEKWIT4n06GdRIbuVzAurkgucA==
X-Received: by 2002:a05:6a21:33a9:b0:2fd:a3b:9349 with SMTP id adf61e73a8af0-334a8650af5mr2013498637.57.1760661038172;
        Thu, 16 Oct 2025 17:30:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGG3hg4Yb7WGHko8UMgn0cThnFRccxK0T23SFcRXt8x+Scof8EP3nuTlw3EJJ1Wjce8BodaVQ==
X-Received: by 2002:a05:6a21:33a9:b0:2fd:a3b:9349 with SMTP id adf61e73a8af0-334a8650af5mr2013473637.57.1760661037761;
        Thu, 16 Oct 2025 17:30:37 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0966d7sm23613050b3a.40.2025.10.16.17.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 17:30:37 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels
Date: Thu, 16 Oct 2025 17:30:32 -0700
Message-Id: <20251017003033.268567-3-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
References: <20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GtTniOmJlumVfewGjWvUdDJNvM36FmqY
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f18e2f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=U2TDSMueiEXJ_JPGoVUA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfXwaVdq3497aNZ
 EGDnZb9FrOa9jB/OFA7UEM6Rj562SqVyOVWpjBHq0GZ9m+Fl2I2gag12Q6sjOS8GR9tkHonrSLu
 MuHyfO0kJM7JAWl4bDA7D+sXeiFHpWzydLWYT7rMcS4hY+OL0iSgSLIbdxxZjwi+528b9V5tS8N
 /vkd+yzYGJLvlpRMV+oCEyGfWMIgE5y15PN//ojaoY3bTDNhnKFvOsFd0Cg/GXNABLfljtLMpxn
 ODHtPnmrUFFMHxvHI6HW/ybgp2vqN1JMU0bbmicGe/x61WedAIvX23drezS8EZ2ok+bK13YTdU+
 6asu9hT6Ccv5ldhV8R7b7YoSiXjSDXKJYjsu2tCib3S7c7I6a2Dl0/xMFhc+chg3chvaM4Is5F9
 ZHDWfmRz4fToBv6WRotxDpIzi96mag==
X-Proofpoint-ORIG-GUID: GtTniOmJlumVfewGjWvUdDJNvM36FmqY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. SOCCP does not have multiple PDs and hence PDR is not
supported. So, if the subsystem comes up/down, rpmsg driver would be
probed or removed. Use that for notifying clients of pmic_glink for
PDR events.

Add support for battery management FW running on SOCCP by adding the
"PMIC_RTR_SOCCP_APPS" channel name to the rpmsg_match list and
updating notify_clients logic.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
index c0a4be5df926..627f96ca322e 100644
--- a/drivers/soc/qcom/pmic_glink.c
+++ b/drivers/soc/qcom/pmic_glink.c
@@ -39,6 +39,7 @@ struct pmic_glink {
 	struct mutex state_lock;
 	unsigned int client_state;
 	unsigned int pdr_state;
+	bool pdr_available;
 
 	/* serializing clients list updates */
 	spinlock_t client_lock;
@@ -246,9 +247,12 @@ static int pmic_glink_rpmsg_probe(struct rpmsg_device *rpdev)
 		return dev_err_probe(&rpdev->dev, -ENODEV, "no pmic_glink device to attach to\n");
 
 	dev_set_drvdata(&rpdev->dev, pg);
+	pg->pdr_available = rpdev->id.driver_data;
 
 	guard(mutex)(&pg->state_lock);
 	pg->ept = rpdev->ept;
+	if (!pg->pdr_available)
+		pg->pdr_state = SERVREG_SERVICE_STATE_UP;
 	pmic_glink_state_notify_clients(pg);
 
 	return 0;
@@ -265,11 +269,14 @@ static void pmic_glink_rpmsg_remove(struct rpmsg_device *rpdev)
 
 	guard(mutex)(&pg->state_lock);
 	pg->ept = NULL;
+	if (!pg->pdr_available)
+		pg->pdr_state = SERVREG_SERVICE_STATE_DOWN;
 	pmic_glink_state_notify_clients(pg);
 }
 
 static const struct rpmsg_device_id pmic_glink_rpmsg_id_match[] = {
-	{ "PMIC_RTR_ADSP_APPS" },
+	{.name = "PMIC_RTR_ADSP_APPS", .driver_data = true },
+	{.name = "PMIC_RTR_SOCCP_APPS", .driver_data = false },
 	{}
 };
 
-- 
2.34.1


