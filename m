Return-Path: <devicetree+bounces-231775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F964C118AA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA79840348C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A96132AAD7;
	Mon, 27 Oct 2025 21:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UaHUcm/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E318232A3C3
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761600176; cv=none; b=Jm5KOkA3+P/k4ffZbUcgl5yXlXkrCAei0ptqgWmVW3gFkrdPi+ZRbtURn9hgMdjTxI+7891qAB+x2K16ClHxj/rN4WVMVrS9Njv9+Po5vBPU9/vKM85iZRAtyxhVYTH7Y4o3QvGBJ6G7/TpXxcV3P9PWK8AEr7iGhc5OZrPPwQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761600176; c=relaxed/simple;
	bh=RDsD42oo5DJKHd422ZHzHYbF0EKZmLoAokYu3cCm21o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=slv0u70/QRK7gPjUBfL2hM3GNgkB3MAEvZzi9i6A1vEZbaXzoVO32552nSZV+LGK2+7c2Z9ufXsb8p4jE2dLqzbieL4k8AzOZmnMjUcrwajtaG9nxHeeDh7k+FBffmkPwpT1gb0EXkIg/VRuJ6HXNs2gNvBUTZZgT0JhpH/Q/BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UaHUcm/3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RDhTVn2963171
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=+O6l/ytORujA0aTPgLT44s9iI67++3hpcID
	aF4LLtAw=; b=UaHUcm/3x/wW/WnSgg8sod9kchXZhNEZx98dPlkgg2w/QAYlbAi
	6JmcuJnZfUm6U+KmOPWLrSotMQBkDWMNsW4lNYCKf4LgvVRbw7b4aZUntoShNsMV
	vAfAr0i//FaHf/B0YrrKzcaT+uw329IP68bA3q4Bbsw5dMiiw00k+RZ/E2LQ0KGG
	T5QYryRCWIPp+u8TBsF9zZlsckE3B7+yAxt8qTHPltJRRr1BB0SZNqpYea5qtTAQ
	RJRkvD49c3vHOJatwQcLPBX2boebNZgz49+y+tfdEVCWgsvanBuqXARJQPqmluYN
	zwPJuuqYQXNgU+Gz4nKARWgUiIpzDvzWf+g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29v9sef4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:22:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-290e4fade70so41879345ad.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761600173; x=1762204973;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+O6l/ytORujA0aTPgLT44s9iI67++3hpcIDaF4LLtAw=;
        b=qE9Itr5SfWagerAmkh1iSBa+dH365kcCsQ6d27Nn9+Zg51pGsK1SNrBVsUOzW7F1Gy
         SSCzgRC6Z1LvLqM+yQiN2dU69+2KMC+3GcQo18FyeQ7TGxM1pwMChs7ctMdk8BDhqBSL
         4QJzlj7PpyqAgtiEGMeeWmlNMWNU/0BqMKxoY5xEfJ1LW22YOzDOHQfIEA1HXtKZRUmm
         4e1e9VynLWFCiJRlCqAbqOdUZIQ67+4RJ+nGJ2O5Y5fY4tfACWpTqjHoIOqLcIQe/SRS
         Wt0ld4GEvzQszTluAGwkaA83Cvn3rpk/KaGrgKewfrqFRnPqMwrTiX0sJnyPTQTm4v5U
         3V7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTRo+PM5B+WEnhazUu2goD6l22tshlpM4ljO49XWjet9z66L/sTUN1/t5vlIPwYXqQuHp7Fv7iz85d@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ/bZlOyMt4j2g/FASJPTkoCs6uBd5muG32vqAjzz3wyAlEiqv
	kDm9yXD292Y1IIVg/2Y2k4wO5w8nxhMbOQhgtxLgHm/NXUkzuyMN2zbpzb4Q7zTg2p2uwOTiQiT
	Ut2lczsD3FZa6k3gdDlpynZp41yB16ILG3xGphuD3W35KV3viagOZTmxDCNlgiuBe
