Return-Path: <devicetree+bounces-221004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C742AB9CC46
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D38F41BC15BC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDFA1E7C03;
	Thu, 25 Sep 2025 00:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUBilzg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7AE1C8621
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758492; cv=none; b=XNbLbDb5aOsbVxsCC27zHbljapgBYjyAQ+4Hdpvn4f3b8iH7XgThaKhKf1TtrDSTvjdZs040UAE413+W3T1CgoppN90oHzAgDr5SzlHqT0gm0JOaK+Ybe8inZdUAIikF31uomwg4Dx3RFCdOt0AHKhrNZr/5g6kq6/UBYEiFJfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758492; c=relaxed/simple;
	bh=wUjm9tiuEjm4WDKMtLaEVjupuwrzCUIqav7naVhiw54=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I6mknONMJog61XM/MJH386S/HjKBZg0qTKHY48SaP6J8EAnrV1QnPU3BWaVixrZlvU8EpIvmgZEQTfi+kcSgTPoW2AFxJEf3VcFEMYe7fvR0EIoDYlxGri+gNlE7OYE0H9dcWCFuAOrMjMynswFnzJqal3Fmt2civRDgV/xdkeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUBilzg5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODNUpZ029443
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K+VNJSBTVMlxlPAe2fqelqrYwMmiJ5bopSAQ68gbNL4=; b=iUBilzg59EP6OYTr
	+nXBQ7d4JD08A9ShBno9C8B9WG4hf0zL6L9w52Jk9PWj57txMH7gBrkAKkba2N8M
	ROPvus/m+FpfOFFAcALRj4TIHzB5p5tIZZWWhYm7KLxKMW6QuyeZLS+mNpY9JIqa
	stDxsGHhawjUzwC4XFAFv4xXqlV0C5uVjOLiQmfLp90M2Gqr9kMYitlQULtkGvuB
	PU8VX7UAsNNVibpO697lAuVrJ/F3BgZZWHc/o78KKh2RIjQrlFyEH1Vpey3TXPk5
	e8kBWMrzZNM5voSowbKCHNe815ib1k3UXB80hG2hRzgX6sxFxau/fjNYtiCrjr8S
	olsjGA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp02s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:30 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77e76a04e42so941271b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758489; x=1759363289;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+VNJSBTVMlxlPAe2fqelqrYwMmiJ5bopSAQ68gbNL4=;
        b=QjxVdSvJSvPwWovP8KgAzdevwQ4gVhXrQG6frbVCddZsozbXOTyWB6rayZVfIuUA1w
         eo1KN7TRcd1AKNrOIZILKlpT6YutzksR7n5uzoV72ZlHEooAREXEbze+alEi8Vsjd1+T
         sHx3HaxYpr7mMCfu+svWfN5/ITVPhbhdXmwio4r7BZArsZT7xNVjpg15KoLiT5y3gfQG
         OtxXYtjQHOEJABb9U/DJcjdfHifM/RndRRfpnYrr7VSqWvQTJA8mL29ccPhQ8RTo7Jcu
         /UNAkjeDWonz/o4m/XC306Gzy+ux3AeOKAgZhXXNTeCd2Uxg1IPu0bgieXQ0Ah2+/+dn
         +hLg==
X-Forwarded-Encrypted: i=1; AJvYcCUBOX2w8xDPUvgmLAKwpjx0pxOJStIhCUmcUzQxplgLnmpDusu4b1r3X9q5qUNfuwBr3HlwN8hcvSCF@vger.kernel.org
X-Gm-Message-State: AOJu0YyK+PZnyn+iNSUFJECx9Qb5pgUpYh/xTsJsYLW/8oIDtekmjYBE
	a0hbbCfTkIblBzxh1p/l+FKzOij9uQpKVeZN+VBw/zatCJifpUUZRphtkOqTaxbR697dpBQa0sA
	gHJtHkMePQAnxydd21pONT3OioZs+ma0ru/ar5ntMufR3ALupZMHiIDCjMJQLbFaI
