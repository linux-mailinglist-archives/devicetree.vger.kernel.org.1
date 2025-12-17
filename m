Return-Path: <devicetree+bounces-247544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A815ACC89DA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABA7E302DB18
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7B934251E;
	Wed, 17 Dec 2025 15:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UyRM4917";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="giHLQiwR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5BA3376AA
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987010; cv=none; b=dk/iwmoG2jHLqlwXusgaYnEQFP+AbrbOF/egrvZ6yo91h9VsoQorftel1KPzstpbqxi4XxC7K2hukO0T2XXOSpkpspmkSjHbp8CAEeFJXwJFYMrRP42uybjVId8rCZLzAU0Hc7Lp1jXBlT6alccheBzG+frMdUfmzEVhamJvx64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987010; c=relaxed/simple;
	bh=mHst1xBgwj9bMH/OqbKZWAP/xstAnsimC+MNikWEiXw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GGHEm22RZqid7lMV9lfOgaAH7fFp6dfcThIHFhUOpY0xMsnZxcN0ZoFlos4jkAaL2cAFpXEuXbOF+uBFY9oFDO6HO/kNB3+KYh0Zl3GbXDtvcdyHQxq0rcNrsp2O04tYvQik1auJxFeQgMu17Uy/apTjhMoTlpZQt8p/QAqhHSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UyRM4917; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=giHLQiwR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKowr2683497
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zMBABCfjZZdy8kTHYUiqUA1B/gN5Te+ej1QV+yVBeC0=; b=UyRM4917Jbtsxh6x
	4VJ/f1fEo5imIOhhwlYGkgGUKTIf1EJXZbWyppnkFAwdUF7Vj4rC4Q5HvvWAToU5
	th8vNGw1TMCnSZ9uDTMWtiwzb8hiAGacqnOkLzn49RpyewlzfcpRu3A5jpWQGozj
	O0Rt8BPSJjtNRUj+po6D6yOSyjQHmXgW4xPWslzGJ0C0SRBHzGgcvPsceYr4c2PG
	RZ79ZkAlPfh9sY1t7uuLN6UBhz10P1GkH36AINWSnre4+5qu0T2Bb8GP8GuVnHFj
	P//Da9RglbOnSZZbsWmPMS6gL5zCpmiC9WQ196xe0CsSkHS+2EzaxZ9B0wm8qorf
	K/8xpQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3kketfhc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee27e24711so105207931cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987005; x=1766591805; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zMBABCfjZZdy8kTHYUiqUA1B/gN5Te+ej1QV+yVBeC0=;
        b=giHLQiwRjXYdY25zdjCdhST2W5I4LYAbER67AfhFrHKNXma6IhRnnEAwey65CFZmTm
         7nfuNV5FeXhaVyUTrz255whzhmnc4IyZ0U16/8RLNjeBw1omNTczYaxyv4SdMzLP0U85
         vkdbiejvYRhmobxlf+6yin4zXZq7s5tDBv/+QLVkhjb/+A+CwAya2rkrqsrli6r9rC+B
         kQjIxYVBBlqHAT0DNnv7jlR7u+an/vkKqJU+EmAlXygOHuN7BIpuH3X3TF6L1dEsxtte
         O4MeWavcKck3knUYzrWgiCu1SjVquaa2JtixfwaYb9VNcpP/qBGDGL9nkaYreG49qvqV
         9gSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987005; x=1766591805;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zMBABCfjZZdy8kTHYUiqUA1B/gN5Te+ej1QV+yVBeC0=;
        b=ucURV5p7CfiAEeryHOPTw5zVHN4Vu3KiEKdfo8zCo79EjgShiGmYy6337VhJRb3J11
         MTFncBd6YrJwCxFyMz5+KUFPfYAIpjk5EuXFsLvtleYfT+rLWLpYbgX/VkYir6ilhIOg
         ycSvFar3t73ET0MONnCoJgm6bViyhHKY2gRqForNQ96aN3TvqQcrQ1WGl45P7/wQCv6A
         2SB83YBO/Bg9disHksSfnFBPI4H/xtDOh7c+s1O+2V9xoDhCoXbW9CTLZb+wt394/joY
         5nzi7jSpg99h2rdqzFr7U74MxLdCvhEJeNXlM2n5CPm0ADZtktSap7HnIaeKabUTicC8
         WnNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3S/Daxr4P213h6ENnPsml3G5HEt9jSGEKlCFTceXziT553wvh/DOU2Ay3DcqqrtBpoNhapVcX03jR@vger.kernel.org
X-Gm-Message-State: AOJu0YzBFxZKLq08HqsgqQDpuhMjk5t9cNJJAZlSCYydMh0iXS6VtCx4
	WMe6zKeBB0CSnkbyzxYYf7MnfJXghYACDA7oh9tshb5EzbiaJ72Hmfyf0R7QpCEO1qYZY0cF8MY
	cuJXhy7FEbngvlFKsNEqSBIVLTkffEqAGdONiWeu9Xe30dC7DgStirLkvs0Cw3C3s
X-Gm-Gg: AY/fxX5QffoKmWXnoObfnP2XeeIBPQ5HYLzs7zMceO2IjTu5dLPtjhbgdsicV34mcqp
	IpU5GgEJOnL2H+czB2E8t5BrRmER+SQ02uIBRzFymnSK+piLm7ig0JAITCg+bk/whA8IWv8RxVs
	gTqjAYPQD+HtXyXlC4g1Bdem1fbYpzsxVlUe7QjaR4W5sV3/awhWBvwn4VohPqu9XBq9qurZjU5
	KimK1tcj1qqGvfr3T2EFsFmN3UxVUsjpJ7zN/cN/mz6B8qU94GutrZOCFbHOFz9FP4Cern0OXL1
	8CM8btVyrinau0Dx52cjKn6fo5u8as9Nka0BjDVbEn6PP1HK2H1S+OPzD3ZVyWdwTg0snLlXYsp
	NLOp+L7jX71jAcMupMFMYAOuHsRTs3f1V
