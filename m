Return-Path: <devicetree+bounces-247549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A2CC8B72
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03DC4308FC0F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088733491D5;
	Wed, 17 Dec 2025 15:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WDTyBQsF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LeWb3Sqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D1C3376AA
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987023; cv=none; b=EA//5zqmz+UF6Czaj+ithUoh9GtHVE9SDEf9bRe7OM8sjs4cdypkB4xZN/zckNAgRt/CtCjeOTUhhP3udqohhVR+5kR36Ng7usg8IoPf7nTUEwx6sSLBXYCb6zQdV6KAfNeyYHSFKf5eCrLmRXOmm6yQ9p5xgrXrq/WMC9EB1Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987023; c=relaxed/simple;
	bh=1L81Yz/WcQ/S3liNFCbUtyvsNkHRQcRm/2kVgwLwzsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bLS199srY+V6rd64VWKU2AX4CACS5XvtEMvOCp65YQrdO0ZtaKoAsj97E9cHBc9kgnLb8hkFOqBVTAfEDlB9LEPU5vxTk6kW6hV3kuixpoJlI29Z/XxGWwrlF2xKt1qHMSVFUw7lUqabsnXzqDi62NEU2Jm46vlBl6QmVG3tLKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WDTyBQsF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LeWb3Sqf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL60x2503074
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mqfhJyaQiIaIFVr6HGGzaCwXhsDjzwHSW/nArmX07eA=; b=WDTyBQsFOu9V17cT
	7sDROvgv7LZ0jwRdKuxJBwvqTHuOkhdEUc/XveRqnD6ltL/wdrRqmbx3kAbbPuSZ
	1Xt+mYmb2P1o0F5YWTeNFcDpVEFjiYn6famA5lNSGZadXllM2OAwURIZ9JPDI7Z0
	mgG+Bu1tXxjzQA5O6NvNJVxnCCfkzlIkf4PNRUQ1tRkLp2LYVhvIV7+DOKdzM8u+
	k51gQmldSuXZuz2mLHl+WlcvnyBdTtXmGAuOT6nWuWDwo2KFFJ+qarOjmRSr++P1
	F4PeFJf0JfkY6nBmdW0GbmuepouhUEjcvb92uglAXXCO3ijw+6ChHwZr8dM2+ifD
	YXDMQw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3rqa9j45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so49865631cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987011; x=1766591811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mqfhJyaQiIaIFVr6HGGzaCwXhsDjzwHSW/nArmX07eA=;
        b=LeWb3SqfDFKqFU0luj6bc4FGwxoA9DexiHzF+RVHEK1CL//DvOVzFVID9iFJCQuHhH
         K4CEpXiwW0saqId5hF5d2X23aAyJA6klbyDAohrxBaZov+L3waOZ+Q9VIK1BHTuIwoq7
         LPmmWfLgcjL/TsyYCvjWiCk2g0deae2ogS5dR29IbSD5cHjcug50ciGbbbfb3XrueNnj
         NySYD5wcRFM/K9qrU4irejeOXjgZGJF4FXZKR7Av6pYDg6OHPaMi4oe4tsWO+M1EewO7
         dXmh3g2eQzDdvR2T3ye7mKfN8hxgDXjfSWnxhOtliEHZZELl5gICaqNlJTDJHYDL4CBH
         MldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987011; x=1766591811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mqfhJyaQiIaIFVr6HGGzaCwXhsDjzwHSW/nArmX07eA=;
        b=SQFmsNnaDE3bBCtUzjI6TGpdrXtnh9htdRMPLG3tm41RpBGNJPn2TW7Jyi0lTk7COd
         fXIUkIqrHuwsK8T+o0cu6MM3nI94MER5NyoieXnlKMUs4BcCFfIdNncR4Fm+/nBbma+G
         43CL4IkYvWBoDI4hk7YI9x7q0Rg+xLLzrrxtPfAu7HtjMkXU8Odj/xtxK7w8i6KlaUgx
         BnQRo1rvQsbdLnAIeu4j/riAvK1X0t83Yj9ARBP/62fLB6ZQCAfQsy9tFx1GyRbiYjur
         b8lbGhvVt8OcIw4PQTu2hjuxYTq0ApT4TzmwV/bQxMw5WjhJ7rDpHFyookWKYEQUzIDe
         vGhg==
