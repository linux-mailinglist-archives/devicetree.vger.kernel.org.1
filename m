Return-Path: <devicetree+bounces-220930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C997B9C82E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 78C4E4E2FC2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA922D3209;
	Wed, 24 Sep 2025 23:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bXlfemCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502312D24B4
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755893; cv=none; b=cuJZpGy2DcAFF33VkFIvPQt8iuL8NguKqMlfuxOmr/KxBO/HYmaFjL9/+whgyntfPpub61Xf/mYTkBlreesy0ATq5T+ECUqVL+P/i2YPSU+7ZXHLJOEDa2MM7ZmdPUC0LT9ZLeUOFhZ7HS/geCVHTUJa0NGf0uyn3eqpKf5v/x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755893; c=relaxed/simple;
	bh=ZEV7aGV8kcTDQaybr4hw0p9WmY5zSMtxQK7hwQf80Dw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Etg+m4Ylvpst2ABD9yXkbenGYKB8HkVykSnIdfuctMna+FVoAiDlM/rk2iqptpT2B4BFpoYzqso4LGIzCvntfnXkbJscv79Bh+I/4OEKYfTYo7WksRYz8kA0doQB7weDzdp+XgdCOVkroD32cJ0gDvyOJI7+4LuRszRVFRbpGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bXlfemCm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCZolL002789
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CMpKhbxvVWoQ8TSL+vf5qR5STP8Ly5l8MGKkJsWdz7g=; b=bXlfemCmJFyxDs1p
	Ej4cEEvHjnWVmvMNxU611PRef5xJnfgFRRA+BSe1Vt7UqQ+XLLG49J8hB2M1QU6m
	e6JAiR8t59I3k+giSLwEepv5Ah0gPfPMcAOs41Nbx/GnslNsTd6YBr4s1SsRyjii
	5iMygr809f4KqKEDo/CGYPlPSLYgjloih5xgTCo5XPf/LDrsGmJSxpKEUv5WfPWp
	KUJRtkGAj49SsKrSTPaQZDars0vvwyxKK25WWKj5m9WaR1M3wzdv1uRwXX3gyA31
	wRNjlsotznFYxPzO4C7KQPjaE+1g7eTvx+4w8tFPpEHrFCwHJM5T0/GwfpuUi2jD
	WcdQNQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0jg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:07 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27eca7298d9so6444725ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755886; x=1759360686;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CMpKhbxvVWoQ8TSL+vf5qR5STP8Ly5l8MGKkJsWdz7g=;
        b=YSiSCuIm1l2iBdrSA5PwWvRE/YV/7YFEHWj9ZmJhS+/28YTGzI0oHS3JuGck+2qcvv
         mdVMSqlitZyx0qNcMo2SuyZcvFcd/AvJdWFtF0nV46w1G2C7yGKU9HgxRerNIJJO8Giq
         N5FFKRoasUy6/9+J6ZV+pRfGI6k0r82wj+tbyLLSo0nSg2QUoZYbgZcnWy2I2elhaFvf
         hJjhGOlmCHtdaJ2oJnLWmxe42POWOabBbY8B8neLJ2gAFAUK6Wf/il1rTE481B5RpTPN
         tkQm6OQpH/nmjIEC9RJ7xULtgR7bUUaYxRwNn9LypHmoNAstFxwOL7LA+BVsnY0MVQPo
         gwDA==
X-Forwarded-Encrypted: i=1; AJvYcCUP41Zg7VsmtCQ/9zKqabueu+ALUeW4d7ZhpzbR55psXMiAARephhVdAuh/0Ccp4kITCOs/aE5mvi1g@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo1kIMqns/ytD++aLxGT9epvGNMrnDlwlkUhK7Zs8XphddHuqS
	ktbU1mdWS8eXIf29Ly5/6Z1DhPff3A6Inm0A1CdKbNQlHEQhDVBngZsyU/E3OyE0OMS2p14ROWH
	uOP6Xs/xuPLAPnFv6hU2SjWA0Z192bUQ5ocEKukcGQ3QvL5HB09hWAebVDdGmA6v9
