Return-Path: <devicetree+bounces-170911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 437D8A9CB03
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 16:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25AE21B68E7F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 14:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01BF02550CB;
	Fri, 25 Apr 2025 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EpWdRIDK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D1E23E32D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745589844; cv=none; b=M1vapWP7P2VXT2bPh45zM/7WV9dLkKcQZURw1BTjyVclnsHxTfXVjVMqBIeCONqMhwBFYONki2p7NC5F6zKFKDjGMaGswAJjfbMeBCSwULoLiDOI/uWA6TQzkWIbSoZfYW4TQbPznRGKE+UQsWMy6IdcUFui9fuSGAfvnmSqsPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745589844; c=relaxed/simple;
	bh=DVCmG2ZyZCvXacKusGEsowZKmCF8wz9Wy3Q4QPySJ4w=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UYIWdrJ2RFzLynlFtasFrIiDyZ+uheCyT6fMZcTRxlk3fYl8BrlZGy9bFt2zVyASAtWvoVER7C31oN+ZRUOIXR20zHkINiDkGzrUXRQpEQexwRNx/Z8IEnZNU/zEW0ABABkbJUeDFS7y6wo4uaCDNnAijS5Op9pRU2yG0CGQtzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EpWdRIDK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T8Nd019801
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ZwK+b192ZD+Z7O9cLlbngFZXkc3t1Peta+8
	UE3ITQMU=; b=EpWdRIDK6JevcHIUtggjEtQ1+viDeQtowwEOowUEyRJYvBvL/sO
	ZxJX+66/9ctPiHoPSm16ftKHZH/TbTHZ7SuCW0MWJMMNBvfSu/40L6WSvzLnaOPM
	pZuhbSNWd3hwPNriEd+e5586R1qardvudYRxr29Qvhk6DqGXA/JGQQerHdJJaN6V
	ZFv30hcJMPNUyZissIP1jXv1pHYjnRWIkuJuqBdTiufJXr7ShBJ6ZW/QXTFD/an6
	gIE9LaTwYJaJTAZYtWft/068JHwu5Y/+v9nlAJF9MJuZhDtjBnJlm0wGw5QZ7Fbm
	LV2Ml4ut2b+TFjihc4ngLCy6IIn+9zbt8Hw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2h91e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:04:01 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-306b51e30ffso2022545a91.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 07:04:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745589840; x=1746194640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZwK+b192ZD+Z7O9cLlbngFZXkc3t1Peta+8UE3ITQMU=;
        b=EU7O2WPM+2dTfmwTiptRK1WgAWL3PKRhjTIUfl+8AoWIbnJXPuki1md/Kl1O7tqkVI
         k70x80FWKIJ3ysdHfSoi1BahWl/bPEmt36xN7M6HALpZHszA0VKRGlRggjoGoFRMnBX/
         CyBOH5OyM0CwIplumfvIuvEC9n91Bupc50wS/IHkHvUxMofgelnRbR21SpkqOI25SJUP
         52Dp/VLGQe14KX8OhiDQR3Bxqe3KgKS89Mbw/DZqrI7C8HZ0KLPRijGXHVPqyw+1wFzZ
         wqp1VNBWvqZppDSEChlwmoAgnCfSx+d5ARZHeXZlBeRS1bHNvywA3Ap7YQTpOqkoji1+
         vecQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVCT6NqkhmMIpajREkPY7A9c6cyKD7RupXHxZKRXLF7oVmuFQ+d2eNKx1Re47R5PyExq1OFCE4oFDR@vger.kernel.org
X-Gm-Message-State: AOJu0YyRYQ0oEA2umhW3HaTZ4jXfYdKIHlDdiqAhfgwDOy4mBfBnH80K
	DytwZytqlk4vNisfLjre877IL6fm836cNQIF+FFr7WJ7BIbMITjX5eO+gMjCkC0idVRRhANP/Q5
	ZmvY+v6Z6LNOfk5yFg2hzHMg0XJ9rUJU05VurIoVLZVELYAJ5vrNkQUVxT4rw
