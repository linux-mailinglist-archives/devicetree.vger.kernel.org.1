Return-Path: <devicetree+bounces-242768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF58C8E869
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:42:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D71583B1860
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E71287507;
	Thu, 27 Nov 2025 13:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NUQY88dS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kw70znXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B9F2868A9
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250896; cv=none; b=hdkY+fGf8X6fxfP6yiMDi719pPkR5I0/19jD5wgAasw6dkR80JhtIzsW9KFmlHX3DzrtBh42HSNbeJTMrLqe6wP9UAzrRofkT0LqYjOGvL+b/nxNcfMl+8W7IzwWVbrnYpOR9KeTgZz3unSHlW/WIIMFGQpdosdHxVbndQScC0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250896; c=relaxed/simple;
	bh=DbLPeovYiwjXpn5dbWMK4U8Irz//NWlC2tACaOAzwNI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=brYC7tDNHMeQRF/+e6/jjdIS32Iq6+H5xhjRqR324JgXHt9lnk0/JeBWEXMDFQIfqMNRle++BEGb1XELs3n63k9hNGx2R81FlLtEqFt8L14OHaNcCuQUWqyvlPqC9cW98M3ISlVsDnmTXVF8XTL9y2IJFiEzgj16oompJuLL2vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NUQY88dS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kw70znXC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR7j6IF2388412
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:41:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+Sy9zUDZs56
	f6JnqKzFkwx6XwPXTc9MqxOFBhYwgs2A=; b=NUQY88dSOSrs4NlCgiGDzcEeVfn
	n2h72zsres5/X/H5neZQxH3wKB1yTgkHhow0gNRXjQ26oDxuT15e06rBx6hJ+Ug7
	jprKcYLfr5glXM60qYPnVoixml2nmL7EiIWJvj5aoKEW2QL9JqDoG6eUsTTXKxPi
	cPqKhYEmgIzk0Kv9itpqBrVPFEoeCM7Grxq3sR5Z/b2e7Z8cFn5TCAblml9GFBz0
	VwkWQYPcQFJIAYFPrHhBbNKAOQfxM6eoPDaJBf+LY9cnu7B0ibZOGDTeBVOsYIHb
	mJGDmZKRwYO51X4oIPhIcbWvP/uvZu8SkcRNMFs9qV8J4jNCZWwqHBrMYgA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap7n8jj8s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:41:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297e5a18652so10036115ad.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764250894; x=1764855694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Sy9zUDZs56f6JnqKzFkwx6XwPXTc9MqxOFBhYwgs2A=;
        b=Kw70znXC8ns303CVAt+NjVjNZap8y8VarcNgVv7s8lKvPTzCPWY9syZ1YnYmbrWncn
         bJ1boDCYZbZLuD0Ol8f0SHUKjVtpS59PU5tTm7UZAFbGE0YN/8kBZQp983Z9/IOO3MwA
         dUjXJAqs32n/qx62S2qtcTcOOpzz6yRdv8iIaCjBFvCc/G3Xu54EvDT0Yw0bezpnws1P
         bIv2n2nwbJcut2o+SKajLCPc+7wihJnpv5JiMkyFFN5LCGC+nuR9EbF0XrTPyRp22+ke
         n97uG3ck1mHi3hOHFSSba6PbeGadur5JvgmT1YvycXdyFgQcbQLIAwugx/78kUrMJQza
         Yyhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764250894; x=1764855694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+Sy9zUDZs56f6JnqKzFkwx6XwPXTc9MqxOFBhYwgs2A=;
        b=jZONiiHloPUZxqQ87vn3v4FxJk8GAxvd9r6lBE5OqL3H2z1eNE/1iPqXp8u4OdhCAY
         N+5Rz/OEAa2bwOM0D4eTpEoa95qygL21SvxnwftDWbapdEZ4qWwpCdQiQirWtYED7ZOn
         0lJ6lSt9Fws7vCpiu9TuGsUD/S0FcuEECRCdbk1Y5xzzwoZ/79LV5coNO9LTbzLV8TJS
         INOr71ZadDS5JBYsVgif53DO/FK9PrcqvKUdZpwUfocLs0M57sUd+aQeykdnrhpIkUUv
         DKnx5e3h6EjdSDe+HccDwP3hb4gag+MrSPA155BP1N39h3x2sJljHsVm/6f6SsFwghb5
         z7qA==
