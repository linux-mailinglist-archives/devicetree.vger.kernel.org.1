Return-Path: <devicetree+bounces-256291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 69304D389B6
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BEDAB3019C79
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C243168F6;
	Fri, 16 Jan 2026 23:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XRmPPhWU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OAU7XOvd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEF82FDC4D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605672; cv=none; b=IhrY9OQcI8pvfDjLyTst7/x0/F5QlYOsFCXaVi0oZBNg9vmNhSjGjFAM3ye5zEXDBsmeulLry6gj0iPN3VWFNZP3zYSthRRFaEoH99l9rGwqCwKiliJl3ijIt9Zgg20YGYDJH2ESOP4IBU1NFFonhkfVj4dtYsDhxg4V2IycpB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605672; c=relaxed/simple;
	bh=Myb5/SidE30NTPohSE6poB77sjMp34zHy+G6Ervv8b0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e6RcKaYqXwEXmwTTRXohVTqWMxWLK/am2u16/sQ8fsdgH1AxdFXvr6NWw7Debu1Rwfp3eyHWwv2fbhcPWf1GBdEbJdWP0Tu+3DDnK17PPcz7dtQhXSbY0Ku1ClKquj9rjcv3FHbyx0JeAseCWXbGP9Df3Mo+E0g7WDv7P4f4U+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XRmPPhWU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OAU7XOvd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNCrgx2645764
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kwfFFi6O6CY
	E9sERUzKNtpAa9yEpQVqdx39AZPQqd2g=; b=XRmPPhWU/RdCtRohGnQpYjwyCoq
	wqD6a/AWRR5cnlCOYMF9s/6jQSRWxfXRi4iWjZyVjsoLSyqaKbce3/VUPCNyEgBN
	TQ68EqvDGfqPN9OS2y8U9axBbhW/e7jIER2uyJ6EPQpLVO90IUo+7LD0wnmYsL+K
	nn8yaEYhR9NtTVjRh2QTKo/5KpHeusBiWi3/8griHpLMx3T1Dfl9nPXXqA+Nahn3
	eqy/w9EjnaL4ttRYPi4ntrpO7GCKvdICZeG9dX3sCBsPg3lXyVLLRFJ8d1C7sRkK
	+HnHDkosHwCmP8q1F6kBsCr9/NxiPByEB4XetxJAosjxfuO+WSTk3T2OFbA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvedrbj1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:09 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-11b9786fb51so15703963c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605669; x=1769210469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwfFFi6O6CYE9sERUzKNtpAa9yEpQVqdx39AZPQqd2g=;
        b=OAU7XOvdqSLuB3D/DbSZR1UWQGqrIXEhpLAhpiP4hFLnNYrZ7KwMVq/q+dM7AbULW5
         8fsVY8PNNyfsaM3KyuQu+4Rnq5CHppwx3aetw+wpSIsFpt8BO/5V3LmkCYU9XwTyDO+N
         ZNjIZE8PetS0uYi9UX4xx+0nQRjRraFtgfgAX1TcgzlHsuO+KfzjIrCo51J4HBywqm3m
         pchX17M+qzdFRzIXdKrWY9AvZbDaG59VOYOYCnQe0kbIH0eP5Oye45rRcArPKEItnkhf
         h5Xl1tVesWxzeAyFHUHxsWtGWQuWDq4mbA3lVLvnyKuxGi9VmEB+SsiC15tinBvs0bTB
         U+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605669; x=1769210469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kwfFFi6O6CYE9sERUzKNtpAa9yEpQVqdx39AZPQqd2g=;
        b=pddY3vuhV8n5AJydVIXGqlHHOutKdDMDdDShdJfTYWED9tq5iTJ5iUgvvSJFUgOmfN
         a7emZ9/esI+ZO8Bg75CIF/OdTSCc4RLUbCm+XAgvFPNC+iJJUiQlJYvUz0UjBNbCmK7Z
         nUCY/S/xpEyIIDz/W57sFHdyRc8zK0W7j6vLxHm2tFEwBw+OaWK+qo645utDl1fx8N/1
         4Am0WVeT3OE29kkYeD2dQiz1aD5WUW8zwDus5YEgW5vUYRM9PzkA0sa09nhBPqh/85d5
         c2r2FSHotIzIVJGUfTK9My4wlN5ds2OGJUHrqnnapfYD2xWwHTWN7zbxn0AHVf+un54F
         X2gg==
