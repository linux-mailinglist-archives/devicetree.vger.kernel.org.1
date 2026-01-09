Return-Path: <devicetree+bounces-253111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E21D07AAF
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E773A3012C41
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44E42FB997;
	Fri,  9 Jan 2026 08:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ww91bUly";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VCECHL7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E942F90DB
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945610; cv=none; b=Q8kdaHsub4jM7nGf8gl28Pb6L3Hm3YYPCU4RLpWI9YGUSedU9zSclw7Uh1BXgou6Me4CloQ3/s1fmc6rkZ+lb5c+r/efo+ZQ6eKqzEHl9pF2KDP63pnIk+Zlijn+UALGVm8zQ9xoWhy9XezM6JVNjSu/G8RP2/GdRpqXQAI/K3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945610; c=relaxed/simple;
	bh=1HUUEjHgDcWjIk9i1IbMh0KQYREmSO/89fEdC+ob1DM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ka7ujHReo3ctg04EKiUEQx+CGAKPXPKzuTDgWo/h+4Q8imQtJgA09St6sZRuT+XwZYUlpT0dZs3+w1CdbkP27MGSlIElDqJyTUOxv8O22DDQiSjxGe+3AmvRQtUm1s7v/pbr7xMYFCLL7Say2Uy6FByTiHK6ZAGZybcBxD20JCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ww91bUly; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VCECHL7o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Nr6Lr3729572
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 08:00:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=So6nutfOYbF
	5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=; b=Ww91bUly7CCTtCZj0YID9Jg737c
	wy9yGY9XkocrA6kQyC90mFMgOOPYV4ngiYJF6eF1ZEzH+b4xrYrb1mrXAyD8eRbP
	sa5d1kmrO3lktMb4csZnfTz3+U0DdNbaScIxjzpiK+AYoovRla1lyJsbFwjp65Iw
	msImpT5+WbkdzNEydwNscAGa6Ke6+SCwutFgct0hSDmlbfOjwUE2z8aiC75LZrc4
	nYejN2133uT7RDQfQYaiKSR7l7UVl+ddN85AVakmGfFnqxq0q7chUUVDZbYN4PwI
	jibXRahirqE6sP0QvDraaOwgl0y+dkUSM60Q0SqO7MxURTMSpSwpdN+ggJw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjpmkh68d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:00:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0bb1192cbso44041665ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767945604; x=1768550404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=VCECHL7ol8dMJh2OCt3i2cO7aV8OyIRH/TeQHOlZ7MWCIhkkVYPh8OCTd18hdYQDAu
         E7s6N/VbbE4J6zZxRQ6rmO0YReMpXNM6+YnsXZOvPMVGEFKF6o/D8wNiYiBFgCMFt2SQ
         KFnAjg6UeJdyjqIDsVZVeJYV7a3MWMuvxMcE8iFaefPdp8IhGpLVbSIyvgeUdobfU5h1
         el0dbKQEo/2iw+X6WIhbN7LOdeLa4IRZnhDj2SgyuoZw+7uuweHT2X53CiTm60huGb00
         tARvOFQ5TpveK4fYHJy0HLwghnbi0IyWJvQ7eSjmcyIcBAROSnP+AyDgCCkPO5LpvBXl
         pkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767945604; x=1768550404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=So6nutfOYbF5hqF4ny0RAy4gW3NAh5oEnV9tydHlSvs=;
        b=t/yeZUsmKJ4VTH8QQQFDiu0buEHahFJpq8h6skdN+gixzblczSCkGkotqMfvmLk1YG
         4Pj1v8Ac6fMdrGh8uh0DljqJRO4bYMa0ZzwOWidRp5ZbuNrN3/pkuyOaI4hopquszjaL
         10mKMeuiYZtnJ8bYuGyBaSFiYtlfcq0GKOnYfr7kWwgxXIyNDNIUromeOyedc99/LdKk
         1uw+nK5lsXaTU1W9bPPb7x7a5gBii4qxcms/6hw28BFPo4cxaW9H4UKoBMtmAZpQFvbY
         XN4C1JOgiUS3AM+WFJeBRzEnShA2VLEPlMo/YdVGxjGvaqwXNyFqzOdqPc4JPcy1RB/r
         ZxFA==
