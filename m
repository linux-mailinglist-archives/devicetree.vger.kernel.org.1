Return-Path: <devicetree+bounces-253638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C53D0F60F
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 923273028587
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E04D234B19A;
	Sun, 11 Jan 2026 15:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZmIYPdUY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NZ8y6r4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC94318BAF
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146769; cv=none; b=I8nVeA2OO37yTLbTg42p2TnVOtac/geVt4l6aKyaJVB8j/KDwJSf14O8k+gJwbr2rB3b6qq0F/EX8tf+cBOg3SJ3k2bgN7BktcAc01Tbhvvgjd//DTnhLWctkPaKm7MQSnX9cD4lQLHoK7/V9c525vrpLLrKAaRy3xPeuS9Gems=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146769; c=relaxed/simple;
	bh=8l+oE5/ydcmL36vqKsACJnrox1h/uViSmRXsmGplOjc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sPjSPK3GPjlGyazdaWN4zZ/e1Scbq01HHounvhqBBrVAwT/SbI5H1Nl17KQo24JEO6ffDYDxlMpxOd3OmPbwm4RsTc5Pc2iPUKTG3H/ZaaYgI+VpV/R7n+YdD2m2FxcvgPmEAlOmA47b2XaiNW1a1kdy0fv5RmJADI7s/VEN3ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZmIYPdUY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NZ8y6r4d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60B8Hvsg1896655
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=l2pDAmt+vZJ8y/1vGLOD/L9ZJDYKF5uRkJ2
	hob/H1bY=; b=ZmIYPdUYe2/tTsG/rsinNKs3d5AraeT/tzZEUYvng9ivDXZfnPd
	0Dal5y1jM/yADyW9HNkrMBhzDO81KGnTV1NMPWJsYNYrct2UgyWbNIzcqWy/8H4V
	4N5epCNHeqZ3tYDALs4ScGlsbrexj9mPEQpVFk1XDkRe4LUBstYG1qr/+EAIeeyg
	vmNp3O6DWR948K2bGipO+Pt+dwpF3V6P4Pc5J1BEXvih4Z+UZYifSkGY0KHCfpdi
	yBv6k3qG2X3tYnva3dCkyedMAk9HoCxcqWpmnnEtG6sZtHUwLtwfTQkFD9KPVv2K
	L548MeJN6DsaSfXNMYghW1TKdjshPuQbaQw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkjvxt2sb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:52:48 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c5859a38213so571088a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146767; x=1768751567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l2pDAmt+vZJ8y/1vGLOD/L9ZJDYKF5uRkJ2hob/H1bY=;
        b=NZ8y6r4d5QbydAfNSfQU7bMhrUXE7O8n3kyLtfC/unzhLuIPCiD0TZkzQuww+qLr5R
         yClTxF9szy3IuiP7pgjbjt3fOf3JmUSmBkFOU29gsRVonZxhdnASbIkSRnSVLV0JFPiL
         M/AUxbuxf+2b/ozgYoioadcvQWA4JUvtm36NJbMkdHlqh7V3k+wkzZZ/RhejHxvjJWbT
         xJMBF6OeArVti1cBF+ksBad7XXzXG4cau+j2q/94QcbvqtiIDsqi6XH+WfyrMJNqPeQA
         VDhHl0fu5s4d0pnTviH7dPImBoScD6O5QV6/MEH3sYMr8A1vOANBXmo4ZhIQAl0Tccf1
         oi9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146767; x=1768751567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l2pDAmt+vZJ8y/1vGLOD/L9ZJDYKF5uRkJ2hob/H1bY=;
        b=eqTuqXRZFxXFl/KKxFmiAhfZAMPadn+WA6+TpfPc082EYUtOVkja8+dLayrw6qv7yr
         xyBuAengWoVWLBnQHpe+NYVgE3Bje41D6UknUKK7cP9462owVGRL0PqTYr+Y7zfgZPBp
         GWd3dZcJvN7yz73WiHdzPEIHJSItcU6vSvPWgEX0gRjILxCOoAfE+7yMQBXf70Y3QoOg
         6gZ5hMqf6HRC2eYydQqL6AhJWb0micf7s/HbzMrssKk7/ZsDgzNbQvj4Q8/+DrizNFmt
         OxvE1/XSQmyP/fR2F5saIuouNT+BSfgI8FKmtek+fRNPQXBThbNAn4fUkkoyvyLBh8VK
         DODQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUeT7jk9z8Ln73YOhnKfj+vAkMt5DUWSuyi5LcUaQoOVmO615vety5wD5sXvxN+8bCO7NrfXf2tdIq@vger.kernel.org
