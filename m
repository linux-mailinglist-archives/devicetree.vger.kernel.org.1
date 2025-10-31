Return-Path: <devicetree+bounces-233701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87258C24DE1
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12F7F466ABA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9392A3491D1;
	Fri, 31 Oct 2025 11:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIaKnxI6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ANkG48Ua"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7B348875
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911317; cv=none; b=DhnKQcvfJpXw5PLsIRsLiRkmmv7s+yCGBBBe9nXAVhX4beVkQGsAs5orW+pOHNxDEemtv3rMMq/5lMx+5GiRO5vcAWCKCZE+JNFGEZUXbmFZ36LVTre8VsEHO9JgXTBftkXrcWFV/2SZyWvkPRvGCJ9zY1nPOoL0nW3ILELN5bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911317; c=relaxed/simple;
	bh=6qhZ2V7jPWMlO09vJWcPidbXDMoiF5TkOHsCoJUNPBc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y03O94FzkRwFep7k+qXeQDLuTpKys27nsDP0qEIKWiievhw3c/xz7lCmvW9Wsog76jSrX+cBF95Ib3Q8LSqExI8PS+X6ikEwOLxIthglzzdbQjehMuU1pnvEGVJnwyO1WzIdK4yZK0p39IFscgYDQWYtMFiLloqhm2FX6s5Zrdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIaKnxI6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ANkG48Ua; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9jdI72471732
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j3qsn+XRU24
	M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=; b=EIaKnxI6WuzddOV2dLwhYc8qNQf
	GekCk3EmIjWY0PIVYrcfcHg+zw94A6BVYQZ/i7QokTU6s69FTP8N+NaIsxEW5cNW
	MNkkZOR/wnZBBSqKyY3F/VkCTNKnFVtm7TNWn1KkTfOz9uTO5EhhbydL5sJ3gfGZ
	m4AWNoV6bOd7F4cTFT+A9FOKmeNCtqLz9rtGsBaARBCu/giQsPI0ILSCCqjoBoGf
	tGq2M/NlTUCOw6jD79eOxQTWtwSz4VAAmfEz7zFeYe8wgDaRkg0ryW9WZ28F0DEU
	8xekY1QcSgVIANDU8r8vlTzqikP9cVhj81zK/60KUDPy213+9eYi2xadY9Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4trv0aas-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:48:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e884663b25so55290121cf.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761911314; x=1762516114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3qsn+XRU24M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=;
        b=ANkG48Uas84CEWVZxyQO9j+d0Hs5+seDnRjHHL7+oO8XBKsKxIMRnI0mSZAf5qIG5U
         vE0HOKkDCWA62iHSeM8KxqQrlxg5Ct2UR2/huly7tjMa7V9X2ggQUwk4bPaBxuNvrC6j
         IwgaqJMYcH9I8veLSH2wMuBi8GsuMCJP3+pV1AFzwCV42pate75qOTIrLE0cdOVgMH+q
         NgSmwfxX4sfpiNMgim6HL8tKRV/yDyfR/+4b2g9M1bbMnbC80+0nC/zLUfeiJ6OGm6xv
         fW19D0XAjOedijhFgKAj76VMpyUcRB6WgvATm6mtwsYEctOBKy+LacZxlB+rta8fnfyG
         /Y2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911314; x=1762516114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3qsn+XRU24M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=;
        b=JxoaRCFvj2mNMmS381H6qGsRHwxRZVh0L6lncO4E/K7ph+tIWqjqlH97pGCiF0m06X
         /xUv5k61Wdyvvjv23ISp8yD6SKzP0YrrazN44+drtDNd3H+LdVvrXJsWgDvy6MmvJI0p
         VCDw+gziqDt/bXz+KVvL1PnkRyluKhVfBdmsdX1Td5C0wZq/Iho+bv7nP//iyBLaaEEC
         M4dy+mBOuqAz2kRu5Hr8slxxW0caavD49P9TFy6YyyAOyPZ3FAj33YSzIEDJc28YwF9L
         qosq4fiuGEcOUMEZFtvxNOuCcKS6iJbFWs2hvskpbIo436gZvkL+3RoRxuDBe/Du8cLt
         8OPA==
