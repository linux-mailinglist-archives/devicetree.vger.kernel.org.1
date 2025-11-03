Return-Path: <devicetree+bounces-234322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D23A8C2B509
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E75AD4F4F4A
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E1030277F;
	Mon,  3 Nov 2025 11:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AzmxfDJg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HBrF9U4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C548303A24
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169025; cv=none; b=PJd0PT3H9dVwDOJnJu6Sq1ywA8vCQKbJMnFpAp0odoNx2ETAthsH20XB5jn4ug8Yh4LpvXXczuyRkkSsd4rCzcFlN2qFDH/t3BxTYeWoPIIzt7voaE+92y3n7MUoDrzDPqtEG5Vz5DhFhEEUJcmE6zNg8SkbI8PrYHcn9cbdGsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169025; c=relaxed/simple;
	bh=kzVzq55hPaZEMMT0bkRyeQXFnMqIF4cICVegscYkqDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iF2SXU7VfRSQndYHeWEil4Hm5qDdRxqNJ40LaKy2ciczshKSxNBsc5fFQA0SBjlMRvbPM+sEtwPKxWVXhUbfrErRa/qDjpnO72fSW71jeP5H0Oh8LhFrqyvihLOLejOK+vNmm97VtsxHsv81JJy+7wLu5T3GLAIQvyuHBeCn8UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AzmxfDJg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HBrF9U4w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A38obm82730189
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:23:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xPgpBZkcCfc/5yJhPRBclJFGVMHhQ9Fw7lxzGQIus1Y=; b=AzmxfDJglgWecciO
	R72S0QQcBN8ODO0R0cbcpd7fdOkBamJLylkz9ucrvt/mpdGLPfBZuoCtBs8zVdxm
	1c2ZEBO4V92qmom3IY1smKZNrffruL7feg3KUDR73IEy75eLaO9GKm8OgX5GRMn3
	Qg+u7Fl16/g2IJAWE74UaS6HexUqoalHGRqwVneTOCPLXNIbEfjRGsaQC/lPlL/A
	cp7DA1BfEIuo3rciBy+jkxWwBvz11bcUAswdXLpS+R7rzPHdllc6N7ssLzEVkpdS
	KOC0YhybZO0M4XSsBUWYcfzYWF124VfdGA0nL9+zL74u3JapiNhK5q3ahY8PyU+7
	fT0ZjQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6s86gevd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:23:43 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a43210187cso3902822b3a.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762169022; x=1762773822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPgpBZkcCfc/5yJhPRBclJFGVMHhQ9Fw7lxzGQIus1Y=;
        b=HBrF9U4wBVH76TRB1/o332HNS2VIo5qdNmY/680wspF/fimTKukewftaNwAs/dEFHQ
         HtcPJo8kUKS7Qkl/KVX/wsf67zNaHnxAOx2fZ5rEhagF+Cn2IlyZmXOHaEVzQUkWdZ37
         wTbGJZekU5ohkOmK223yo9Vo2RsZLfrIVu/rlNrRBxsHVz4K/vUHbhzDrs+s07QyV0mT
         GiUOkiIOadKzMLIN7HinUt/X9cO7pKdH7P58a6rSNUz/u3Gd9XFdUQTTNt02a92jFLoY
         ZtgepF1fmPMPQGak0sdQUC02Bxsz4oiBxJdfMyttmADvXfBHv1e9uoTpbXf6lvitPy3a
         cg+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762169022; x=1762773822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xPgpBZkcCfc/5yJhPRBclJFGVMHhQ9Fw7lxzGQIus1Y=;
        b=uRSIdU3UCnSHlRjwmHHdNXdaGKs/OlvdLvCRy6LEhFrv8gA/rYT2bz6NyQYZDPYNH2
         ocCZWh+vAL+SMaQSkAFoEvpIOjTEKYj7X9zEA/chwhwbS8A9zEVymKCrndXGUzi+6JF6
         17CmJFzBzMIv4RobMmaotgAmBFs+AOtam3+TvKxEJH3b5hMJ16gmO3dC+kepYbnHrs5A
         OkIirLuq6JTTexKWjLEJaWryEkCQ0U7sJX/KEU+LFThFyl0HWA6AAyGtPelsKD91lLhT
         9Vt5v01odlKKImWq6RVVuwI23zD0FPd0o7R4ZfxJ5GcxWNdhxJ+tyvuZfeTxannXjZ+W
         ayYw==
X-Forwarded-Encrypted: i=1; AJvYcCWSMd7FXm0DJZrHq/R7UrRQq5BYfB0K2ISmZURzDkY8i76xle2IziCk9Sux0rm4M27nhLDI2iZNQPzr@vger.kernel.org
X-Gm-Message-State: AOJu0YzPv1OJthkxkV46by6XQg/BtCcoVfv1kzfutcyzLuqoyhMxoefM
	wx5r8su7x2cRlT1Jm5zyS2pUy8SmbOBMHxkyjzXpnFZAutWOZpofkVgbF7YIITxoh/v3I/m9pTD
	An9IWie3IT25ukcRGv0he7TI0K3imwU3yolrHIQVJ4Pgnc/98dNFOZM2prrVy7hAA