X-Gm-Message-State: AOJu0YzxwNCcWVZcJuTxmZxHu5PUJWqtx9AoGMaaGYojnqJ1A/1xbMWy
	01j3/JrqilFf3r6aW/dS7nIt6rZqpHv+QJHaXQ6Khaz7aiXa3AkjXjLW9bUQNz8IPX9QWXW8c25
	xczAU30gUrlvThDApO3ttH5yaBSAmME+IM5y6FEN9uRoHBQtasPG9jHs8zW2eIbXX
X-Gm-Gg: AY/fxX7Eb5s4v2CC0khoxKpdUpu8AYtKVyopqXxWQHndQ6raQ86mx55oEmM3ZcV6f+V
	WE5ytOHq64EDR/9m/vnckP8Qi7fLrYXuxDVX/MVNytzbiyNDXWanhAg3O/uBIhDJzqJJDDSmfjc
	7UX4xtRntlqMjM6eSTjZSzn63B/wYpqLwwD1tOo5AF3LG8Jrz/hU52+baVtDls2CRYaFnJOkIL3
	BB48ztHjQoqGVpC256EwU9X7i8LuwxwYXjSTJ/Nta7QLC58Iymy169FX3+0hHYo5uOV12cYZ9vk
	HHiS+SZ6eB3eXOwMF9LuiZspF1R62HGW9DSejHednmJevT6bru6X3Oy+WdOAjs+ez7NfEER8uzx
	7JV3fEP/YgdkLEvO9PKeiJQcrb/z08Xwtl/0qEatCXNipL9Qk1f6NliLpfcQ0pIYheGXRc45MRt
	8uoNf5QmcuSGL4JXAgjBdADjqLkUOA3A==
X-Received: by 2002:a05:6300:210d:b0:384:d0fc:f518 with SMTP id adf61e73a8af0-3898fa174aemr14449371637.79.1768146767352;
        Sun, 11 Jan 2026 07:52:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxPuuDAYDdmjGEASuvCN1GVxCQSLBpt8L2f0b6eOml2ugb6D2LyZDOnn16Ta/XhQo/7fJhjA==
X-Received: by 2002:a05:6300:210d:b0:384:d0fc:f518 with SMTP id adf61e73a8af0-3898fa174aemr14449360637.79.1768146766853;
        Sun, 11 Jan 2026 07:52:46 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cbfc2f6d3sm15188241a12.9.2026.01.11.07.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:52:46 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        rajendra.nayak@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: qcom-wdt: Document Glymur watchdog
Date: Sun, 11 Jan 2026 21:22:34 +0530
Message-Id: <20260111155234.5829-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768146754; l=790; i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject; bh=8l+oE5/ydcmL36vqKsACJnrox1h/uViSmRXsmGplOjc=; b=hiOGL4coSK0fhqmbF62bkwvEPEtn3I7vPgcqdzePfY0EQENtfuO7pCelH74ctkfRxH5AOaeDV K9YNMMot8iyCFv7NCRkaW6UZTyphJFRYxVP9zU8kzwXcDtcH9Mw0v0i
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519; pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Wrsm8Nfv c=1 sm=1 tr=0 ts=6963c750 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FN4xVkFXDHB5uStvxEgA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: qaLlBrQIgBitQnNNw-ohnV-iTZwk7dlK
X-Proofpoint-ORIG-GUID: qaLlBrQIgBitQnNNw-ohnV-iTZwk7dlK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NyBTYWx0ZWRfX97sjVK9Fao2A
 ms8DGfvOMz7EXcOXiMMSQlU0ypAu6X4CI2KMmPlSmWAW1pVqoTWgG+YPFhkJQd1nrSOV/0qwjfG
 nIFO82GX6vp7LZQ5sb1EnVWUvnCzbYcXYyn1CO6TJLd/XSA53bO9gR5Zxn4TxsCFaCtt/NtoNsB
 PM+VgLUaTz4z21NSx5nWLKwoEmblSCXJSlpF2cVc63GqDpcFR+T31klTan939yQ6dOgL6tTr0Yy
 f4QA1ez3O+5r4nx/8Y2dxyMoVL1u0BJEIXbkDhJGS0R36oa8CDcZs+n5DCnB/AzWd7/kUvL3TnS
 48T1t8KUXrVtqAJixaM9r7tVE5nrSVsQgA09Vn7DSERWtiXb/ynH+gtBwSVa/W6C87Z05WIz1Wp
 43Lq7zXaUynhIM7sJFLCvNGOHtbjKQEZRxOqrcvV4eKTLiVQngLs5Y5G5Lfkq9S/CkoivVzTczV
 Mtc9VZqxgHTXk5V7Fsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110147

Add devicetree binding for watchdog present on Qualcomm's Glymur SoC

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 54f5311ed016..f5eb648e2801 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,apss-wdt-glymur
               - qcom,kpss-wdt-ipq4019
               - qcom,apss-wdt-ipq5018
               - qcom,apss-wdt-ipq5332
-- 
2.34.1


