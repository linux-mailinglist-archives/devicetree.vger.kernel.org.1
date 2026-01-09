Return-Path: <devicetree+bounces-253112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2324DD07AC4
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97B003059697
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D433A2FC874;
	Fri,  9 Jan 2026 08:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pcriZ9Rr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IyJzxlHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A642F7AD6
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945611; cv=none; b=YLEzDG8ECOknFdLG+nvuvNEEzjOXW8WwnKqyO/sGMPr6z7pkTWwVUH7CrSXBvFabZfw+l+spOwWhrp+I3nLLzjYAGTwESZYI0UVr9/cP7kKB6BTLjP5dJGKe7a+2LM4usqbJGPXuUAZaFNe8o6jOzOZx1CkJZ1sOIbp7YfO4knU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945611; c=relaxed/simple;
	bh=2YNgsZyT2uVAHyX6If8myEru6s0VwLkGer4gzuGhqr4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ilYiBJ1gtJo7yVHWD3ZC3x6FhZ0yht0ZtPlhtkFJ9CvzdbphFGFnq2z1r+Pou7qNESBLwVvsvEElgEVftzNhXrRUW3hYvW/f1lT2EI55z+2zLldFriC58ZWuKkAl0fg5/D+482paoJHTDxrvq2ByDQ7cnucHIlIK07bTlDQqlxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pcriZ9Rr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IyJzxlHX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Mplfc3220044
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 08:00:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oVUXBlvFkGa
	S6g+YdgCI1ahZnqFYalAIHcRf+aPjVeg=; b=pcriZ9Rr4UdnIrIcVcbLzjtHqyk
	0l7GfFjLIkHQpcwHV+vgQ4GDsPRtJ2flO05wTVR5X+20bPhNCJLlR282X9RTromj
	H1hHVu5DCojK64Hg9F0xFHAUDTyfu0LzVEhvK4aCuRDEs6rD8W97NQ8LBwIq3LHK
	7Zxmp/LCnoQnaLi38CdwRkUb79XUnITRam0bApSAkX1oZ+SZWh/IxK/jyIfI4sBu
	UU0EsK7ydEBEgziksjUG4+vIBiDzFPLQfL8Ic93JZymXXgYaxeh/ImvrsfhzcOmn
	KBoo79lIYtowIfcDa2MRGScmoe1WHadZBb0FxoyGHQVqYFIzigOhMCRvArg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjt0hpkh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:00:09 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c52ab75d57cso1317390a12.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767945608; x=1768550408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVUXBlvFkGaS6g+YdgCI1ahZnqFYalAIHcRf+aPjVeg=;
        b=IyJzxlHX/EWiwZ3BRQvuvpDfTOTZpvtGe8TnM3qAaG7fYgbfLLhUnbvK/yNyB3dzhe
         XqI8ErYsOLM4yOXLWeipd34ecs5OMUGLfhsKBq4oMvf09Md7gIc3fvt/graXxZYQFv5G
         cvZZMybpTEq7PHDVoQYqy/6SZEp47GKUEiPCdPPlIl7d9lP+4iWlUua5TWlToljN3ni+
         bubOCkJ0HTisIqoPEVFjJaM9Wu+Fe0a48liwYaLCYVVH4r6A0jXL7NOVATn0IHBMoYwu
         ALVvr8UweiShmNd7P7cMhLTjfmmc3K6k3y3hHi1FqV1PB7ZPCsYTKnbEjB0VN08AyTOi
         96YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767945608; x=1768550408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oVUXBlvFkGaS6g+YdgCI1ahZnqFYalAIHcRf+aPjVeg=;
        b=WWylqlHz0ZzQYIlWSnV0OMIszzm00xCp0k6LwyTP4/4yAasb6TthkqQSZAg5S4VV6V
         7dpvpDDW+DPt0H3v30CzL0HbCPO4wBbNymTLXsNI9byTcpNKsM/TcnRM0XWXDXCYyvUy
         iiBr7U9XqZ0+2uE1c67w3GYpAjgmesEcXm4QCO+yREG3WBcyoijgF51EKqqBHka4ns+e
         ouHae+8B1z5/VJo8G/9dgBJvyw3hKOLdH+mec0M00egGm8K9MuJRjSwaoKdLgQd74O+A
         ijD4y3R8gTQTvjH26x06azfmR5Q2xn13oDSoBtOSqkFbCWqB6pegOTUEAU3KulP0RJik
         Xc4w==
