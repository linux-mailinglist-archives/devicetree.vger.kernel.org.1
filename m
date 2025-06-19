Return-Path: <devicetree+bounces-187582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E815AAE0886
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9676E3B8602
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD2B22129B;
	Thu, 19 Jun 2025 14:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOuOJefC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22EE21B184
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342824; cv=none; b=u9iOWIpBC5yzBoSMasUqAOmnUmLCC/nu92vHCpRffjD8YIuO8tLsFW62HLmT/uUl9Y9X3b1zisu2lfDMh8vOyYnXp/xvj/v0/1uy7w/emsqRhxqa5NI5SsVy8e1deryOmDclgmPpSEe6NWpVj7mrMsN6FxwImeMNSwxTmWwmzRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342824; c=relaxed/simple;
	bh=51nEIBDAwsHmEK+u71JbwfCY8cw54ryyZ8sX7BxOeoQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fmhTD38p3Jqe7kLbqDHVLLBYnK1w1OCufzhOGIjdSBr4ekpTs+ZlSUBehfIW+0bDm10iAxBnbGA2W2LtmMr6fr6Z9u7+EtFyZS6dlTABjPWKSh2wxw3MIyEb7HrtsIDZMZ2gvwx8KcLWDQZI9C/lm5y6oGQG0j7i9iOzgf4O8rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOuOJefC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J6eZ0N022048
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=K+hUeugL3tu
	GJO9JapQKQlorUudIraszTF4RoWhGz5w=; b=hOuOJefCvLkNpJAMoCooRpFEqbS
	gDn6on8DUjEfuYBZ6iyhucYjX89uQt4aydNPITMN7fR+0NJSLx6WvYM6NOjj6T7r
	Bdr/JsAzzIGU2NG3y2uWGDLU2EeiZgsoNIkx4ZRNpzkerXEMciGj4qLxciGM4FLw
	paJZ/sMsdYA761YGLAoc0C9VaZ3ifZJ09BmdVC+vedM3Zo58wq2ImULU7A93YKLl
	rU+RM9Z5iPUpWmN3YXNOcsnRKMXYOHk+2SACWGZk8LyPvPADVmIHEhbpffrJE802
	OrR7ewVW+DvAALHWzDjQFs+VkmctVHLcjaSWB0/xgVUqLFjoyeOb/Onn/Zg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791enr7ak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a44c8e11efso23863511cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342821; x=1750947621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+hUeugL3tuGJO9JapQKQlorUudIraszTF4RoWhGz5w=;
        b=SOr82sXPkzxPOnAgr364a8gWm7zrm0TCFFz5Q2fM3dGCrb1e/4zxt8yPPpG3drjiYM
         vs8pwPw8JRPSH0KCPzcxz/9XdGb/VwskRrq6Pv3SMKuBU2FXLkHF/Lzr8fbCyCRMbp8F
         lUUB47UoOEVN/9uRlz6G1X0xrJY4FRS5Y1oYYR9Avkg6+l1pCdQBn+jnHvjt+aE3b3VO
         ymgR3f3oohlkUb2mno+kJlZLR0ZOg01LkXpkfFJh4+ajJ9scQlY2+881AEjBY7q0hzEb
         1TIxOCajz1OAZ6d0wF/MwWQp/PUtF8vqJFaOuyLIXwp5WekiGUqRZP5jer4qdwptNo5q
         JQJw==
X-Forwarded-Encrypted: i=1; AJvYcCXlPO6U2KQK+tRPApW3Dmw2wauFqSSIRRI//q0wTr/NpAwXH99QGIUl8FC1TJYKE+8m3A16/JBT52rF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5/Wp1FKnpZdfIHBKyoDYXXSFZOMXbx0JzGLcB5xj4F/rXTDjd
	CFEBX7WALC9lvGAMDv6+LWQHjMsOMAZh2Xrwzn2USeI6IJFC0y09wtLvGSnKtU8/7EUuBtqRbyE
	Yiv1LANo0zD1ZiPBPQKKWarKbz/8fmWec0tl0JB6Hevmc+wFfygp7TP7RKiLO7eTM
