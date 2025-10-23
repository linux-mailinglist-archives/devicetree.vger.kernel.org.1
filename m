Return-Path: <devicetree+bounces-230227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6CC00BD6
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3C51A4FE4AF
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6867130E0E9;
	Thu, 23 Oct 2025 11:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iWxNJYC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E264030E85E
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761218982; cv=none; b=HSfknQ+XaUwyDPTaX5vQPmTHTWXZEkd6jrDHHmgAl+2QNJE1Ah47K8NfuQ83xpzaEyAsGPOoUCDv26qV5fQCfiUGVpwmq2Zyn7ch+cA+d9+y078cC2GNwwd1UB2xgv2RV2D5lasEXB2KUZVggptVJmfiA+uO2GdITaan8vDFXpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761218982; c=relaxed/simple;
	bh=O7f0ov9vTfLRbLjUh2RSJGZyEQmlwikWpzB+7BwXE+c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZAfKoRGFwMd1yoF0i9boYBXv8EEsPdXJCPRcp029VpFJXQNaLopkVylFbhhg7WOQ6TxXjfG3rE9oTeKm49ObTVPJpCnGQh4hx0B4Td7BZzrQwRTHtdiZ5uT9ym7mVGYhZxorU+r6fTjxrnQWTz6hcMSTWzS5pqpTC1YdeUifuEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iWxNJYC7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6l4Dh015901
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P8mfvs0DoXJ
	oaXO7wXqvtVIblGXbDsNop1/adqmTvLc=; b=iWxNJYC7tTJa9YL70ViGzWRPjKS
	X7PSdZTHZ6QZBwAs3ivHwJmHr+qxTsiaqCTWfivPGf55lqubw4qbxJmC6vWshHCj
	QpCmlqLze47BCy/y4m3XJB1uq7y4seAw6sp0FXrTB0pdeBjzMPGPUgVDFaHGfAKQ
	gVy6pGupVxvV9Ob6SKoVD6ogpN/PwxGuBX3q3kzLkrcQW+PW/xADfQ0UG+T9blwd
	yurVWYwTkLv9JQqxRlKe2wfBsPSOIe5QZ8pplVf7bxJDlGzWWeh7DUkAY0F4MMKH
	vHGtCefgVE9g6MwgjI9N4m9F5q20/qc2qjG8Ej5KC7Bi4ailQAubTOqxCEg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsdtfq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:29:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290baa27f53so3098115ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761218979; x=1761823779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P8mfvs0DoXJoaXO7wXqvtVIblGXbDsNop1/adqmTvLc=;
        b=cuw66RVnwDnAlTC990Fyrdrcmz1x3nahJk9pCXUbYX3pM7jmL3Ef3PKy3SyoUsIHeo
         Np0gw00Hm+Sbe+o8/yjH0NpzEyKozfdlXAjyuizmJftwc2MKC+XpFiLM2hELsMlhgxwA
         ApsEb8wgoOORgXmsTiu6rdDD5Pa8ODgcXB6P104j6CUin1q2VDvtJmjSjh2zVVZVId+l
         Fbzy7uHIog3l8HbzwTlojUplZXGxUNHErosV+SQ4rDShWAbeXG1vopYwM8h2U1Q1rboD
         RYC1f4b+NaK7QIkI9kacxnJEqKrmp8RjEqNsIPGAOjjezPpeB+5vOTVjzuURNAV0ab6s
         UeiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjjp1qX9XRpOct0x3QqKEbIKDnXPPo5VIKJ6/cuDIdgogRw67EaxvhFUxMddUhHIg4ryyRMpzqToQ4@vger.kernel.org
X-Gm-Message-State: AOJu0YwoOUzApXBn+7xL03BIRfyrk4JhbKZX+Vv0NZsJSS+hU2IcMdmz
	O62cFgrhtvAljQnAK9mdTE8ovoFkGAIOkgWYDVgaoefzCrQu4IsGGKMSh+V4goEWC6PwfEa2m/K
	ehFIkUWht1IJWgtRsQ890Dn2UhBGWvfmfUvf1qAR6FaN2Zhsn3pbJ5bi33sBz9gI=
X-Gm-Gg: ASbGncuKpTo632KIzdt0/G2ZSSSYA7ILkixBzeHXT+NLeWjRO4PRoK4nA0ipCMXlSRV
	RykqfUx/ickNvVYD3EdTKrMwm65uuLq41gn1YC8+4938v0BNRlNsgDHuCKmrB8gZ8YJ6Pgfnw2Z
	JusutgwvnBSHaEpfk9DK6upp2wMKF5IsXu6kkw5f7/66NWoFZNhLA5xzbE9iqw8DKHufxhnemFx
	5k+09H4IQk+4hhqgrUzsmoiPnKaSqm8pw63IOdu7Sl46wVRJlhdkuSpWCftADOn27/kr5cIuWEm
	gPzGyrX0CpKqfscmuQiRkLDzRIwPn0xg3kVxVknHOy3kH1c8ROFzUBiYZCl/eETqeDXgbCoI85y
	lJ718hsaZcy+b7XRM5GZgMexOBhKYzA==
X-Received: by 2002:a17:903:3d0f:b0:274:944f:9d84 with SMTP id d9443c01a7336-290ccaccc47mr153642045ad.11.1761218979289;
        Thu, 23 Oct 2025 04:29:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUBXBV4AbrVjLdhmtE5JO/g8t7ggle1PnMzliYfuhA5RdGXlFMPcTHhQSuRUhryEqPpDsL1g==
X-Received: by 2002:a17:903:3d0f:b0:274:944f:9d84 with SMTP id d9443c01a7336-290ccaccc47mr153641715ad.11.1761218978805;
        Thu, 23 Oct 2025 04:29:38 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm20438815ad.97.2025.10.23.04.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:29:38 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V2 1/4] dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
Date: Thu, 23 Oct 2025 16:59:21 +0530
Message-Id: <20251023112924.1073811-2-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
References: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX5otB8gm8dl18
 K0st7emIp+jnxiXUMZ+ahSg0CkSBv5p2CyD3ErGhRPh4eOP75Msn7Vwu1w+o447G1OjydiC6uQF
 BD6Imb8x/M5fOfDUW94P87QaaiPaA+A8C0impCT9gI4c5WUOZf+JI8Tiy+e6t3LWFUFnljnNhVt
 I8QejcrW0sYrjX8UR6AnsLtCP8dJpJo2bmmibjaRizB2FcqsD9ENO7444S5M5z9G3Z70olSwcI+
 hQPzhWfUySGLCDVf8CpY/wcd5IzFARYFOL07rQvwAG02SWj8oXsTPun46HcIdwqXlG8wwt1IPKY
 5gpH27ymm1helYVTkwtfbQAKNgEqbeSQ6w6kfeLmoyDP61wC30RqtbYN/kZKp0mwuJZqixlAwz0
 QVQgwLbyjA5Wby6bnKtfL1in+YST4Q==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68fa11a4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=yU21l3sC3bVkzOeoNhsA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 71sfwmBsMbob0DEQWMLAPpIhGq7EBFiq
X-Proofpoint-ORIG-GUID: 71sfwmBsMbob0DEQWMLAPpIhGq7EBFiq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

Document the compatible string for the SDHCI controller on the
sm8750 platform.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 594bd174ff21..027011223368 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -70,6 +70,7 @@ properties:
               - qcom,sm8450-sdhci
               - qcom,sm8550-sdhci
               - qcom,sm8650-sdhci
+              - qcom,sm8750-sdhci
               - qcom,x1e80100-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
-- 
2.34.1


