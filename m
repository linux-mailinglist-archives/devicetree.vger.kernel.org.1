Return-Path: <devicetree+bounces-188472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E079AE3D53
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 930DF3A46E2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2272441B4;
	Mon, 23 Jun 2025 10:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aFTDNmbC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B986523F296
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750675883; cv=none; b=WNU2Ht4TejUwZrPiRXUTTNFtHFeRrBf6f82KZErJxjiU0Ysx3BJYFPfzA/XEQRbYPPqrV8stqXDMj+yxAojDpsL2ojU44lIwthr4q9cimI+IlrbOoprfWVbmwmUSurRT9XBO6DTsjdg9KcIYJYGlDNq5VIcRCRubYhtjXAyLCCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750675883; c=relaxed/simple;
	bh=v2+PUpyQuEpd6Qy8uGCa9JWlCfSUOoQ6R2C6kBCVvKo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LReWJRCR8KrEic1en2vSXjLB1gvauj8xSieU4+bFlbRWy9ikbwyTlf6YWGH3T1bS5UFmKkHLE82+aplLbgFDIOZvoEZPskbRPtV6YMIo18OkQqxtgOjiQfvReefo321GpaxXN9Pnt95nb09VipHfPWD9UAysXMaSg62gwZbSZDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aFTDNmbC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9AAXu027628
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/IEG3Lw7qKW
	3BELpNeKdPEcAL7+R57y3cNniHNfPDSA=; b=aFTDNmbC4gERKiqYpPjNcyRg6VB
	a1+LFmWTF+y5RykWGGeOBOq9ntqj7WL873c8hyvO83obJMTB1YwIvq6maVL5GjQ4
	g6WL0wExK8GSABXZAMpUai0GBpYdK1ZddIb9PdyWvTMMZ7kR6JhC+08hn6pDObY1
	bGSuBcKdILA0Slm7rwvCDm+5HO9nTA5vyEnY6rJe27hxjVlhnNwmrWU1zdtOeF57
	IKhEfHgy4EjLnQ8eWZcKO3LBjd+umCP46yPjwsKRZ8OTx9g8hpUjQIiKmcnz5Thi
	h/KAx3hrzrjxZH4UsCC5qdNJdNK5qFSz0leRUa2Aza+jZPjsFDqCuwTYo3g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eccdjf54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:51:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d38f565974so680244585a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750675873; x=1751280673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/IEG3Lw7qKW3BELpNeKdPEcAL7+R57y3cNniHNfPDSA=;
        b=ebq2b8iPqiKHu384dtuciJ+0x4kYP5HZxSLsfKFjdLzMH0fblLwf3Qnb2yK6yl+Riy
         gKqX2TXUQdft+7ltM9s8Mh4uRnkgRTFPCKsmFS0aUtdd1pSr+rzcHrdlCsjCHSzdls8D
         h1TofeZil6QAVy2bTx35Q1pvYvgiYRP7FcBfze3m48kyJuP8c8ZDaAnnvoTd/CtTS2Iq
         P13/1md7JJcKdWGz572B7v2Z4PgIV7fHiMVJ+TF4Zp8WJ700P70PuQgn6WIvZwBSYN0o
         bn7xDN0z58jZS6Cpe3FY/HIeJeHi0dSho/PTeBN0GripPAS0wAUpOJP3CzBH54C2RucL
         VXig==
X-Forwarded-Encrypted: i=1; AJvYcCXMBK5SpWmwij3SszBw0+4rFIx2Bk4h2UllRlYrCu4wG0ZKMU1gZGFf2oeXSsnqVUeMuvkr5h3vyLZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YwPPvBUDyPXJqeQkIny081R9u1zQRtzbAHE0sfIyqMexaKM69me
	dpxxl1jkJGhOo0uaDtGCfQlZlOjQMahlOinZIVNIX3X3iy8EMCoBj94QJwHU+vm5icGtwodmHhb
	oxbx99caKL74BE8MYhB9wXAwHl0aMudOw+pu9wvsk7qp27jYQN8W+SItOsvulZX6F
X-Gm-Gg: ASbGncvmzmcuvlqKDBMLxW34IxWQ8bUL3GCQE+qmHlogAY04sruYamY+eNzXWj2kb19
	VbNE8mZzwe+IUjsPbi8qWBrsQggpB9QLc1Wo8cXO3vfZvTxVGyeHTHxK6F5RFNjcAcQlMHbucM4
	k2WLAvVZ53KbLf7JwCnCIVlBHBfpkupnBPsIDC9Yl5Ih9Fer7XgbGTAC6G9RZd+DkkRGxRnl/5/
	fm7Y9bc93cdGjIXsbbhz2ReqRkIvbxvQ+M9ntltvV2BBIk6r50okkdUV7EloR1y7fMtXxpC3g0o
	Nun6aoeArico1zLODJUQa2lkCYW99WR0DUQ7CBenl8t/DSh7X1Nm/nZPozkKfv1emMhcw/j118I
	j
