Return-Path: <devicetree+bounces-217848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D18B596C4
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 14:59:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCBA232502B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637373054C5;
	Tue, 16 Sep 2025 12:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="peECV5IZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48422E5415
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758027576; cv=none; b=dJz8JiAZ7anrYj9/NawTg6+4K7OaydDZlzZX67aHbu+K0BeumHm39PVUP4TeSHk/QpI7LwoG8ymSo2ijAvD4NzOu+GAK8q+XHyN+/Jr8JgRn+aobwfkGEUl0y/jZjQEBsq9wJz1qx8DaqSqq8AYI1fCsyCcsDf5xq7ZWSZu5rOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758027576; c=relaxed/simple;
	bh=DVbPWj2tzFTRpVphPskCm+T6kOu6ZEksP9RXF1CryGY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=En67/183BPhYcKynFCv0Fhphzkpj8DP+MuX6/h8uqzrDzGvbc5CL7zo4yTgnQCkTaOhjE+et7xaEENGvDaIfHNXd3cFDsWRsfOP7S/xKbPAMWyvRqTI7xnKkOoTapCmi8SaFBcNhpP9irVsVXZ+wYgXGt+pHqccW/87MiYsj4pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=peECV5IZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9tOJ9012389
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:59:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+mLsRe9kMqiLPQdcorklY1L1kTPL+tbykpHDs9LwmKs=; b=peECV5IZaAdzaBAl
	NePZMMthewNi8kAkCB78FAjo/R6L1hohEQV/RFFax5dzPCKksvt37zWZkneTdKJ2
	Kad9iAarbhSwkeAPgt+a8t80Lhf4AAhxC3L5PLCU5dlIt0WyZCyxQ+pexjaBm8Mc
	AbHklPsNOfd4Kc30NVGOk4eiB64rbC1l3fB+m+3IGbTq5oWFfmLmdAcMpfaZUg/l
	6Ojgxmw+b/1xjBIK33z2nsu74qmSE8cQJYxv/Ljf0FAZqvLd0vS4SM2+/NF/oI58
	Kx8JFDaA6J7K6a4RKAcREKEHs+oZW/9bAXEQAXe7f2+WINdFCnVp2FvCgtIU0dIs
	zUyfog==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g12mj3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:59:34 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77288e1ce43so4873506b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 05:59:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758027573; x=1758632373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mLsRe9kMqiLPQdcorklY1L1kTPL+tbykpHDs9LwmKs=;
        b=Mozz5EiSvkZ0KJqubDdmmAKbs2HBI5SmPAW/FfM2SZzYV1r3j0H8C70thU3WALKK3E
         fH42zvhgiEy7WpsRnU4gMr67D0UXxHFPdrwNtFf40MKF5epBPtM+zV6TE6k1w11ho/M8
         XMXIJh7gedk5yGooWU+wuD07joSAi583MNwXJ/5VqpEUymynO10AGqAHB65F4WPeB6U1
         ZLRflcAHccsCMpRk7XLiFzIQ93CuFLi/pqU7A5rdWME9y4+ZkCgAUipk7MjLFjMO0KbL
         7XpkEmj8fEYYvj4Tl4v1p36dM1uwf49qTg0uIekrlAWEDtS9K8BGbBbZfvuXFTSkS/P0
         Jarw==
X-Forwarded-Encrypted: i=1; AJvYcCX7xR7Zl2vIbw5ZKHFUKlKiJAJurxw+zsBLgog4JpZvnLs66aW/ZsZahNTFRrElmgOflP3o0Tul0gbG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgnf0p7FKPp2dnCt81G/6UWrObSerRq1HhqLs+i/8+5EB8VWrv
	YXUVLuXidCdNQ2M+hV+knN44bpmhSz14avQxJ3sJ0JuMwO37c8ImRFQ6bXE8cMGc5Ncat1fpqwK
	9jcDTHpqLqP6cmq/X87azUIm4bkQ5ENzgMZdzKh5+Xc/XJ8zF6KkWQyCrmzQ/mnlr
X-Gm-Gg: ASbGncunZfcKQi8dQg/mCPnKIEJXwAwdF5ul8/JHDLWyLziVV+qxL292Hcx9pe9uahd
	Hj1uGcy2S3+mid1U5xDxdV590z0nJGyLxjnRn5SVH4QqTLOqGrTd2188OKa21Nvhz6FOiiONo8+
	nD3D7fCMwK9DB/wvXnOYwICAxs/8nGMGr10o4Qp8g7MiegvYQWa5nWgQM/qh7qGvY7Wz3w/7m4H
	RRuYlo836gNR0JIaFXFg6uYTPYjwOqfmKLPFmWhPrCkGpaLu1giq7DQ+6qjH588N9rMay7V/Q6J
	AOu4iIHG+haQd+ziIbr5b/4e0yjoNTUjxFVcFtYm7WH+EZwaD/KPHvQ7lg5naplu1AcnGH59i55
	UC4mCh9rA1gzFxnU2+iFzoUo7pA==
