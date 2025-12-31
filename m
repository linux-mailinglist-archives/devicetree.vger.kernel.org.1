Return-Path: <devicetree+bounces-250817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E1CEC067
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 14:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7722A300CB91
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0BA313551;
	Wed, 31 Dec 2025 13:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AstAZ2O+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dfy8yM+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4ED14AD0D
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 13:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767187898; cv=none; b=aBEGeZAdBtjywpcnXeRDFDrwgviytjAxj1OG3s2LNiODKUz/JV74VaR0vthIfJQg4zU2gWFsF8BDDjU+g2P2dENK0KIJ7NOePg1R1sK/ff1tXD4++AImJygCx1VfxGGhoXbEriS6BMx4JvMEIyvyw4brCmbWFwX126aQg/BYfnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767187898; c=relaxed/simple;
	bh=+fwyYkzIQVQolQaFntwnItchopxmfbkwdjIsllj/oSU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gzc2quqw//awPyy06dHdlELd+PZV3WZy8kTINtMzR5AgbHNrnGBc5oog0x3lUw3z22CUkfR+yu5wmuh+nki62TI+xQjLyXx7pIIIiaTLdksgHh3dVvYKNgId1zWjYDSf0HtixXOQPmFecE3RrVCMqVU2OTeNJwI5V45D6Qr3KOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AstAZ2O+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dfy8yM+j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV62AZe2050449
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 13:31:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=6khf3y+B5eud9mBSQzrAbO323CbiIqLJSaQ
	Bz7nQTq4=; b=AstAZ2O+J7a1ooJUoTFeoP8PmkH9LEMKrg2dLf8V1FCTQD4lpDb
	MmBgWmA0DC9SGUcllZgA6IT9RWFW2Ed2CF4rKRowJoQ/JilyYLGUhp7mjQRZN6gc
	ko7YFjDpivY/UeIyUnPrX5jl7q0wcgOfUEG0NYOyqc4fwk1U91ikmvDNNGlDW6f6
	19514qriCykK6kDtEcNUZRdt7A0i2B0Ix3WowFFf9iVAZEAt8PTvuh5lXP2fVisD
	kJsEjXh31SlSZA1wHN0fc900AVxb1fDrmWDzZznPaq206yiJLBM+UNT4QvlRcqhi
	8+auQOHWN2JiU92QXnN4acBgUKDAqQcwURg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx748qab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 13:31:35 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c2f670a06so13831735a91.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 05:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767187895; x=1767792695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6khf3y+B5eud9mBSQzrAbO323CbiIqLJSaQBz7nQTq4=;
        b=Dfy8yM+jh0oMBo2EIrALdd3mLFrfQmPBYLtfLQSePPezZ6W2BolP8UMxm/yuVR5k++
         DVZS4Xu6EHukAHu9wEdRzXnjETBn/C3fZP63VJAUFYw1qxT+6dU1C1IEabwu7dUvmpgr
         oIF9UkT7FbANEoLmg/C6vtTLqTXtDxSlCtenelq0jSMNuImMuWGYnU4z9D/6dG9M4cSt
         0SzwIBO7fzhVJLdSdknA8ArR4W3E4zFUXiG61WZpl/3tjG0P2l4l7b/PwtOYeveStL9F
         L+ZmAvtn4qA+pC+2wfcMlPV2buD2lnbpfWMDMVXgplzgA5Ryjulf+SQvUK6Q4Lqy1Abh
         Cz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767187895; x=1767792695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6khf3y+B5eud9mBSQzrAbO323CbiIqLJSaQBz7nQTq4=;
        b=HndoVxZFiPkGwdUAxOyLmr84sNHcpKTe5IgmSeCf/W9ZTZu/3AK7as+aU+APeQgbi0
         zwcVe0qIuGIG3Fk3PqitFxkBWGpMWHxGFDwjsLNckB+t7JRrokI+XBN9jBuZv6Yu25KF
         +9SvKT4URX6VaKUT8K2q7KedqQb0FG0lBk6iL9JzUxB5jmSO7loSg+4eeJY8BzB9bf5W
         7twKzb3jFbOlTuFvDrdhI0IDnQDInvvJFsl0pTthc/P6YpGfng37+m0odlH5cpDwse77
         QYsTbUXi5AUMQ7/1YMtXw5bGWWwDCuY4pcqMrtkk26JHCstgmxtKNsVlB1Nb6oju813W
         XaqA==
X-Forwarded-Encrypted: i=1; AJvYcCWXzD8OOG0UEJkEcQ4QWnfsI8WMTjBh7RSPQTNQz3vwg3ksw01Vy12B82gvrPL9PN7ENmn4KjaaSkk5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp8yCy/jflRP0VxrLTdUNjhb+G2sGwEv1rvfR3N3qIeINSgPyO
	Mffu/tlhUoptNXRFvmPhyeEEnh7zvhc+Z8oWFqVsi7sBFd9sutBizeldPl0y323WTuv2QxW18gq
	q/1ncgEV/aDZETM7j6/hHzHGph2B+vt6KyRlc30ESUlA52L1skPDC4/CPQaGB5rV3
