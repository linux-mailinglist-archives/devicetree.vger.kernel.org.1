Return-Path: <devicetree+bounces-276432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IANQFP/JuGmcjQEAu9opvQ
	(envelope-from <devicetree+bounces-276432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:26:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8622A32C5
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:26:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 47C6D30131BC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E802DB790;
	Tue, 17 Mar 2026 03:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AAAnisiF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="McacIj1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5512DAFA1
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773718008; cv=none; b=my3DXXf1Kq3MsLxPpEoWWoKCILKpnmXZwBHNlYwhsbRZ/hymgytI7LVE+iPmcyqoBN+M5u3p2eEaSjOjEjRleuumpxW3dn60ls70zO8C06GWcthiArCkN2FwCNvcXzx+E1y7hAbCj1e2DjesGYgjfQw5KZWOA3VR5yc9fn8cz10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773718008; c=relaxed/simple;
	bh=HKFOu1fNblOcn/HFOdu48EyT+lBa2UuOd8Ya8wh5870=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sbrYM3aTIujV/QbJMX1wxq/n3afEA7Ne6HZiHnYqirFPhlgSv4q4z0LXJZ7DrExlBTJoK3j4Cz+0Igrm1Xt6vTthCKK+AW1wNu3Sgs1CCz1+4RVigsexZe6Gau9vGlbntuAnbK8ZfI8ctDU2RhjwPyCOGvYDGg0aHE6HAdXmbGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AAAnisiF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=McacIj1p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H0ejMU795574
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g0+lG/T+afF
	4ySmlryIDom0iKLYnuD7FP3qAhyNGYbE=; b=AAAnisiFj2zY5YrL3HKPnJJK/N7
	2vH3oBAanY0B6iBl5Mnj4rU09pWMdtesDNyGNJhoDPO/e+rGpbw3+XuTPqJXm3Xk
	DxNmIftP3Cp2ngm38HzQ3Cc9pwvhNjfApjmhjlYX2370JKxdCYVJpnrkjDkMXkpQ
	vAUE5NSQYv2T54IIPAvcQyhlkigNXgDcv1reDZm/ypAFIKowlHqTpNnnp0LODkkQ
	9wncZ/e9bjv80VZolW8G0bPOmRKLPZlDixYHZ0uZd0Y1GcyOnHw+uBkpZZEWIp3N
	L3HL/oKI3XSUuEfoX7HEtAl6zTUWcezLMUtoOa0HzI+XF3bGhhJqQ9CFSog==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxm6d25j4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:26:46 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bda35eab74so204527eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773718006; x=1774322806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0+lG/T+afF4ySmlryIDom0iKLYnuD7FP3qAhyNGYbE=;
        b=McacIj1pE6quuTF18MXplcbQnm3olLiEISiGNZYdoJBWupkESrQZZctvrAqeqFxqzk
         hK1+Mz2NDMHu/b7pzlStDFyH3YZmTsSZv5oC2szAFo4qF9YXGfXHujxxVC/hUYNri0u4
         KOm6hoNLVCRfO/BGFItTrn93QRHFAzxDgjmlpmz5pU3XK0JjWsyyhxTkaKsBa1gL0wSW
         hpwZeelwGrAdDrUV53SFgQCm9/VANHI4MwsYpCuOhcKTTPBZ4cR+X/corvih2eaIvnFS
         InJVw/spjxIIluUxHedk67PBIobYE1LJjiqNsbWChSWFsNY570zqaAeUKS1+EiL0KKko
         6rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773718006; x=1774322806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g0+lG/T+afF4ySmlryIDom0iKLYnuD7FP3qAhyNGYbE=;
        b=j3Uuhw7GFF8wL/9CcybXFoHtRLE6IBkuFrRc4rA6NnRGfLV5DBdVPeaGIoNEDhk2E4
         D9oTyMHYuiJNY5uerlETVA0owYdYe+PBqH7+pcKpAePvfetsNy8TcqYiWTXxKLZR2xQv
         IeclmEtpT1WQdCd7IBCA3hQagMtQ8PPUAUzoREYIbL+vTSjkBslcU0GOMd34puYJ/UhE
         hmJUhMpbDI2w+o457rN7PJ+Imej1A3dvYixC2azpgd2XuZLYLakEyT++0kg24NanU8/R
         NllwRPKrM816jEG6Y7bA/6OcjrhVgOWDNDNUWp/HXJ8jXbvstKp+LD9NMhniDVX1YQJL
         bwIw==
X-Forwarded-Encrypted: i=1; AJvYcCWSevLIc+Sv81msI5smH8Nv0zPiF9QzpXwGn+lbaRzIwscG25v4oRX3Uzqlgw9LnoSGPal4Z78a0yyt@vger.kernel.org
X-Gm-Message-State: AOJu0YyXRNBqxn7Ng1bhb3wAlGJMKYNbpfAzlZvvUqFJDHC6e73pAn0t
	PCYxKV4vUar+13B/CBZHMmHkkaY0UO6RqphZbZiF02f6pNSGP1LVqyDPIZm7n52LZBpeigd8HQ5
	UIdAHwHNtEq5Z6wd9lYv3RLAS0myKzOr9frGhNk0PpZUsZyQU01EuuxvhJYYPTWz6
X-Gm-Gg: ATEYQzz/VWak5t2zOZnhVmgqvLsb6u1HUAMCgBBiPmn5aDbfs3jr9zL9FdixbOlAnyr
	LPRhvXxI6AzGBXdYeNfF7va9vGCjX7TXJ67iZSZETMUGQKjZ+LL9uQbIKbS1s7dZ5w+ip7O+wm3
	RFOKYRT0VT9PJ0Spuc/8G8FdkCCFHQ19Ed/HxO2PxRz5i+PyG+Lw+TBOlsj7YaQb5D1+C0pom64
	OaYYla3iGawfCg3vHW9wLaM69+eObeY5wbXLYRSdx9mx7FD0kHbp6XjrRrLKPo8L9lMkcy6+VdY
	jkS2gqMGBcQku7wpTH89YEIZkM4dDvopzuhK1d254ksz5NdX7gtuDsUhJpubUYxcvx7+Ndtd7+9
	/lvl/FJuyaRdfsFYsx9+mU+1nsIk2B6xe79a+ucg/9IDoj0/qW869oVNRcjd3gENPUSuPtna5CC
	mx
X-Received: by 2002:a05:7301:1001:b0:2be:b02b:1b3f with SMTP id 5a478bee46e88-2c0d51f2448mr704162eec.13.1773718005837;
        Mon, 16 Mar 2026 20:26:45 -0700 (PDT)
X-Received: by 2002:a05:7301:1001:b0:2be:b02b:1b3f with SMTP id 5a478bee46e88-2c0d51f2448mr704157eec.13.1773718005213;
        Mon, 16 Mar 2026 20:26:45 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3ef844sm17445895eec.15.2026.03.16.20.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 20:26:44 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, konrad.dybcio@oss.qualcomm.com,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v12 1/7] dt-bindings: arm: Add support for Qualcomm TGU trace
