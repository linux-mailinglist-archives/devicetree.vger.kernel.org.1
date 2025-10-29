Return-Path: <devicetree+bounces-232834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 314E3C1C1B7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E0E6584467
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B670355027;
	Wed, 29 Oct 2025 16:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cOTLRBIW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eBQ1l0eU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D9534EF15
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761753680; cv=none; b=tTMHflX2Yi77q17cUH6UbZvZkcqmRjY02InldxL1zEXBl4E/obAeejMALEVVI0XVgb6ZS6oQy5E8KWLP/uMm4aKmBzwoCxbAlf8hQXoJS+59wJy7ozZnZ6/JgEpoCNz51jVL1Zwtg63tyBinnT5dAhHO4Mfr7LO2a8MnySuIiyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761753680; c=relaxed/simple;
	bh=emhALl942H3lDPK8rcbv0sOb2ovgQxu1VqmRMFsRjcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tp7sD9CQ2PUWvs5qeDlGqhoPWLYtTd10/ZRtATONrNs7yw0y3w7MxYzF+e9tiNuE/Dhg3O9XbQqeavyQs5iZJEpZAMyjiYld44nMgR/TFLvKOT0H+aqeFYQoY4Q6LYBgctCovSXdTWg5XI0fJeaJaSlYkR6Db2qu3HO7a9z60cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cOTLRBIW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eBQ1l0eU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TC2jPE3692109
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MiehR/zHYH3
	DNrg1Zd+xw78LsI7244OS19/slPbVvZI=; b=cOTLRBIW7bnHGKxAjI9tFkwG0Uy
	DP5728IY+c8nUiJRB4U5rBSxLhwG9v7gsjbvZ+BJVSqN1O7/qYUpfKilUUh3m9Sw
	kAAROdE4Wr/KKAhQEbbfGeu/DGS0/RiQwbPckxNFYMdt4uhkb1iKCmiGUMOZnT8s
	RPVBuLhL8zgMqpp7aW3sM3UCk//6XD3Es2twVGs+kot/kQ0KUv5xFTxkLnnu6UE6
	ods7gzO7gEjBGMiKxyV9yFNVtrioSPrx3tJgZoTSHKRH3J4ygzJ1gjkEwSIptqdu
	QksEUJ7jpqPTRPipdkp6nVX7BtQd34zrsaJvu628GbNmSox5ePgeV5d6QmA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2k6pg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 16:01:17 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-557ad6f2554so2243e0c.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761753677; x=1762358477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MiehR/zHYH3DNrg1Zd+xw78LsI7244OS19/slPbVvZI=;
        b=eBQ1l0eUMlfodgAmG9SvIFjFkb/vA5BtwMmFYZl1eUUGsP6yOEYjRhndKGagNdSqm4
         v7ASTZHnceNB7wnfQirTz+Bhx46B2Hknr0zpvtz9XpvBU+hxcYnTMUFWxr7/LCTbFrIR
         Tw884OLgonf5vhk96DpE7/cc6v1eQ03c5/slPqhXviLahQ+iMb1mXdwRRVtjfB4PK5kD
         AbUqPLgg+WcGGPwmwkty9laAveEecsmuEzP85cBo8YVSmAQqnBzOmRpxJKu9/rkBWnDe
         IAXwH9rs7U+hHUUF837P8aS9m/TsA3/mA8crLqGUn+Ph12LXZ1Dgq2tN1SBRf460oUMC
         F87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761753677; x=1762358477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MiehR/zHYH3DNrg1Zd+xw78LsI7244OS19/slPbVvZI=;
        b=N3KyXnvm5BYeM70xrIRhjSUJUVeeegbyaEWGylCQaLKB8zaAyoxxxkiNbV/eQR4s7H
         /ncWE01aHBuMRVmvAK9IXcrWwjE6DHg8L6zc+7FbmPmLJOAUDDnYt/79qs0PmNO6oktN
         Qi5YzIryuLNr4GAwnBBkcnU75JOKpNd4hXvKsYZOZFCLS5Qp971IJscW4cY+2RDyVmjL
         C9dlY9GnD3EwFz/gPdIxZL2R8wpK4+u7lnMpV/zrXHvv5cv0RNxqcL8/PCFJla3dV0Z3
         uWH3llyBc1GGPvxv9WrB2X/JKb8obGZeAP4kJmQb6dnKbl/GX8Frub5P/HPYGF1xzYaJ
         bEXg==