X-Forwarded-Encrypted: i=1; AJvYcCU3DmXIFd20yP1mu6EYQfx31PkBsa2AnVBFV4n/Ieoi05JYaPQssRMaLU7GgU2s/1szCOUtfGqxtjKz@vger.kernel.org
X-Gm-Message-State: AOJu0YxohCLqTU/FU5TPoCwbtuvIFSHRjmX39Ut/fEhxh5sW/WF1R/SV
	+T2eL7BK5GSpPvvM8tordO4IGtkSA3rYzex3IPbcS+q/RCL87KEAnYrTlQdrkJZFRE3JRYMepI5
	cG+3K9uvceBxQi0JsDUlcEZqrl4Ctn4iWEzeGyzS4zQUt1AwbwjjgmLf+FTd6SXkY
X-Gm-Gg: AY/fxX68BxnzZb4wqaBZuLcgnx4bWnZH9G6J8TZ24sTcw9g+Tiu22NY99rTd/WFFdsw
	/MmmgSegjmRwneAhOTFhXsuR0z0LlS1XMWAPnjIASJwnXENZ5gZiJH5zK1b7/brIdXTo7N4F/fD
	eSxIgIMM00D9aEaRJMvwJn5EduxViIgVsqByD9wBY/mVF9Lxvm33+MsTYARlE0TTGmu8zSQMjKL
	AUzccW5uEnazW3noIv0ykZkrmBVmKPgKX87BxZKWJxPkhiFRJf9gRxvMm8mfSXDymAN3XmiJ+gT
	UQ1kwDK/a3Oz1cxJtGRliX8BD9GI3tsP/saGRD2yuVpr/7bLF6nEN4pITslGuO3D3WKHbR7sirY
	IGaD8y91aB+xUmkyp2iCYEzas47veSDvz
X-Received: by 2002:a05:622a:209:b0:4ed:698c:ef58 with SMTP id d75a77b69052e-4f1d059e3edmr228735541cf.41.1765987011482;
        Wed, 17 Dec 2025 07:56:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCyNfiJdEXkNunSM700YNp/nBeTz2A0XhSzvvVmVUKLROjcCp4o5bGrLqw4xvZQciAdNrbzw==
X-Received: by 2002:a05:622a:209:b0:4ed:698c:ef58 with SMTP id d75a77b69052e-4f1d059e3edmr228735111cf.41.1765987011025;
        Wed, 17 Dec 2025 07:56:51 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:24 +0100
Subject: [PATCH v3 06/11] dt-bindings: bluetooth: qcom,wcn6750-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-6-ced8c85f5e21@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5619;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1L81Yz/WcQ/S3liNFCbUtyvsNkHRQcRm/2kVgwLwzsc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKyMYG/hpuFFtNCgzW2WqkXoUfr+VhRFHcxw
 ERf75Bar/qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSsgAKCRDBN2bmhouD
 103CD/9zmoh3SnsYF8TbutSTSya4oEFuGi2XZ74vp3CpjJE7V9Tuc30uSLKMtQcC8rlsa9hSHlV
 NWPlxTASWW1cCBqqVPVipHwjZ1jOgkL2+P+i9GRY+VEi3fh5qHzbVYC8NvU1szDkgzwmvIllmwg
 ukrS2m3dqDyipF9tr2IScqjWOLt8oMzPXVYkLtqefI4ExV9xyZOt6pY8d/qXVdY1X14qbc5GqbE
 +CILVpcokCJh9Reg5szg2xTx8KXZfjUtv5mYyXTK3uWCL7x/oKkrAxkrVCz6sD3gQWbjmcN3bWo
 BkjB6Q2MYlNvuWYnK+P53fVbgrvBbtSkq7sGyF8crK7Dx56IzXpsGdA7dLBI+3BzGedN6MSPsIX
 BK6VmSBhDR9Wd6FzruBAhTbb5PdPe6+jVsKknR1O4B01pzy3l+DpgkrsUIgSPU1vxRW85+j6y40
 Fn0UeQ48VfdU/csIH6RP4PYW1tAYI2H0JWWkHss2FzdLBm37bmWyG9HGHHf7EQb72Xlo6cfX6mz
 aaND//95dfwYFNxRUW0GVbqOs4877goMiGGkDeP1URK+K4MJEHWhP8JwOlFjBYamYwjDLzz436V
 bAMFKuFjRgIwS90gx1ygludqyGR5SUPqsLThB8e/Fd45cRW4sZ/WrunWYbK0cY7aXyEV3gDeUqa
 ljyZk3uZPc2Y9UQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: glcL6zrX_h_yt1HxM47wKbXc5pZd5--J