X-Gm-Gg: ASbGnctp4P3B8jOlIjYCnj+SsazHEC1Uriard53Dcfu+beaJakrCtNqul6xrDLn48Bn
	QchLgpeEZJ2QpygwdVR1AOU1ymSjXElhxlxLSfpaYY8oVFo/HKN4df96eaRAS2ORuBmc6yX4g/k
	MP7ITJmUMAyBh7wH8LLGzHUgGNiMRJ56RnOXMPi+vILIRhz60B+2VrZyViPYiugoAA7+edH9HlQ
	b3rWWd0p/21dAZvRD3ythoMGrVxW4P/Ireqehf/2Ms4Ij+QzmXv5ZXuTgkORPUi45fFhipLMb56
	eY8LUVu1RE4tVFFpxTlTqMLmVusU1c0X5TGRqI0P+Nu4lq0xdBqJoAJN9CkZiFGHsZ7MbFUTLgQ
	AWrBmdBytKNhppTyQnk29N2x21Cc=
X-Received: by 2002:a05:6a20:3d8f:b0:342:5901:fd94 with SMTP id adf61e73a8af0-348cab845e3mr17551243637.13.1762169022274;
        Mon, 03 Nov 2025 03:23:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/mX8xUMYFZXDWz2ftAuZOGk5grvgULVUNv69UndnUEZ61TGfBIIn4/CSFGIJvQzgUfk8Hbw==
X-Received: by 2002:a05:6a20:3d8f:b0:342:5901:fd94 with SMTP id adf61e73a8af0-348cab845e3mr17551193637.13.1762169021631;
        Mon, 03 Nov 2025 03:23:41 -0800 (PST)
Received: from hu-kbajaj-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm9838762a12.32.2025.11.03.03.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:23:40 -0800 (PST)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 16:53:10 +0530
Subject: [PATCH 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for QCS6490
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-qcs6490_soc_id-v1-1-c139dd1e32c8@oss.qualcomm.com>
References: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
In-Reply-To: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762169014; l=711;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=kzVzq55hPaZEMMT0bkRyeQXFnMqIF4cICVegscYkqDw=;
 b=SqT6Sx7xsFCPAh3VWjSHPhsLQpTXN3wYAe8SdedYiYjCBEsq9/uA+UsSMuVabU8Ohd0oQpOcr
 tR/vTBGJqPhDl/qariWCdNngbAPzCsOcRSPv0n/Ls6I36dtkiwijPzG
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwNCBTYWx0ZWRfX62QW8oVrw3e1
 2I+EaA/R9FaQ9jdIF+8QfQCAdtIoT+eYaUE+Jx0ElLqCsVZTV1gmw5jHWdeVIeuiCwaZ7YZ8sEm
 58Gs0/k3+h0fe7XHU83j44RB4Fa4dzXQ03pC2GFK3QCdMU4FCfeYcy/naSlMeAFgCfN58GbIscE
 dyHCsKPIi6wb92yA3KINprqyTKNX1G/BSF6lE8wEoTy3qpGLiJWqA/tXIigLhO/VQ393Z5tBQKB
 53XgGOByF4PikivITvtXQYFu4kkwfsowoHJDjBKuwROd869bR3n/VK/FdICO6IGqm/nxGaWVhtN
 tF2lIo9pIyIFd4sCMaJBsOxcr3v5oWHjBxuyETA4n6ssAvgADd8ROhNT0JG283cKns9/UftsFc+
 8bBHXyRLGct1CTEUtgKYTay+q4lEgw==
X-Authority-Analysis: v=2.4 cv=Tq/rRTXh c=1 sm=1 tr=0 ts=690890bf cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=32hiEKHcz8XmdFUlZUAA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: oBqwAf-KRq8-76ekoSfoH_5EJMCwxCVF
X-Proofpoint-ORIG-GUID: oBqwAf-KRq8-76ekoSfoH_5EJMCwxCVF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 adultscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030104

Add unique ID for Qualcomm QCS6490 SoC.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 19598ed4679e17e6505aa879a4646fb77c146d6f..8776844e0eeb370b874f41063ba057d5ade4f003 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -240,6 +240,7 @@
 #define QCOM_ID_SC7280			487
 #define QCOM_ID_SC7180P			495
 #define QCOM_ID_QCM6490			497
+#define QCOM_ID_QCS6490			498
 #define QCOM_ID_SM7325P			499
 #define QCOM_ID_IPQ5000			503
 #define QCOM_ID_IPQ0509			504

-- 
2.48.1