X-Gm-Gg: ASbGncuNQx2dgaQyF0YQlZwiiZ0P9oueKx2JanR7O1M/UDeVZhDCywmybw7PBadMawS
	aGr6yDupniNkv+DudQPYkPq/3lPZJJfeP0TD9HDiNGxGLnN+YI4kaRfQdPTfRuTCsUXzSXLW6rg
	rjbj+xQDrD4/Xs56kXAuXz4n2NGzGZXR+UP+yMXebS39XcQYiKkOOb8/wEXFstUW1PuOqUde63O
	XKvjrc8lUorBYQh56zlZR5aUO+k6wo9Pv1Yd83nL1w8NIOkNabniRcSHW86hyEhRbtqr+g81opw
	aA+T/mcKXaexDeaKsDiEzu5mspggoj1wta1xpGA=
X-Received: by 2002:a17:90b:558c:b0:2f2:ab09:c256 with SMTP id 98e67ed59e1d1-309f7ea86abmr4354837a91.33.1745589840248;
        Fri, 25 Apr 2025 07:04:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhLbW2FBKRZYW6QwsmA2nqfdHehuUpVw6ZkBwkNyEDmsL3fAXZEWuVrXlZk2IzXUTPUfB5lw==
X-Received: by 2002:a17:90b:558c:b0:2f2:ab09:c256 with SMTP id 98e67ed59e1d1-309f7ea86abmr4354800a91.33.1745589839858;
        Fri, 25 Apr 2025 07:03:59 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309ef061c43sm3468697a91.19.2025.04.25.07.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 07:03:59 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH 1/2] soc: qcom: socinfo: add SM8750 SoC ID
Date: Fri, 25 Apr 2025 19:33:45 +0530
Message-Id: <20250425140346.1087527-1-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ftcmTAKt4BJSsrFV_v3WtuvklDh8PvU_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEwMCBTYWx0ZWRfX8XC1sER2VRq9 iEn/5o72UZiSf0YSpv8cZ89A9WHyy7PUmNFhgTabA0sfSESyOJW/CBgp5lXxBlTAN+hbUpfHZJ+ 9CL6naBp2Zam7uNVZ92Eq8C8OE2+wDZqC+MHa1CqQ6TxJ96RoMuBW6VUs+Nu6P8SZ8nFazjqB+4
 Sx5566kChE6ipUda4hPOjezH9/clY9fjXxGE5C13Qpz/9Hk9aT8cFWHJ8xXlICPXmd0lbQzIevc QFFhmPRUpusysJ6h1PR1JPGMNM3ofVFAKlWJ/USCKTeXVSlY7zlALPZewUK/aK9lXtMchBvqETm 1VRMnCQADLIsjaz5/4JgBcopG+28o5sZ+76KgVjsLYwHDIyIoGVbz+RDn8VbHkpCwkeNeStsGjp
 g/TWmraVQtl7R40rlMBR4FlBlmoLQX0YSIrofYgo8+EkRM9hxFwVi3Mh6JtLGnCkXgNwMkN+
X-Authority-Analysis: v=2.4 cv=Tu/mhCXh c=1 sm=1 tr=0 ts=680b9651 cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=MeXL3ZvE1JNQxLRkgr0A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: ftcmTAKt4BJSsrFV_v3WtuvklDh8PvU_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 mlxlogscore=999 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250100

Update soc_id table for the Qualcomm SM8750 SoC to represent
SM8750 machine.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 13cf73744bd9..71858de73a91 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -456,6 +456,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCS8275) },
 	{ qcom_board_id(QCS9075) },
 	{ qcom_board_id(QCS615) },
+	{ qcom_board_id(SM8750) },
 };
 
 static const char *socinfo_machine(struct device *dev, unsigned int id)
-- 
2.34.1


