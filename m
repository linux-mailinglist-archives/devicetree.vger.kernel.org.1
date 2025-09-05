Return-Path: <devicetree+bounces-213536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F82B45A72
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 16:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35E911CC5106
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89EE4371EB0;
	Fri,  5 Sep 2025 14:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XWu1qiX7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAEB371E98
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 14:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757082436; cv=none; b=rbyjyE9V4jGiKsa8GftQsdFDxiH/+vtyQDa0CLoswvV1FSfslbEwvELdLfA42G+ocaxBhuK/GyoGHJJ7fE0hRmpybQyGjLIUhsgAOXmsFNDqRV4ECPT55uQf+KIRAtwoRoPM92pWfgopmRHiDKhypuBpVoL5WdxHbd9bQoEtsF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757082436; c=relaxed/simple;
	bh=0mrJk6zYNya7zNruWFwjYDMwVqqDhslfcndoay6BTWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SbBIpb3xnJjqjHjd5J693prYWAqTn+lpWVaqWy7mTQ3XaCtlzguKpMN22gAOhktOEKLBab7k+d+ufsbaZLtaG2LRCPIIVkJaB4S1SmH7NgYlBsE3H7n9yxfz52mdRpngifLuz/qFgKS037VuBJ1Iq9YFDUK8khdbO9L5Dqmmgtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XWu1qiX7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857Rde8022450
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 14:27:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pN4s5Jsp6Mg
	beINTKiydsrxJyktG0zAYiE2Vu5bV4zg=; b=XWu1qiX7fsu6kSjhvUA5rJwu2fo
	mtOMYmhzVXK29zsms4jRb+qmPei7tnqruP4MmX4s0cpC+N31svND7iCYUAGlVHiw
	yiFJLbs/xeMVkq4hDYaxS1yf1yKrkl3mAK4qi77apuZcOlHyUe//JglHfRFzwb0x
	9A15sV+R2WwdnQXJh6cIslHZoqL94pCdnjKKarTYLb8GnfQLzPPLXW4IRldyKEn7
	weDFlwsdw1SvI1a4Q7QNpJt8TBYpNn3P8ez4vSk/L4F9lT5fhV9psJKQBS1vtVnC
	v1zeS/wxiBm7/H7J4C++s1IqQAE+9SzJkEyBJUYQ+EVWayp14+MWTIfyJ8g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk9b8f1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 14:27:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7724bca103dso1863922b3a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:27:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082432; x=1757687232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pN4s5Jsp6MgbeINTKiydsrxJyktG0zAYiE2Vu5bV4zg=;
        b=f5e68ym5M4acshM5DAcxqZ+Xy1X2E0QnJnLgqPLMSB2wuoJqQ9u+Us1I4pTFaLwmD4
         N/sGeSliOPZrFlmx76QF9SDXkmLzdeDAcAdtga8soymDVLjcxGtnZQzegLbyIepVmsJW
         WeAnhIjznQnsop1rd54oRRVIVaapMW88nqcyAp4ajJ2gHeNpKVGpubHHNN+PizHWTSkq
         uNKF6AUpYnUILYEoVnRqYdqMpQTMK5UT/w4oCELslxjMfPaYW1qbLazY6yUbtC2IsGBu
         7lgu4UpEK9bNJktt+f1gjdAFk7vtv0WBzz/LNaMPd2pHu1yOQfTrOyhrUSE5ShnTFCwQ
         UGCg==
X-Forwarded-Encrypted: i=1; AJvYcCWGc2oynPkAbRg29bTQaWmIOjHTniRMcqKrkzux6FlRdwABVXeXiWEFNGaGR0ZGBm0SJEX5Lt+UZI/i@vger.kernel.org
X-Gm-Message-State: AOJu0YxsobTBMXh20Fxenf5VxNpzDVsF7mfg6K9OB+1ILbFrXQViE7vp
	TE9p943chKHkjHg/fomuUJFnRTuX2lwLBc9jPhuEXF4Ut6/kTofRvdXExJwgPXgIPkoFYoxPEsr
	TH2EekNzhVL7GtWhEeR3by2EIkIqLmxW2AOpJfHFQ6tEYBl7hkdUf9d5748A7l4Wi
X-Gm-Gg: ASbGnctCu/3yb+h3vFuugDcwHt5uHes7+RZlYIqfnnfDmeCGOTycJ7rZV3KBy0uPNNj
	Kn8meoWYEfDpL1x0Cwas/L9cQDfsej52X88UOc5vJp8fMbAthoeIA7j7iOTAl8anw9bPsSlSFZK
	6Gag/LKPTFt9N1Bpwhxbgcx+nsumzKU1Uy0UkZVKIxAg45+rDMyjnHQ09udyJK6rI4RteHojPVz
	jFoB0hpkx8JY34xs0FS54G5zkWnKROe773LvLwnBt0rDtTJlV06f2zD3W8FExAjavpPABeo+o+p
	5RArL9umQpgdrykCIQuHsA5zIv3doUbrYmRXp4egY6Rpo+e2vWQFCZPiNbIahxvWxTU8Ydsf+3V
	+
X-Received: by 2002:a05:6a00:4f81:b0:772:60b5:957b with SMTP id d2e1a72fcca58-77260b598a8mr24282234b3a.32.1757082431956;
        Fri, 05 Sep 2025 07:27:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFQKIMJndn5bwcU6MyFm5v/inGRI3uo/dgTXqP/UDOrNbxCF1ZR4FqzrLYTPamp8Ieukwasw==
X-Received: by 2002:a05:6a00:4f81:b0:772:60b5:957b with SMTP id d2e1a72fcca58-77260b598a8mr24282190b3a.32.1757082431468;
        Fri, 05 Sep 2025 07:27:11 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a26a601sm21930824b3a.3.2025.09.05.07.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 07:27:11 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
Subject: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS8300 sound card
Date: Fri,  5 Sep 2025 19:56:46 +0530
Message-Id: <20250905142647.2566951-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VtjNHBkd9sc118TQpEicAumBriPWBkjT
X-Proofpoint-ORIG-GUID: VtjNHBkd9sc118TQpEicAumBriPWBkjT
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68baf340 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zZQLtTUG7XCfRDSkAgYA:9 a=zgiPjhLxNE0A:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX0gsRtABE2rug
 Sl3K4SGtfybn9hXc/vQxvB+GJjQKoV6Y7xbBHzTRKHirT8xiwv8BIz3hLvl2IEh18BoZW3V6UV0
 lytVjk/Y+LX0GrTCS64FVQDI0tdmw1gBzEL449y9jNzjRYDVvIJPex2IC2rh5FPmnVvMmm76X48
 /1iO2gE8Lp03GI3/BHBQAxMQfuqKcCRfenF86zXxo0lFRwuEzaRqofQZ67j+BWdfefjmWvIib5Q
 Xt4iLpFLoGZy3UQ5vTkmaXWukAYGhc119GjuUl2MDj+MawwPWRVFru+UtLzUJc6FdmQTFMHB7/8
 xlHcNwuj+ejFFMPQxPOOl2y82yyRP1u6n8u6rREEkksOq5budDjzafPGGt84HSlGX2YVJKnpvJf
 eWEhKo4A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

Add bindings for QCS8300 sound card, which looks fully
compatible with existing SM8250.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 8ac91625dce5..eebf80c1d79a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -35,6 +35,7 @@ properties:
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
           - qcom,qcs8275-sndcard
+          - qcom,qcs8300-sndcard
           - qcom,qcs9075-sndcard
           - qcom,qcs9100-sndcard
           - qcom,qrb4210-rb2-sndcard
-- 
2.34.1