X-Forwarded-Encrypted: i=1; AJvYcCUMMpgMNZit4qHm0dP4ejOJDkVBpqjliP+AmlaOTkGZF38eNntW5/hgst4jPRMwqeOPJIcAJzWiXRBq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz4AZkr2//VlvRG/f2ZPdJFU3nZQ0QugJc2Al/JHaOsB9eqxfz
	ycrn3a0uUy5ftN7QGhLgFUhgTcX4pNkg2HmllEGhM3xKqyXA4hjPjuZM56SANtxN54zYU7iV8KM
	ompjyBGYchpSdoUjKxUuIopRja1/foFC57Vb4tqMPKJJ01tjWBqhZ/fONvlBQ+4tQ
X-Gm-Gg: AY/fxX6+E0gl5urBNEcOcaYTNA68Cudfrf1K0LKchd3zYDgN94gVP46pib3QLge2JqB
	9Cfj8gKLiE0kFC2Pbtcv1y9rVN6bbPx3R3YbQHPn7e0Iii0z5+PDK8aj1SY+JcOQ99YFHGOwIKm
	/F+xrvgElSX7v2NOPUuTBRxUCP5JJobztpdtpqKuNybqV6M+yNUhNuBfbCtWZuw6dFzudEG2xCR
	weejVwzqex8tz42KQbnflNNhTF3nmK+57Sg+HdTexwZeKHvzytJfT2kEU3/zFV3iXJInCMVkvpp
	fLFmnJgFfOwGDdXPkV72FNWVzBkqDMoZfU7O3yINr6jp/577cUSlT8oGUeLBKrCmzgi6lRY7tFa
	xco0EZnEmDcDLL8+VXzn8nQN2jQblcqQav8K8bAwK2h2dYdJ1ieHXWYrRb0HV6eJZyDsxSwIsIF
	g=
X-Received: by 2002:a17:902:cecd:b0:29f:e787:2b9b with SMTP id d9443c01a7336-2a3ee4da376mr84508525ad.41.1767945604346;
        Fri, 09 Jan 2026 00:00:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn5rFtx1GvMUB029blSEEZprEYvRUBpc20cUp2kf1GCPQkbzOszfFVX3fSxMK1pXmnCqJj2g==
X-Received: by 2002:a17:902:cecd:b0:29f:e787:2b9b with SMTP id d9443c01a7336-2a3ee4da376mr84508235ad.41.1767945603817;
        Fri, 09 Jan 2026 00:00:03 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a56bsm96808445ad.20.2026.01.09.00.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 00:00:03 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: [PATCH v2 1/4] dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
Date: Fri,  9 Jan 2026 15:59:51 +0800
Message-Id: <20260109080000.606603-1-yijie.yang@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=YNiSCBGx c=1 sm=1 tr=0 ts=6960b585 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NXHrG6A95BBPE0CoaowA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: -Lj0QuezTH5yab0u0XeV5w1WpGYZPLYm
X-Proofpoint-ORIG-GUID: -Lj0QuezTH5yab0u0XeV5w1WpGYZPLYm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1NSBTYWx0ZWRfX/4dsXk0LnRjr
 7MM6aVbATdNWzshHx0cMeCLQ+j2Z++1r7hh99t4Sk4mp3Ejm6hxiGJQcxnMCmydKuDfelyrMtSj
 52AcOGS/Ft/umJEwzXzAWz884pxmXy44Cx+jtbLTxqNUZ/L442p5YECwWkd0xF2RvSv2HXLCy2P
 AYQDM0wiU4yxleINjLzIgG1/vxl9Zs5MHxS3eZOe5ZOOrpNZHkFQUXNg3Sv8xzyvC/SXnPHROzd
 WcS+H6JRTUAqNvyHxlpHufadLX3YQt+8DCbt4tAQwu463zy+036M8ZQ9fsUEptcXQxBbXsQ53MK
 6dOk1pCuc5KnJcsf6PL0anPFlUKmN8+xb6Mlx/sH9vTyJTF2+Wv6yYBvBc1MXVQnSnq4v6lQ6lt
 hzNZqg4AN+yUOufs4ts3ihH4aXLty8JIT47amWERx3GDSH92+6RZS5c6GYwlR6LTgwFNIZxQFkl
 lFSpTSgAH/7FJnhUaFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090055

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Document the device tree bindings for the PURWA-IOT-EVK board, which
uses the Qualcomm X1P42100 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..59b8a4267c14 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1122,6 +1122,12 @@ properties:
           - const: microsoft,denali
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,purwa-iot-evk
+          - const: qcom,purwa-iot-som
+          - const: qcom,x1p42100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa-lcd
-- 
2.34.1


