Return-Path: <devicetree+bounces-247545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B2CCC89E3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CC2FE301A9E8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2CB3451AE;
	Wed, 17 Dec 2025 15:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WYhHfWrw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DDwGf7ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835ED33F8BF
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987012; cv=none; b=H1xphFwtqiq63NJh2IsISgt0Q7DhN+CWmoaxhdrMHCbkmAj95uYXElp9a+V65J4XK3P8mYkbiC2NNukAM2G5QGU1fuYK41mdv+8Y5Ek6PnJ9H890nm+85WnHfk/9BcACaPPM6RGy2iEtau7Kw81SjSR3MGesx6cDtSV7jVoIfRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987012; c=relaxed/simple;
	bh=zuRPk2/Afzgk7PvKtFu8N+ICcQbTqBU2rCeXot3Hjuk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u+O8cPsHm2+v+bM4dA4UcBnl63tvOfG9UzG2gBonm7LldZsBrFJJJo381modB8qPyNl7jsg8b6zL+Ch5N5VnyG973WkxVwz42jM+nRWp6EhWJK2T0T3YyWBUk9/niFNk6jILklW8nL4iMMRcgvJQw8j+i7lOLL83kWtP7zCqmmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WYhHfWrw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DDwGf7ln; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKxNX2042763
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Gv1+vPEhCcBI9MayNNvbV28CW8IEjt8w3tTHVfkNkM=; b=WYhHfWrw6Gdq+JRM
	irZXCoKVwrYI8ML9sImEnhN4SZHQ7vpK3tX3utMkNPBUqiLq2qFZIitaxj/dnbR4
	3VKtFKPXkDJTI2YNDRnLZZ5qAEd0RY5w9YvlsoaqqWVDUbgU1X0KN+izSjeSrerM
	QRB58B0CtkfM/idB3naS9jZLsFL7kgJXvyk/eGa9vPrnwkvRhlvxUAHnIYotBIcm
	XcOXdcixeHxSAyI46q7uiJVrebBnn7XK2S4FsuZbbVc4cxIuXu3dxTWKuMNUcy/n
	LLyMm4lAdRXCtkAdY10SI2meUCZorKPQPZ5GpNVbnLi3HB+/tNwYw5vs6oPKgbAV
	iZHYWA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1u32w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:44 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee09211413so152322041cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987003; x=1766591803; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Gv1+vPEhCcBI9MayNNvbV28CW8IEjt8w3tTHVfkNkM=;
        b=DDwGf7lnNB9zU2lzRaQk338uCimjlqsl214E+abUy6Q9AwXWYzXwnHTFJgzMoVkzVy
         ujF/pJWpM0oZnyZiGnD6YX2q3NZ3xZs56fTmPTNAyaicSJwzFQmAoyDmsnxFr4BwoTpt
         SmDeD1ay9AdSw19iET6st0AbVViHIfxHsH7KwzNuJhuhfx9ZyyxTng99o5Sc/zpd43Ee
         tEzbU48hTfFtpwHGxdolfjffTSYaZBs3nNGNzxyPZQ0ZHh/moPfkX/v46TA+N+SDfUX9
         /1VeXKZCT8BRFzBQo49hD/VoMIevxS5NdhJ+g4KNnb+5nYSWJgdIslSYB5gP8icJiil+
         8peQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987003; x=1766591803;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Gv1+vPEhCcBI9MayNNvbV28CW8IEjt8w3tTHVfkNkM=;
        b=LucSynWBbJGFLB2236tQdcvD1ZyU2pj/1wnEDupzhzv+m0L1r4aCx3va9BOyE5eebO
         66usCDUotQyNfPoeXWZ2C45Qv7nk8ncnnCZ9Amah80bsl72JPfaWBJCxWplbtk2Zjbpu
         ctWDePLqpmjXrB6n8I48yU2gW/BzMgdNiHsMeej0RrhgGIjd+8WBAjskAc7k0R/iBya6
         MoPa/FUNGbyUZXRe0NuyhvDchLbzY7JyUz25r2SaIQy0kKzZpQHIiW9BZgmqVjTK39SA
         dVDciomCE57hDoj1MRH2w5mnMiIicLcBdOxzS8/i1iW7YdN/pEDQcerUhcLSF7BFuCKo
         xJtw==
