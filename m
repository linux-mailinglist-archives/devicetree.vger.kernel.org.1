Return-Path: <devicetree+bounces-205208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0999EB284EA
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 19:25:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C0ED1899216
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 17:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69F51257844;
	Fri, 15 Aug 2025 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CiRh+IMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BFA321431
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755278673; cv=none; b=UMllHWnGSgG3l6hqJ5UCP3+irafPyByTZEbYy+I45HVR2EYmILsQ0VCSDgqKxN0tPWzEmlEL73jzAg5xkIeDIDn+yEr3NvE1U49OtlSQ9ewr5IQ2/uduAIBbDekQY6DbWrCuzYhG2qEkwrEdhDDpvY2uLC9KEWs9muv7EW6eTQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755278673; c=relaxed/simple;
	bh=NM5eUwufs9EQvxyH72fi6ouw9HbAH6xIggTFFBsajLc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ax7S8d4nuDJZj9HQgX9d7H0dr8cORwwnXGOcTz4DaIhv0LRBQ8iVjHHhDSL6bZXemYNSS+0nS3YaX8JIY+KO4czN+0yReQ9cEW4fid7lefgg63yXBgPm53ADSMs0iPaWyFDJhwW/vlVcIa2iXPQGFoXkFEWKvpYTfszI4NuEsZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CiRh+IMn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJ2QJ018247
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AcwNi5jqAVS
	vH8zvGbAgdOcfk3Kkt+F28Tzsi0VVD74=; b=CiRh+IMnWiLbwdbYxp6fDX+bvAS
	48aiEpc3DNLT3lDYdZZHu03MJ/YeJgvg88TrZN/3403h6molaE4cWsKKayo7PrWZ
	lfDzAdtisSrQS8KtvccEIYKb4NxhI8ejGQNVthgk9FMWhQ/HKab9USHg86GKkJBt
	uWrriM7sGAJj53oLZ89xe07a4sd7y00PhpOhNPy6Sn3fBndPaQS00yBY//LfWaVj
	0mfGuAE848KDNIhXf4AVupkePS5zb7EDuL17TD/BqTBQv0pMDycQpHyYpk5gw8/k
	0eISBGguOkXyTXJXNAL8Qwl+VoZao9jYwebwhH3owTSRwzeiG2Rsyy7pjgQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxhwa3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:24:29 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32326bf571bso3768969a91.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 10:24:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755278668; x=1755883468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcwNi5jqAVSvH8zvGbAgdOcfk3Kkt+F28Tzsi0VVD74=;
        b=cx4hjq9q5swenfeOjamWV7fUUjFazbLat5MPp+VI3R09CLxcYs/Miyoe5+RqQ1/U1m
         cgcWA8u4j8YwG8oxgw9fpWBterLTbrainheIQw9qnQlC4csXhky5b+U3JuFtvDkNYuUM
         coBcsuM9Znim4ajBFWssLJoyoOjznZomBPr+DuXctzDWp0+tasBuUkObuKzMVuJ0DIDf
         UTQrL/rZAnqtTJFe3lmQMo7oFbZF6GRG7ieD0sj9GoD+p7MLmkZJpEtUZOz57FgVlt8s
         PkIHh0wrOJ4Qa7cjyhwozKc7FL6xDb5tLN0oPAkSE4ciSdX55aVycmfkT2IqfOCON40p
         CpTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXB4kOg2L4Ji47L/080/uW1zt8SvOm2vEU2Gmf1ySZwgM42n3ZtABIUtEW71vM8OrvjP7n/clqen4uw@vger.kernel.org
X-Gm-Message-State: AOJu0YyWQe2PQpj0SEkJtCCV5faXmiVQepFhAnjCTrfwCrKrPeMQYNXF
	dh+xZPNwqmG8Gt7dsmgHaCAMI8MIKURpsEQxkDGTpj557DNN1eBtbpDAQ2WLP+a0g6/V/OrNmBF
	StMRARsGng4pkJKosK+LgNy4TnZ5grO6y7krSMexaX4wB3YVAE91fNT1CUlRcKRnw
X-Gm-Gg: ASbGncsw8chMqDPJki07s2ZzafUPhc3s+0L5lM7P0w9KB8vm8yu9pVdRoSbT9UP2jl7
	nVTZ6rgFCGD8JVHS2TbqHL9JjHeYJed0unYhplJs7IvinquVNSGfyqyitnZ1p94cE/Cso+6zOGL
	HThhqCviPJqBiDW/5FSsKZaympO9OSzNWHfT9t0RsXjTRi6f+Cyqvt64eduR/sJ3EFKzdIjcWkN
	AQ0eXlyyCh0M8Gtn5AgSKJXCXjRYtLibuOmNgUo0X64HPaLszGym+LbU35UwS0VtnlLVh1GMBb/
	+GlQaJ1ZvChM84WqRpmIyYN0nF9ymbZbrog8SLOJ74iCoyCyc4wytusPgLg9mKsa/UlejTP0MuN
	E
X-Received: by 2002:a17:903:1965:b0:243:926:b1f3 with SMTP id d9443c01a7336-2446d7a9610mr49008725ad.24.1755278668498;
        Fri, 15 Aug 2025 10:24:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEihBomGwZVjSUs4+UKA4oxIwLDdUcsOiQ1uMULw5AP5GlJ6JVwHuwDnUGWMxWVfKCJnYCXwQ==
X-Received: by 2002:a17:903:1965:b0:243:926:b1f3 with SMTP id d9443c01a7336-2446d7a9610mr49008275ad.24.1755278668067;
        Fri, 15 Aug 2025 10:24:28 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446cadff5asm18404025ad.42.2025.08.15.10.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 10:24:27 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
Date: Fri, 15 Aug 2025 22:53:52 +0530
Message-Id: <20250815172353.2430981-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250815172353.2430981-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250815172353.2430981-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX6xrJKdGbtJCU
 1vvphK5cieTx5H0dnzxDS8xqRRBKue+C8bFIB5Nhwq1G36CfuQ/8jiVPzuNAqTU1I9tKt1fNYXT
 ds8XCp6ETrhhzY7kRSQ8TUgGX9K4eNTMVY7g0fomNPKzyqt4AEBFk3y0yEJUPtsauKFA+4lL26l
 PxYzoHw/CRRH6jc7WPtJvJ5Cf1utj/e55kr9tx47f+ebeNFrkEwQh9urPsjKA5VpMjzDEORTOXt
 xLEt4LU9oU5WIkM6FBmrspp6QMqJ/1fm/CpPg6CPoLAGHCBUGTFauEzZfybMU2pC2kL+JZKVkmg
 m2XYfdqpYODb+EhkTaBJTQquoSqt0rY6F+Iuj3LATWa/vlFuO+Lmp7z3WlIzNKAaK8XSEAJkCOk
 +FCSZL8t
X-Proofpoint-GUID: rTMe63WAjj9IJ4FkYSGUBmNLCZMOojGc
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689f6d4d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Jjn-4_SfM33dySwp1_gA:9
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: rTMe63WAjj9IJ4FkYSGUBmNLCZMOojGc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_06,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

On Qualcomm platforms such as QCS6490-RB3Gen2, the WSA883x speaker
amplifiers share the SD_N GPIO line between two speakers, thus
requires coordinated control when asserting the GPIO. Linux supports
shared GPIO handling via the "reset-gpios" property, which can be
used to specify either the powerdown or reset GPIOs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