X-Forwarded-Encrypted: i=1; AJvYcCVs3HrYCU5cj6lEn1IMfBGRt+0Iep9evMK+k+PeTG9ki1T+/02PDDW4yITnlqHizHku4i1vuanvSby3@vger.kernel.org
X-Gm-Message-State: AOJu0YyZxa+cfcn8bjlQcHebj1uq6z6fiBU/As9bcN2Y9bkRBQCxov+K
	7pwLFhBO2kyw1uYAa5UBq8YyYwmINOW0JB1ry88paQRbOnB4MWoJy+3W5u47PpePn43HOudXdUu
	znsefwLDPS0AY+Td0HPi3lKW8k9zNTQiXWXysnFlJI/rO5oS0Mnk/MMg92O/R3r+7
X-Gm-Gg: ASbGnctclpd9U8GtMPjT119lyLLFIs84oF4uFuzkD5hXDVzv4zA28PT7IGMkPAgMhBC
	cGS07YNPrvsWseRDM40zezivjnweLxPwuJsQZs1wK1Oms5wsverCyyxUF+T2u6QW/AMo0TjLPu2
	yiUADGsGVmKVax3DCAn1tlZNPwGbP0Byz3gL3Z/CQPMki4UnHUwWrL2bHvbO0sMC1MllhsYXXOQ
	uUzqJdEk1n7QyvIoXROgNJAJD9tfe8kMzaH0uzSy+6GvBhG6pZKKfHp8AKMNgzQt0brapjtP5iF
	WuSFGidLJddMIiDJn5EyE0fXCA8Dl8Ap/CKkXLY+AviRaBfKwSxZBK5s8B61j7TSCi24EqLgH3N
	iYM0aTkfNgEXsWwtNqVDtRlqMS823AhhWgDtE9nQllDFS
X-Received: by 2002:a17:903:11c7:b0:295:bedb:8d7 with SMTP id d9443c01a7336-29b6c694376mr234858855ad.48.1764250893441;
        Thu, 27 Nov 2025 05:41:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPhmvBkBmsJ8UVnonP5nHwjXbicsJaiJU8ELnVOuJ12H7Nh5u0QV8zYa6ircyAF5VnKjsnig==
X-Received: by 2002:a17:903:11c7:b0:295:bedb:8d7 with SMTP id d9443c01a7336-29b6c694376mr234858275ad.48.1764250892845;
        Thu, 27 Nov 2025 05:41:32 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce441600sm18934875ad.29.2025.11.27.05.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 05:41:32 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
To: jic23@kernel.org, robh@kernel.org, krzysztof.kozlowski@linaro.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, agross@kernel.org,
        andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, jishnu.prakash@oss.qualcomm.com,
        quic_kotarake@quicinc.com, neil.armstrong@linaro.org,
        stephan.gerhold@linaro.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH V8 1/4] dt-bindings: iio: adc: Split out QCOM VADC channel properties
