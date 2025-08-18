Return-Path: <devicetree+bounces-205666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA6CB29C07
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97271621F98
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB07F304989;
	Mon, 18 Aug 2025 08:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Trfu9uoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5FE304962
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505407; cv=none; b=VSOwUQ538xllsSqcxwkqnfGDksml4Zzwq0+qbKDwdU5L2M1BrDkuZcV0L6eFqGjtZc+lTv0L4DidQs6Tk0MApyuDGMYWDAsbqgIrOjrluHdaI0SmjnTq1vSiG1WwfICSiLK3wP2xSCN55MCuP/oszKqUwKilP4y13k+hxKRIq7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505407; c=relaxed/simple;
	bh=r1P5XOZ9xenxmIBMJEe17CUSV641Nz0efcyuB6UGa2k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CSi1LmYv3RNAvAM7LW/N/ONa2eWS5vq31rW+LnvDYMMK9pvzaGRcJonCXnvepsjVKfs1r5P5Es7Q4QYC25NiVDQxJHK8xHIt9sFGSU5/hVizKUtct8nYr8VMMSAUmvRILMF8+UhQQOBEH6CNndNR0CQfjTSNHOgqbzvEIaOp/80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Trfu9uoq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I80a6A027109
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YA2b9PAvdXRmG3Yuf64IGVHkPXHXY02Aav+qtOoDO0w=; b=Trfu9uoqWNmuDAZp
	dgQT+DNWP7ceg/uWTWqS8ycztNGXI13n4/uE5bYLdZxm/L9fVhYF6wM6j9pqO0mD
	J1TixYrRUv2bqDdk4Hv8R1Lb19zs9KSDZ2fGIWUWdZS+TyzLFpJIJfSphQ6cyiEA
	gtNB0SDWxAVJMJkuu52NiS0SPdBU155RL+yXWAKGkC3jZzGTrmZ2/nk6uRzg1uIU
	TGQC8hJCrjEdpfxj4kpz8Rim7n4OQkubd08zaUYFN3BqZftINjX+zvK8rukQ4Inz
	IXf0wWAJYc+SHz4h3ewIJrf0VPo17oTzqFx4jb4V6A5L1PArNkFNR2i+ETyfmfvd
	a++a0Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jjc7uwhk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:23:25 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-323266dca73so3351126a91.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505404; x=1756110204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YA2b9PAvdXRmG3Yuf64IGVHkPXHXY02Aav+qtOoDO0w=;
        b=FEs/LTO4AIGSDtR4aEIy2NPQHUuSoJQyzfvqwB8C4VKqQQWu5usPRTh2VRNiMfTc07
         2PffKIi3NB7khMAi9Loj5KnEuBTHQQosM+4NJbRQiuSFj1fl59WAqn/d2p3jstZTK00D
         RWClXyBOi7YNE62/JVPxtXpQwfFQDPnNFvejI6fvmdO4Z3Obospho+/wXSLxnA2iRoFM
         R9ILS+YTzEEheoAA1Mv+FbcxIDiGWae916E/J09cwYe//se1vh+V3oUJFGidwIvhKwrQ
         LOoYflwjX5YX3ad1Jq6jEF3ivgkCm9oRmAY0/u5ac9HAQ8PpjZkYO9Hpa/U0T/Eg8NUG
         BQsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNuWJiWtaVUKzAKq6/ZkODo4zO/23Jvt2dmHvOSCGZ2WgNBmJUT0XzuajMKJtPmxnQnPy9c819qIOP@vger.kernel.org
X-Gm-Message-State: AOJu0YxGql6edw7V+q9qoXZoWtsSo5Ncc5GL8YQEs/KnUbNgX9c+o2JZ
	QtI3roZ3HKGws6N8+GdVQnp/AT5/rX5n6poxfsEUeU0RH/8s87pgy8cJ+VyA6E+HFC6CKr9oWpQ
	bbJfnSzmDHZkCkMy6UiggRaeBnhy86pPqYCac2NtTOOd2GklYD559w7EoJo2ZyL/I
