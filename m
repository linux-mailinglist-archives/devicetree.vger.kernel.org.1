Return-Path: <devicetree+bounces-241310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D52C9C7C774
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 06:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 02D724E3312
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 05:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A79962BEFE0;
	Sat, 22 Nov 2025 05:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hSFP6htu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fy0jiIuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834F02C21FB
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763787683; cv=none; b=Yryoc8jj9+iILzsd/4pCl16fNRpLAXV4TSuyJDma1KF2EWbT2gvpancTSXJI1xZeMm7GT5YolENAq7QG1sAXpItL8NnmZ3PuF9Ghpry1/HYHVeK+U1+vMKp/kDcNBJUktxZSQEZo2XR9ut9wfCDMg3gOwb14Yy/EhWYI1lHKqF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763787683; c=relaxed/simple;
	bh=n3yNp9/TN5k/lBCC2x1FX0c9/nmTEST39ivPJlqcyk0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tVbmyMkXStJwDUMFrQzbfycGrJQSodwN+u19ppUgZ+GK4DgiUcDvoTDOA37F3eeVAWQojhl6ab5w/6QkWzfeAYGrKnoLZfLMezUe9uqpL0Ww3e+BcwrR04iJMgQEZ9L+O4gDjGTatvitVDVHuuz6aFzd+gypTWg/eQzL8dLdPio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hSFP6htu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fy0jiIuD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AM4ZxZW1479629
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sj9WA/iimEV
	DxbLoIO2V4NajunxNmR/ylXA4Htn7lIY=; b=hSFP6htugt3wod5tprWO/AqF7OH
	XWDEZcZJrAV3VLqjL5j1H6zdhygBmiP1reTAFRQLBVsl0SQp7cKNPkrOvNVKbqeW
	YCuZXx9XdC6xMjelf+yyUaiY7J8bfz4PvvI/MlVruzs3wqF50et2qIHizf1Z94Yq
	vchaJWaD6YhEaJ9FI7V6nDCgFqpI/MArF/1dRTbywEu7cU2IPTXKGuFBnQEVS+nE
	dsCzFDEEDZ6vhg8uvOEBxpHiE0coDHurqjjkCCdb95M4cODuXf182Wje7/aZmBfg
	fEuCiLVE1+DCy2P+VAGcmsyjApHYxoTfhGaQ3yoPQ/d7Inb9613DGZ/6F9g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak694r19p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:01:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297d50cd8c4so89031165ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763787680; x=1764392480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sj9WA/iimEVDxbLoIO2V4NajunxNmR/ylXA4Htn7lIY=;
        b=Fy0jiIuDW0Ug+C5pllI8yCnsknXPi7ytS1glvP+AgGANwsyuB/clerWSYzPwVybkOl
         OFP6p+d2TZzfAmtDIqHEcPaoPtC8Yf8LGNkCR6060X9BBtFUwz/mWY1OFzPA/sLBnete
         1UhOmf0bp/SqhRORmuU5RKn6sW9dGGqbca6OhRGrT6T4pr6+W+8/OHFML0zt9s7iWhxW
         G0/rljX1fe8ysSq/yWp5jpJ34ScAQhfn0uQmRrGNOK/rJugUzWPR2tmj2UNbhjFl8T+F
         1jyF7ME76GXo01DDaMsjwFzgT20VtpWmVOD2Bpws16WVZKWiabQuZr6DfnErsBARf9K8
         72Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763787680; x=1764392480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sj9WA/iimEVDxbLoIO2V4NajunxNmR/ylXA4Htn7lIY=;
        b=SbvT8HpuHyGIIqFwjwQ3S27+/FUb//F5fYz/V3OR9SaMJj0RTDL8vZRmgYGOWfoIUR
         rmex5XYKHjoPkpm5m1LqnHrM0PdZyfQdjUFaEfArbebQXiq792ETottjsdjQ60y8s8vp
         VwQhBfD/50Lz7FSgCTf28omyerMAHu0fE+zg6Q92CKrgcVB1rrDZh1OFp0lUeYbDT9Ox
         2vkuKqIeZpCfhNaWdH86JyKa7SD6H2wP9vVhqn8oEhbcXORUQ9p0Xtlskj01ucQJlB4R
         opUbLYqV9Kcmlph1Br/9SCOoEjg7Wgv2WCdlEIgYxXwM62CgsEWLmeW68SEnhcaJTGu5
         VvAw==
X-Forwarded-Encrypted: i=1; AJvYcCUuU2pdeR8QPfHpoWcQOOFPShb7pHl0GqD/dS+U2Y6AveQuVLEBAQbSElL/9EChMazWPM99SeXVBZMK@vger.kernel.org
X-Gm-Message-State: AOJu0YxZsnsu/cQxMVXqXhyk/ESa4kl04RS70fxEV8dPOKTU4K/5Ughi
	fW82IYkLBG6c/9QBahtP/bdmZ1MYdphsbgId2wLtas/wwqNGwF5RrAYw6AM+A88LYLbC3q+q/CZ
	1BH8QYWuDr3kNKhYDO+mARhk52KcJ+zXqvWsgTqgg4twJnjObje1Z6JzjQ8et48Vq
