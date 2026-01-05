Return-Path: <devicetree+bounces-251581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7A1CF4362
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 15:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 894B4300228A
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 14:47:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25035346777;
	Mon,  5 Jan 2026 14:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ai0FGE58";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AZoJo8MP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7384C3A1E72
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 14:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624427; cv=none; b=uUHB+yVBOzCfX2YJE6k8Y+jE06bsMwl/ljMlX1fkeCjL59mF8mUDz2M5bb8zJd7/oea3xP5w5aBHNLB2L4AIv6t+UUvg3RHBt5pSGfcT1Nd55iuflIk5paEQ2obSjFKr7RvEzUqVf60X8SnN9jrC05hukPuRqteOFTKmqkTThVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624427; c=relaxed/simple;
	bh=D4EdTDjAofl/keSmVTh77/IigDjeFsACMhK9OOnUjuc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s5xWQEbHNdqSffrPkPuaM/r5JJZ1ytok8EEQdlL0AlpGZiRfUAZxXzctVmwRhR6RGMlLmLEUTf3qbTiOc7VHeG5rfjA/vWc2P4humgLEhNxecNqPISDk7Pq15Opel44BBg8853uaptMkDxzoQ49Wwn5xLy17XrHHpVS9rRY5ggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ai0FGE58; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AZoJo8MP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059baZ33541505
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 14:47:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JhBKVlQJz49
	+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=; b=Ai0FGE58MpUcrqs8vOV2GOuMKxc
	szUJlwEjGUoH0ctemgjsogNFWidmd8+xghDuDAjWPMELWwhBkeK+wLYfF3bcqslo
	e8Rluf6FETVTGKkkmz4kp6DrLb3J5uuZqLbFQbOrTkl4Z9/3H0/imgfnFIwPlseY
	wJcE4tRibZwlUIAIFiXNgKkcl7Eo7kWAeqIRY9TxeajF4vAIQ6Dwqv9XvEBS4gWd
	foEtqh9pkdris/MK99VKJW8FTAlqrMLc2R/qGWdMkReq1P5xRLg7Yc9zWkH4y15g
	y5cLGSg66FRpYxPD0tK6bcJyXuVntQ0zbmbXm4licw7Q4ja7Woc3UOI+R4Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57shtq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:47:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c6cda4a92so18239a91.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 06:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624424; x=1768229224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhBKVlQJz49+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=;
        b=AZoJo8MPoJKZnVcoYCZu2GFxZQZuGhhkInSBnBeN1p7ZMzO081pAWXEMCwCH4bgZIn
         yPjGPc3z+gJ9GT+wBz9kUPyfaptLFHettkT0LUqEli/mAy/YwYFwSA1Gs/NKH2j7odfw
         fAfzfWiIz6yzqP4SQmBWeV8FTQ/spxNi8M4zrO92Ca/x8EiUmChXiwvRkXRDhr4Oh017
         LqlayNzkMkprf5Ambdh4N0TEhGP4M5NSKZyLxae+dKDZwK70SXMfvDRajrqcj8HU5Hhp
         8/iiR4bXh3UYmnpEy1DiWcegfyBrPZY0JmdnCAltFY+EdTHdodP2corWyryIzbzX7uKX
         7jEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624424; x=1768229224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JhBKVlQJz49+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=;
        b=xMxP4vhlAUvstCWzEx158lMt8FMfPap4bNodVQ5DOpvpoViHjAOHQ/4UaOl9wnnjXG
         YtpqWF0XZJ+1kciGgSd/1F95tE+hiGA3YR1Wtf2fv0BDKvrJpTOEBWGOmEMHAJF2BKsr
         P7Xx7NGvB0ZKD+p4kiQ7Zikff5n6qZ8xwLMKSJK51UC6x8yWpa/9jxllVps7+DD2bsx2
         +p8LFLRj4QYU2SIEr+URnGmuSyFOlOSzHwwr+FhiGATCxcsnksAbN5sYgpnBYEWahQpK
         3tjcA8vP723iZxIvdE37hJVqdZ8QcYexPKIdy9XwW3kI8QSOx1Rj+e3kWYG/YF/WbyvW
         Q9Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWx5IWIvPzOFuqPB0zs7mLvCcb20nwCC49YgUNTxnUMK4SzjS7LWdNW+jAzg9V8UPfXRDuZLkhNcShK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9MKlKrnZKhHYsmY8y9PzmtRNz/dyIBs/sZTV/XfEDMT2SwJY9
	ReOrI4E/DCDzQi1qbzyE66gIkKVzIXoqRpmPOACWKzJndw5EgplRRZVtSj8XqohU9jYzNjSy/F6
	u05RVi2E0Xosj/KXnag2YNYPSBo8vposUI2G+tMt+bAHzdPqgypjwSbdSP4EdtapL