X-Received: by 2002:ac8:5705:0:b0:4f1:b9e8:1d34 with SMTP id d75a77b69052e-4f1d0622c8dmr240083431cf.61.1765987004586;
        Wed, 17 Dec 2025 07:56:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAOFg5xuo2wEMlgjaSsVubevoYVRp5fu+jg4tbrEK3WP1LCRuuBTvFH3/Jd0CteSRDAij1lA==
X-Received: by 2002:ac8:5705:0:b0:4f1:b9e8:1d34 with SMTP id d75a77b69052e-4f1d0622c8dmr240083151cf.61.1765987004123;
        Wed, 17 Dec 2025 07:56:44 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:20 +0100
Subject: [PATCH v3 02/11] dt-bindings: bluetooth: qcom,qca9377-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-2-ced8c85f5e21@oss.qualcomm.com>
References: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
In-Reply-To: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3138;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=mHst1xBgwj9bMH/OqbKZWAP/xstAnsimC+MNikWEiXw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKu9RD/1kcN5cK2ECWzWj5NtqLsO9fteg5bv
 hqJXFTLsnKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSrgAKCRDBN2bmhouD
 10pzD/0QzlVMW6pndzQd8lUzum4m6AsIA+Fj/yuq8KDFKGIYaAFll6DLryzmUrIwupYoK5bcci4
 0kKaGm9SIXKFwaM7JZKz3n1zUOSrVLIqq1YtfTTqmQJoflnHo9jJersUslG+F6dNoWqWiMlzi2q
 uiUcuges1q3gyaYwdLwL4L15dI+DMqC4uhXksTE4NVQY/tnc0b7s4pMaUtfVyIKpNymT7tvz3lC
 U4Wq2k1X2iXsJ8Mr9So3PQ/49dEyDloGkrEA/urEZtzgas/J2PmzF+EnXc3QrxZTuaJHNMkShfz
 JNSYG6E5QO5hAUGa7WYbmZyJEWx/SpEFfa0SnIbvEshFbL4eqQjW8m/j4lMn9Ch4+sMcn5asQ+4
 dFnfzhy/g7IY79cig/qxx+cDeYwdVjZp+coiaOxddecdW6wRNLrE68KSQrPz5sg3tocunq0vsCx
 RT4HJ9O+KfX/jYhIPOdN4MnC4onyJ4wQbvHtgMp/w7GDy0HCQ71/LTgdjmkTk4pwxdeqcyxbECB
 hB85Xgy7ERSP9TtokjdwCMkv3RIokSp3b0yTDWv4M+dqRPF2OetJCfph+9i4tDrDuIkQGXeegcq
 GWM5D7yQCKCE6fo9zHT2yQVlxMKEc0HMy+fudBYvQdwn+ZLDKA3dsxjVoAK+GfSTwwWQddJE09z
 fXB0SEA6zcWRn7g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX81O1Y1HyhJqw
 EeRHtfZ0M4PG7xlzcrKTKcXx1FJkU5Umf/9DxcgsP/Fq2930mX+Q1Hi71sm22yh5jJlVmyiM+U0
 ESp/mb5oTBpNlTkahdQia2KNLkR3l3Zwb5YEHwfOFUy8jZS1wXYHYDBvFeYtuSEe6IhByPdWsz8
 T7adrFW78i7yVKbmRXIxY3TeYqwSxj4ODYKYmTt4jLqF2XZTvdXUPhJdDu9trFbErQOje7k3Co/
 xd7FVkVlAsIEJtGaFVfxk/Tqu3onkRodp2xefMMB3dPqDAKZ52cBsBe8h4ZHUsWkOE038HjwX+p
 PeZaS6tlIxFkAkyzXv/znJByN/p2XMu+8F2EJ1Tf4xYmMJAN/yRfWJ3jmRAGSZEsE1A8Qm77KDV
 zm2x81JWRymqo0Wgh+1Bq9bPYXm6sw==
X-Proofpoint-GUID: 04EMYO7lgygsZHN6bwmgMs2BDv6p3CoU
X-Authority-Analysis: v=2.4 cv=Fcw6BZ+6 c=1 sm=1 tr=0 ts=6942d2bd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=NmeI-4ZN_4R3alAclVcA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 04EMYO7lgygsZHN6bwmgMs2BDv6p3CoU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qca9377-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Existing binding has incomplete and incorrect list of supplies (e.g.
there is no VDD_XO) and Linux driver does not ask for any, thus keep
this state unchanged.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/net/bluetooth/qcom,qca9377-bt.yaml    | 58 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  1 -
 2 files changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
new file mode 100644
index 000000000000..3fe9476c1d74
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca9377-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA9377 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca9377-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  enable-gpios:
+    maxItems: 1
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - clocks
+  - enable-gpios
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    serial {
+        bluetooth {
+            compatible = "qcom,qca9377-bt";
+            clocks = <&rk809 1>;
+            enable-gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+            max-speed = <2000000>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&bt_enable>;
+            vddio-supply = <&vcc_1v8>;
+            vddxo-supply = <&vcc3v3_sys>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 85d10d94700f..dba867ef3d06 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,7 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,qca9377-bt
       - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt

-- 
2.51.0


