Return-Path: <devicetree+bounces-197654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 944E0B0A0F7
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 12:47:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A8E91C4857C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4B22BE029;
	Fri, 18 Jul 2025 10:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fIangq+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5E92BDC2E
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752835618; cv=none; b=lcS9nn4Vqhu83CeLrp0GE9vQciedx9bKVBeMau1gQxaD9h/PUvERH1TW3HrYdznndunivrkM598RiwGrXxZcGO55Cs2q/MmAVzcvcVNOUnMaRsGFpo0cNXmAENOtO8KO9D2uKrr5xS5m6fIh5lpTNV2/ZWnVFilt8/PJbAyBDfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752835618; c=relaxed/simple;
	bh=5wy5crBqCcBbvGTsXxUbWrxKJE9+Mz5wRtahEqlnRzs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=klI4tqTNtHpJl+PwS700p3ewuorrrd1xcM47BiJscwoRceJOii8bJ88k3VkP7b2u6L/o3lf0yeyny00UeIgY4p77ay+9LTVw1b6IWkaT0FNHryGv6UfWscyEjV4qXoIXZ0gNhjcj5Jdbg5ozkTHclUfPnQBtNvw3ZsmqVnHZsp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fIangq+h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7UUXi025369
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gif+LMxG0jg
	Jt8xMw6rl3aERVL6vO3MZf5qPtUSTZH0=; b=fIangq+hI+zckgCjxrXQN7L0H9K
	08dhqExUB5MuSucXCkH8Lf7LUSKvrPw0N+CDS+Ofll2kWuvGebjO6qnySXcPPYlU
	xV4NL4fBaaMvsa0ZXbSeVyCHgN0QIwkKuGuy7lIl2p/cPx5F/IvLUjd/rCEVPW/1
	Vu/dse7ab/pdXhn1taBDZrotpUqJv9GJiwkJ2+zOb4rhRLvLwacuEIv1iCEyc9wi
	2u3kRtjYtsjRzKhzW5m8VPrWO/4+koRROa8R9QjO6ptGxStlZgWYk3fOZzj7CWlb
	LoFTyZT6iWHMzqBGR4RCUuOQ2jcrNLAfFYlrfFYNjbFCDEHTBRqODupVrWQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xbsqfckj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:46:56 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-75494e5417bso1944580b3a.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 03:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752835615; x=1753440415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gif+LMxG0jgJt8xMw6rl3aERVL6vO3MZf5qPtUSTZH0=;
        b=JO5RrSKUdXmNHd4po3/2yEDXudWo/8z+Uj/eg0HnWnsmaX61jegGBkP1sFMReE6i+W
         f5ylYLlLdYNqJ+NS0FsTWJuZ08SMplAAMgzNIlNqSPucpnR6wlr72jIF/nHTg8LhqdfO
         FJsu1wX+gMQtOhjnY0A/t9YtRiqh40X+84Y0iAgI3pitc8qGzNUUykbqIZ8I/yopqmCX
         zIT0im1zhaYJh5TkS8NyiTN7FG8RYbrVnSzqvqpCr479sqEoinYTSsQIIgYGHecbfuSq
         c0IDOO92pZC0SYWzBvYg/3iVjCaE3QDKhUWDXXmwxCo/6qHpHTprKFaNhaKQ1qs19yCj
         +4Lw==
X-Forwarded-Encrypted: i=1; AJvYcCVc8breYqN+TaPth0hPhS/AkKqgvwMF+I8BwTQ10xUzp6VSllwfDr7kcglfo6QHbfQaPuNWb2aAC/kl@vger.kernel.org
X-Gm-Message-State: AOJu0YyexH705XCmQT6FyJjD6+L92UVMs8C3i5WzgaHXjypwYCCcDUX1
	/hF2i3CiJ559JiI71hiF3Kko+im6VBu5t4az2EF7jBXZt7FtZh0FFVo4IRP9pWbsHxX7wmW8W0W
	silFn7DpPQlQ0N1aHmjovHBhpq5UiodzbNgmtRBxXqq/DQL75KJPlvP3tyyu0Jo3d