X-Gm-Gg: ASbGncu0k5CzoqjzWF6YI4+FI/yAHgxgo7XaDPSQPYvecH5VX6XNQkceG9ta70Q7xIA
	Lv0OArapENyq0gzKzHFWr1sDCU2z2Hv2iu7sjAX5Jq6hlxlnru+TmOFTWerHyYZQo4txHIS29oz
	6yYc1nfU1lOAIUoK2vOE8LLX2yjgatDWfqZLZvDUijYXO6Kymq2mOxSQToKp3dJ/HBfOIl2zDmq
	9UxAtC7bSQotaUId6B7SzivkGZFHnm+MW5DMlXN6ioOpyiU+9YCq3gkjbvNQBlJug5kvP+sC1MO
	dFd+ocqq65h/eIQYDm/w9Ze1qwGHU8S74LgscnERTPES0PU6y3JRGJQ7+m0+74L1YyoAq7yk7mI
	=
X-Received: by 2002:a17:903:37cd:b0:240:70d4:85d9 with SMTP id d9443c01a7336-24478cd29c1mr101023125ad.0.1755505403880;
        Mon, 18 Aug 2025 01:23:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYuBoM4owvivfKknYahmOIJgp7qidwojBn4u8QZooyQId72Yf/YGItXF9hitSi0rTk8Kblig==
X-Received: by 2002:a17:903:37cd:b0:240:70d4:85d9 with SMTP id d9443c01a7336-24478cd29c1mr101022735ad.0.1755505403431;
        Mon, 18 Aug 2025 01:23:23 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d5536c3sm73225155ad.137.2025.08.18.01.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:23:23 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 13:52:55 +0530
Subject: [PATCH v2 3/3] PCI: qcom: Use frequency and level based OPP lookup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-opp_pcie-v2-3-071524d98967@oss.qualcomm.com>
References: <20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com>
In-Reply-To: <20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com>
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755505382; l=1213;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=r1P5XOZ9xenxmIBMJEe17CUSV641Nz0efcyuB6UGa2k=;
 b=yIhj5/flyrKcPzl2sJmHXf4IYpP87Kd3PzPby7h3mDHr2w3wwdRaowv/CYbZlukjY53rlE0WV
 t8sMccGGJAlBnKRYYFnGhVi+7QJBVVH0ErrAJh7QHWOlzcOXc3+RhS7
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfX6ARm3I23t/j2
 20/tUbTRNgX5QEbE6JxS+jfAfJPSoq+SjHvIIzDfZOAoBMmhHVZzdtX3+c4XiaiDIJZtDLaEFL3
 W7vd4iiQ7VEl/NOUyaD1qOwL8KE9t3xhv3gef+HLK2fZog7WGI3opEZk3FLQ1Y5juDccpSKjbj8
 rlbGh239/wt5pZl419dqhkp3+ewZG2pqquzDSE3QWUPOTecN/OeU2HJ2FYxP1TAU9hm9s7mpNrH
 B7xpyfo9mWiHeDzdDqBr1eFlysAbYS0QJR+xDRTWqe8ZxUsiH5hQEn0uCDm/VvZZ4o2aIrNEGtB
 tgZxy11pplCP9bNE5VSjtCmGXMQbsp1/TsCFoJBKtbhy/0ujaNf3/1xWJn2eDl0oslhAySIp+hN
 4RLKaAkA
X-Authority-Analysis: v=2.4 cv=c4mrQQ9l c=1 sm=1 tr=0 ts=68a2e2fd cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 24u_QkhUe9nXfKgJbA17EQXAM5aB9OlB
X-Proofpoint-ORIG-GUID: 24u_QkhUe9nXfKgJbA17EQXAM5aB9OlB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 phishscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160033

PCIe supports multiple data rates that may operate at the same clock
frequency by varying the link width. In such cases, frequency alone
is insufficient to identify the correct OPP. Use the newly introduced
dev_pm_opp_find_freq_level_exact() API to match both frequency and
level when selecting an OPP, here level indicates PCIe data rate.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..698209b5c13d99c639b09ca05bcd05767a2b9be1 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1582,8 +1582,7 @@ static void qcom_pcie_icc_opp_update(struct qcom_pcie *pcie)
 			return;
 
 		freq_kbps = freq_mbps * KILO;
-		opp = dev_pm_opp_find_freq_exact(pci->dev, freq_kbps * width,
-						 true);
+		opp = dev_pm_opp_find_freq_level_exact(pci->dev, freq_kbps * width, speed, true);
 		if (!IS_ERR(opp)) {
 			ret = dev_pm_opp_set_opp(pci->dev, opp);
 			if (ret)

-- 
2.34.1


