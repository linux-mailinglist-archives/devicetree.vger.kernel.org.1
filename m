Return-Path: <devicetree+bounces-243910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEEEC9E5EF
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 64793348E34
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5732D663B;
	Wed,  3 Dec 2025 09:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bB5wwuhY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UoXRtlxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A085B2D5937
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752501; cv=none; b=gArqDUlNKa96SKwproooyTGkKRuW7Ewom8/eYN2oBoTISEX0bb7uyHOOsNkbrxwb+2cbALpDRqM7tBeNRs0g/B0/EvMElgDhsHFuVdWyNM5ZTF+b8gh8RYIfpYve2Il10n0rlzZf2+DZDPQp05fw0/emZoRolPDXAFdqxQAB6dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752501; c=relaxed/simple;
	bh=PEDxZonQRy2VSZMykwQ4PPJaLIBYt4kx60rcLty1dLI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ImL8xl4S975/DILv+4K2DACTMkDpqkq8Xag7a7Db924UKDFBsvG5IEN5xviiNP0l0iQsPjt8xOckpogUHKIGBbhVLiZJjPELnmKRXrcLqaNns9DNKTe4wc/S50Ozgfy6AsMMj4/l1xhyn1Hs5pxQbzn/9EwK+1+9nF6tpZ42KTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bB5wwuhY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UoXRtlxg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34EJcu1428471
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 09:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9HmnPU9O7PM
	o9QplIBvyoosoGSrvOzzM9cYKw6YVfJk=; b=bB5wwuhYg2uFOVYTUVC8VeQHSn0
	5aIsCx5k2AsEX5ImKf3twE5c0xUQ4Y5eMnrBDWtD5qYYwIWQ9PC4yk6YQ1wdRU/z
	6uilVG3heHTDAkqTpn80NkE6ObAxzitu6bmykHKVIEpcmErvLdpEHxCe8S98HPG5
	O1yghX4q94tekbqM/5zP5/3ZL+Z9SYLp15UemeacEvPaeyP9wFWpr5y4eLCdjN/f
	GaXv1X8Zc/pUQ/uLbGgd3ca4u7og/j4UnDTG3Zxt/E2k16JFq6IU5U9k4t4Ap70j
	u56OhZXBGlF9rso88fv80JKiw3IykjM2JJ1QvZT9jlW+cUTzDU3+4EsaOPw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ate0jrtd2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 09:01:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f587dc2eso128587375ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764752497; x=1765357297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HmnPU9O7PMo9QplIBvyoosoGSrvOzzM9cYKw6YVfJk=;
        b=UoXRtlxgUhut1edo5p/z7RiCCrdgO349RVwLsrTdSDasPXHp17etDtb47rIk2OJFn0
         Pq/smH/OUXWVhCI7DOpoDlOsaeG5XcpAbzXKAOSHxqyHbNIiqTrcPnDH3hCQvvuWojrs
         a0/nHfqwzZZickZpCq43P5Xp+Z/y5g8v8KhUPJfistVpg1pojpiAJBHs/Xgs+a1K0RSB
         ycJmZj27L/0kcK85/ImNVNiQkexbbHi6rD0rpjSns9aw8lUoMzQYFbF/nByRcAiQ8AOw
         lnCDQ9257vtiZvHN5+kWYYXYC1bMXQ5JD/bsdzsbGN56GW4WnoTEq5HdEQQDzETU1YNY
         R38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764752497; x=1765357297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9HmnPU9O7PMo9QplIBvyoosoGSrvOzzM9cYKw6YVfJk=;
        b=X2T9MZ39UAZoQRY7uTtjnAgm6QrM5zqDBJH+tHYjiVcP1KTc3v6aBE7cmkHYhQ4lcI
         ML0QjwtUNKeFOU21JkR8Cbt/zKYSa/LX2f0K/bdZOiUZVfKfWTh3by5knGNy/3xO6Y5Y
         6Xiac0+NQGs+rHmWmdl4ykSmK6daEzCjKwH5NmQGRIdGjwqxgCH9eqs2QQ6vJ6louWGE
         elogh5ThUxF+zWOidYYArPQ+OJ+7XY53AF5b3lGDoPUxqiReu8PwG3nUK/2jyHMpUwG3
         TTyEE9PxoQ1KcufYtEVW0imU81mPBbD0CRZA+fW7OXuT8qsUaQ0abgH6qTkjuNrxwjwP
         mP3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2MqsE4xkzqnCxhtBAEgJHDfOd/gdfujNwC1k5tgajIEqJMDtMyBsU5ISz6VmbhDkoLnGI2+OkiWXq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2wIdxj1vN2JxK8kj5S+MHUlKDUixWYok7sjG09wvEjUGnvrO2
	u4FDqDi/AY/5b6KJjzdjg1VFXuJrCzx3rZMdHdo9YAND+eQ3fq9mq24QdZtN+HV+I/rJf4CW1kF
	bANSV/PFZB8qbDJM9zVyaUsJI9PoST+gsmMPq1oB0dgbiOdexQcb0rRR23JPVZkyC