X-Gm-Gg: ASbGncsQ/+MKEYz2kJJITGhQ1yFpfjXUzQcyix7xBozcFF97pGPmImIE4HLK1TZrjME
	RmJedtLmfIqadbb3JVVgshEee51I/pXIZifK63MsvYHXNYilGtwHN7+p9EdQ5gIQj5CT6VN1rb3
	TMRoB14ZgLhVoSelEn22gNrfHlEIErQCpkYRe+7/klZWTr0/pIPgwG31o14Na83TW70Wv11iDpM
	0Lv1Y+RNB7DgfdGwuQ/APZ42tG6dQfRJDAAmGbZxGvxXrw3lCAnTTgLBkGKb9px2r9YA6LbJcnm
	jIm3XpmL1Rkjs5aeqpvE1q2h0CrBejOS8d6Y4EIBG9jZMT2pE6AJSN/9gpNEJp3GYXDuNBTpN52
	lLd4YcdXev6W0Czc=
X-Received: by 2002:a17:903:19cf:b0:269:7427:fe37 with SMTP id d9443c01a7336-27ed4a30e5cmr15294375ad.29.1758755886480;
        Wed, 24 Sep 2025 16:18:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/ebc2nsMmiv2HiRq+pX9LoY8aL3IaOeMJamEwP6YOIDPpr1NOVTR9Kz3Lld5O8UMyUW1n5A==
X-Received: by 2002:a17:903:19cf:b0:269:7427:fe37 with SMTP id d9443c01a7336-27ed4a30e5cmr15294185ad.29.1758755886088;
        Wed, 24 Sep 2025 16:18:06 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cda43sm4321385ad.25.2025.09.24.16.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:18:05 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:17:47 -0700
Subject: [PATCH 2/2] soc: qcom: socinfo: add SM8850 SoC ID
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-socid-v1-2-fad059c60e71@oss.qualcomm.com>
References: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
In-Reply-To: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755882; l=640;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=ZEV7aGV8kcTDQaybr4hw0p9WmY5zSMtxQK7hwQf80Dw=;
 b=zth5W42Al/7f1Okdmuxog3S3+pBB1bVznskBCvO0ksH8KHnsqnyTkBRv71HYL5DcipSv5Tryn
 AgndvSTEu4KBlY2EGBfC1/oooKqQ88QBlNu6amlRhyNw+//g+krP3pI
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: QypJs7_L28B5VITsjW9pIGTQcEQOU8Z_
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d47c2f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SCjz2f6kJreciZqEAHEA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXyTO5SUUVWp/J
 NQ72p++DAjXZQ9dhbxeluvSHMwfHBk88/W1WVWIDiljVB8Nu4HLPh1xu8OSMdBn2dFPRbSiy+vC
 kiIOT41EWrAaoSR6cZK4m2D/62BhqzpoanJqcHFEq4uMqG2NWIwbY/5/YCRS4lXHnB+yU84rKlJ
 ZwwXUOmgZkWWfsGknBz3YXm4MeBJBaBw1L7PyjuryyYHh/vhDo9EVk6xiL25q0poNTpDjwJBooq
 LChLPyKqaY/IS3tP8xi87qp/r1EMcYAeweTWc7n1KAXSlrkNFbc8O2+PUVLqvpCgd4JeL4PD7dJ
 wPeoaEJp9cuxb/nJoXHgQMMq2utKHEG0m5B68M/ZMQgIfoQWQN47IUjcCUfG+WyMh1R+fQQcveP
 hsAGRcc4
X-Proofpoint-ORIG-GUID: QypJs7_L28B5VITsjW9pIGTQcEQOU8Z_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

Add SoC ID for Qualcomm SM8850.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/soc/qcom/socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 963772f45489..a2e2e15b840c 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -461,6 +461,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(IPQ5424) },
 	{ qcom_board_id(QCM6690) },
 	{ qcom_board_id(QCS6690) },
+	{ qcom_board_id(SM8850) },
 	{ qcom_board_id(IPQ5404) },
 	{ qcom_board_id(QCS9100) },
 	{ qcom_board_id(QCS8300) },

-- 
2.25.1