X-Forwarded-Encrypted: i=1; AJvYcCVyHSgzzak+slhfmdOCqufwttgTkW1QRx+0r7tjWAgvUAIcZpeNkpwcPJOyIYabwi9ADNMmPVbQiSAo@vger.kernel.org
X-Gm-Message-State: AOJu0YwiYFBI8Q9YtuFtP8+BkERWA61JNqLYIH/r6EDjpAZvxXqX49Kp
	O6/g7vD0dx068mNiVyLD83jrA9oAh2Fk5KfXCsOn6voJMdZCLhMyRbkK/ZKDjN6p9Voh6CBS8Ay
	FM35QVF9saSbBqfvbif97aZaaxkTbU/S8fG4GfwSP2k/YvkMZZg5LJxlqDug4uDgz
X-Gm-Gg: AY/fxX5fWvKMRsTLx6+86BAC4egXWa8wlzLGSvmaJclV5D8DTLT7oA1G06lfNfttTj7
	jz1lYYzHuaAmOgMqbzakzHrCCCMoJMQs8ukVVmuFNGvSKklNDYSzmFjNKAmqlna+kGBYKb1U2I1
	mJxJ4sDY7dS1aTLjaq3XCcKT1XGJVjzEDgvNei+C06qImeIm6q6QGYWeQFY5V5ieFUq45Lc/Wrp
	eTjM0VuZjZ/XEnTI/+/9D6FbWjYKY6grohoBz6sPGCx4WYSbiaiXXu/yiFop4eYcXVeEtuFPrgW
	oEZgJDWHwKr5DERosaC5vWzrIsesl9ymGZe9FpxgQP1vMmjNvvPWGNUbR1/uFJlMRXaSqt7utVF
	72ZKXqgs9MqSF4oPt4hTUm42oNwXNHpoV
X-Received: by 2002:ac8:7fc8:0:b0:4ed:ae8e:cc73 with SMTP id d75a77b69052e-4f1d0625feamr262098171cf.65.1765987002947;
        Wed, 17 Dec 2025 07:56:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFszvOAqwJZdZwL6lHqBOW+JIMIiR1CcEXZkVgGrYioTclkhe/j+yesXBDLYDIul/as1U8kA==
X-Received: by 2002:ac8:7fc8:0:b0:4ed:ae8e:cc73 with SMTP id d75a77b69052e-4f1d0625feamr262097641cf.65.1765987002405;
        Wed, 17 Dec 2025 07:56:42 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:19 +0100
Subject: [PATCH v3 01/11] dt-bindings: bluetooth: qcom,qca2066-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-1-ced8c85f5e21@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5907;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=zuRPk2/Afzgk7PvKtFu8N+ICcQbTqBU2rCeXot3Hjuk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKtW/AN9ZGPilomM6/n6U1xuuK5oxdHumUfr
 RGQZn1vGs+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSrQAKCRDBN2bmhouD
 14XiEACbhesC4614UebeM8B0VWbitp/QDoRYLqVlVAEKsUxuNMwnJBcIkOWOnNpySiB34tTa0qD
 EzTHI4fazvYDCCCq3n2Goro6PD2VkAbiDP0hM+grR+uKBG4aiaLKzeXOtlcAIT0MrL6HH1hcabQ
 Fk7gt3rzBcGICJ0rvu9/Vuq5pPGvRG4gq5dYU7zboILVpITghcuVWnLa9rc4Cc5zCW6FPJsNcdZ
 PrCdfPFkOTzwaYkAPeom2RgIujKrTXHKbBKrC+ItzCecvPRzWk4NpXgWD/+zeWndimdnY1Y4syQ
 t7SvG4bLfgje+yY6qORntpHsdqNaRVX3J/05k0KQywa9xm80omCSXWkBay49wIvTlv4jLzRUtZ+
 hyMMlJyCYIlVKnSf1zpcvF5Pq3DdfYWFGg/h1yamU0SufqMVxvMVlzPv4g6g1xlBwLUJp90EYtT
 V6bphjSsfkccauMTavp8zBObVQfmV1Z2JcFmqCm2tw1CaHA1pqjaSKdHWDMeOnsrXhFZW7PctP6
 aMNtHpn4QBoSPo+lTefvtXkn/smkyv9mTsZiUOc4MCcc1VZtCwBhYT2lnz6pDpHwfY4SLaaRzq/
 b2E/7r97mSeeIu7hocewk6j2c4pXw6PAgfXiBm5ULxa8cJkgDg4h4DiF9j3EqpepB327kIWPJAX
 CjC7Q0/Yd5cRzgA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX+B9t0Iiowx0s
 j5uFPPT9cXsIupPYQh3Pl58/hoB1UEaWVjls54CxVjp1vVmKgbwLDB1hLQZqgXrJnm1ggKw+6ib
 Qk6/M+RrizrPP4j3xd63smJU77GNtPT7kUGFiylQ7gjsJONKetXfdgaykj6Y4wGEG0YzKKoZhki
 a5GQs/XSz7VoPf7YSr5xSHmdZyUdYVpjYjriPeWREhXXR2vF4wim78c7537A1ae0W2C1CaVv2uZ
 iEOAA2fIa3GGEY3WuS2n38dtuqR4/vs9VM7ARfFc7i6vAr408Po6akTe3F+dqG7LVK/nkrRyz3i
 raIZ3kJRauAm4QyBnoML83OcaOt2YAHMe/uoNdMqL8B+uW79ihTezHFVLfmP97Zr8pXFH7We/MO
 zy7ccuDSCLxtsG623f7RJr5ucUSBoQ==
