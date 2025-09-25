Return-Path: <devicetree+bounces-221006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C8B9CC58
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:02:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAA597B2E6D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D47E22128B;
	Thu, 25 Sep 2025 00:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZqrVXsPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DF18F6F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758495; cv=none; b=Ne0CCsjU8WF7M2PNnKyYxg5f63cU9Kd+WfBF/cBOoYmNrEYpnOoTxT+LE/dbywi+nxSCmtUwOeQynRDEZYdiY1jjf/pjIMalxesiYGv1vteD5suyRkB/4/LjwTTrQ2HDvAdUiEfPBlqoTlIMLWOp+o3i3zBXudiVor8cOGfj6hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758495; c=relaxed/simple;
	bh=V4rfHcCU/wAXV0FGv9ipICr0cbduOyswJBX8O8lOqu8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GjueWzCUU1DmXYe1LaGEwxl+3M2Q+NHjPfAzIEsIB1oiT5mQvyG+SDahHc5131mPkb2lTk1Ys98U/jNc5sTEDM6zAlwPaz/5zSMZkkiyjqh6R6UqwkLIUS/p4z+jJTdhBFcQpYhNfMFk3IdxdG8B6Cx9DTSVgqoPvVhoNyC7WpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZqrVXsPf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODY2fO029979
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iPSCfQa0r4/1zMxhDx3atNDe951NN06HkbNHSAELqSg=; b=ZqrVXsPfaaZMwNkZ
	UnQkZwFTLDWLdK2/4fzKa24Q6A5CPlqfRL2eYlR3S/CQBRNvx2V3fKewEt3Sq9KR
	rbgoOrf1lYgJ/uooFWzbhqLewnAIbnAg4v+H3O7oZXslhXRUmCqqb8G2KMQcy+TO
	rSuSvLM4TvcGxC4KsuZInbIvtznLmq/lHDEwbQy4LcLREeoEThIWbN5d7lO186DP
	4zZdu/wDOLykNu95rVc4LEKazWlHlL0lvPr89o0qd1E7117n+uT+cASJyigdntiO
	mbyi5gGQ2JHX7n6hWKtFNu9cSft6ffeqdTlfToL3FFX3JGmaQW3U1bZkh6h4FTlZ
	RhRN8A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp032-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:01:32 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b55118e2d01so233087a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758492; x=1759363292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPSCfQa0r4/1zMxhDx3atNDe951NN06HkbNHSAELqSg=;
        b=SuhvBp0tZ5BBYSME5/X7F1Mtlc9/2aA6HpJEdQTgDMHMyTila9P9CnK6KeN/je1Jj4
         YRtp75fc20ObYT46gIwnrCtEgJx1cjbOGvpiK4OrBWhSS8lprXsIRo/JGWzcXIq4m8eA
         O4vTj/JjVapSI6IXi2gh3WUEt87v6u8fp7pLc9YpCaC5kn6xiN6kD1yFofPo6gTwZ2wf
         rCDBZocqoRdYUPu4Mxuh05kYd8Uf0XbhhCU50AZ1ueMINJtDPq/cVOwE6GEdIPIb/bEO
         aMGohYrJec/KVR5ySwOQXv934lURbxXNjiO5e28Oe9QGOTKfE1piLKZ3thIsJ4oc1j0L
         B9Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV8MlJ0qtj+U2x+elMzZ3izPvIWhrb6tlRsUiGvu1TX4nu3v9RtBA5YKZyGt12urwLuuVmrApxo52EJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyK51LoQlG1taW58Rqgr3kAqwSMeLWw1f0q6yq3dMEyphnY8mMC
	4GOKtRRfQFwSwgBjwrDPpQgQuXnKNV16c2BtLf98kC16msIUyNMxMBZAnH56csaLc6Py2/f4HPA
	qDYG/010QtlDm15dWmfsBtlWctNNAoGyjxXyJBrY0aAnSoF0ryJ9ku/idGlHNf3ks
X-Gm-Gg: ASbGncv0+KEeJkkQa1mJAah3SIp1Qaffci9Zx8dsSx1jMQZpJzpT/IIGjGeLGd1AEr3
	EL67BLhYHkGEx3PZZhq2le5qdd9uJ5pPbG3npuduKWvnFnlBw4pzQZMY23DU7yPwdkOzfwUqw+M
	2jbBnePNJpq2f2r1GMI5UPA1EFbClfbYbTW9hiSR2xU2XsGRfa5kGg64I1fK4WVXc7dyIQ85DW8
	1JfZD2PYF5fD865X+AhYNJybTzdGfYez/icavfAng87eTxJHjj0ANdQTGuZ5UyPfrnJwgTktrIX
	ycSw5px1ym7GRfA1bNASm/bDhcG+0u4BvMOYtOTQ74gdt37D3thOEP3QDBwmmyRtdN0X58Z4r5h
	+8X8NYxE7WoUjRK0=
