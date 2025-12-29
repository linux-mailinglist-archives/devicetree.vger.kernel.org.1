Return-Path: <devicetree+bounces-250038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA90CE5F09
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 05:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D5A03050CDB
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 04:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF7FE256C83;
	Mon, 29 Dec 2025 04:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DjtcAL0L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SwuinBkz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC02222B7
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984150; cv=none; b=uJIgxLif+3HSdomFWdKHR5LQLxNkktpaj0xAkDZ9FwzLakGK8hK19Bj2Vb7/80dmz3l3NN5/laJ5asw0eTMo+o08DqNYd/A0snktb3XIkwxIhtsT7KVWS18zDP/7KxIAZNbr71kNXga7rFNVa6cU20wnrYOWgDVPEPzNEOxYk2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984150; c=relaxed/simple;
	bh=yk6Shoy5O8v1EYs5JT64vT63gkpQeABWEK95a81svVE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QFkRSUUOjF8/NWsbcjrYU0VPHgPeqFok5b2or3gArVu1v+D0Qf9+B92Vr0dFlFlNPPIowUK9o2i17mV0lkvXrnMmbTSpYeyvvTdosKhc9K1OA3eRaBBY5QCc+j4JZMyBRuQfPV62hcD3tCE8GMJ4eqCFHxLW44viTK9DHatXsNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DjtcAL0L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SwuinBkz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNItTL3278589
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=u4U1kB4Q2fy
	dudF7juhCBuS6U0WzezX8EPqW4/O7jMM=; b=DjtcAL0LaSV2HT/j2FY96RRcXxT
	bMv8KzabSrrVGmaJFe5cwnaU8CYyeYYDsN9Iua8ZI79Qy2ZUdA8xlgVRBl1y1djj
	4VtINWDJZKE5DeePXaSEZL4z2sOUf+nbPEP5e0QTa7BKl52rg4do67IrvLVw46US
	LqJ2nO5CHF6rha+PprZDPGNvbw9EQ+NL7eKBh1lrxms27msiuZgnYR+IGxvXg7Du
	2EnMP6Kydy0FzIRYKRmUlDLSSIeOuy2Tv4jEL4ncLGSKRgUjlsgIxoN4cpTFBWec
	ulP78ta1DB3JD22vM6fLcXS6iaLNHqUb7llFKVaBBhnSrfa20XVOg327/og==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r6b9gy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:55:48 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b90740249dso15740733b3a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 20:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766984148; x=1767588948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4U1kB4Q2fydudF7juhCBuS6U0WzezX8EPqW4/O7jMM=;
        b=SwuinBkz6eiA3K2JEZHvfQQphENJr92yksfq1NeRXqrIblphHYV+1doXBo82hyzVdD
         DzI3Z3YTSK8U4uLSaH2zHZNksVr4LPxH9Dh+wmZ50KZz1u3p2XMeGZztprJVizh0nxF4
         N2KSKKaSJanY7u10wUUzAkx3uPO5BRqvXGtb8pq7wt+cIo/3rzbdRJ7suBCuL8xqcYEz
         tPDneQQUtfyLCYybE8hW3C35X/wnhfJ6fkHNq+1g9hxieNFtWonBu/MXOONRBoOwX5tO
         quS6R0iJ9XE8AhKrH0x71v/N6IBnKFDii1RGRqcXrvvthQcGLtXnIeJqzId57Xbd+sbU
         Pj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766984148; x=1767588948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u4U1kB4Q2fydudF7juhCBuS6U0WzezX8EPqW4/O7jMM=;
        b=hwLTTh4VP0ki8UuaFJ1gg8Y6v/TOrKrIRN1B77Lvo+NS2Q5fuS4iLnTGwQWUPoSJwI
         z1vuQYWfI0xjltyqzIxXqt1VldUIm/uHkQebFT4RyaxvXaSRXzfAdr14UyBICsiYLTT5
         N2hD1nvQFv6Sjgcixq8T6c3mDgNUY+Ba6qD9yfNGmWoi5xLinkt/oa3Ht+V4Gd5rGsj4
         NwEQvzrfdRvQ/hL9VFifA/Q3/R7y1UUraQoKyxw9Oe27Kri0Z/duBfr1LU+V9J/VQZUr
         LWuX7U0oSCFLmGQ9L0xriy0gMcYXh2zETXxTv6XIXS0EC9+025d/otxlb491je/rFgl6
         Yb9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCP08vXIYR0ZY7yvFfmS1rfj6AJSfLq/tDb7ewLOlFJy6dXa65Q7wHuqXsL/pwjbZH66Pa5YOhX/pv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0geSrtg8zqh1H1LX6lB2bH5kKLKgp/xqXTflZUOEZzuutRZNZ
	FmBvEqxE2EqNwjZ9QzssPc0QohvPoRuwyBfLZWuktAZyLdEpTc5wllInHLVrvaNafw0noroFqA4
	K4v6g/uGlFHXrjERglPBRBMoNQvlpr7SChbhUvvjg0pEr39zmuZnAq2WXcK7cfAsw