Date: Thu, 27 Nov 2025 19:10:33 +0530
Message-Id: <20251127134036.209905-2-jishnu.prakash@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251127134036.209905-1-jishnu.prakash@oss.qualcomm.com>
References: <20251127134036.209905-1-jishnu.prakash@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NBqucmSzGST21XtAB6LKxe9jzVfGDH-y
X-Authority-Analysis: v=2.4 cv=AufjHe9P c=1 sm=1 tr=0 ts=6928550e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=i0EeH86SAAAA:8 a=EUspDBNiAAAA:8
 a=4vDKtjJwf6yegxfEYBcA:9 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: NBqucmSzGST21XtAB6LKxe9jzVfGDH-y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEwMSBTYWx0ZWRfX09iFuEcOg+ns
 Bbc4POlsQNxHwctSJkpF9BHX7OisWnOSY00a2RaVIX5davdFqQNKeclrQBAYU4vmxS6LQyp7SuW
 Hh81lOT05s1x/wtCW28U0X6jNzox0o+BMIfn9qj9fRFt/pBYoBcnHX0Yw56cr/3aSEaSAGeW29x
 wfLO/XdmsXYaj3jC9gnmjEnv+hQe1YWeBuh6hsUrnjvCoJH/3dAQAoLz7/Z3Nwd3JyGJtQrVqfJ
 LLJ7itFY5ZPS7rBtQ/eqVKBPk1J9W7AgNboEx0a4HxdYvG/h3NUk3ZCOFFhZyYD5gtz6LsfKeBY
 BwpXPmyzN+QZOsLh/cSajADaugWJCNl5+B2T7GDcdE+C61f8TVkGVpTzd9EIUaaux2ZQC19KhoI
 Zd8LVqki23ndGhPXAPuUj/npmYUQXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270101

Split out the common channel properties for QCOM VADC devices into a
separate file so that it can be included as a reference for devices
using them. This will be needed for the upcoming ADC5 Gen3 binding
support patch, as ADC5 Gen3 also uses all of these common properties.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes since v7:
- Removed binding file paths mentioned under `reg` property description in
  Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml, and
  updated the description slightly, to simplify it and avoid any dependencies
  on patch 1 from the earlier series.
- Removed an extra blank line present in
  Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
  in previous versions.

Changes since v6:
- Collected Acked-by tag from Jonathan.

Changes since v5:
- Collected Reviewed-by tag from Krzysztof.

 .../iio/adc/qcom,spmi-vadc-common.yaml        | 84 +++++++++++++++++++
 .../bindings/iio/adc/qcom,spmi-vadc.yaml      | 76 +----------------
 2 files changed, 86 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml
new file mode 100644
index 000000000000..3ae252c17b91
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/qcom,spmi-vadc-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. SPMI PMIC ADC channels
+
+maintainers:
+  - Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
+
+description:
+  This defines the common properties used to define Qualcomm VADC channels.
+
+properties:
+  reg:
+    description:
+      ADC channel number (PMIC-specific for versions after PMIC5 ADC).
+    maxItems: 1
+
+  label:
+    description:
+      ADC input of the platform as seen in the schematics.
+      For thermistor inputs connected to generic AMUX or GPIO inputs
+      these can vary across platform for the same pins. Hence select
+      the platform schematics name for this channel.
+
+  qcom,decimation:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This parameter is used to decrease ADC sampling rate.
+      Quicker measurements can be made by reducing decimation ratio.
+
+  qcom,pre-scaling:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Used for scaling the channel input signal before the signal is
+      fed to VADC. The configuration for this node is to know the
+      pre-determined ratio and use it for post scaling. It is a pair of
+      integers, denoting the numerator and denominator of the fraction by which
+      input signal is multiplied. For example, <1 3> indicates the signal is scaled
+      down to 1/3 of its value before ADC measurement.
+      If property is not found default value depending on chip will be used.
+    oneOf:
+      - items:
+          - const: 1
+          - enum: [ 1, 3, 4, 6, 20, 8, 10, 16 ]
+      - items:
+          - const: 10
+          - const: 81
+
+  qcom,ratiometric:
+    type: boolean
+    description: |
+      Channel calibration type.
+      - For compatible property "qcom,spmi-vadc", if this property is
+        specified VADC will use the VDD reference (1.8V) and GND for
+        channel calibration. If property is not found, channel will be
+        calibrated with 0.625V and 1.25V reference channels, also
+        known as absolute calibration.
+      - For other compatible properties, if this property is specified
+        VADC will use the VDD reference (1.875V) and GND for channel
+        calibration. If property is not found, channel will be calibrated
+        with 0V and 1.25V reference channels, also known as absolute calibration.
+
+  qcom,hw-settle-time:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Time between AMUX getting configured and the ADC starting
+      conversion. The 'hw_settle_time' is an index used from valid values
+      and programmed in hardware to achieve the hardware settling delay.
+
+  qcom,avg-samples:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Number of samples to be used for measurement.
+      Averaging provides the option to obtain a single measurement
+      from the ADC that is an average of multiple samples. The value
+      selected is 2^(value).
+
+required:
+  - reg
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
index b9dc04b0d307..16c80709a3ee 100644
--- a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
@@ -56,7 +56,7 @@ required:
 patternProperties:
   "^channel@[0-9a-f]+$":
     type: object