Date: Mon, 16 Mar 2026 20:26:33 -0700
Message-Id: <20260317032639.2393221-2-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
References: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=c7+mgB9l c=1 sm=1 tr=0 ts=69b8c9f6 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=gEfo2CItAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=N3VNWiZ0WD7Ir0aJMQYA:9
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: xYlnpPt7wrb9Pby491-gZTaF8N5yWkbU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDAyNyBTYWx0ZWRfX7yd12CnZlIOf
 aYs5s8osrhAs//SuGwnreAvxJEAyHVvITMqNTlwigFRa6FT0HN9VdnkfYLs6ILbIy9oCnO1cx5w
 RHkI9BUCWQ7d21lnMSsI9EsuIzZbxC/PTJXQRZjcqJQxlgg8t2MQKH9i4vyRCdAoQSNAy9kwee5
 08mZTw+mfbJE5VXcwISFWbbQrS0ElaQB/k8hCK8gbhwxLisIvi+ZJfNza/D/NpywS9PxOB3ItjI
 27CPX7tSORCywZtrZ6+l7CcB/JCauOKIIUVQ7pukvKujziynAKNH03kTS9VcBWm/QSW/lYTxtAU
 YH9HOy/EbISe78YKNeTbmVDpfxhRat4P521sqItDDBeLq3lAJJyr/XgpEtZCqoE7IoaW4siit61
 a0Wx6gX3eTHNKKtNfiv7nWf3afq9sZ7hScddyefLdVqsx2qcLK6p9S0BDSmo2BUcBgkH82rLVIY
 oPttZgT4eBs+mU8MUuQ==