X-Forwarded-Encrypted: i=1; AJvYcCX65S96nynJmcj0VS2N+BG8aT7DacCVbTPlD3f58vPv45YDLZcUtDHtsJfUINIYKPow8wg3bx4wPQIK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr7oyvitDpWlFqrgQi3zG3RDl5fhr38e7bixjr0rVfp8cvUAu3
	GjtCdHG3N5Z5g+pX2Bzjkxaf9LtIbMkOkOOIH3guJc8oStkV+2ECNz3dFLea5hbQ0FoUIkTitZA
	oyOjB8XBYSmujrvEOdriBPd3Xh9rGP5REZd0rZK/iNYnfeoAzprh4Q7M2CqB8r73d0KzHaQw6
X-Gm-Gg: ASbGncuob70wwxMZLHLhh9RB4fLrqDJ6I9NzcwOfVsLChjKHpTmX4zQK4t+Vo85f2vs
	RGTGlAq8/4w4M92dbVnqoiW7M/gUV6Qnx3/fr4HI7dblPuSwNI/yLIl5IuG3Abmr+oinYSt+zIM
	ATZECLFz2Pxv1RUYJq35vjANUWo9Rgd2HhW3FCakvrzx4L36l1Pi/hrnImi2J8LvCRBeHrxBFMa
	am0yPvIlYxqgBuO/uSl03sU7+OuoTaXRenclxPZdaioV8KTjcwagUcWynvwLby6IqJ0G0YA1L+S
	YwfH8A+ibSjd1u7iavQEaHndTSsYCBWoqTuFT3Y0sgrTgEEvb/8EaHLzl2jT/gT4EMYqI5augJs
	qZo/LObogq6Ld
X-Received: by 2002:a05:6122:201e:b0:54c:da0:f734 with SMTP id 71dfb90a1353d-55813ec34a2mr1158778e0c.0.1761753676880;
        Wed, 29 Oct 2025 09:01:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnL4ne9FLkQ/VZ3estDP2bnXka+Spc42s99A8l5vSxio3Yq7f+MpwzMX3IWzU7vWy3vH7Mig==
X-Received: by 2002:a05:6122:201e:b0:54c:da0:f734 with SMTP id 71dfb90a1353d-55813ec34a2mr1158485e0c.0.1761753674726;
        Wed, 29 Oct 2025 09:01:14 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e27f7b8sm57154535e9.0.2025.10.29.09.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 09:01:14 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/4] ASoC: dt-bindings: qcom,lpass-tx-macro: Add sm6115 LPASS TX
Date: Wed, 29 Oct 2025 16:00:59 +0000
Message-ID: <20251029160101.423209-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YsujRS83QjVmOfh7LrO6DoZF2Dzmf38u
X-Proofpoint-ORIG-GUID: YsujRS83QjVmOfh7LrO6DoZF2Dzmf38u
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=69023a4d cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ggwc2drRBbIiG4O-mS8A:9 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDEyNSBTYWx0ZWRfX6nvTgd5cZQDr
 EkgA26qtq+H/V1s8cGXU7CACChZuo9gjxPKov1uSAZu8BHgk5VQh1fxB72KJo/FbBgw6LSesB/S
 cjtRK8nVUnnfdmgD9CyYxvdXGrdjYo39nTbLrNMk148ZYxkaTISB0jeBDvrEhUqhe9VeYLot1ZV
 D7d4i+qfTNyY/n24gHgAXCtaYGUJAz4kZGWkEoeTWqzJjXNVe/wsDTPk285LaGZgx9TLBqdibmW
 oKxTB4H8y3IGzHBStv67cqu+sMVDXqMqxdQoBskVlf8WF172zeF5BVf/7JbtVQw8aCQ7fg3W8ij
 hXJscM1CJf1aGPSGOX9b8dIi/x4RLf1EtygMq5u1My8LbfjdcgDMC8bGkLA3q0f6ObDLgpZ7VS3
 Swg27/81/S3VPObtHAuYpQu0ZhIpRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290125

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
TX macro codec, which looks like compatible with SM8450.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,lpass-tx-macro.yaml       | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index e5e65e226a02..8dd8005d73d6 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -14,7 +14,6 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-tx-macro
-          - qcom,sm6115-lpass-tx-macro
           - qcom,sm8250-lpass-tx-macro
           - qcom,sm8450-lpass-tx-macro
           - qcom,sm8550-lpass-tx-macro
@@ -26,6 +25,10 @@ properties:
               - qcom,sm8750-lpass-tx-macro
               - qcom,x1e80100-lpass-tx-macro
           - const: qcom,sm8550-lpass-tx-macro
+      - items:
+          - enum:
+              - qcom,sm6115-lpass-tx-macro
+          - const: qcom,sm8450-lpass-tx-macro
 
   reg:
     maxItems: 1
-- 
2.51.0


