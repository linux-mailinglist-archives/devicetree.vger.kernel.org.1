Return-Path: <devicetree+bounces-231103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2FEC0A68A
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EADA33ACCD2
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C85271446;
	Sun, 26 Oct 2025 11:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DKi4clLe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C730925785D
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761477495; cv=none; b=pUNHxBMN49ZdlQDO3jz8BTZq6s0ZCKnLMf30GmGp/6ZxOcHIvafq8yBssbOiqAGVGOWVTbXMKvh2+ox5PHX1+H7f7SHTXKDjCEvIid9XgMlkW8n6JzyfzfLxVAMB9GunRUBKCSi41WgdwT9bgEAr8OIqQopZ790xN2djXmXkbp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761477495; c=relaxed/simple;
	bh=O7f0ov9vTfLRbLjUh2RSJGZyEQmlwikWpzB+7BwXE+c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dvv2OiKJtdfXXW32JGcsSsalRANlHpfty2EXJVM/NthzZfCplsCIVGpa1qnDr/CxE7/e7OZ3j+kF8YBtbvJ+4a1AVI44yccxZfznktlZyvXB6CXmokjrDFb67kqClp8ASvfV4DuwUPYBysVdHcbPRMjj9CGz7Tv9lIIu2+7eQUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DKi4clLe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59Q80Pe53517298
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P8mfvs0DoXJ
	oaXO7wXqvtVIblGXbDsNop1/adqmTvLc=; b=DKi4clLeZbGVVdYeKpTPwJILIqt
	xLkAk834FJrryVerh7Mrl6cAvai+/JKisHDxLO0fsZWJGN6WKGwc+HP8wlz7kAkB
	bM6kkwgQ2uL4CH6c2wms8dngs/lV+uKZWFlNh0R6iVQFNvKeYr6EHhnhyvds37Ni
	xqgqnZnmx6maHmFuHdn1qr/M0YryCq7ZwndSGaWt7EHuZcRn4CIKA0C51qcwOLRV
	2DrNq1ayIAvMKTEXQciW6IY9r4GVxlFuBAtsicApE6vE0KrB+dYZOpIgetKkWKx1
	MaD90haXUfCfiskvUhIEjqMSaqu7nZEIhwqKUTeadvuxOPS7fIjpNVC5lgg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnxt0rq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 11:18:12 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6a07eead63so723495a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 04:18:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761477491; x=1762082291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P8mfvs0DoXJoaXO7wXqvtVIblGXbDsNop1/adqmTvLc=;
        b=GdVwR5olZwkXfFEfsEI/smXSOKod3gQrMXHrKiLDJsCrhSaXexMn6paEZOU5pd9Z7h
         hUdoDfqpHmg3L735JwUmSYfVYSE+NBGYifY3PfW0fVBxFcANZsrSAwXt1Gm7AdxfSOzQ
         Fb/LlPaimfrkcwiicspapVV31l0rnCkvZodQUu2esWvzSGS3b60V4d5J8Ad0n54rlLTr
         ytrNHqE1/1C3Ar5mVF8Lmecl+HGZUhF6cFyo/ZnksgxXYRrzH522m1+9d86KhD31sFzF
         ZPjM5YbJwh6faxCKxqWg63HddJijyT001+5hRcoBUb9YLUZup40dv/0NUk2+5MgnlELN
         T80g==
X-Forwarded-Encrypted: i=1; AJvYcCWnNc8Cfdq9Vjw1iXyqmDxJeb5FSlTK9MbWawpftkAMBEJz37Fl/kORaaVCiCCkgLSwz3FAu6VRXiI+@vger.kernel.org
X-Gm-Message-State: AOJu0YySb4P+ugBMQkDrkuWMUTL2HoI69/k6/9f6ur3iZwp4re9kSxTr
	6InOV4l+/2wwbiKdNl4QFSD3r5cTFN8oa0W2YuhcC1TRbSBKw2Yg1otEs1ZNIrU6pxxT72Ottyy
	KDdkJniI6Xsj/tMJoU8wgWklr3xcGWrJ+JiaY5dnkfdV+MbSkWOP7pQycZN/d1UgpBG94THc=
X-Gm-Gg: ASbGncuvviEK1dFWk04E6HKtv3N37G2E7vTT3fdSr9f5OmswagVk2emoIEULt5zoLGu
	e2J0VvDJMRdYEOKHkO88c5HudDHcxGBlhO8dUM1ziGPT1cCuI5/i8ocMoRqmLWUkhayO8vke1za
	7AX77lxO+DRMU6/Bl6Z+KwvEOSUpoyOpbj+knvM3wXhdHW5BV5gR9ZPipVAbHEBhuigV3rJho5r
	U4WEc4gdmyA/cbDZKw3PQcom4jnExtITqbdKrN52Bj63zXP79MjNbF2Phkp3bmhJsiG8ivb+X/P
	Rw2N0ow4SEMsQsbKc0+t5YoeHUyS8oYWwounS3wAhcs9LFPGNb9yBT0O0chG57hsfYP2kyoveHv
	Mog1Xgk3K5oxBl/XqJw0kL2cjFx4F4w==
X-Received: by 2002:a05:6a00:2395:b0:781:1f5e:8bc4 with SMTP id d2e1a72fcca58-7a220aaf4d1mr21273907b3a.6.1761477490630;
        Sun, 26 Oct 2025 04:18:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNQ6EVFYhzFH0yOaaPaFygjEcZd5WgQfQ13uWqgn/4cx6r/RKDbAVe0Xx5/gvvysn+ksiu/Q==
X-Received: by 2002:a05:6a00:2395:b0:781:1f5e:8bc4 with SMTP id d2e1a72fcca58-7a220aaf4d1mr21273880b3a.6.1761477490059;
        Sun, 26 Oct 2025 04:18:10 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140301f7sm4707829b3a.19.2025.10.26.04.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 04:18:09 -0700 (PDT)
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
Subject: [PATCH V3 1/4] dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
Date: Sun, 26 Oct 2025 16:47:43 +0530
Message-Id: <20251026111746.3195861-2-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
References: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Xc+EDY55 c=1 sm=1 tr=0 ts=68fe0374 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=yU21l3sC3bVkzOeoNhsA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: mmZQ083VVk6M5rYOpu1FrKXW8ob2epvd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI2MDEwNyBTYWx0ZWRfXy1YTIU6dOTce
 zGIzdWIJa6xd7Wff+FsN2kFSBUhjEFvg5/iYcpEMf3s/l0t0y44MYMDHTFGoE2v8Jyag/t8hecb
 PvQ5bDjvQyNuVTVJmJddRA+s774K3KDKxYfzIeix9p9MoTmADi0kJz39FEMznNrXtS5X2sdLaDN
 qcZ6pN/O1HmqxfQcIHwInNQ/3qKgMiUXWvkA08yMO4pPMZd4p7TZYtEaxHaJ5obotpar65cacqf
 heCkOuRsmE3l8QLTV9GhR8/jqbZIz6wys50MM+HCGQguRiO9kAgz3c0yjLaE11EtNtpzeh2w71d
 5jQhBcubJxNelPqLAiJiAGTXOiVZ5DAJeb0rDHz+xqvjsFT4D/namanu6gSVb+hSamd+OTZk/iD
 Wgx788OBIXeA3PnjhT8A1hpfSZiU/w==
X-Proofpoint-ORIG-GUID: mmZQ083VVk6M5rYOpu1FrKXW8ob2epvd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-26_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510260107

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