X-Gm-Gg: ASbGncs8T+o7Zf+sg6m+LA2vhbT3Fjjfeoi1RV7VPHG0iCgL5x1btfrlvc6RQvJeCaA
	6s3F0e/2B5eiD+Ui9fHhYqU5tsE2zXBN3Bq2hwIknEhQFwFpX9lptJKEkUa+XO1UsD9NxiFcoLC
	9KvAt9nPc+LPH0FoTYss1gAXXsyJZVYUwDFCiy+1VYowvHMUaf5RyFx0UbLSCHPKPYYYQwKUp2k
	UHGYRuHlVbP0eA3p2JdkwAlnpKxf+fFEWGqqESK8k+eQZUqWufM0Gx8Cfrj8sshAEpKphk2M4F/
	RonDLKo/vyni5HRKv6rKTT6BJYfeqBjC3zH7opf3y7BF6piEMI7/I+9PZjSnovn4fDJK71Q/qHB
	fpyCCwfbo240SXUxuJ+lLUJvt/3Q9QcUihwhHvc7R3M7VV23UtFBFhUyQ3cy++70L
X-Received: by 2002:a05:7022:60a:b0:119:e56b:9582 with SMTP id a92af1059eb24-11df0c53421mr1391672c88.7.1764752497337;
        Wed, 03 Dec 2025 01:01:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrGALWBf0lKQv/ioLGZm6Vu6JoCdF0aT5UEQKDo4zyjylZto6mqbK6StB1wN3GdgUI4D75kQ==
X-Received: by 2002:a05:7022:60a:b0:119:e56b:9582 with SMTP id a92af1059eb24-11df0c53421mr1391649c88.7.1764752496721;
        Wed, 03 Dec 2025 01:01:36 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb057cb0sm100001866c88.9.2025.12.03.01.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 01:01:35 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com,
        james.clark@arm.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v8 1/7] dt-bindings: arm: Add support for Qualcomm TGU trace
Date: Wed,  3 Dec 2025 01:00:49 -0800
Message-Id: <20251203090055.2432719-2-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203090055.2432719-1-songwei.chai@oss.qualcomm.com>
References: <20251203090055.2432719-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA3MCBTYWx0ZWRfX+o/qgADEq+DJ
 P1L57qrp2wUs1otxkoA9YnnVFiwRer+Ox9rXL6MuVwfcDJlJW03XzWIUepT0TRCgOj5HYtz9OBc
 RvPCRk5KuW8faljLhF5/RujbZG2OvsLfV50g1TC5tzzS9cGPNp2n5DALDIgA95hTmQZiN4drsHe
 lGZMo0rCtINXQPll7hqAgR/Oe3debGQPAOhaVrmaEDPuarT7u1ly4uhajo0+9DHvp7cKP7imB/t
 H082jLC6DapHSddkK5GCCxWsDSbfd//FBXqXXG4/4jGJsXW8U82rhHs0v5j9Kvtt/AxAkOPnRbM
 S4y3sPWN1Yx9maq1YcQwTJGzgXLmUfSzxQRp3aARhV+SRNYtVCpTXf27ubXZG+loxKbE6XZm9Yt
 el8B+jiCy5V1hFvwQS3E1OED/QW8og==
X-Proofpoint-GUID: DUYL8z2H7h8yhwjRAa_ttYvfh9oyuEyi
X-Authority-Analysis: v=2.4 cv=cOHtc1eN c=1 sm=1 tr=0 ts=692ffc72 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=N3VNWiZ0WD7Ir0aJMQYA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: DUYL8z2H7h8yhwjRAa_ttYvfh9oyuEyi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030070

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

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,tgu.yaml     | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/qcom,tgu.yaml

diff --git a/Documentation/devicetree/bindings/arm/qcom,tgu.yaml b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
new file mode 100644
index 000000000000..5b6a58ebe691
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
@@ -0,0 +1,92 @@
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
+  in-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
+
+    properties:
+      port:
+        description:
+          The port mechanism here ensures the relationship between TGU and
+          TPDM, as TPDM is one of the inputs for TGU. It will allow TGU to
+          function as TPDM's helper and enable TGU when the connected
+          TPDM is enabled.
+        $ref: /schemas/graph.yaml#/properties/port
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
+
+        in-ports {
+            port {
+                tgu_in_tpdm_swao: endpoint{
+                    remote-endpoint = <&tpdm_swao_out_tgu>;
+                };
+            };
+        };
+    };
+...
-- 
2.34.1


