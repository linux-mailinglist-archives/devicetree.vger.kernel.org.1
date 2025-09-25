Return-Path: <devicetree+bounces-221180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3E8B9DA71
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DA383B30CF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12DF92EB5A2;
	Thu, 25 Sep 2025 06:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S30mFOZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942EF2EA147
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782007; cv=none; b=QyvDIff3z2MO20ap7QcLnQCmNNSh9f1XCENjSYV4ARpeDeYiO0Z2XlsnleRhEcKOREKe6N5T+o0CCKS+QRjsD9NtGLkNdZ9gKCsW5Gpva4e5PXK01kVFKje6fnMiHNLA+7ua819zpIigAdokmYWW5NSQGpSZCbLbZEFOaqqDS5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782007; c=relaxed/simple;
	bh=PmOpw/EYlFkARbCMNbiM/N6wPtAmStKVwZu0bN0uBRI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u7dDoeCiB/r6gMqFouAkn5GcV/5vrnba3KbbpwV04hhkRVCev5BxUz6XyizFi5ea227T9/wJAVrPWJjJSKHji17IElK9CVMyNO3a7ROdE/CQMe5xzzQtreyEcYeoytGy7YM19cVUHA2tnmLuwOHAvdvSp1WQqRk9L558OU0KBlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S30mFOZ5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P16F3b029478
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	syumanWrZUjcI1O0TLXpaU3G8S6LULiW8Zo6+Nj/zZI=; b=S30mFOZ5lBppECRy
	+o52cfbcpC0Benzf0gaJwshuBiIWMbCxEsipRn0fqfV+iYcw4IquAiQ32I4RnXrG
	2mYfjjKIvOGAzF9T3KSOepHicvtuv6B7rdohC4KlpIkjSwNNcSrAzKuJsJrYr9bh
	0TI5ovuUF7n3UCUom2HebnPxnKCI6c6o3kfVnl8ts6JRl4K4IE59LyCYdZpi6UXY
	NjM8ZDqHSHF6jpDN5VE15RHtxYylNbY69LJac/iKzBEz63+TeB5J3VqoBYx4TVhL
	76OTyaGdluNrmbs7rANrIdD7RojB/1N0pspjZ5kkw3JTw0O1D9U+E3mfG/YQ2Gzq
	cMUYgw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fpwsb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-267fa90a2fbso17259485ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782004; x=1759386804;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=syumanWrZUjcI1O0TLXpaU3G8S6LULiW8Zo6+Nj/zZI=;
        b=DK26vdBo8eODLHCKSifTPwNlHmP+dES9USUkriDPwzjOB9ihog8c+n06QxV2EUPmWP
         kNukTIjlTeUYJVIGuuVx/WBW0Jye/Cu7BHAfKeVRp2KD6BMczSN4Hxd6O5VcZUT8RTLG
         L2BGOt/tzpOUMJbmGb+RwHrBW7kLSgg1AMDD0UNqQhUT/SWH9RzuVMzMDJBRnqewKdWN
         5hpNN/vEiVt+Z1al04ncwWfF8pbPamL5kxzAa0856h7io4OPAK5cxQPG6wl4j2xERpGN
         j1AdIDkzxzG3aLdw+xrST+NU3bZF4F2nQAXCFz8mZ1Mbchl1Xs3u9PsyXtUwAuJrBygD
         Au9g==
X-Forwarded-Encrypted: i=1; AJvYcCXmsbAdb87A065MvpSuRH045WAwEV/OW31fE000xPxnaRmvTlctKvpUw3fWQbFZLKplDpOZL10voc9Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4YYxab9jvXO0i478yl9pMm4ZV70bV/2LrfUJLUD11DMu3BGwF
	8SZZHeslLN89TY8xVUKS8ysx9tqZH+q46TK+/LMQQbMZBTdX6vtv8fdavIiRNBz8oYpfUFRCtfJ
	4ufewllPptEJh9AypHRFrjPSEHolNFbVg7S1oFzLwjaMvJ+GZkvp8c0r4y618tTLu
X-Gm-Gg: ASbGncs8Tgfe/EOnMIm+LpkXSV9oLd/kHnnxSaQbWA9afEwfdTAojeUZLTmW6c7BTug
	KgxGRnnMvvEZ0wfM7Dviv/ysRYB/jRYNEjcp46KYPZi6xj2nEQ2VjLv3i1sbt/5x+N0pu1crdSY
	23ktaKELzs8PkGmjg40ByubGqqiiV8KA9KaRrfhlVpWiKtOPYtitCyDYRqsr7iweU1BBLzLoMIK
	rhL6Q1e+begcRod1aDMLwR8IJZffInfUsVZrXT/VnTS2tKf1UAWAVyusnqbUE+jPHRjllnA7QZh
	flBr3+aEH3swGFTOVgSeGJgeZYpaSxT5GdIs+OemkUMM5d+LN6kQp1EAYyN/+M8vZCs7/tMnZbB
	m+SlEO2bET29dSvqzSUedGAY1sM2Asl21HpwWxGZIicWnYBko2LwhpcurDotK
X-Received: by 2002:a17:902:e84b:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-27ed7222952mr15709845ad.29.1758782003811;
        Wed, 24 Sep 2025 23:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIQG96ISdWLineuWqjcbxSqimjfGHXyA1YGV7BUW7KJQWHMJ8Xs+AZ3XZSf3v4NHZOWmZ2zg==
X-Received: by 2002:a17:902:e84b:b0:269:8eba:e9b2 with SMTP id d9443c01a7336-27ed7222952mr15709655ad.29.1758782003388;
        Wed, 24 Sep 2025 23:33:23 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:23 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:09 +0530
Subject: [PATCH 01/24] dt-bindings: arm: qcom: Document Glymur SoC and
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-1-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: Mzbo0rOd7n9RzrvME0UG5TI1x8UPCfiM
X-Proofpoint-GUID: Mzbo0rOd7n9RzrvME0UG5TI1x8UPCfiM
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4e235 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KVNckf8Hb-gWPUCTgC0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8/uNl3Pxiwka
 hVNYj0vw/USoB5O+R4o+D3wf4gIoVnH1QrQ5y8+ap/B555p0qutgUpqw4AGrvIr2aPhfYHJHQSc
 UikfICyAb5cTK+BNPVLnK963J7GcOHheBDS3ntUavSBfVZ13gjXBwQHbKANjXufjd6G2tSlZTOM
 Q+DQHLZ5CRmPEIYj+LqSVn7/gGqTFbdBKA3deNOao3mSI94DRl4gKUO5VXxSo79N8vXiul0cdMO
 ++jix3O6dtCmqsqDATepCVRGCz9FqXT5xJekx24veytuUgOn2VyKW9MywjN7Nxi+CgFoDWWXoUu
 LMDMK08gqRu5wbBWmnSw/8sjzipR1Gi8KjPl8UVnvlqO8DvZscQvrZkjRNMSNHWG+QwvgoJyoFu
 +Kf0bt8G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

Document Glymur SoC bindings and Compute Reference Device
(CRD) board id

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 18b5ed044f9fcc4d12f4e3baa001099b6e154af7..b529a8e097a35c10e0008124467d8f6038071308 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,glymur-crd
+          - const: qcom,glymur
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.34.1