X-Received: by 2002:a05:620a:190a:b0:7d3:ce9a:565b with SMTP id af79cd13be357-7d3fc02d785mr1549172785a.14.1750675872890;
        Mon, 23 Jun 2025 03:51:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeczlrp2KZQuD787VGdM6ojUIpBwCMHv7W0cpZRLBJhUTOy72V7bvnKIlMEc3J+WFbW7fSOw==
X-Received: by 2002:a05:620a:190a:b0:7d3:ce9a:565b with SMTP id af79cd13be357-7d3fc02d785mr1549169785a.14.1750675872434;
        Mon, 23 Jun 2025 03:51:12 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45365af83easm100821835e9.25.2025.06.23.03.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 03:51:11 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/5] media: dt-bindings: venus: Add qcm2290 dt schema
Date: Mon, 23 Jun 2025 12:51:03 +0200
Message-Id: <20250623105107.3461661-2-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
References: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LOVmQIW9 c=1 sm=1 tr=0 ts=685931a1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=UBg8vxrJu69tSQrAULkA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 3OM9hd9VeugM1C_OOhJP_IDnplUqwmbp
X-Proofpoint-ORIG-GUID: 3OM9hd9VeugM1C_OOhJP_IDnplUqwmbp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2NSBTYWx0ZWRfXwP643jxaAKJ0
 bnSeMGbvOu7P5pCMBnjpog+GVsc3mrkqLwVNv6RQAq27zjRBofmkBNOq4k9jtLOncAIeKv43Rip
 Eq4pvjKa/kshQ7ls5uBCIiscYSuXx+YYWFB32NgrjnxrG4uJXDMSOM6NJTrZqcrpAFXVo8LsuAY
 aMFGjS6aoHGPnCEfc3fjaD1TfJcUCJcQB2bJSQnxeJmunYSGBtp0FSNdrNw3FlkQuuYqbw2DHe9
 1M3Y5bBAROfXPwG69RrTd+95oKxIi6nWgEPVAzFc+T5UMJoOmschTiIJhx4uEOQD9xYoRuyrF78
 +u+5ZVKzPBxWumSrHjUYbzqeix2KUxS6KTADtlFgnieWMsIKJDoxNNXDOb2w3/d0TGD54Agx6Ld
 Kiw7U0/Wsapu1lM7U1f+Jx01cYdKoirTNi6KggeJ3VXUospOrBeAq4RLzmA8qRJdsVN35OzX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230065

Add a schema for the venus video encoder/decoder on the qcm2290.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 .../bindings/media/qcom,qcm2290-venus.yaml    | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
new file mode 100644
index 000000000000..1b94a95ce514
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCM2290 Venus video encode and decode accelerators
+
+maintainers:
+  - Vikash Garodia <quic_vgarodia@quicinc.com>
+
+description:
+  The Venus AR50_LITE IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,qcm2290-venus
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: cx
+
+  clocks:
+    maxItems: 6
+
+  clock-names:
+    items:
+      - const: core
+      - const: iface
+      - const: bus
+      - const: throttle
+      - const: vcodec0_core
+      - const: vcodec0_bus
+
+  iommus:
+    minItems: 1
+    maxItems: 5
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: video-mem
+      - const: cpu-cfg
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@5a00000 {
+        compatible = "qcom,qcm2290-venus";
+        reg = <0x5a00000 0xff000>;
+        interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+
+        power-domains = <&gcc GCC_VENUS_GDSC>,
+                        <&gcc GCC_VCODEC0_GDSC>,
+                        <&rpmpd QCM2290_VDDCX>;
+        power-domain-names = "venus", "vcodec0", "cx";
+        operating-points-v2 = <&venus_opp_table>;
+
+        clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
+                 <&gcc GCC_VIDEO_AHB_CLK>,
+                 <&gcc GCC_VENUS_CTL_AXI_CLK>,
+                 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
+                 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
+                 <&gcc GCC_VCODEC0_AXI_CLK>;
+        clock-names = "core", "iface", "bus", "throttle",
+                      "vcodec0_core", "vcodec0_bus";
+
+        memory-region = <&pil_video_mem>;
+        iommus = <&apps_smmu 0x860 0x0>,
+                 <&apps_smmu 0x880 0x0>,
+                 <&apps_smmu 0x861 0x04>,
+                 <&apps_smmu 0x863 0x0>,
+                 <&apps_smmu 0x804 0xE0>;
+
+        interconnects = <&mmnrt_virt MASTER_VIDEO_P0 0 &bimc SLAVE_EBI1 0>,
+                        <&bimc MASTER_APPSS_PROC 0 &config_noc SLAVE_VENUS_CFG 0>;
+        interconnect-names = "video-mem", "cpu-cfg";
+
+        venus_opp_table: opp-table {
+            compatible = "operating-points-v2";
+            opp-133000000 {
+                opp-hz = /bits/ 64 <133000000>;
+                required-opps = <&rpmpd_opp_low_svs>;
+            };
+            opp-240000000 {
+                opp-hz = /bits/ 64 <240000000>;
+                required-opps = <&rpmpd_opp_svs>;
+            };
+        };
+    };
-- 
2.34.1