X-Received: by 2002:a05:6a21:3391:b0:246:3a6:3e64 with SMTP id adf61e73a8af0-2602d00f0c6mr21846770637.58.1758027573365;
        Tue, 16 Sep 2025 05:59:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/RdLHaNL07xBwx94L8QfLO/pai//e4+r6maxtQ+HYFVzCNITHHJ7Kd42jZ06d5d8xZ8OrnQ==
X-Received: by 2002:a05:6a21:3391:b0:246:3a6:3e64 with SMTP id adf61e73a8af0-2602d00f0c6mr21846717637.58.1758027572870;
        Tue, 16 Sep 2025 05:59:32 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a46b7asm16057113b3a.22.2025.09.16.05.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 05:59:32 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 18:28:53 +0530
Subject: [PATCH v2 2/4] dt-bindings: rpmh-regulator: Update pmic-id
 property description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-glymur-rpmh-regulator-driver-v2-2-c6593ff9b4be@oss.qualcomm.com>
References: <20250916-glymur-rpmh-regulator-driver-v2-0-c6593ff9b4be@oss.qualcomm.com>
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v2-0-c6593ff9b4be@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        jishnu.prakash@oss.qualcomm.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758027561; l=1387;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=DVbPWj2tzFTRpVphPskCm+T6kOu6ZEksP9RXF1CryGY=;
 b=O6hVdlhzYecc+aTt0sQAbh5PALuldhyzASq8saxD9OyUXUPhZza9Vv+Zzub48ItT3RbxU0TZD
 HNZmpf/lnvGDAVrOvlA39mfJO+2EoXMXtq0cEQzBz8QPuq8f1DUTyqG
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-ORIG-GUID: kLEQ-04Z6xwqPdUhHFndbunubLoKpJ-k
X-Proofpoint-GUID: kLEQ-04Z6xwqPdUhHFndbunubLoKpJ-k
X-Authority-Analysis: v=2.4 cv=E5PNpbdl c=1 sm=1 tr=0 ts=68c95f36 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kC17J5x1v2BUAMpV_zAA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NiBTYWx0ZWRfX4j9z0iXaWLpz
 KQi0XR110dJzVj8DNdChWaNe3bz+PwL9epKTwvM+SFO8iZm67Ydhrj7MaXQ3JwkQ43K044dHj5a
 +z9WCcbyICYk4SlBKEpqDi0tCZ0UhvdhzXYPOdRv3qrpLHkqzHKrcooQ6Mg18qaQKEdS/T2HetV
 xv3YC3e3CAIyGobqkFFssleBd7og2zAkSfa4BTExQZwclFwcaFlDSo9QJ+KMjMSpaRRA1r6J6c1
 JbDEYXstvYNgoKaUpSmnFUwI9Fz5psdsctNcjUX8Avpi50KNJwzDriSEo2g2WsZPQ9kFs/tf1/e
 TouzfWMYwQbDGumeGJ0/OnOPpnzh2V0W7hjzF+NI7xsTMiWug9lB+T24s30VCB2F+nH8edpzY2S
 ZPC40C/D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150086

The `pmic-id` property previously accepted a single lowercase alphabet
in the range [a-n]. However, on new targets such as Glymur, the
property uses a new format: `[A-N]_E[0-3]`, where `[A-N]` represents
the PMIC ID and `[0-3]` represents the BUS ID.

Update the property description to reflect this new pattern format,
matching the updated driver implementation.

Note - Old format [a-n] is still valid and will work for existing
targets.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 40e57b10ebbebeff130871b6d978df64111b6f29..40ddc64577e78b5c0dbb7b4e8893a08e8b37c92e 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -108,7 +108,7 @@ properties:
         RPMh resource name suffix used for the regulators found
         on this PMIC.
     $ref: /schemas/types.yaml#/definitions/string
-    enum: [a, b, c, d, e, f, g, h, i, j, k, l, m, n]
+    pattern: "^[a-n]|[A-N]_E[0-3]+$"
 
   qcom,always-wait-for-ack:
     description: |

-- 
2.25.1