X-Authority-Analysis: v=2.4 cv=ALq93nRn c=1 sm=1 tr=0 ts=6942d2c4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=HiCyOsSRabS3u2SmTBgA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX+96NWqJ8LvE+
 8DQSWGwEuV5J/IPWGXgeodNAYcV7M2j3CiYsk0Ln5jAIep5lweBGVbPyv1Cv1AAQjwUQ40J+ZfK
 +9IQ2yqViKHrS3gkFkHjLbmVF2NCjo8nxONPN1P9W6CHTPq6z+ZelYgZ89U+V67MM6vS0wmtDpA
 GLRmtFPaDciiQhcC4AJPnewVVgr6Nz24QbPhNBMwhOd80q0EC1o3tyt56K/qGdO1+H83OcIv3sb
 /uobHqrN5XpVukoEjMuS3Bj2cjPJGvBYaII3f0lAbvVTNd+sMnA42jnc5FIZVLGH46Fj0kt7AOy
 4xK0IWpXv88+Ara7SkT1EmvZPFzeNoqkNBYVnVhfYhb0KhmMKaoLNjetGX2iVTMcQqhts4DQ81L
 qo2nszsgYn16wpGLIKbwgYDlMShPEw==
X-Proofpoint-GUID: glcL6zrX_h_yt1HxM47wKbXc5pZd5--J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170126

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn6750-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/net/bluetooth/qcom,wcn6750-bt.yaml    | 86 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 45 -----------
 2 files changed, 86 insertions(+), 45 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
new file mode 100644
index 000000000000..f11d12c205fa
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn6750-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCN6750 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn6750-bt
+
+  enable-gpios:
+    maxItems: 1
+
+  swctrl-gpios:
+    maxItems: 1
+    description: gpio specifier is used to find status
+                 of clock supply to SoC
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddasd-supply:
+    description: VDD_ASD supply regulator handle
+
+  vddbtcmx-supply:
+    description: VDD_BT_CMX supply regulator handle
+
+  vddbtcxmx-supply:
+    description: VDD_BT_CXMX supply regulator handle
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddrfa0p8-supply:
+    description: VDD_RFA_0P8 supply regulator handle
+
+  vddrfa1p2-supply:
+    description: VDD_RFA_1P2 supply regulator handle
+
+  vddrfa1p7-supply:
+    description: VDD_RFA_1P7 supply regulator handle
+
+  vddrfa2p2-supply:
+    description: VDD_RFA_2P2 supply regulator handle
+
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
+required:
+  - compatible
+  - vddaon-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p7-supply
+  - vddrfacmn-supply
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
+    serial {
+        bluetooth {
+            compatible = "qcom,wcn6750-bt";
+
+            firmware-name = "msnv11.bin";
+            max-speed = <3200000>;
+            vddaon-supply = <&vreg_pmu_aon_0p59>;
+            vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 5581e810f08e..1ee97089e1d5 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,7 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
 
@@ -62,12 +61,6 @@ properties:
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
 
-  vddrfa2p2-supply:
-    description: VDD_RFA_2P2 supply regulator handle
-
-  vddasd-supply:
-    description: VDD_ASD supply regulator handle
-
   vddwlcx-supply:
     description: VDD_WLCX supply regulator handle
 
@@ -98,19 +91,6 @@ allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn6750-bt
-    then:
-      required:
-        - vddaon-supply
-        - vddrfacmn-supply
-        - vddrfa0p8-supply
-        - vddrfa1p7-supply
-        - vddrfa1p2-supply
   - if:
       properties:
         compatible:
@@ -142,28 +122,3 @@ allOf:
         - vddrfa0p8-supply
         - vddrfa1p2-supply
         - vddrfa1p8-supply
-
-examples:
-  - |
-    #include <dt-bindings/gpio/gpio.h>
-    serial {
-
-        bluetooth {
-            compatible = "qcom,wcn6750-bt";
-            pinctrl-names = "default";
-            pinctrl-0 = <&bt_en_default>;
-            enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
-            swctrl-gpios = <&tlmm 86 GPIO_ACTIVE_HIGH>;
-            vddio-supply = <&vreg_l19b_1p8>;
-            vddaon-supply = <&vreg_s7b_0p9>;
-            vddbtcxmx-supply = <&vreg_s7b_0p9>;
-            vddrfacmn-supply = <&vreg_s7b_0p9>;
-            vddrfa0p8-supply = <&vreg_s7b_0p9>;
-            vddrfa1p7-supply = <&vreg_s1b_1p8>;
-            vddrfa1p2-supply = <&vreg_s8b_1p2>;
-            vddrfa2p2-supply = <&vreg_s1c_2p2>;
-            vddasd-supply = <&vreg_l11c_2p8>;
-            max-speed = <3200000>;
-            firmware-name = "msnv11.bin";
-        };
-    };

-- 
2.51.0


