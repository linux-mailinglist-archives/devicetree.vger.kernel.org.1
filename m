Return-Path: <devicetree+bounces-275111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OEuOjHos2nZcwAAu9opvQ
	(envelope-from <devicetree+bounces-275111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:34:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC932817FE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1029D3223692
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C530A31F9A7;
	Fri, 13 Mar 2026 10:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wfa/GqUE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="juTvdS38"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5AB33F385
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773397898; cv=none; b=VHhSkP0zBVLmvfpySsZlN4MqFAByDXx6+Q0A5yAN2UQEiMZbp5ArvQX/PtKea74k7BPnW75SENV8JldHlOR6UtjECfmEqnP2BlwZ7F1Vrhvf9yC2qed2nGDvkvjVH8pcur+z1hjyw3z2t8/SRsWU5kNAZc/fX7LKm2K20xZOZ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773397898; c=relaxed/simple;
	bh=IWdLMZCoeT7sLlZFMTceFcULNxOWcybT5jnFhi56l0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K9XAd+UhwU/51NsQNDcf7YQ2gm8etawOqsBcuOatwWMzI62QZ2reFkxJw77rUN2mBTl9P+mAQo6wfvsafkbK3jCe5ir4fVdMlhn0He7OTQ22zz5U4nxMyUbXLxjMMAViVmA/bfoOaXXEktuiXB64lxhNIfxVHO4t86yl2ojZeiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wfa/GqUE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=juTvdS38; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tdJF1574564
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PuZSbOJsGs/9ICK7khlpc4C8PH85TPIcJBVd/47S+1g=; b=Wfa/GqUE4yfOje20
	lfBRivyWkrPN/r6KPmPTNY41r9BvvWu2CuSuVGVsawI3q8axU2jbm7UmXNp5fyau
	D25eeLO4mtvK/ROVMoEP/0Y0KdjxAQdJ2+aLCcW2NyhAa2nC2V4XKPKct7Yba/4L
	hMJp3I+5WgJlwiSXI4tLL1n+SPrqGT/tZJGWMTqKyVqdVACQXNmiMlm+uQwqp0Eq
	FmvtN4c7DcAdGDvrZkl+r5PFtyX8v6oP7St95UcFmYvQfjl7wrGbg20+em8LarwT
	/ZmdC7D6SpJxqPpTr2mKdNlvnT+EOQC2KyjW36ZEsCia7VKYR5eXczF1PqbV5Pgi
	rAhFIw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh53nnph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:31:36 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354bc535546so1938562a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773397895; x=1774002695; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PuZSbOJsGs/9ICK7khlpc4C8PH85TPIcJBVd/47S+1g=;
        b=juTvdS38acnJafigojYN6bH8RGbLOFghZt25jUjxDxLeOOR3IHxnoHU/3Mv+48FDbD
         DKoYxQ+ZJT412JOCo950AW19eQp8EZD6+1NixGeSuHa7aw7J2wDsjcUJ8j7Ixy+IBgu8
         eZiZ8sEOcWpZiH1XQ58hBFU42qt/1JFyiDygdzeuGV8uA2Zv3WIduLYoj04IUcmjJeY+
         eV3F5IZSOZnJlFdGEo4Q4Iyi/h1lj7MwJ4kflPzOlTgJCaZCgZKwRXM8Zv5MaBdoDghc
         JAEK8NLBWdl+CF1HE84WDCjNrJGBMCXuQLpeX9CeYSdPisafUFKrs6mQSqybg6P8Fy1u
         fBaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773397895; x=1774002695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PuZSbOJsGs/9ICK7khlpc4C8PH85TPIcJBVd/47S+1g=;
        b=OMop5TKmWMA1tOZVQQBHgao6006FEDu3KazqjZwbMGDln+oYMSMwWmiEtPb3g4ZnCx
         O3lJskI/v0oqbEk3/MRqhQ2lLz2+JyHBzm7LimmJmcduMsxQb3pgPCqlHuWOxLtdZGfb
         junF0zCaSQ3xLa5C/yHDVqzD7YCwTBKQRykdPcANEpv3mKARz31vaW5jnR8V4sues6+w
         pK1+dbGoobnT0dq4L5YsEjme9BTihLKlch0jtEGQEUCvzZ4V0VKJ4+JlAI/Q9IWkzpV/
         9X6NPunmewosL1vZx3yigfd50Ai8c8xt3EaKdVXaPkIxG9uJll0XV87wtx7r1dUrXA0c
         ANpw==
X-Forwarded-Encrypted: i=1; AJvYcCUPa7qsHbA6pMSaaZ0F8nRqvdys8jGrwXPwdeOwdezkeoH0CCqC9BNQPQq/5+i69Phpc8iLw4o1ag+x@vger.kernel.org
X-Gm-Message-State: AOJu0YxCJyERzrdkHyf35kvFmBXIIOhoaQ7gurqSvsvH6OA4MXPhYNEx
	E+KBwoBd2sdqKeSWbXSx8yyVVuta146Fs3Zc4yHVcneS1Kq6pCo8ZBP0hYbU0b/aokQkWRVDd9Z
	M8pkeHx1w3SVbsYn4vQS+Fy5cooq92wXlTHB16A0q6RH5NEVEYu3uPOVl7Fxdekee
X-Gm-Gg: ATEYQzx4E7s076dIETZNe6q+JW3ntKo0AoYOwxdiivlhnDQPZey4el32EK8s71MI/cz
	CEZ5hknANMHsYtiX+TH9+ypEjoRLbFVZ1sX70G+TutjSv5YelpUKR+RWFj1PMxA5oL64ce9YfAa
	OZifyyK2ha1s2qoTfESaXvZLFao99xDxchr59gdTbhoxVXOQMQky03X5NAa+b3EIUpw1GHpMRHZ
	cP+A3/GB5S/yq20Dm5ShNiJ0un0mgws55j5utHFiJxVnRsAEqSanpW9I6PYMPUH2LmGteOw4x7y
	Q7Zho/OEc/A2MlRii5ntHx3B5o0T8iC32spLCR32CabLkqxo94Kluhy1CfscxJEpNF4UBESSTsi
	oOMzy9YAv6zlmyaAbiFw2MSrEJZSOCcQRqcyImcqllam8QqeBcVI5RDELxWpMvPuB9ShAwuC2rE
	M00Feq/TMpFdufxsf38aeuRJOXWXDSCeM02A==
X-Received: by 2002:a17:90b:1e45:b0:359:f2e1:5906 with SMTP id 98e67ed59e1d1-35a21e3958emr2423117a91.4.1773397895324;
        Fri, 13 Mar 2026 03:31:35 -0700 (PDT)
X-Received: by 2002:a17:90b:1e45:b0:359:f2e1:5906 with SMTP id 98e67ed59e1d1-35a21e3958emr2423085a91.4.1773397894859;
        Fri, 13 Mar 2026 03:31:34 -0700 (PDT)
Received: from hu-ajainp-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fc9454sm8604577a91.12.2026.03.13.03.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:31:34 -0700 (PDT)
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 15:59:51 +0530
Subject: [PATCH v4 1/5] dt-bindings: embedded-controller: Add EC bindings
 for Qualcomm reference devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-v04-add-driver-for-ec-v4-1-ca9d0efd62aa@oss.qualcomm.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773397885; l=2238;
 i=anvesh.p@oss.qualcomm.com; s=20260313; h=from:subject:message-id;
 bh=UTz9Z1xOCUg69vDgInVuKa/ozDgodVccbshMqN1RjNM=;
 b=DqH6TX4TZB/5jaGrLIyjO5ApcznbF35JeuPxrx6JArsKWKWk6eGSJKs7DxhDwmGLH1phABS8I
 7tMXYW+tTg9AJaVJwUuQHv61kLQHPc/EiyTZJY62hTLNBNbYsLJ2XFf
X-Developer-Key: i=anvesh.p@oss.qualcomm.com; a=ed25519;
 pk=8o9EG7gkPe2Er9y9UVCx8MTdcFCwU8Pa54hBZPuduXE=
X-Authority-Analysis: v=2.4 cv=ZN/aWH7b c=1 sm=1 tr=0 ts=69b3e788 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=gEfo2CItAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=6bqoFnLgofmmdwMbvCAA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX+NHG2Rpw9f39
 ShfjRHOnHGxPoL9Z4vQTU6oWyMnPkw7AMcj18hE0O7dyX4YOVio2FYghz3RF/HwUFplD5Q+36Wg
 4tJXd8EW1MtogCDNKEDGn1a01SkC3Ton1WmlYMRvDMgwIl6CU5dDKIdkSrf2OUk6UNgiP9tRG8q
 3a8KhXkB7UJBvo2wupcrUx5Ua/es40znvDD9xNOQDnFGIeRJobe10AWlF5BxmQl83otaW+vVNad
 ss2rcxerlJwzgH2kxsuQklrSeOnQHFOTQaHGMOuMwNHPNg0/A1J5JYsqDA+TKqZNKFmySQDCK1d
 jGMrjbSrZfRPdycNHY16hWKrqKO7mlFmDpnOiLEKfAEQTAzVGwUBP9/FRpFanmdnDd9kJXjg4Cj
 90evu3X0RtQDYeHaEEVjOgRzWaVEyc70S1FoxXR+GL7BQDunsKqdzXC7kDusCFxBKJ4MmmbqYzH
 wVDIiePI18PCApPT7pg==
X-Proofpoint-GUID: 7Whl_33X56gQoyCKvAoNwV_xdyoX08Ne
X-Proofpoint-ORIG-GUID: 7Whl_33X56gQoyCKvAoNwV_xdyoX08Ne
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1011 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,oss.qualcomm.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-275111-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.76:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,devicetree.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4CC932817FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Maya Matuszczyk <maccraft123mc@gmail.com>

Add bindings for the EC firmware running on Hamoa/Purwa and Glymur
reference devices.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
---
 .../embedded-controller/qcom,hamoa-ec.yaml         | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
new file mode 100644
index 000000000000..baa95f06644a
--- /dev/null
+++ b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/embedded-controller/qcom,hamoa-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Hamoa Embedded Controller
+
+maintainers:
+  - Sibi Sankar <sibi.sankar@oss.qualcomm.com>
+  - Anvesh Jain P <anvesh.p@oss.qualcomm.com>
+
+description:
+  Qualcomm Snapdragon based Hamoa/Purwa and Glymur reference devices have an
+  EC running on different MCU chips. The EC handles things like fan control,
+  temperature sensors, access to EC internal state changes.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-crd-ec
+              - qcom,hamoa-iot-evk-ec
+          - const: qcom,hamoa-crd-ec
+      - enum:
+          - qcom,hamoa-crd-ec
+
+  reg:
+    const: 0x76
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        embedded-controller@76 {
+            compatible = "qcom,hamoa-crd-ec";
+            reg = <0x76>;
+
+            interrupts-extended = <&tlmm 66 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
+...

-- 
2.34.1