X-Gm-Gg: ASbGncvUrjy0hUJHkLpBS32gHyNjotLxXWCjoNhFYUTiwJXt53ktKWhi9XAMCKa5zgq
	6KG9rgigfLPiw07H0nzF1xEWGf2cIaV0qBMLa90EsOhQMvDGR6t29WXCIBoiUtXNZ0WfJzqZTnW
	Vqp+LIsmr5uLAwsEPVE7hZuMQRkT34hmYmkRI1BzkfrzXyUtKZAGSZdJlZM1TmZWFakveigGzLv
	bbAKzV02fU/y0Vw4WUItrTr2HAa1L4g40IpuEYuBzUfNdah9zAyp8AZRB6hIxnR6yZd4Gnb0MmF
	aQD8QLRSRQ09xuloPB4BmFsyL5esW7ar46y/CzXNcNepKrLIZCOAnT+pD0EsStIOwUlQ24i+nwv
	EzXWptBPQhFM71Rc=
X-Received: by 2002:a05:6a20:9151:b0:240:1e4a:64cc with SMTP id adf61e73a8af0-2e9a4162879mr933790637.12.1758758489159;
        Wed, 24 Sep 2025 17:01:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeVc0LEM1JDvlKULdAll28E9OqkAmHpBcwknBmGejhHBznxK+9gemEW+VfwDBgDToKJcZJQA==
X-Received: by 2002:a05:6a20:9151:b0:240:1e4a:64cc with SMTP id adf61e73a8af0-2e9a4162879mr933742637.12.1758758488646;
        Wed, 24 Sep 2025 17:01:28 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55a1bafsm423152a12.43.2025.09.24.17.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:01:28 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:01:17 -0700
Subject: [PATCH 3/5] ASoC: qcom: sc8280xp: Add support for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-audio-v1-3-5afa926b567c@oss.qualcomm.com>
References: <20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-audio-v1-0-5afa926b567c@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758482; l=763;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=AGoAWCmgVcAO74JQoXvSUhPyLCFGBo7GIPrJwjsAmHg=;
 b=OWGKP048rWsxPP8OlddpC+6pb0UowE1EXcygO5YxeDAWbovUNlwPXlHNZmtYU24Rp2LhrI6QJ
 v+fmQcJW4/SBjG3dYBMgxRb/eqeRMjZwHOTvvqmwOpF8wi9jUNaK0hh
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: mjAG08yBMD4R0GbUwvBVx3LRWyluo6n0
X-Proofpoint-GUID: mjAG08yBMD4R0GbUwvBVx3LRWyluo6n0
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4865a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GNlvlv8D5CiX1CDg2F8A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX+WZ/XcTvjxuH
 sglBY8XDjjZGxhJNs73bwSwkuQMMlvn3QEhtQcl9T8Z1yP5az3LR3mpuqRHqw+TZw0Lxr7ufAw/
 L2T150PxUmDCe7bcMhYNeutGUHO1NKe9JBF5qQDI3922T9NFXqzyQbVJ/mQB1Nwi8t+FC1FvIiJ
 rq/RIt9dDstljielRBWeVSPymS0K8k+7aK+iL2mCz8RAUXV68CHdYd71/zxys0aXTZEw5p6+kg1
 rb+KbUfwUAsvVnQBZciLdyelGibtEvN2SlbRWMelPmzONZQmK/l7LZoVaJtlGlRdQFbS4fAVO8A
 3k2hi1mWXk54JCkIyWe0iFUkRj9ZCLqXzylPkROnLTO2oo78m5YZQGjb6dYCK+O+UTdGNqOz7JL
 ulTE9SQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

Add compatible for sound card on Qualcomm Kaanapali boards.

Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 sound/soc/qcom/sc8280xp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
index 288ccd7f8866..e231112175d9 100644
--- a/sound/soc/qcom/sc8280xp.c
+++ b/sound/soc/qcom/sc8280xp.c
@@ -198,6 +198,7 @@ static const struct of_device_id snd_sc8280xp_dt_match[] = {
 	{.compatible = "qcom,sm8550-sndcard", "sm8550"},
 	{.compatible = "qcom,sm8650-sndcard", "sm8650"},
 	{.compatible = "qcom,sm8750-sndcard", "sm8750"},
+	{.compatible = "qcom,kaanapali-sndcard", "kaanapali"},
 	{}
 };
 

-- 
2.25.1