X-Forwarded-Encrypted: i=1; AJvYcCVDTUazLQcDHyIFAgrlYWQvtCHJ7bJwkDLnieFKa6qttACIf0YAQjeFgl+E2LtSDmQhlL7IHr8LU1ny@vger.kernel.org
X-Gm-Message-State: AOJu0YwTKMBPfZ20aRN4Pd8aJvZbspqJz9lDyjJXr5jsczwKhK9xk7Gu
	DonBQmVKunHNpm1deqdc7fRcI9EwIK+b92rh/+46YyKI/cJSR+oiVWhtQptQ8qhFClEakWbNN03
	n/N4zCSRzO7etIuSXZi3QxDONe3/TrZZTFa+AL24cF1ze4QKDezi3RsIR3dr+KdO6
X-Gm-Gg: AY/fxX4JO9WVWnbwHlEbtyK7b8T78SvAZ8UblW0TgV82v8AVhJPySxQdUwb3UWMX7RX
	mf5ck2VFTUbEwPbkQEnoUtIRE5cL7/XoWKDOwnq/3+WDIguGHws4CeTYtINfpS0V8zZyidDo6x2
	JbrEJa1udd5/n6YUpYqDXFt6a+MvaH9RiPRQ82DT8ZeZQze+kPYbzvC9DNgDlVCAr9/I2R/hmr1
	FSMiZVfppLahBNlW8p/jNTXmvPBIdwOxStpjXvFTb9pp2OS6iSLHhBzGXsWShBRpxYX9q7MirEH
	4UIy2zbh7YiZLF7F/5Ee812WobZ/zj1lS8qVLY7TUtVrAd4b6zDXBdRIqTLd92CNX9gI/8vN5Bo
	MGLU6As/l4UnYpGk2nY0YvpV3/tAP26wE6c5m8/qLmFb2Z16cmuRteYJeOeQa7Fs=
X-Received: by 2002:a05:7022:4584:b0:119:e56b:958c with SMTP id a92af1059eb24-1244a72d3b7mr4127557c88.17.1768605668856;
        Fri, 16 Jan 2026 15:21:08 -0800 (PST)
X-Received: by 2002:a05:7022:4584:b0:119:e56b:958c with SMTP id a92af1059eb24-1244a72d3b7mr4127526c88.17.1768605668213;
        Fri, 16 Jan 2026 15:21:08 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:07 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: soc: qcom: eud: Restructure to model multi-path hardware
Date: Fri, 16 Jan 2026 15:20:58 -0800
Message-Id: <20260116232106.2234978-2-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JQ34Qpz1g62VBEx9FlHl38eO_MQ5HgKX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfX7/jY+0CExa/P
 4ZHsbxHlPAAfGpq26BHsNsSqgzOVdp8jAZGZatAWI6upUTuF85fxjXC9+36f8gQbgzeJ45dUhu3
 boroIiO2eN9jGlrCaQgGzm6xmhsKBfmQyQ1fxxT78mXYF4qWiQOReFMX1xc0DW92pF5NWQR9+vd
 9cIbK7qjOPGm5POZuWCeQFTluEjq2wv6823sptwiYhyeqFJColMS3nO/6JNNgLsMqBWyl/r+S7U
 BHtsu0OKbvQ7s2Se72MEBZOVBXL5W/GAIGhHTd2qt5DBqJdBb2demmAgkllROKHYzaO6g6X2oe1
 bvRW7IqL05vOAWaHTg+3g+u9Xqdx6pANyVe6bzLv8Gai8yzFKbthpFvWZArnSLxTeT+YGTwwsMg
 mMMtKUmyuL2ROVq1ocmuLS7XJFkYmJGAm3+CbrMoZqTrOCC9a38aQbjwNBoHXFQouovbO0legTB
 +cBNCywEHWMNppesjvQ==
X-Proofpoint-ORIG-GUID: JQ34Qpz1g62VBEx9FlHl38eO_MQ5HgKX
X-Authority-Analysis: v=2.4 cv=A4Bh/qWG c=1 sm=1 tr=0 ts=696ac7e5 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=BjueR4FZ-pLKYUec0x4A:9
 a=T0KM2sWh4d-P_2Ru:21 a=Fk4IpSoW4aLDllm1B1p-:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 adultscore=0 clxscore=1011 priorityscore=1501
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160175

The Qualcomm Embedded USB Debugger (EUD) hardware can intercept up to
two independent High-Speed UTMI data paths, depending on the SoC
configuration. Each path operates independently with:

- Dedicated PHY interface
- Distinct USB connector and controller associations
- Role dependent routing

Model these hardware paths as separate eud-path nodes to accurately
represent the physical topology and add below per-path properties:

phys: EUD exposes a High-Speed debug hub that relies on HS-PHY for its
operation. This property references the HS-PHY associated with the UTMI
path.

usb-role-switch: Indicates that the USB port on this UTMI path supports
role switching. In device role, debug mode inserts the EUD hub into the
UTMI path. In host role, the EUD hub is bypassed and UTMI traffic flows
directly between the PHY and the USB controller.

This change breaks backwards compatibility, but the previous binding
omitted critical resources like PHY and did not describe per-path
topology. Without these modifications EUD cannot be guaranteed to
function.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 .../bindings/soc/qcom/qcom,eud.yaml           | 97 ++++++++++++++-----
 1 file changed, 71 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
index 84218636c0d8..a7162560c323 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,eud.yaml
@@ -10,8 +10,11 @@ maintainers:
   - Souradeep Chowdhury <quic_schowdhu@quicinc.com>
 
 description:
-  This binding is used to describe the Qualcomm Embedded USB Debugger, which is
-  mini USB-hub implemented on chip to support USB-based debug capabilities.
+  This binding describes the Qualcomm Embedded USB Debugger (EUD), an on-chip
+  mini USB hub that enables USB-based debug capabilities. The EUD block is
+  positioned between the High-Speed USB PHY and the USB controller, where it
+  intercepts the UTMI interface to support debug and bypass modes. EUD can be
+  supported on up to two High-Speed USB ports.
 
 properties:
   compatible:
@@ -29,26 +32,59 @@ properties:
     description: EUD interrupt
     maxItems: 1
 
-  ports:
-    $ref: /schemas/graph.yaml#/properties/ports
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  "^eud-path@[0-1]$":
+    type: object
     description:
-      These ports is to be attached to the endpoint of the DWC3 controller node
-      and type C connector node. The controller has the "usb-role-switch"
-      property.
+      Represents one High-Speed UTMI path that EUD intercepts. This node models
+      the physical data path intercepted by EUD and provides graph endpoints to
+      link the USB controller and the external connector associated with this path.
 
     properties:
-      port@0:
-        $ref: /schemas/graph.yaml#/properties/port
-        description: This port is to be attached to the DWC3 controller.
+      reg:
+        maxItems: 1
+        description: Path number
+
+      phys:
+        maxItems: 1
+        description: High-Speed USB PHY associated with this data path.
+
+      usb-role-switch:
+        type: boolean
+        description:
+          Set this property if the USB port on this path is role switch capable.
+
+      ports:
+        $ref: /schemas/graph.yaml#/properties/ports
+        description:
+          These ports are to be attached to the endpoint of the USB controller node
+          and USB connector node.
+
+        properties:
+          port@0:
+            $ref: /schemas/graph.yaml#/properties/port
+            description: This port is to be attached to the USB controller.
 
-      port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description: This port is to be attached to the type C connector.
+          port@1:
+            $ref: /schemas/graph.yaml#/properties/port
+            description: This port is to be attached to the USB connector.
+
+    required:
+      - reg
+      - phys
+      - ports
+
+    additionalProperties: false
 
 required:
   - compatible
   - reg
-  - ports
 
 additionalProperties: false
 
@@ -58,21 +94,30 @@ examples:
         compatible = "qcom,sc7280-eud", "qcom,eud";
         reg = <0x88e0000 0x2000>,
               <0x88e2000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        eud-path@0 {
+            reg = <0>;
+            phys = <&usb_1_hsphy>;
+            usb-role-switch;
 
-        ports {
-            #address-cells = <1>;
-            #size-cells = <0>;
-            port@0 {
-                reg = <0>;
-                eud_ep: endpoint {
-                    remote-endpoint = <&usb2_role_switch>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    eud_ep: endpoint {
+                        remote-endpoint = <&usb2_role_switch>;
+                    };
                 };
-            };
 
-            port@1 {
-                reg = <1>;
-                eud_con: endpoint {
-                    remote-endpoint = <&con_eud>;
+                port@1 {
+                    reg = <1>;
+                    eud_con: endpoint {
+                        remote-endpoint = <&con_eud>;
+                    };
                 };
             };
         };
-- 
2.34.1