X-Proofpoint-GUID: xYlnpPt7wrb9Pby491-gZTaF8N5yWkbU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170027
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276432-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C8622A32C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Trigger Generation Unit (TGU) is designed to detect patterns or
sequences within a specific region of the System on Chip (SoC). Once
configured and activated, it monitors sense inputs and can detect a
pre-programmed state or sequence across clock cycles, subsequently
producing a trigger.

   TGU configuration space
        offset table
 x-------------------------x
 |                         |
 |                         |
 |                         |                           Step configuration
 |                         |                             space layout
 |   coresight management  |                           x-------------x
 |        registers        |                     |---> |             |
 |                         |                     |     |  reserve    |
 |                         |                     |     |             |
 |-------------------------|                     |     |-------------|
 |                         |                     |     | priority[3] |
 |         step[7]         |<--                  |     |-------------|
 |-------------------------|   |                 |     | priority[2] |
 |                         |   |                 |     |-------------|
 |           ...           |   |Steps region     |     | priority[1] |
 |                         |   |                 |     |-------------|
 |-------------------------|   |                 |     | priority[0] |
 |                         |<--                  |     |-------------|
 |         step[0]         |-------------------->      |             |
 |-------------------------|                           |  condition  |
 |                         |                           |             |
 |     control and status  |                           x-------------x
 |           space         |                           |             |
 x-------------------------x                           |Timer/Counter|
                                                       |             |
						       x-------------x
TGU Configuration in Hardware

The TGU provides a step region for user configuration, similar
to a flow chart. Each step region consists of three register clusters:

1.Priority Region: Sets the required signals with priority.
2.Condition Region: Defines specific requirements (e.g., signal A
reaches three times) and the subsequent action once the requirement is
met.
3.Timer/Counter (Optional): Provides timing or counting functionality.

Add a new tgu.yaml file to describe the bindings required to
define the TGU in the device trees.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,tgu.yaml     | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/qcom,tgu.yaml

diff --git a/Documentation/devicetree/bindings/arm/qcom,tgu.yaml b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
new file mode 100644
index 000000000000..76440f2497b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/qcom,tgu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Trigger Generation Unit - TGU
+
+description: |
+  The Trigger Generation Unit (TGU) is a Data Engine which can be utilized
+  to sense a plurality of signals and create a trigger into the CTI or
+  generate interrupts to processors. The TGU is like the trigger circuit
+  of a Logic Analyzer. The corresponding trigger logic can be realized by
+  configuring the conditions for each step after sensing the signal.
+  Once setup and enabled, it will observe sense inputs and based upon
+  the activity of those inputs, even over clock cycles, may detect a
+  preprogrammed state/sequence and then produce a trigger or interrupt.
+
+  The primary use case of the TGU is to detect patterns or sequences on a
+  given set of signals within some region to identify the issue in time
+  once there is abnormal behavior in the subsystem.
+
+maintainers:
+  - Mao Jinlong <jinlong.mao@oss.qualcomm.com>
+  - Songwei Chai <songwei.chai@oss.qualcomm.com>
+
+# Need a custom select here or 'arm,primecell' will match on lots of nodes
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - qcom,tgu
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: qcom,tgu
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: apb_pclk
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    tgu@10b0e000 {
+        compatible = "qcom,tgu", "arm,primecell";
+        reg = <0x10b0e000 0x1000>;
+
+        clocks = <&aoss_qmp>;
+        clock-names = "apb_pclk";
+    };
+...
-- 
2.34.1