X-Received: by 2002:a05:6a20:938e:b0:2b5:b1cc:9d57 with SMTP id adf61e73a8af0-2e7d0ad1ef7mr1735951637.44.1758758491870;
        Wed, 24 Sep 2025 17:01:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcBuhUX+zwV9XHhEnGYkxGcKW8PJ35g+7aoF8dcZvIwzlBSGtU1PclkPMxKApcmlPUiavjNw==
X-Received: by 2002:a05:6a20:938e:b0:2b5:b1cc:9d57 with SMTP id adf61e73a8af0-2e7d0ad1ef7mr1735906637.44.1758758491381;
        Wed, 24 Sep 2025 17:01:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55a1bafsm423152a12.43.2025.09.24.17.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:01:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:01:19 -0700
Subject: [PATCH 5/5] ASoC: dt-bindings: qcom: Add Kaanapali LPASS macro
 codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-audio-v1-5-5afa926b567c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758482; l=3129;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=dj3g6v9BUpW7nvIbf4y6iP6vvL+STyAnXhGU9WKLRGk=;
 b=t4zFhLZc7eIjaZjRxnzqaDgTly+djP/IQcGhd6ju6V0SD4I1v8SDX0LnxRwb4kUfba9UWCss+
 YphOVCPo9yIARoKYugGp3X5iIzX8Af0/V/nXRyQEPNBrjrj6shFNedh
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: tg1so-7w0CDsBPx5nvmzc6apmKwf8U8A
X-Proofpoint-GUID: tg1so-7w0CDsBPx5nvmzc6apmKwf8U8A
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4865c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ehmOrWUO2zTDMYMZoEsA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX92/5NpiQIb7S
 4BuRqz7aO/pv6mNzlpF6cmE/hDO/LsRZMlEkHTIeRdq7/Qqg2xpqDFEfedmxDgC6Cq/Efba5/qa
 V189cLflDi4WJ4Ml33f/73/xsScKAHi5gUKhSDRsr6g/z7wOa722ApmHhm7IF3+6+qLj+118Z5i
 OSjAXjkOwctSZvGOuDs+ax40RAc5iCJNKjsa7QaUItd+lPWh5H0OPosaEVUo6172JdbnsP0sYri
 FxDyUNHZVwhBpUhrJKdRLFOSLiIXz0ddqcUYfw+VKsmxysnNLI+6VH4+dURwFbCogTX3KKodE80
 uc4bMItWTdAI+P5nV0v5wCmWuxYRSk/Kpe00xkVNqfFPRylAELoLZhCiPoMEmIEshghjFn19n8z
 qnExuyBu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

Add bindings for Qualcomm Kaanapali (LPASS) RX, TX, VA and WSA
macro codecs, which is likely compatible with earlier SM8550.

Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml  | 1 +
 Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml  | 1 +
 Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml  | 1 +
 Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml | 1 +
 4 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index 92f95eb74b19..b869469a5848 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -20,6 +20,7 @@ properties:
           - qcom,sc8280xp-lpass-rx-macro
       - items:
           - enum:
+              - qcom,kaanapali-lpass-rx-macro
               - qcom,sm8650-lpass-rx-macro
               - qcom,sm8750-lpass-rx-macro
               - qcom,x1e80100-lpass-rx-macro
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index 914798a89878..e5e65e226a02 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -21,6 +21,7 @@ properties:
           - qcom,sc8280xp-lpass-tx-macro
       - items:
           - enum:
+              - qcom,kaanapali-lpass-tx-macro
               - qcom,sm8650-lpass-tx-macro
               - qcom,sm8750-lpass-tx-macro
               - qcom,x1e80100-lpass-tx-macro
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index 1c0d78af3c05..5b450f227b70 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-lpass-va-macro
+              - qcom,kaanapali-lpass-va-macro
               - qcom,sm8650-lpass-va-macro
               - qcom,sm8750-lpass-va-macro
               - qcom,x1e80100-lpass-va-macro
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index b6f5ba5d1320..d5f22b5cf021 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-lpass-wsa-macro
+              - qcom,kaanapali-lpass-wsa-macro
               - qcom,sm8650-lpass-wsa-macro
               - qcom,sm8750-lpass-wsa-macro
               - qcom,x1e80100-lpass-wsa-macro

-- 
2.25.1