-    additionalProperties: false
+    unevaluatedProperties: false
     description: |
       Represents the external channels which are connected to the ADC.
       For compatible property "qcom,spmi-vadc" following channels, also known as
@@ -64,79 +64,7 @@ patternProperties:
       configuration nodes should be defined:
       VADC_REF_625MV and/or VADC_SPARE1(based on PMIC version) VADC_REF_1250MV,
       VADC_GND_REF and VADC_VDD_VADC.
-
-    properties:
-      reg:
-        maxItems: 1
-        description: |
-          ADC channel number.
-          See include/dt-bindings/iio/qcom,spmi-vadc.h
-          For PMIC7 ADC, the channel numbers are specified separately per PMIC
-          in the PMIC-specific files in include/dt-bindings/iio/.
-
-      label:
-        description: |
-            ADC input of the platform as seen in the schematics.
-            For thermistor inputs connected to generic AMUX or GPIO inputs
-            these can vary across platform for the same pins. Hence select
-            the platform schematics name for this channel.
-
-      qcom,decimation:
-        $ref: /schemas/types.yaml#/definitions/uint32
-        description: |
-            This parameter is used to decrease ADC sampling rate.
-            Quicker measurements can be made by reducing decimation ratio.
-
-      qcom,pre-scaling:
-        description: |
-            Used for scaling the channel input signal before the signal is
-            fed to VADC. The configuration for this node is to know the
-            pre-determined ratio and use it for post scaling. It is a pair of
-            integers, denoting the numerator and denominator of the fraction by which
-            input signal is multiplied. For example, <1 3> indicates the signal is scaled
-            down to 1/3 of its value before ADC measurement.
-            If property is not found default value depending on chip will be used.
-        $ref: /schemas/types.yaml#/definitions/uint32-array
-        oneOf:
-          - items:
-              - const: 1
-              - enum: [ 1, 3, 4, 6, 20, 8, 10, 16 ]
-          - items:
-              - const: 10
-              - const: 81
-
-      qcom,ratiometric:
-        description: |
-            Channel calibration type.
-            - For compatible property "qcom,spmi-vadc", if this property is
-              specified VADC will use the VDD reference (1.8V) and GND for
-              channel calibration. If property is not found, channel will be
-              calibrated with 0.625V and 1.25V reference channels, also
-              known as absolute calibration.
-            - For compatible property "qcom,spmi-adc5", "qcom,spmi-adc7" and
-              "qcom,spmi-adc-rev2", if this property is specified VADC will use
-              the VDD reference (1.875V) and GND for channel calibration. If
-              property is not found, channel will be calibrated with 0V and 1.25V
-              reference channels, also known as absolute calibration.
-        type: boolean
-
-      qcom,hw-settle-time:
-        $ref: /schemas/types.yaml#/definitions/uint32
-        description: |
-            Time between AMUX getting configured and the ADC starting
-            conversion. The 'hw_settle_time' is an index used from valid values
-            and programmed in hardware to achieve the hardware settling delay.
-
-      qcom,avg-samples:
-        $ref: /schemas/types.yaml#/definitions/uint32
-        description: |
-            Number of samples to be used for measurement.
-            Averaging provides the option to obtain a single measurement
-            from the ADC that is an average of multiple samples. The value
-            selected is 2^(value).
-
-    required:
-      - reg
+    $ref: /schemas/iio/adc/qcom,spmi-vadc-common.yaml
 
 allOf:
   - if:
-- 
2.25.1


