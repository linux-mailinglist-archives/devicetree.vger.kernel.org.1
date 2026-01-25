Return-Path: <devicetree+bounces-259237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ04Ow4ZdmnzLgEAu9opvQ
	(envelope-from <devicetree+bounces-259237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:22:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8059A80AC7
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C6F93028364
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF0A73126DD;
	Sun, 25 Jan 2026 13:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HTxOHf3M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hIUjCFhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C572264C9
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347229; cv=none; b=ceVYvJmJIOASSRfYs17H83ZoKYbtg9AuKIzVhAKa6STL4O5xyxu3R6HgnZGVIghmDVPlv4TKeDB9gbbbq60Lh8PGVlPwgwwMaWJRlquEJQTB1/YA8IRhnPJSVa2mJ7ibGUi6SaYl9JJW8izTffZKtAnEdCgfipYCJAJLTw/zXdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347229; c=relaxed/simple;
	bh=hLnX9O+jNkWp4eIwqeLrNV1GLUMHqOPIj1AAiPtuF4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LUUqRHyCCT0oySffMBMJ20h1/LDq6CCXpN1rfYHMBIokXhEuSLOJs428HNKegGAjb0+hdGdOc8IIP4tq+CgU7bmRfs6LemQNqD6qzSJtHWxZzgSmvxQnSQtXY2de9+/DUON3lg1+59008ATBI9R1axUBJejkif0tNIBVb2eE8lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HTxOHf3M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hIUjCFhg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P6qPpP3250740
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=; b=HTxOHf3MmmwuUmVn
	BJVkRo4OU9JyhDrTbbsekGBoKIYsETs+zRvK2000RSBako/fIDncmL5p7/bN5AUB
	yUE7MQHC0Xc4ogrEBQ8TDM5n4+Dh3Uuz+oSNwkqvVnuLFKHx0PqVRxm8IYNCz3b0
	EzT5JFOB1SD6v8MfbdKkqUzJOOHnWASOMtVvNZWca/DF+GcqrjZJUqYLGjii36ed
	PISidraUs2jZ4o85ek3OaBkAFz/PoLjDA0w31Om5UavFWUHJgPD399NjiSwyJLdV
	iGDULFrTUbC+G51HdUFOsrCQSyF0ckAcWEuN5Pkf/h1K5/gF3ZgZAThD6hSMPkl2
	4mcOwQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9f24xt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:26 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89473f5a755so134029736d6.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769347225; x=1769952025; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=hIUjCFhgOltp73Dx01Y8oh7WQrMQOmFThiLTTghx2gcKZDfVuJwmACW4UyVuA69TD1
         L27I1YkWp8jQLdDlxumVsh0uJRK9IpYgHZbZOmiQTSNJYnhPC0EaAFg71DfVTVzMhHK9
         jmhtStZKezkI7VU6qmH+qvCPiB1h6Pf3Z4yqckxHCWtd4U3zKLnmNDaWnYNDmHb4aMAR
         Rwpq6CUSHmXAVN0vf2587a8TdeE4hfqPbl8JKHN7yg0CrPDCM1x5hT+1QMO+KmQqGVBe
         csRlGbs+pYrJx8hjtmT3JDlww/c4dgx3mroJoc2l4heYIKxvO+BvVELQvfIt3iVt3Udi
         g4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347225; x=1769952025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=ThoSWqexxpedjKbLP/4qNzejDnAJ2WvyWieUQQK39WF9FKuRyaWFatmj+MXL7JTjTW
         u6Vod7kXmqlLOHrWKrrI/qcZmeQyFad7e2hpvdckEeszl2kQ3sfyGqTGPd2WnY/dghx1
         aC4F1zqJ7p8DL/4FPQqnEa0d9sD8CAJffpRjAJDPgmQjcFJtQnN5Q0PYjsbK4id9yNFg
         nk2M4NFclIAlsHC/7Q1JLcQs/QXVfBrHGoIwZfKhQrheVJdIX/3hFKRQSvGa+FJitljg
         jZWtOflrZpqusw7Wh8kV2DZH3pFod1jc1b1lRylSU0aCj0dChklD4HClStwUhHOJPztS
         NsMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqUZBcYTFQzdazx9WTMul4b9AI6jQVExNylcBp1XFdBDV7egWQJE0BiOfutrVeqozpxVoCgkmp2phn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdfead4D9He9r6Qhj0mgGVJkBsLou9XoZBByZAlRuaKD83V4Xs
	8xfExriThvoURIfnIhVKvUQwq/y5+/SoMWQDklsXBWMq80S220O+QVUkUExNUE92p5wVR7M1fAy
	aXb9hw0XpxsDcxM/tOJvAfbmyTUSywQaY5cGSeVg9cZsvuAPR2yXIxJLPk+he8tRL
X-Gm-Gg: AZuq6aLvWHcplXQc92ZnfKxQA3vY1+fbw74MBJNqEDMKCpKFOHV5njv5sG3KtIBuWvi
	kZOsRwDXyFJ3w181KGNcjM/heR9v42qVjd23IQv1Dl6SJm6ykw4PjIBdlkYohuvyUMqFKD38ePi
	JHgD94RzizG2tX/phV8u3abCSSP89gBWSC/jZOz0/cSu64wlyP4msDflByBWRrStIdkmyHgZ4wg
	tFE8AfAkFCYtukO7tQUJkC5jUeLOAbJ4lafmQIbl3SEUeZ8E7+nnmaSHg+QDbkpBLeBazaOi/+2
	LrMozkfjLf5itWHyGHpyGbSe7wr5nfCmSS9oC0eCwd7omcD5kqklaFdge4NJC4JZoJsW6wT2hAG
	ZKryHAX5QPzs2HNnBSyEpmSwiT9OkLxaNUekL3rHcb2XU81aJPFoGN1Ei4UqflZtdM0Wlg0vIG+
	KmuXDcMtvHJ89mldYClnK8KxE=
X-Received: by 2002:a05:620a:1929:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c6f96639a6mr161298785a.63.1769347225047;
        Sun, 25 Jan 2026 05:20:25 -0800 (PST)
X-Received: by 2002:a05:620a:1929:b0:8b2:dada:29b4 with SMTP id af79cd13be357-8c6f96639a6mr161295885a.63.1769347224509;
        Sun, 25 Jan 2026 05:20:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1706b5sm18901821fa.24.2026.01.25.05.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:20:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:20:18 +0200
Subject: [PATCH 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v1-1-2c5e69fae76b@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3992;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=EyYfaE2Cufcr0C/0jDHR82fWre92I+G4XxMx5Yzq/OM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdhiTDbVeALeWN1YKD1oR1muEfgt3Nxo52xbi9
 tMw3qgFGgGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYYkwAKCRCLPIo+Aiko
 1ZUVB/9fga1FbcrjGDtqACvtdvLTggEHjUkBwMjlV8F52M2tcinUrLSDjSBfrqsbWNKwJ9bR3Gk
 fgCHAoWuDXvb+qQQ0T2gdTpCc3irfVP2KeYuPAu8CwM2/9uDtMA0pxuxaRx4nysaKVW5QZcKKkx
 pWuQnKWATv4zrE+XDjQn6q/UIX6bvUz4g1HZd2TtsZC8nsNl93HVJWQ1ELUe8hU1LhXFZMtHiks
 s9xhi8wc+xvZ5R7REwnyYNUugKTHnWuzR+avO7boSbPIsEAiFT4JHKgg5GphSy6cX20At7M31oA
 avpaGcdZnXeKemKlU7o+mfgLBBb84aMpR6ziTPxE9tsHbA2R
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=YLGSCBGx c=1 sm=1 tr=0 ts=6976189a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gdo2EkX-Jlq9hQkSyREA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: THvtLduGuAXPGg-BZw9WGb1IyHsIFlDe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExMSBTYWx0ZWRfX4nUj0IrdB2XF
 YJU6ssZH87N14CMmosRi10xIqe47jKVvSUaTcywdI2o1CAtTF3//r8yKTI+2E04Y6rXa+jN/ZGL
 ImZykUMw6JTlDBqXQ3VqBQivoUhfHc9tfNWyn8PqKEgn96gPdVT9Plp1dwxtaUVDRlVP2nzjNEP
 uuVWUa2iQJfSV28s7cAYYXhnNbnYgb5EVJY2Lv2JZll/qlQxKtEF8u9JGKcNfpyFL0ymoeD3jsR
 jMIJxYkJ8xR41KvY6x1eHUVRy0DLqYyoGd4PwS8eYoswghkqGcmCzQI4Q/eyL/eg0zF+/U/tdiS
 Bl2T3I0fLAspUhEVHPzmAYwU9VP57EvRAgcR0eCqxiIVdZ5kBuCwyXcY8227iUF49ynUiFwTWB7
 UncRDfl8d/u3zZnQStoxuUJLzxEEyehJNMHDxX7d2PTLppblciDTqGfrKGWJ5e0c/Di1WSM/3HP
 c1LxUvXxd6Ina84rWqg==
X-Proofpoint-ORIG-GUID: THvtLduGuAXPGg-BZw9WGb1IyHsIFlDe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-259237-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aa00000:email,qualcomm.com:email,qualcomm.com:dkim,devicetree.org:url,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8059A80AC7
X-Rspamd-Action: no action

From: Konrad Dybcio <konradybcio@kernel.org>

Both of these SoCs implement an IRIS2 block, with SC8280XP being able
to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
SC8280XP having just 2.

Document Iris2 cores found on these SoCs.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped dts video-encoder/video-decoder ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
[db: dropped status, dropped extra LLCC interconnect]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm8350-venus.yaml          | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
new file mode 100644
index 000000000000..d78bdc08d830
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8350-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8350 Venus video encode and decode accelerators
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description: |
+  The Venus Iris2 IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8280xp-venus
+      - qcom,sm8350-venus
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+      - const: vcodec0_core
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: mx
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: cpu-cfg
+      - const: video-mem
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-sm8350.h>
+    #include <dt-bindings/clock/qcom,sm8350-videocc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,sm8350.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@aa00000 {
+        compatible = "qcom,sm8350-venus";
+        reg = <0x0aa00000 0x100000>;
+        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+                 <&videocc VIDEO_CC_MVS0C_CLK>,
+                 <&videocc VIDEO_CC_MVS0_CLK>;
+        clock-names = "iface",
+                      "core",
+                      "vcodec0_core";
+
+        resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+        reset-names = "core";
+
+        power-domains = <&videocc MVS0C_GDSC>,
+                        <&videocc MVS0_GDSC>,
+                        <&rpmhpd SM8350_MX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "mx";
+
+        interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                        <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+        interconnect-names = "cpu-cfg",
+                             "video-mem";
+
+        operating-points-v2 = <&venus_opp_table>;
+        iommus = <&apps_smmu 0x2100 0x400>;
+        memory-region = <&pil_video_mem>;
+    };

-- 
2.47.3


