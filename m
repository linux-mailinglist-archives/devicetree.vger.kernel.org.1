Return-Path: <devicetree+bounces-272644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ+4HikIrmkN/AEAu9opvQ
	(envelope-from <devicetree+bounces-272644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E58232B75
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 592CD300D627
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265B835AC09;
	Sun,  8 Mar 2026 23:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RuGmkyg9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MaNGHTSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB37359A9B
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013025; cv=none; b=iAA4L2WvKIm6BI2Fglp7nhrSELqc4yPFLLZ5hmBRfQYappjz4izLtG5qvJ1jJfERfyQFlADVPu7NIUHBVvsNEMpcBPFW8jkPSH8UhIRuCxKf+2RMQjSB0bbD7qT1+u5Jg7IA+1r3qaGgeF+rDquCAotvC5jv0t3TdTVufAkNmGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013025; c=relaxed/simple;
	bh=eYkkvK51MTx9Bdfkthyx9CLf6igJE1ETRsExN/41P7w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AHw65+rAEaW0ICmDbKXmkJNpVZiA2fphq+g8d18+co5bKSAyvsfGXP18raR+Qpobjbq6bSANXOGzCDRN5fPzYN9Wi3OzYRjwqcfXAkPJe4xWk6DFSNCjVJ9hK/w096brIkL/6XYMp4MO4nqJFJLK3/XMyILnM+ezdmnEgy7Ppb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RuGmkyg9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MaNGHTSs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628NRAM72611461
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 23:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=HLnC0O84/rB
	xJH7HK8btP2WKZlrp/hXgCjy/ALgrKbY=; b=RuGmkyg9UIosFzajyGOPZL9W36o
	ykcwZ+tER9klK1Q+oUjomhtQfTRYUk0laLzNnIjnikD47BMC5QJZKzqX/W7LCtNw
	hZoVmcLoklr3SV40+60C9J4BOq8SyREi7Is9d9kzdNjeupTaaCGP48gC/9ES5OPz
	yo3J+KKDsCxexOdGKY/CPp03BhDte0dUp26/HYNLF2xPxjl+X9IeXjCxp5IWCGz7
	X6tDk7WvFPENCZB2Xi6drav0vvu2gX78z1lfjF5HxOVL1Mn+4JAAPLwR3etH73Jp
	NniSwpOOT1Xs9qReeOz/ar1g4Rz+PnnlBnDDe2V3hZxyh7BoteKLOzjjCZQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbbg3b08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:37:02 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae3e462daeso39100745ad.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 16:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773013021; x=1773617821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLnC0O84/rBxJH7HK8btP2WKZlrp/hXgCjy/ALgrKbY=;
        b=MaNGHTSsIAhz9i1D7RZG9RCqlH9V7pqub68ePWYWnCiOhWFC1+beYt1y0R3R/6hhCt
         Ptz9eAVK26w8frqDMqfshkP7WJWivpDb7IA2gOwedJSUArFVj3o3HoPKjzH9Xai4VZX4
         gX1nK3xHOsLDUpDx0J4eNYJl0UDssim5SL+R315KesCegeNmIsaLltyQ7czucLgdFkMH
         YTJCZTmbl+4WkKuX87HdgH5DIiN9SdjsLT1uiShlsTcJzKILpl5xex6iGTiZtL1nBM0H
         I3wFMCO1Tsh3F2Z7twG0tyaOoxdXizOirv448phYTXz4WB7Z2hxI3fk+LN+oDQPpDAmR
         ItdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773013021; x=1773617821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HLnC0O84/rBxJH7HK8btP2WKZlrp/hXgCjy/ALgrKbY=;
        b=CC1l7pMc/QhY6eUzX9QztPtQXqT+PQGyEFnnQOjY2vb/f5JluJIUCVyLJhQYDTxn0B
         b8GvDcV0DESW1x0KuaGtkjEFU0ozG0j0fSFj/Yz8knXNrNROxGZUkh86bDoFJScu11ZU
         B2T9+M5gZ5+5MDiR73Esi30jn7CAvNIoxfNQIkFcUoDTkU9zrTVvgUV1gPPp18VV0GH2
         Le6O80LFIAGe/K+hd1jV92UncfB8Ow4NQywFKEE4hlreG5ugx2FkO+EO6rwFyu/Bv2Rj
         LtDGfTg4IaGTzuMpi92f+hixDVnJbQ221ZiGWMr6h2vBK9eg3StrvWPDYeOKDYC2oGXz
         UeQA==
X-Forwarded-Encrypted: i=1; AJvYcCUGv63g2V59mv0DxwQQxWsTRDdd1RSBWnY8Uka4YTEIvJFTDxfQULlM0GIWMJ3xAtxr2987py7OlVff@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/Hy/QRh1hQp5w9aEkYBVXjgEf34ATc9lY8Ln0D+VUwX6VdxR/
	1Glqf9P8kVkYRUAnLEP9nAC/RoRhcStwoqf1kEr8C9PYTTdN4hLQXKsuqZIQ9cacyF0Bp2GEVs9
	8rGDqVUCHQdXvrpbe4AWjarf/AliuVqqxiRvjThwJR+q/Yd1jCK1TMlKUyNhg0eXve/JMUl/S
X-Gm-Gg: ATEYQzwSUaV2qQ1RSyf6AfzmPINwCImtL9ZEB8mZVPR5j+471Ntq/ZhmIUtpAiMvk6o
	J8KfGHoN0Fso0wzjFjdaqqw0MFDNp7WnO1RP8TnGNaUjilr480wQ9wa9foOFZHvU1C1eZv5elj0
	EjrtWataLs13D/k+qvuCB0f1f5fL0bsrYgYyln2t9Vnnb/iv2d4ONXu4eVj4mmJ/206q0IBJ9ss
	fGSuRMidyKkC6nJ/uLJIU0b1PRbu4i+Qk+u6Ezqfb87wSfrIg8bDtr/uAQ5cdFeTMyE+DDhJZJx
	kd08S/jw5AB/CX+HSH3tnfV5EHnaxHAfeNp8O7/Nj3IlV2dOfAae9DUhp9FVq0uO0/UXzpTt1xo
	Ikf7g1xsHetPhYci/kBEZLuFKreM/bloMW2jC5bt5WST6y6RUVJ5HYqDix6J5tmHdLfpI3f5g7t
	8vpNDaElT9vhHNoCRdKurNH1YmYSEXP/JxfOU8
X-Received: by 2002:a17:903:2411:b0:2ae:517d:5cf with SMTP id d9443c01a7336-2ae825373b1mr93783985ad.54.1773013021309;
        Sun, 08 Mar 2026 16:37:01 -0700 (PDT)
X-Received: by 2002:a17:903:2411:b0:2ae:517d:5cf with SMTP id d9443c01a7336-2ae825373b1mr93783765ad.54.1773013020865;
        Sun, 08 Mar 2026 16:37:00 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9ad26sm114274845ad.28.2026.03.08.16.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 16:37:00 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: [PATCH V3 1/5] dt-bindings: embedded-controller: Add EC bindings for Qualcomm reference devices
Date: Mon,  9 Mar 2026 05:06:42 +0530
Message-Id: <20260308233646.2318676-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: S2LjHFth79nre3_SFvS6saRJVit7sU9p
X-Proofpoint-ORIG-GUID: S2LjHFth79nre3_SFvS6saRJVit7sU9p
X-Authority-Analysis: v=2.4 cv=SumdKfO0 c=1 sm=1 tr=0 ts=69ae081e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=gEfo2CItAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=6bqoFnLgofmmdwMbvCAA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDIxOCBTYWx0ZWRfX54IWRQh0wY0r
 Ov3fPqUtezs6wTeaz6Qw192sIZaPYRkEgJcFnOwc+b/go5kEQm4oPZQEU22TTmoCvcD60Dx4WFj
 +NitgKR1f3J0BunXf6HBplaEFYZ6W5cG16vfxnj6nS/ErlxLA7UWfQ7m4ZOmleektdbSE9om5Qc
 ChLTAIRC3DppMOBv8A4rYBtpybm/cOoM25AXMZ7uQkv8pB7pZ/+VGpsOzERl/xOO01IGrY8kCb7
 OKVqN0y8OJDRMYZNqLvlRlZpSTSdEtDTq2LDRqhIopLpWAJOi9pZobjIj+HDoiKCY21qww+dxgJ
 hJQLixICQv/khfBJyFqn+/Gx7SNK3oBFdBYry18KIAeNMnzJU8ZpH2Z5lOBlTB3eB8T3LaF9ZAE
 0H31HRFVGwCf/zlBdx0URaV1+JvvFJeoywNgmWYgfiAcJ0/dFFZX+i/vl4xVWFe28S6WPa+lYZC
 b6dF8RLCmrNqHmdCgAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_07,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080218
X-Rspamd-Queue-Id: 24E58232B75
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272644-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.76:email,devicetree.org:url,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Maya Matuszczyk <maccraft123mc@gmail.com>

Add bindings for the EC firmware running on Hamoa/Purwa and Glymur
reference devices, which run on IT8987 and Nuvoton MCUs respectively.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../embedded-controller/qcom,hamoa-ec.yaml    | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml

diff --git a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
new file mode 100644
index 000000000000..ea093b71d269
--- /dev/null
+++ b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/embedded-controller/qcom,hamoa-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Hamoa Embedded Controller.
+
+maintainers:
+  - Sibi Sankar <sibi.sankar@oss.qualcomm.com>
+
+description:
+  Qualcomm Snapdragon based Hamoa/Purwa and Glymur reference devices have an
+  EC running on IT8987 and Nuvoton MCU chips respectively. The EC handles things
+  like fan control, temperature sensors, access to EC internal state changes.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,glymur-nuvoton-ec
+          - qcom,hamoa-it8987-ec
+      - const: qcom,hamoa-ec
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
+            compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
+            reg = <0x76>;
+
+            interrupts-extended = <&tlmm 66 IRQ_TYPE_LEVEL_HIGH>;
+        };
+    };
+...
-- 
2.34.1