X-Forwarded-Encrypted: i=1; AJvYcCVexOuOUF00QSFVRa2RajOeg7qSCf+x1xQ+exedtE6g7IjgCIfkzU2Nzq3sI86yrvfpOYc9h8Kv9QMr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+3RfgHwgoDIp+xcEm6bJGaBSGqfkDxfLIElw/SdIBvEBIw6N/
	PHfTFugpcq9X71HqdMLwVVID2VC+i67zkxJm1b9J3nuRiokhDIf8ocUe4XYDEJsZBKdkzGAhiUQ
	udfYvwRnWAF8bfAtiY7bCQCLFtAvIg4UEX3p78PwJBCWGa4JPxPwAMwni3ApbVF19
X-Gm-Gg: AY/fxX4GIhtA4Fndx3r6REXyHF7xvj6onDq8C9wVeTBvv6s+yp4qx+Af5m7+Q3NIXzk
	/296rowavJ6XsWX4VSxw9nOv9JbBvHPSbls5+NjhRCTbYzoXFWGyuWORK2cKWaB8LoJrkG5xYft
	CoWg45DyquxSKBmX5rhrjb/8sb64IzUqiY944aWwHUYgASaP6tiNe/jr4WnXl0R2Zbr4h4esg6q
	cgfHjcyTxYWqI38x+Cvr8ytraB2RyCRB7k/aaZDK3oEL7WQ4qf2cJx3PZYV3mruGSFpfY40uKge
	sEjexn/M1gFmgCfX7I6gLJKTD+rIutxTaFnMCmXq2WXMmdLkEH6WyMnOrXNzGB1HFcIYvlF8Vmh
	iP6WCegyzgcPtR8BGaXHFLip2bUW0+Ogws7R/fbhZ0amQBpx+RLZaNFma3trqBOa3trDp1KsO0p
	M=
X-Received: by 2002:a05:6a20:2589:b0:366:14b2:313 with SMTP id adf61e73a8af0-3898f9f87damr8538586637.70.1767945607733;
        Fri, 09 Jan 2026 00:00:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0r9GyaMI7HjrQf4u8VaKZPWTcwAQ/HxlKh3VhidXwBLKQ5JqZWdd3ZMGp4nZpxq+fShAh8w==
X-Received: by 2002:a05:6a20:2589:b0:366:14b2:313 with SMTP id adf61e73a8af0-3898f9f87damr8538542637.70.1767945607249;
        Fri, 09 Jan 2026 00:00:07 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a56bsm96808445ad.20.2026.01.09.00.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 00:00:06 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: [PATCH v2 2/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
Date: Fri,  9 Jan 2026 15:59:52 +0800
Message-Id: <20260109080000.606603-2-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bYtD2OegPYkbzYCfzdoUaBssZUboCIKR
X-Authority-Analysis: v=2.4 cv=VJzQXtPX c=1 sm=1 tr=0 ts=6960b589 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZmGgbmymOzp8U7yWMvkA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: bYtD2OegPYkbzYCfzdoUaBssZUboCIKR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1NSBTYWx0ZWRfX9F7fl0n7fi6F
 BRd29ghE4qKRpkOwMsmxi6ES2woztUR4ZJH9WbZsHWLBNVAr7HTIrab31WvF/UdmDDV6ITd0Wwu
 hn5EAGKGm9kLlOxbzTFyOEPt16P5KJ8uESdjcYH6il+0kuSH0YruSt9SeS777IvvNxBsojIjOyL
 D+nPsxSSGU9CbKbyEpEVU3XOhYNcfCZLdSWoJckrKZ5c4RCFYK/ZEbO0JKNjc/ue9I30Uz1hOgm
 RxQiiZ6QPRcTVcZVHNAUe67gJEfsSAUbHVgHxixdXGzK3kweiSOIcTvBtHy8UjcdP+VftNSQXxb
 IQOa6UzLdaiB1mFHQ+vXwvoyJhTnyrAMKWaq0zG3/+umWfuTceSoT0QYsch0ru4PqXKuVzHollg
 y8Bgn+cwmbSQSO77CaKOC+WdvulgOGnZqPC2bbBHP1WzcKGaV+tCe1wKRM8vu7Vi5QejO8oyodB
 uIk5h12FVaaZYEYTvXg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090055

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.

Guarantee that subsystems relying on SCM services can access secure-world
features. This change improves reliability and prevents missing functionality
or boot-time issues by making service availability explicit.

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1ced6022c716..9a046b09275d 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2022,6 +2022,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,hamoa-iot-evk" },
+	{ .compatible = "qcom,purwa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
-- 
2.34.1