X-Gm-Gg: ASbGncvweAaTDuVB8+aUjK0ifws5UV4sOtPYLY6u9LWwuyUkmGO1I7W38MpD33BNMy+
	Wss93qIgLk0YGxiXTlEncEZpbpO2nJ6UrNSRcjZC1oMjCagcPprv6u0Y4xj+ocLjc2t8N+V83ss
	6zp9z3atrqaeefqkYLA1L1AXEZrFXrOCSKIGLm7LNc6F4AalXWuO4zmG3QLqnhF5pvJ8ijuO6yR
	7a8wZ45vSN2YEfWEyePNhTath26IK/ngDP3vI3EIdsA18U58b+/UHS8Cphy0u+h3gbsH20iDv+P
	PKSCiyUzLO9KTYBVaM6+YP0R5UjmDwv6CA6VGe5DvyRwDH/QsBQiFiobVtzR+NH7AKWpw+fo2Nj
	M
X-Received: by 2002:a05:6a00:23c6:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-7596a1877a0mr4234451b3a.10.1752835614977;
        Fri, 18 Jul 2025 03:46:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmit4JF/V6hPtbEMuCGG/dXgfpFvmuDdWI16KeBuC6kTA9Y2B7VQ7qoTDe0q039H8l4VRUOw==
X-Received: by 2002:a05:6a00:23c6:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-7596a1877a0mr4234419b3a.10.1752835614441;
        Fri, 18 Jul 2025 03:46:54 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb678cdbsm1028989b3a.108.2025.07.18.03.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 03:46:54 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v2 1/2] ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
Date: Fri, 18 Jul 2025 16:16:27 +0530
Message-Id: <20250718104628.3732645-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250718104628.3732645-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250718104628.3732645-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ad1hnQot c=1 sm=1 tr=0 ts=687a2620 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Jjn-4_SfM33dySwp1_gA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: wWJVzWWlG7jpg5NHVwjLefP7iB7CPxBo
X-Proofpoint-GUID: wWJVzWWlG7jpg5NHVwjLefP7iB7CPxBo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA4NCBTYWx0ZWRfX9Q6Qmwyvmj3t
 /9X7oPbKoWoXsCEPAVRM8bdP6GyZ05iqXPDNsONPq3X5+pHogYvjfLW6oi9V1kFxpqyvmjeP+0x
 IEKVn4RFXd3nafmw5pro9nQVzw7kJuMcykV8EewGWlAmXadSqY4Npsozb8ycJ7oLqafqRjStM/1
 pU1fRWpJfxDZ3v01o83SmAtbxqNmnFzkFzxQIbpZfEr5D8pEE3BRc0AXCX9acp2Dohj6/qNtLUp
 E705tKwmZBGnuNnJMvOnzg79aFiTbc4BKy8WvVAIH2Tv6fswgespxfppqn1rX8C54F5LSdlIf5n
 5BjtJaTApI+gW3BRU3WPCE9Iy9bsL4VqRcNUF9mGkRjyN5Xh/EiDadc52KNU6GZEyXmcW59AQng
 JyAgYuysaEWcib00pD3c+5JJVtNnLLBPiSbP7GdxSp7MCKSo87lCTxpLVCbtMOhfP7VvT8cf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180084

On Qualcomm platforms such as QCS6490-RB3Gen2, the WSA883x speaker
amplifiers share the SD_N GPIO line between two speakers, thus
requires coordinated control when asserting the GPIO. Linux supports
shared GPIO handling via the "reset-gpios" property, which can be
used to specify either the powerdown or reset GPIOs.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,wsa883x.yaml       | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
index 14d312f9c345..098f1df62c8c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
@@ -29,6 +29,10 @@ properties:
     description: GPIO spec for Powerdown/Shutdown line to use (pin SD_N)
     maxItems: 1
 
+  reset-gpios:
+    description: Powerdown/Shutdown line to use (pin SD_N)
+    maxItems: 1
+
   vdd-supply:
     description: VDD Supply for the Codec
 
@@ -50,10 +54,15 @@ required:
   - compatible
   - reg
   - vdd-supply
-  - powerdown-gpios
   - "#thermal-sensor-cells"
   - "#sound-dai-cells"
 
+oneOf:
+  - required:
+      - powerdown-gpios
+  - required:
+      - reset-gpios
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