X-Gm-Gg: AY/fxX5+Yo0RjiU1Emd3aka6g4UVsfO2zL0/6NvpC9STOPUrtJPCdqeXUyZJmY6DtOv
	0nOgrKbvb/uqNc6xwYMjYQN8k4K62f5K0Frcje8misLry5njtmINuDp91erTJs5YXok5rqlBMrU
	hR9dGTaGU8HN4ruechfdIo5Lvvax2pTX66BBwQz5kBDmd41hHzaj5/QruHeTzRmLnkdG/mjkhLA
	pkb9ipstYIuhfPhfAXGkawIuFv1G2CMtOSY2xjEx045CYcLXH1xj3a5BUm76TpbI7PdaIM0B6P6
	xNOgYIzqPfG4e4+yTS3VOGBwHcpLhqNKpD3bWGauMYg5sURIwNKwDbhwFuX/nkwT44MCigtBycD
	IxiWDwgNjXACHRX9ds4ygbP0aNmD7iTTVQlC41Whi1kw=
X-Received: by 2002:a05:6a00:801b:b0:7b7:5066:7f9 with SMTP id d2e1a72fcca58-7ff6440114amr29412853b3a.7.1766984148029;
        Sun, 28 Dec 2025 20:55:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZ7itRv/qOno7fSkclPj/Oe85EwDMGmDxortxJjTGBEJ6VRE4EkRIT3D4Fgw2ghgxEx5H+4w==
X-Received: by 2002:a05:6a00:801b:b0:7b7:5066:7f9 with SMTP id d2e1a72fcca58-7ff6440114amr29412806b3a.7.1766984147433;
        Sun, 28 Dec 2025 20:55:47 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm27902080b3a.39.2025.12.28.20.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 20:55:47 -0800 (PST)
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alexey.klimov@linaro.org, krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com,
        Nikunj Kela <quic_nkela@quicinc.com>
Subject: [PATCH v2 07/12] dt-bindings: i2c: Describe SA8255p
Date: Mon, 29 Dec 2025 10:24:41 +0530
Message-Id: <20251229045446.3227667-8-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
References: <20251229045446.3227667-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=695209d4 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=apMzWF-kzHp83YoYYzAA:9
 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: LBTMTqdVGenA2GNkRBoHlkxtin19X3hZ
X-Proofpoint-GUID: LBTMTqdVGenA2GNkRBoHlkxtin19X3hZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA0MiBTYWx0ZWRfX3yCveQF7mueR
 GElD92XgXFpOTWJLdajRH9Nvc3W7KTjFiuGy1O+/UUdjdiORUmT+e7nc/XytYx3tVPj/3bMyXlW
 1sacCl/hHeSX3w/GThgy7lrHxsdpX41JmogPRXbUA8onAPhekWxb6TlI8FkH6Xd7WsymV19zL6W
 yGjgss3Rz7fRO/OHzqADJ6Lwse2xbwJYH8LER+RQhXScFeai/SaMIuHqPPWWge2qplorTMziwSp
 n8/VuA/w64npVDuRpgt3YCFeMTb9m7j8Dbv4fugiV0fjUoCyvVIhVD9f5Yl5qdiHDUhi1DsDCKU
 qqPTC3VDjyVIPbQUwiRkeiJ8hEYq22nHHIoBp1q8I5XcnyuiuR6JmDO27CgAhyuyeW2JZKYMKyL
 KhbRpIokkgfwIGhyoEnkg0IL6DtlNU0BjZXEoFpId3c0U70eYl6qWL6xZx0D2rBKen+KmWCZP0G
 CEiT9ZxKHw7cW6q33UQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290042

Add DT bindings for the QUP GENI I2C controller on sa8255p platforms.

SA8255p platform abstracts resources such as clocks, interconnect and
GPIO pins configuration in Firmware. SCMI power and perf protocol
are utilized to request resource configurations.

SA8255p platform does not require the Serial Engine (SE) common properties
as the SE firmware is loaded and managed by the TrustZone (TZ) secure
environment.

Co-developed-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v1->v2:
Krzysztof:
- Added dma properties in example node
- Removed minItems from power-domains property
- Added in commit text about common property
---
 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
new file mode 100644
index 000000000000..a61e40b5cbc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml
@@ -0,0 +1,64 @@
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
+    #include <dt-bindings/dma/qcom-gpi.h>
+
+    i2c@a90000 {
+        compatible = "qcom,sa8255p-geni-i2c";
+        reg = <0xa90000 0x4000>;
+        interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+        dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
+               <&gpi_dma0 1 0 QCOM_GPI_I2C>;
+        dma-names = "tx", "rx";
+        power-domains = <&scmi0_pd 0>, <&scmi0_dvfs 0>;
+        power-domain-names = "power", "perf";
+    };
+...
-- 
2.34.1