X-Forwarded-Encrypted: i=1; AJvYcCUqU12vrYYW2UL6FsSVaagpuEaBQEGgAJAwz/FuWrdH3wUjqSHunL3wziT1hwhoWOTsnj6AmiEPf9qW@vger.kernel.org
X-Gm-Message-State: AOJu0YzLeO00adMyfN04tZ70rO7O1mJAmWVSGNZRmv9eefuZAavwJXa7
	akpQiLdMtY4fDA1PqfH8iExP+t5LZ+n+c0G+EBw65T/3j0wXsM2wsnU5/6NEK8B8vuraBdqZwBY
	OfalOGz0mRuY1+4lQWWujvjmJOfQMLyr5mNHXWzAwznyZ2+9rGxOiII0s5mU4IobO
X-Gm-Gg: ASbGncv1Rj8UH72TB2g5TqgMVy9f65ci2Ld634gubUhNjtuNgxCU66Pm4LkCZtCHezz
	28+7/H+jlSsceJkNSyEg95/ZvqPE59o0PhVAYTdttskjsm3OoBEjJQKQGnLAMxzl43sMaa96SXF
	LMO/wTqRMlqtmyGwZ2AvJ0z7AIs2tNbY/5S9OnK+czmgvP+4iCi+mcTthKdV4PT/SCJvuQO/qGp
	Pf9rjsOkdkHvNOUIuSt+T/D6N87h/qBLp2kF4paj0MlQ7MOGeauGfzw401wmdIwP+LRphQwMrsm
	FBowFEue8lQj9KwyZiiMES3VgmvLoyyiDRAGOcQIsg487BhysiSQoKiLFEXq+OOhpUwYUM93OOg
	pGgp5O2L0haZv
X-Received: by 2002:a05:622a:44c:b0:4e8:a3aa:7a89 with SMTP id d75a77b69052e-4ed30f97698mr35247681cf.45.1761911314459;
        Fri, 31 Oct 2025 04:48:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEx8pA84RF2TkqEabXHMntaiGr0s/X9J/igoE8sRfJ6NgMHoHpJPy27oEbX9455Qvr7kMu1sw==
X-Received: by 2002:a05:622a:44c:b0:4e8:a3aa:7a89 with SMTP id d75a77b69052e-4ed30f97698mr35247421cf.45.1761911314041;
        Fri, 31 Oct 2025 04:48:34 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728aa915asm86831165e9.16.2025.10.31.04.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:48:33 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 6/6] ASoC: codecs: lpass-rx-macro: add SM6115 compatible
Date: Fri, 31 Oct 2025 11:47:52 +0000
Message-ID: <20251031114752.572270-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031114752.572270-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251031114752.572270-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: YXjV9mQkTVvis9NGGi1Sl2R-JAsIhF7w
X-Proofpoint-GUID: YXjV9mQkTVvis9NGGi1Sl2R-JAsIhF7w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwNiBTYWx0ZWRfX9oqwwt5adgvV
 SrzVFiPZ8HdTd0vSvA33mASGGihJcM5cRbMfLvLkn3VyalVCjObugO7IUvbpclR1JDR/OXzMov9
 SErXOIEg+v9h/vF1ezz1YOFOSXqFS0ZHPOZkfR8HPo+4qQy/h1hmVpe36y5EeUq+HJNdu57Fq/P
 1t7A4TdDT5xeePQZk9ZxO2vpejN0jZ/zdde3Gt0eecZn7E4AFd4hpiEOOOFkiG3zqL5vHc4vuwW
 Fk7lPCdCvdxIsTk/1ACBT8I4EHRzwZb6+LAJX8Qtx6irkUf/Nz2sFAFNbS/yu/N/3veSxzu6091
 YW3xnv89toHBs4kQOFIBjdN6Cihy0JZ4rq7uyBZ6SjurxnCRSTAvnuJZnl8r2AKgJrFtscmdABJ
 4scZXThGZB5tg55BJrwTWxe76+N7Ew==
X-Authority-Analysis: v=2.4 cv=XoP3+FF9 c=1 sm=1 tr=0 ts=6904a213 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=MaTAXlxkpdZwQv4a-28A:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310106

SM6115 does not have "macro" clock, so its bindings differ with existing
SoC support in rx-macro. So add dedicated compatible in both driver and
dt-bindings to be able to address that difference.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/lpass-rx-macro.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-rx-macro.c
index 9053c93bd44c..f889fd17f166 100644
--- a/sound/soc/codecs/lpass-rx-macro.c
+++ b/sound/soc/codecs/lpass-rx-macro.c
@@ -3951,6 +3951,9 @@ static const struct of_device_id rx_macro_dt_match[] = {
 		.compatible = "qcom,sc7280-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 
+	}, {
+		.compatible = "qcom,sm6115-lpass-rx-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 	}, {
 		.compatible = "qcom,sm8250-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
-- 
2.51.0


