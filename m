Return-Path: <devicetree+bounces-187580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4057AE087F
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 372D917D0C9
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A0021931C;
	Thu, 19 Jun 2025 14:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UBld/Jgh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A1C202F93
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342821; cv=none; b=SfuPdjHNipx3MEQwJDWewEQwq1kZtNBvXx4KWxWVOasR+/33YZVkVCJl4JsoSSD+8hejdJdQ04QbV+/qN5kU3ll3rt8ubE91/0BjpcZb+1u7o27e8poYiCa3dVDGaBf6o2VHUZHlSxtub3YTFT+VjnT2+eX1roDAM5TVpM9bVUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342821; c=relaxed/simple;
	bh=IFOmcOgvkEQOE6UT1GX5a0TCQ3Ddrsxu/wCNW4a1u0A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iVksYR6bYBh2stDq+ARA9LKr899LnSMzYk6jSFqPH1nPhOZFVse/tZX0m49chbXO785amOqcYjgXrOVTAH5clyZgbmsUP8lnh5vrYoADrk00DHUNC2wss2zZtx4pthafyN+gyTgdJo+sHmNZ8aZLyD9bRj9HDB/WRndEisQRZV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UBld/Jgh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JD7YcJ019132
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rjG4zPddXl0
	PsKH45bNGGBvIH8sLOx5tvW+L9Xts+hY=; b=UBld/JghjMbzTfzqJ3EaBHHnODy
	YbOvTSsSsqwa+uHZksXZR36vXjhC/7MsRhNWELvdnxQU99aaVXfKcqmPrqCrVXtJ
	0kujUyBAXuADRQrGDFvw0TCpwZnbRcS271ArA/2YdlkDb9/901S03WjxIb2TkxLE
	M96RlK2btzC6FybRZmKsFoqg99+85hW9l3zCo4+S30KgwvXWzf73mdrqdPYqgDMn
	+v9/ca3Lr5krVAwlxNafCnz4HSg/2Gz+qhvRSJJkze6V38WqpjN7Y+0csd2EZwVY
	x8TzcS0hgxBCkvExh+sJomottE/2kzBMivz+yugqovZ8xvqpOfhQohU/dmw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791enr7a9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:18 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a6e9182fbaso12562991cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342818; x=1750947618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rjG4zPddXl0PsKH45bNGGBvIH8sLOx5tvW+L9Xts+hY=;
        b=SPm05p9t9Pi2BdQvLdAnCqSUbcgIHX6KM+cVuCqKMFeK/NnsoQMrVhCLN3v143CdPQ
         8SL5zRSyAf0oDLpsXL2pz+vT3ltaA92hjqGkNMBh+b8bN+uJhbA0Z+kNhlkCX0yDl9NG
         WsgIjTJhyUMJ7krhHxKI0mVxeqHRjf60548ESj9HvLp5+daKE2+Wg6JxI3W1tbwaG1lq
         2lAzuioKbX4ePY2HRTx9pvs5V5fj8+PhApNBxMYlwN0dykGktW7IC7j0H5m3jS/jbq99
         i/zYFDof3+OTnKyIR2FoktbARwWK0sKY3i8TvB63V/a5DGLYycNcXjrNcj4XGDAJ1VCz
         3IUg==
X-Forwarded-Encrypted: i=1; AJvYcCWGAMbH/tMZtLYdDThg7KhzUJ5T7eOcDPcBwHmTEfOt6EedKGzaNebqgLOh56somN1+V8nVsRk0McgF@vger.kernel.org
X-Gm-Message-State: AOJu0YzlZwGTXa2s5vu/0V/uYKR3csbXl4KvscvgRJXct3LuATFcdVzW
	tCQ10ngaJ8fJ9KYa3GqvM2czY+aZKLYddVlvxuyDtanyo3/4F7UK7wv+7gfSnALFgvTL5FmgNoE
	bMQKFv5IYkFWsc9sbHQOKsI/90Md3J2tMeW6edv+KIF19c7lXMmBnsd98vbzXK9br
X-Gm-Gg: ASbGncsRDznok3H5LNttxhcnNsuDUli+PB771SyWF/NcZuvp9upKNR4eAN4Kq7AJGM4
	g7PiNVoqh9qpr6z52GXSZCxgQ7RVbkk1L9Vu3WLfOZktWRM12MgFndlx4ilNG5NYca51aGVx1DT
	XJTxSP92XVvksD3ayhSMTqqGBbXVfDnUBR/QwixiL+2QMYHmohV0wX+cykxrt7pvET/vQGbL6X4
	LhdRyAUG75ZuXxEQ+MjwwRzhpL+TvspD/eri8LKPCRb3TWUSTAn2yuIvAhwAuEIVbwjC6MdhHIT
	nNzJ1xTbssf4hjdRVXYht2IkLuJRU4YJshcjz4elt4pQ12VP1NLSEsSlEUphJu3lqOFF/4Ilg1r
	t
X-Received: by 2002:a05:622a:5c17:b0:4a7:937:4620 with SMTP id d75a77b69052e-4a76e14ecc7mr47625551cf.1.1750342817701;
        Thu, 19 Jun 2025 07:20:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlppA8sGbGQRFqd2N+SMTI1PPhRu7R/h34nY5vhkPBHfCbnZx2OPccT1Zo399ooSWXltrljA==
X-Received: by 2002:a05:622a:5c17:b0:4a7:937:4620 with SMTP id d75a77b69052e-4a76e14ecc7mr47625141cf.1.1750342817267;
        Thu, 19 Jun 2025 07:20:17 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:16 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: media: venus: Add qcm2290 dt schema
Date: Thu, 19 Jun 2025 16:20:06 +0200
Message-Id: <20250619142012.1768981-2-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: CBAZqSqccBYj96Go0yxC2yKeCMFzxYZT
X-Authority-Analysis: v=2.4 cv=D6RHKuRj c=1 sm=1 tr=0 ts=68541ca2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=UBg8vxrJu69tSQrAULkA:9 a=kacYvNCVWA4VmyqE58fU:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: CBAZqSqccBYj96Go0yxC2yKeCMFzxYZT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOSBTYWx0ZWRfXyuY3QlF2sNcI
 4/BzO/l9kLF4ZzXc3qIzlfr3BpvUM5K6xDWESzpzxWRf34XtPkaMP83H5/lPb708rWTgwhjPDP6
 bzwtwAsaHqUx7yc7cePX5Kky5ag04n9KuJAcmVmiAdWSgZZprl2bqwGJR+BslFYT2/rH8zbeJ/T
 lSAXxCWDyD76vRvVVWPgSuhgNZXbi1HeaCywxOjRCKMU3ydTASFX1J4wpYK3iaQFK0uoEtx/40L
 HN6UWhWAw0wuVWPld/QTWvC6aOzFM+7eSixJ+Djab9E3nFG3MMvlNAyRnWmlwmjqVJiG+CzPDdg
 VZ1NR+Ex3hsXzJCtgJEtMEHPon7I43p+I1masyn6PVEwibd6UL9W5imXchRsmKu8sc2tb01bF7s
 3HppBdW+cfZWCeSkBdSzwp1sO8omfruIPDS94CSNZxhSDLUSSCsW1laOqCEBMBOEdw8C3+Kx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190119

Add a schema for the venus video encoder/decoder on the qcm2290.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 v2: power-domains set to 3

 .../bindings/media/qcom,qcm2290-venus.yaml    | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
new file mode 100644
index 000000000000..244559e1bdd7
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
+  - Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
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