X-Gm-Gg: ASbGncuuuEnDOD6rZANlruwObwummXrEcknUA6vdA/518m0Gj729FMCjg4ssK/cVhxi
	nNcfjwpD9YHx/F8GGaDp1aqfqyEA3Cao7dgexerrE4wXQU5/knpYPz9W9oLQNe0n1+e+qboGp82
	VTsG8Hr5K+dq5QRdLu3IxEVUD20CFk9iOkgdN4tWo7Z7zaGqGUDJwbjYPHCB1nZi2dHp+N2tHFz
	SejBHAGU5YjBM+ImGYuFJIo7tSh+RSiiE5kRqLJASmRYjbW4v9c7WbztSGE4VpbhYhlchEfFwjG
	eEaPesaKJudyKTz0P41IGmwspk7zVGBPmglZvvLOHGFyrD0T20ivXoR7Pj5l+W62q4mxOnTAGPe
	E4e2X6/EdmLjxYWhNI2/bk0GGa1gTlBAJ8ujJA2GT7saEZXGkJwqvmcmkWQ1wVA==
X-Received: by 2002:a17:902:ea03:b0:270:4964:ad82 with SMTP id d9443c01a7336-294cb522a71mr14434935ad.38.1761600172882;
        Mon, 27 Oct 2025 14:22:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvCQDV37IQteLNOCsBWF5wZ6TKuLII+PWlxpIKAJcNJ/kKTw5cH84AL6IFMDWMIEOjzjjcQw==
X-Received: by 2002:a17:902:ea03:b0:270:4964:ad82 with SMTP id d9443c01a7336-294cb522a71mr14434655ad.38.1761600172332;
        Mon, 27 Oct 2025 14:22:52 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42afdsm91073055ad.99.2025.10.27.14.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 14:22:51 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] soc: qcom: pmic_glink: Add support for battery management running on SOCCP
Date: Mon, 27 Oct 2025 14:22:48 -0700
Message-Id: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: WK1C2peEagDLdcl4HRn_APijgu__Mc8s
X-Authority-Analysis: v=2.4 cv=D/VK6/Rj c=1 sm=1 tr=0 ts=68ffe2ad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=qMsUIMY-mLJ0Ph_xJfoA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: WK1C2peEagDLdcl4HRn_APijgu__Mc8s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDE5NyBTYWx0ZWRfX+kDzxG8yH0s2
 LJ2/FreSjxswQwHTYfU+qGgSgzswY7PxmJ8ebznJbmOc3VESsrpJRKgGMEwOZRaabOORrALhycp
 bal9vsAvDkXI3NyZajcUM3ly4T+geidtj87h9I9oRY1q8XSHwbRH8iXHkYiYQrSu7T26QdwWeyi
 dGCTaeto5UKsb+8sg+yDwRFJDtES27WOW7sjPfc3wf785InQdNctpXCMha4/x3bsUtXxF7Bh2Vd
 BoBIHN+CAYmRy1X3JumePfyz3LTp0uYjaLpXbXFaYgs2g2yVNxl41CB8B3IbGUFVI7uG3wTbQW8
 znMZULnQN7WQ1VvND8gRyW5RtZh09rFGA/rX5HuLIxjc8lYxhysoWlwttJx9TbhWrGdnWs716xX
 Q8KwhIC+RCY7UviCfi56s9QxI57idQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270197

System On Chip Control Processor (SOCCP) is a subsystem that can have
battery management firmware running on it to support Type-C/PD and
battery charging. Add support for devices, such as Kaanpali and Glymur, 
which are running battery management on SOCCP.

Changes since V1:
  - Corrected bindings dependencies 
  - Renamed pmic_glink_data variables
  - Dropped "soc: qcom: pmic_glink: Add support for SOCCP remoteproc channels"
    since it was applied from its original series: https://lore.kernel.org/all/176157405464.8818.5887965202916918883.b4-ty@kernel.org/
  - Link: https://lore.kernel.org/all/20251017003033.268567-1-anjelique.melendez@oss.qualcomm.com/

Anjelique Melendez (2):
  dt-bindings: soc: qcom: qcom,pmic-glink: Add Kaanapali and Glymur
    compatibles
  soc: qcom: pmic_glink: Add charger PDR service path and service name
    to client data

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  7 ++
 drivers/soc/qcom/pmic_glink.c                 | 66 ++++++++++++-------
 2 files changed, 49 insertions(+), 24 deletions(-)

-- 
2.34.1


