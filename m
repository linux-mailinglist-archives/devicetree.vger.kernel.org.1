Return-Path: <devicetree+bounces-196933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC8B0797B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FEEB7BAFEC
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F202F2341;
	Wed, 16 Jul 2025 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dd3dqEwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55326E6F4
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679235; cv=none; b=chLM3qOVN/I50K2x7uEzAbu2McsRQZ6XtdiYRkLOiVjfVnj9v+2+LT6vs0BfEoaXHw1ufO7X4nFEsjQ6NxMS8UjWOlv5Ey2ji3x0FaHjG+kHDItRDR84wYQXeEU1bFMhJWLWlu2ZjlFsczgScbpmk02a7O2W5Eao6sQjPyDV0HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679235; c=relaxed/simple;
	bh=chDPFM/gKsIkCz2uGNvcZOhIr1MQ7Z5mLou4364bH0o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CF8xbJHkSxSeS59oXomqBO6fhTIrix4uHeTgsd6+EZ5AZqr21EN4fG7QCmbFcjchuC8ebIjBXLIC1abhpmaEZiAPxjBJnoq/8crEPO46qYOAYgI87/CFfXTsrTMhBbhZoMU16e765YOKv6cwA1QbT6ptVmyNTOwCNBOb/6Pp8lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dd3dqEwa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GCuppC014550
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7kAuUkf6gQb
	DezV71kriyxf9UqTXCD2n6sjYNZXCI88=; b=Dd3dqEwalwMaSVaOto17nsBIFoH
	6ebpDriaGWfzFfbkizbWCF2szhaSXCssVvz4e1Wu3A0fxnoVKIexgQQ0bqsS2N9w
	4lxUhw8UOiFpRM9oqNPQIS4HahBudi1UPwTjn52gEzB56FCR6FAirmiAN97IKSnL
	21aIOpBf4SW9uYAwpk65WIale+14rpyTkg7HCohYie7WQkH2Br6w8A9EtL1/m1bX
	DFiIKcOT2I+CoSyw57emozIqUVi8vNrgKhOMn8W6XmyFzMKQ29HE//XI32qQtGJb
	F54UXcoNvSINmemrsiBah+R51igZmYuGkl+79EcR/l+kgzTgczX8u2tLSZQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyqd9n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:33 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74d15d90cdbso42207b3a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679233; x=1753284033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kAuUkf6gQbDezV71kriyxf9UqTXCD2n6sjYNZXCI88=;
        b=UQY8DdBHq4Ro7PB91PQE60fnBlOvEcWk7yLTPzVVWJLUoW9TXQzK/4YMaOnuYq5On8
         bVOmBlYlypFIwUsCBL9dceHmB0eIaS6LwrAPn1PK6zX5UvvQcl+V2m2dspEUoKytvzDK
         UTNjyEzjGB8TFQWlXBb7RH4GZH+3aTm7iyK012K8cYLhYcn5RQ3mF/HCGgMKhhB9npEt
         n8AZJYjBebPmKJT4RYN6dp6S5tgLXPdTkR8o57pPEwDpmFhOt5MXyGzSby0gjocCXHah
         zHzC6GT0IpFxpelnSYmiW4JWQkqyS2Y5LObLH32WfQQ3/qa7YdTTI0XhdSZUbrTexDnq
         yQgA==
X-Forwarded-Encrypted: i=1; AJvYcCWbktohxavmeKTuT0KdrOHlW7ljAWQQiVjKDajvcTRUXonap+sk6ysqPnBSoP32Bzp+lzJ4oFqbV7bM@vger.kernel.org
X-Gm-Message-State: AOJu0YxgCy3k4bemVTSrP3PxDAG+z3ADC8pJ7oErdLUEJjLqT7ditz4I
	doCTU1fxg8OaYVVne1lWBOCs+1IC3nvFGRrrcJj1g4WrxnEA9072yUOZf8MhOMYd89ME/ihu/8c
	oh8AtPiTAtRp2rKgxuiVbv9WXm1hJe6MhjI4QfJRy5o1BjvuU7C9ixDpxjEvq7Vne
X-Gm-Gg: ASbGncul2PCh5eBWGY8MvKQfvbfmAcaTCRIKM8Rnac9MqDEpL5BBCU03+LfCVXQtW56
	BdpgBshVxD9D1LP0JSBi0nIwYXCATIOnI1hmxKyXladiqSmvhBXL3tI5pYrmHcdZrQs7JID+VGl
	+bZYFApC365fKS7CqjVO6QGxmde65rRRWIGQpAuKtkN2DNUPUMHusWIBUeDvTraYrD4mDdlg5aj
	hfiyA21rAxhTRqgSCRLlFug6vKUU1NDCWyVpiIVLEw4n6/YpwcxDBjkJCAJhzEtaAiOzuIuVxia
	Wh4RKnlKjpcjlfarD6Kh2IX5Lus5v/w7u6GnJM/tXQfGrSTZ+IYbg8ygos/ihqqFEUhTOAfmrXv
	2N80MRYEyd6wpysiWSLIy/nY7Rx/8rGuXAz+z11EA47mZuarjqk7sj1U1DRfg
X-Received: by 2002:a05:6a20:2588:b0:220:1ca5:957c with SMTP id adf61e73a8af0-23814269fa7mr6035107637.31.1752679232443;
        Wed, 16 Jul 2025 08:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhWL+P4EBROycejWOKigF482qtWta4UpPGPsaG5+brLj9Rnoju1DZYfQKmw4BL4DfeSQ5H4Q==
X-Received: by 2002:a05:6a20:2588:b0:220:1ca5:957c with SMTP id adf61e73a8af0-23814269fa7mr6035032637.31.1752679231921;
        Wed, 16 Jul 2025 08:20:31 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm13912054a12.38.2025.07.16.08.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:20:31 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: clock: qcom-rpmhcc: Add support for Glymur SoCs
Date: Wed, 16 Jul 2025 20:50:11 +0530
Message-Id: <20250716152017.4070029-2-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: z2UkeGFQHEaTLxVXrK_jAz23qxooFG0K
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=6877c341 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RYbyPGwfGPyvG-E-d-UA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfX7b2+yNBA6JGU
 +gbJ5WoCepjetaqNeHNJHs3DHHcg/5PHbBexUIO455WNYUbpc2vkXISxNGc7f86GmicoJ8T3KRd
 o+o3P6EJy+DjORCp84RxA+W0vM28JfPuccCfQJ92u+C26ozsrYMNBujlBTETj6WFKoHShQt1UBF
 PxPR7jRMzU1kbUoqLuftY5YJkEyL+MQELx9ZK9jYJyPlJ0/NU2vPk9G4uzfX6dU8L8x9OmbSzTR
 TRBzUh09nIzCeAti+Opc2h7CmJO0i5pDdkqW3pyRafg6IHjUwbmenjHf9R4Na06jxALB65lj2QB
 0zdkXrMexYAXJiLHnJGzKTm0H+rjuPu9QdNWzhjj2LY88OB4SyikJYkEne1B3yDWq/vbI11JZnp
 /S5TInEO/ggd/BMhwM7DoFIeiSZCXI31TkPY13Y4pvpr0C4oZss1ClGBieIRcW0ZHUUzm2kv
X-Proofpoint-GUID: z2UkeGFQHEaTLxVXrK_jAz23qxooFG0K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add devicetree binding for Glymur SoC RPMHCC

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index dcb872b9cf3e..27307e7bcfbc 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk
       - qcom,sa8775p-rpmh-clk
-- 
2.34.1