X-Gm-Gg: ASbGncvFin2TpmlaabkMiMbhrGoqNy5KQzmIigjsdqbWzo2ezxLyFcuxdV8sdseHmMR
	NdnddzdRGstPEFYiOZdFFAITZ+qOk8lJq9n2be4MOfzIjAKiSQRjWHDhUyIWLZmjDhAl4N6cJFk
	5wTnxLDtxENWGUe3HaDOTdjNIghnkJbM6e0oeoo0CWLDXaXQmp0XBV2TlHYRtfNl7cweOU9RlT2
	j+Ud14zODiK/fmaXzNaYRzVHwKeaNvzJkqeREa1ic91XCXYOsf6PsujzRbVoH/FmN9XZLKZrBVh
	FIL786PeboFTSE7gJ65Iu523Rk1wVAcQyJ12k7brSbBmh2wP4WoBa32n9eBakqXmdq4PZjb9LEx
	MqdrZU/lwFILWS7GoecoqiW/DGPk6WZCbbQD7YwirMkU=
X-Received: by 2002:a17:903:1a08:b0:299:bda7:ae3c with SMTP id d9443c01a7336-29b6be9a6e1mr65810295ad.14.1763787679774;
        Fri, 21 Nov 2025 21:01:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKdFyJavBDZAv3fh5sXONsSBFogNHJxKYQjCuYxvNv/dMJB4Q2p24Pq5feZ14FV/VaFkF/GQ==
X-Received: by 2002:a17:903:1a08:b0:299:bda7:ae3c with SMTP id d9443c01a7336-29b6be9a6e1mr65809585ad.14.1763787679224;
        Fri, 21 Nov 2025 21:01:19 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b138c08sm70688725ad.25.2025.11.21.21.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 21:01:18 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, Nikunj Kela <quic_nkela@quicinc.com>
Subject: [PATCH v1 07/12] dt-bindings: i2c: Describe SA8255p
Date: Sat, 22 Nov 2025 10:30:13 +0530
Message-Id: <20251122050018.283669-8-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDAzNyBTYWx0ZWRfX5qkt+yXCFLfd
 /j+oouCpD56OItUITYiBritaN1WP2Oou3VTiTYLH9i0SGCOY/Q7pZSsc2WI/Nf3wgCEx2UVTf8v
 RaZq4henabN2cxYYyjeLppoPuQ5cTzdWxJO7d4bXOLaSgERS0HoT8BkvMuwtWj94t6nAoecOKJZ
 tXKgsostwuTbvGCZTWV1rn3wBLpqK6HAccXttPBEAmH4FVODW1/5FsmJDqBoxhnhYDb4bsfu8hf
 k3H17gBpXyVBS3OLetkm9fQsQQG3jD9EB3ShZO5czuc6YaeImT1yWTwSMRAoTuvwSQvI6MRgwLc
 rrpRg1DjWjKIJNOnsd36vn38AXXZy/aIlScEaMRSY3rSUSmV2EH1wML5h7cy6ir+xGdH2VQsIKP
 pGQ7B+bKerkDFJ84o2oY0v6KoCf1+g==
X-Authority-Analysis: v=2.4 cv=YJqSCBGx c=1 sm=1 tr=0 ts=692143a0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=apMzWF-kzHp83YoYYzAA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: EQZ8Ot9XluO2UM1grCWNfdkQSHbfBnot
X-Proofpoint-ORIG-GUID: EQZ8Ot9XluO2UM1grCWNfdkQSHbfBnot
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_01,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220037

Add DT bindings for the QUP GENI I2C controller on sa8255p platforms.

SA8255p platform abstracts resources such as clocks, interconnect and
GPIO pins configuration in Firmware. SCMI power and perf protocol
are utilized to request resource configurations.

Co-developed-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
new file mode 100644
index 000000000000..3ce0e0ba365b
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/qcom,sa8255p-geni-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255p QUP GENI I2C Controller
+
+maintainers:
+  - Praveen Talari <praveen.talari@oss.qualcomm.com>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-geni-i2c
+
+  reg:
+    maxItems: 1
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    minItems: 2
+    maxItems: 2
+
+  power-domain-names:
+    items:
+      - const: power
+      - const: perf
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    i2c@a90000 {
+        compatible = "qcom,sa8255p-geni-i2c";
+        reg = <0xa90000 0x4000>;
+        interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+        power-domains = <&scmi0_pd 0>, <&scmi0_dvfs 0>;
+        power-domain-names = "power", "perf";
+    };
+...
-- 
2.34.1