X-Gm-Gg: AY/fxX48yB83ssB2FiRbIF1P5Y7iCFG9pK3WWHRN8YNG9FV9Q6tocEbqNMOiJ96IbBC
	BfywLXv89+6yPVbP/jeFQg0odv69LFHpgb1fh+mKWus7E2+3aohttM6skPJkB7gPvpJuIHB+ba8
	6Qt818Oim4WO6mKLaW4ol/MC9neyL+CdnHvivOv4YnNHDp+Y+iyZzg5s1MJuhUU1LrrwXKXWAxN
	aV61qHN16rrirteO3V2JlFZWQlnIBCiFK80Pms4AfGYcnK+TO0yCnB5E+MpX6kiG03wKMdn0bP7
	dNlZxyMB3esvBcJ6KEPzZR4Mus5khGyhKT/VGSUHrMW+s0LjIf9860ee/eo9gMslce2reUYuJA5
	fPgFXe0B0+plRAYJsM9fiX6+O135uGBt0B2o9cPxBdQFUYlXGHitCVbmkcK+NVPNsLTmhIxd7bY
	IYt35RxdTuR2WIfYOoNtgMCJi0MMimpg==
X-Received: by 2002:a05:6a21:e097:b0:342:873d:7e62 with SMTP id adf61e73a8af0-376a7bf0d49mr31957743637.29.1767187895000;
        Wed, 31 Dec 2025 05:31:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdZPuu2jWeVDgwZC7gyRNEWnpwbxhVNb8q0dF01pZ+tfHtG0ZKkQ0Wpw5Hk3SXhVAx2oLhAA==
X-Received: by 2002:a05:6a21:e097:b0:342:873d:7e62 with SMTP id adf61e73a8af0-376a7bf0d49mr31957720637.29.1767187894497;
        Wed, 31 Dec 2025 05:31:34 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70dccd14sm35919812a91.16.2025.12.31.05.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 05:31:34 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com
Subject: [PATCH] dt-bindings: dma: qcom,gpi: Update max interrupts lines to 16
Date: Wed, 31 Dec 2025 19:01:14 +0530
Message-Id: <20251231133114.2752822-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767187874; l=763; i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject; bh=+fwyYkzIQVQolQaFntwnItchopxmfbkwdjIsllj/oSU=; b=gbNDDD00R+1ahQOoV7TxMgAdj5zghlu3YA2taoGUF67qsRJpsB2lSBlUR0a/xzjLIEB7laKCu PN0pk5h6PIxDnW5dpzkxxOGZSksmfKJE+g2b0Eu9EaKzqzjmDeJmexj
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519; pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 5BlHMW_XoDyrEExHzjyrwRf_d5bKTcZy
X-Proofpoint-GUID: 5BlHMW_XoDyrEExHzjyrwRf_d5bKTcZy
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=695525b7 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2kavYovvU34opV40E9QA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDExOCBTYWx0ZWRfX0hzauQvGgq1t
 gbOXrE3t01lKwIBit20F4X5TWTTgx2WOKsuW4utQGR+K0WgWlqIw7+d/rn0PcTkPfj5Lz2v5xtH
 3kX0MtfPVLj9BjsU5mUXnIp1kSkaAh5E9G+IzGdJJajVPSGjS9xZWDV7zP7zsFr2sV90fZsupXP
 THHVSAFuT/IqE2fPbvFbgngry48StI7xOck2inmtY4vghRCGTw8+36V+qASipmlTLhojWXNsqv6
 Q3Clvet1bmE1npViuwTNIO31QDe4ZZO37hmxcYu0y7lWv9PRJWDm2nnhKQElLTe4I8ljLeJhB5E
 jFlK1DuRFOpfCkqHK4TlDbTDheEfLfZqHENH2tvTHJsDpUsSBKqKffyf1Ryt8nLeZgVtYEJcffi
 YqdBytl8IEvR1ZColwqnWZoDqfJaauJOQ7imlDfGNJ944ZklDLOJIiTh/7yYbsVetFWuDB0m6xM
 Vitx2d0unZLbhxv3r4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310118

Update interrupt maxItems to 16 from 13 per GPI instance to support
Glymur, Qualcomm's latest gen SoC

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index bbe4da2a1105..39ea09bd9309 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -58,7 +58,7 @@ properties:
     description:
       Interrupt lines for each GPI instance
     minItems: 1
-    maxItems: 13
+    maxItems: 16
 
   "#dma-cells":
     const: 3
-- 
2.34.1