X-Proofpoint-ORIG-GUID: 8isrBKMWlpwf5MxN9LW_D-rcSvsTC2m_
X-Proofpoint-GUID: 8isrBKMWlpwf5MxN9LW_D-rcSvsTC2m_
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=6942d2bc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=HeiVX4xZO4SkypZjF6sA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split common part and
qcom,qca2066-bt to separate bindings, so each schema will be easier to
read/maintain and list only relevant properties.

The existing bindings do not mention interrupts, but
am335x-sancloud-bbe-extended-wifi.dts already defines such.  This issue
is not being fixed here.

Existing binding also did not mention any supplies (which do exist as
confirmed in datasheet) and Linux driver does not ask for any, thus keep
this state unchanged.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Expected warnings:
arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts

Changes in v2:
1. Keep gpio.h header include for rest of the examples (fix build
   failure)
---
 .../net/bluetooth/qcom,bluetooth-common.yaml       | 25 +++++++++++
 .../bindings/net/bluetooth/qcom,qca2066-bt.yaml    | 49 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 25 +----------
 MAINTAINERS                                        |  1 +
 4 files changed, 76 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml
new file mode 100644
index 000000000000..c8e9c55c1afb
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,bluetooth-common.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,bluetooth-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Bluetooth Common Properties
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  firmware-name:
+    minItems: 1
+    items:
+      - description: specify the name of nvm firmware to load
+      - description: specify the name of rampatch firmware to load
+
+  qcom,local-bd-address-broken:
+    type: boolean
+    description:
+      boot firmware is incorrectly passing the address in big-endian order
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca2066-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca2066-bt.yaml
new file mode 100644
index 000000000000..d4f167c9b7e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca2066-bt.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca2066-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA2006 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca2066-bt
+      - qcom,qca6174-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  enable-gpios:
+    maxItems: 1
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
+            compatible = "qcom,qca6174-bt";
+            clocks = <&divclk4>;
+            enable-gpios = <&pm8994_gpios 19 GPIO_ACTIVE_HIGH>;
+            firmware-name = "nvm_00440302.bin";
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 6353a336f382..85d10d94700f 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,8 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,qca2066-bt
-      - qcom,qca6174-bt
       - qcom,qca9377-bt
       - qcom,wcn3950-bt
       - qcom,wcn3988-bt
@@ -122,17 +120,6 @@ additionalProperties: false
 allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qca2066-bt
-              - qcom,qca6174-bt
-    then:
-      required:
-        - enable-gpios
-        - clocks
 
   - if:
       properties:
@@ -211,17 +198,6 @@ allOf:
         - vddrfa1p7-supply
 
 examples:
-  - |
-    #include <dt-bindings/gpio/gpio.h>
-    serial {
-
-        bluetooth {
-            compatible = "qcom,qca6174-bt";
-            enable-gpios = <&pm8994_gpios 19 GPIO_ACTIVE_HIGH>;
-            clocks = <&divclk4>;
-            firmware-name = "nvm_00440302.bin";
-        };
-    };
   - |
     serial {
 
@@ -236,6 +212,7 @@ examples:
         };
     };
   - |
+    #include <dt-bindings/gpio/gpio.h>
     serial {
 
         bluetooth {
diff --git a/MAINTAINERS b/MAINTAINERS
index 3dd2ce39e43a..9fa447e1645d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21364,6 +21364,7 @@ QUALCOMM BLUETOOTH DRIVER
 M:	Bartosz Golaszewski <brgl@kernel.org>
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/net/bluetooth/qcom,*
 F:	drivers/bluetooth/btqca.[ch]
 F:	drivers/bluetooth/btqcomsmd.c
 F:	drivers/bluetooth/hci_qca.c

-- 
2.51.0