X-Gm-Gg: AY/fxX4shUksPRkFJ4jXfx87WdIrYaLgqFqj8JTItbon0wSUn+7E43Pr5YJyFU4gAbi
	7utGqMRdVqLd4zsIT34XcEXIvo++mSgLH2prONqOocdD3CudSzOrY7iOF8vrxN6r4EaMySJ595v
	eAc5yRMLNyMuqSou+wmOCdoXougSSNJ/WWvlPHT2r1ao31/JyRbCWVFtc2lIWYqLnwAzbkgslCO
	KI8PlTNVIW72Vw9u7A+PsNX45xAeeaC/yYlIP8PL3MxEcEhGfOX7umOkaIRiWOybhe2kN16uwlL
	GvxAwj/BJdeG4xynlsaAa7ckXUEde/O4JL9q56ylHYZpu4CcI4DLSImtQUkd8qmC+CAQOjTpyv6
	cQV5cffE4eQ0TXe485KN8+Toa8fRfl8lTE3jfPemJZe8QSOnVOo03
X-Received: by 2002:a17:90b:298:b0:34c:7183:e290 with SMTP id 98e67ed59e1d1-34e921eaf5dmr29670297a91.31.1767624423793;
        Mon, 05 Jan 2026 06:47:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSOJMt9LPpStimWUWAc3THDarK/RDjttBLCdC3rkMFxijAsvfUDvaknO3V83tRQ9PNeE5XzA==
X-Received: by 2002:a17:90b:298:b0:34c:7183:e290 with SMTP id 98e67ed59e1d1-34e921eaf5dmr29670272a91.31.1767624423306;
        Mon, 05 Jan 2026 06:47:03 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:02 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible
Date: Mon,  5 Jan 2026 20:16:40 +0530
Message-Id: <20260105144643.669344-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695bcee8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0Nzjj2pCF3-L_PL3nR0A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX4rEuysbk+OJJ
 K3rtc8R8rsguYunM6GEWo+lWKZNsAUW+mWUKODHkrryp17DbtQPl4oSQKzJ2QLuLYmGiJjq84+Y
 ofpq2eJdSYHQyljNlM/uoP7GcN3Mn9ryijpYAJ24DV5jpef2OxFyTzXXG9N7ji/4m5iAmLjBLDr
 C6gWRoOp2frrkDGVKjUqdcr4hFKet7RfHyEap9ORXgmwsnM8NexjijfD7vSpaZdNS6KaMh2DJgd
 d/8UUOVEOzeCCgw/G3BjiZ6yBawyCw5FuqrMqEbZBd1i5gsLPW6yxOl40R4NREs7rPDyLmBCVpQ
 mUiuhWsxeg9NVBlzLFtNbQOt5kbtbwMYvQjrnXWfY/puXCk80WXDTINOKFkooSsokCNdpRiyq92
 Sfei6Ga3N6gK5uqn/i1euCn1uy8T4qEFyCB7QWLMLB3qSvXAf3XTRX9LNfzC0B/+X8yMWWVRwsR
 XmAFEXBBQenT0ctfXXw==
X-Proofpoint-ORIG-GUID: qiJ1CPvDFKhWlzhc7Lsz1orOHvjq15zR
X-Proofpoint-GUID: qiJ1CPvDFKhWlzhc7Lsz1orOHvjq15zR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050129

Document QMP UFS PHY compatible for x1e80100 SoC. Use SM8550 as a
fallback since x1e80100 is fully compatible with it.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..166e3787db58 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -20,6 +20,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
-- 
2.34.1