X-Gm-Gg: ASbGncvisYhrZFzlnJHK9Q/eKDJa6toOaoGAHeQA9FHwcWm6UWllJTMs+Hwjd5xW85J
	Syf4F7K1D5LcGU7ivfRXYArGSPQSIMc9ILBHH2s9zLJp2BSDJ6Q5R79matwybV/9qphzl4oSw6C
	rg0lmOOtrH1zgyioqPaJTJQpRru7b2h2kpQYUPzAMgpRtfttkTVMYhtDfEnbCNMXCrduG22qAfi
	Ye+XdKF/Tz0lcCQbhwMYwNb82V6dNBina5IUVV1jNCHIWIF9c1FHe1HJoUhF80BIfrwJonrwsF/
	hWrH1KgOiMNLTZxXmqHCd10e33VJLUnd8Yqyr+Abe/+8ivq7ORyej25vFC7FEar2GB6N3dKRA5z
	i
X-Received: by 2002:a05:622a:1a04:b0:48e:9b77:38a4 with SMTP id d75a77b69052e-4a73c62c305mr319281281cf.26.1750342820778;
        Thu, 19 Jun 2025 07:20:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEm/das3lpaonI88VglcCaFjZRBXI04wC5yPrqVuhlynDRugpLVZkqhz68D/3ieiXigFRPyzQ==
X-Received: by 2002:a05:622a:1a04:b0:48e:9b77:38a4 with SMTP id d75a77b69052e-4a73c62c305mr319280731cf.26.1750342820254;
        Thu, 19 Jun 2025 07:20:20 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:19 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/7] media: venus: use IS_HFI() macro for multi-version check
Date: Thu, 19 Jun 2025 16:20:08 +0200
Message-Id: <20250619142012.1768981-4-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: RfnV-F7ghOJOByAH5clQLkbonery48gM
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=68541ca5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=gRO6LEfiGtCirb9rR0IA:9
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: RfnV-F7ghOJOByAH5clQLkbonery48gM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOSBTYWx0ZWRfX9azT8u2SBtgI
 yZhonoxrb04ze6DExDM++yTS86BdgfCJgL5Bj1Rf/GZs2QNoPRXjwxK1vJa/K3SFJWBRBdbJu8n
 l7UHUtBUF4lt/oaSjyefh74GV1ItlAGIPSKMBFvZ7M/KboRi88IwpvNswyiUS55OzzBquPUsVgm
 gfUZkIu5OdvnTW0xqG9zyypzyiTdeShRbIGj9gJf3bwREe8TV6V8gY2vmUDMmdKckvZAlf7ZadK
 3UOyNOiJayc/zgqbrYhi+N0mKgWx9uPYo3X1KJawlIJSEm58GEKq4vOfdQUDqlEjK3cjTK+mt2l
 LDOJUq5vI0A5/igarfMEXgNmOe3AUJ/zV7Cq6+qhrmUV3bCA/XH20s3Yfm0PJ+ZCx8dcKBY7PSK
 5wYn0n1lVVNbWJ62u55Nh/8/C63VlvMwtdBRvtKo0Zp+3wxSxyn1nA3847oAXy8mO6jV6pXU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=773 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190119

Replace repeated hfi_version checks. This improves readability and
avoids repetition of logical OR conditions.

No functional change intended.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/hfi_venus.c | 2 +-
 drivers/media/platform/qcom/venus/vdec.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/hfi_venus.c b/drivers/media/platform/qcom/venus/hfi_venus.c
index b5f2ea879950..5fab68d530e0 100644
--- a/drivers/media/platform/qcom/venus/hfi_venus.c
+++ b/drivers/media/platform/qcom/venus/hfi_venus.c
@@ -1634,7 +1634,7 @@ static int venus_suspend_3xx(struct venus_core *core)
 
 static int venus_suspend(struct venus_core *core)
 {
-	if (IS_V3(core) || IS_V4(core) || IS_V6(core))
+	if (IS_HFI(core, V3, V4, V6))
 		return venus_suspend_3xx(core);
 
 	return venus_suspend_1xx(core);
diff --git a/drivers/media/platform/qcom/venus/vdec.c b/drivers/media/platform/qcom/venus/vdec.c
index 99ce5fd41577..7e4c17f3aa84 100644
--- a/drivers/media/platform/qcom/venus/vdec.c
+++ b/drivers/media/platform/qcom/venus/vdec.c
@@ -823,7 +823,7 @@ static int vdec_output_conf(struct venus_inst *inst)
 			return ret;
 	}
 
-	if (IS_V3(core) || IS_V4(core) || IS_V6(core)) {
+	if (IS_HFI(core, V3, V4, V6)) {
 		ret = venus_helper_get_bufreq(inst, HFI_BUFFER_OUTPUT, &bufreq);
 		if (ret)
 			return ret;
-- 
2.34.1


