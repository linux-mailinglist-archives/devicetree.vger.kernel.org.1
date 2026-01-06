Return-Path: <devicetree+bounces-251725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EA514CF636E
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 771783017841
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24004296BBF;
	Tue,  6 Jan 2026 01:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MBPrWdRH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g8E0AVSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED46828640F
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 01:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767661286; cv=none; b=YJzQv7D6FgMciZ4INwE+yBfp0V7cMULpBeJi9/0ob9Zd4mLKysGZtw/UaYEeAbK4XgJ8qj/Yyy1YvYtqsCdcM1YNADmJzD3Ciz76ADmJqZ8pbfUMS+tmEh910ZXlF4Q4WTj7ZyqH8jy5Z3hN80P4z5oKrhH6mHFOcFvekths9H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767661286; c=relaxed/simple;
	bh=+qQ1M2lLHUY9VOnTAxKFSWl8p7pJdw4ZlpXlukoKYNk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m2B/cNiDxoLcIbLX6MrVCMhSt3jNfhIZAmuaSOvUv9wCT4mcoRhBliZlZhj/xGya7Z/ev9COw4eD5sUrTGLOD5utwPFm7dJ4MT2RdjhC4CLUAIS4+416Rt1YcN1sbcJDNwAf6PNLETaUIfkpc8D+EOvZoDN/v/nG9J1zX9JJsxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MBPrWdRH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g8E0AVSG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nJ2X2943603
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 01:01:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WwsEluQ14kvyyo1kpLGYuEKcRxriDaAn9HIc9tdqUWY=; b=MBPrWdRHhWco0L9w
	Wzhis6nlrn9HefrVu3jsK5KGssGZrmbr6VGnq8wmPBAnw3Vev3xPLgjGAKqMRLBO
	zK8fgsK7sYqhByJKhp6KvFNgOef7CzH5hetIKP2gbANqtryh93Q+QlG+yinNHq46
	stgiEpYe75hmYwkgrBqONiJ1NFIcqF5He+qC5McEoV4MODyGZW4OtVdeGqos2iBl
	jlLWZBxFvhRiVwtGYRyEqS95aXenn9bAGNHE7ptN1AtquZrhsq3xaP//tlHS8oAt
	3aZYwmvH0IrksRqGD+HS3j/ClMMIuvcg34bPo0gBCJnxGsfGUA7IdIHD9qy1xURm
	4dch3w==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv01evy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:01:22 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f5d18f105so643676241.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767661282; x=1768266082; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WwsEluQ14kvyyo1kpLGYuEKcRxriDaAn9HIc9tdqUWY=;
        b=g8E0AVSGCsVaESXQ22ESIiH+8Xddq4uZa0+tns25SxStCJcwbygJLisDU3Ozhnk0hD
         4uDo4YoaSt66YHOSlP3CLqQMbnXiwEmAf6mAcr22qa2GlA4dBQ4plRdmfNbcLFqU1g+y
         a5Nd5z3v1Ctt49tvr39tUp5OwVQKme+QF9+1qncwxGbypVnxpe3mQ1YKrM4mfILH/GLb
         LzRccCNARjl3ZzdTEoVsWbf2++Hy5GgiB52tbZEsrpxI5CMRGd10+PSRxNyrZx1l+2y7
         sbNJZokdR3qlFtPAD//XRiZYgDsJ/hWOh5j/OOu1bMrkQXSAS/JIgCjFffUdxSG0MlmL
         84KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767661282; x=1768266082;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WwsEluQ14kvyyo1kpLGYuEKcRxriDaAn9HIc9tdqUWY=;
        b=dmRcM01iok6C05eeT4W+X7PufCn5uBwogxzf6iPwACBPqloDfRMrUBcReyy+/8pAd1
         MnTgPEY6ZAqHMNc6MSLDNeBldjDVqw/77Cth3dtHVfJNTQavsJ7g6iTRBLtWpZw8Sk4f
         9oHUb0m+20UsStLfLQhwxWNBbMEusp/73vlSgl0nqpH5ZXrGrCW9oDbNX07YtW4P5fnM
         FSyGVu/KOmghQ6OKdnWXrnl9phxyEMW85oVHl8b6FpVqymdFjk8tqYxgEma3KTO5zrrt
         gLuPZaod3nidLy1ZLuMa0BepYnuO+HKAtm4L4Qm1mLbQKbX7BxHFMCDnoOVb8t4NVQo2
         25nw==
X-Forwarded-Encrypted: i=1; AJvYcCVKpbX6na3x0/Zg83DdH/JagvnTB0DyzQun4uiTP/EbvQs/11jEmvO5QErJjKo0YbtHg93ekopiU+RZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1AoISI9RE70T0o3GAAuSgAK5uTunagxhsxJFvUgvSOlG9vd2g
	KuXBrW/Szwe31LKslS/ZlkDfthjiYjxXg/CyLxkYnQjwOj2VSAOKsPLO112zdjUWMoKp0FeAm9u
	4vjHA5oYr9NZw/p6qTRfYBxKNimTinvUrCgQG8KyfPYj9DmDRglspV4imSrZFPGGp
X-Gm-Gg: AY/fxX7R35uqZJoJhfKmNKMazarzBR2XI400DkDtEysWFzOxPkel+aDoXxKGOFK3uwO
	LMV4cYEIoIgHeE+Vsz6MD+YCiRngCt9LaM65755wuUYN7oPC3ffb5Rwoc3PsL6YQ/7txqO1RF7M
	BGjkpPmqot7B+r8au/2bFcWFLYRlZIDK0SryKYidCOptlRw8Hpy6+xWuWKZ46a6I91AzTH+3Q3l
	VP85jUqbhubP+M1OPUVRof7YAqXg2/+CKNv7CqExawzVpZXC+zx9unK5YTaciV0nkyBM0hIXosR
	S2kRVeMYYR8T6I8WE4hxmz8N8Yv3tzs7u9UbVuY71LcbJRz7ENKnjV7w/u+1GmbCCnSDk3g/w/8
	sTuUKaGm7omjg/3YJRrS2nmpwNo9qYD4NlPYFY7Tk+JOFkMChMFu/T82HPb78vcSTmRL4213Zvz
	X5nddJ/DDFertXAtKyM8R3hLo=
X-Received: by 2002:a05:6102:2c0c:b0:5de:db29:5c07 with SMTP id ada2fe7eead31-5ec74374a4dmr390672137.19.1767661280489;
        Mon, 05 Jan 2026 17:01:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTMyPJnKFkiDK1RC32Rqs91GGXh4vJyLuMHRfMmaOQNSZheCMQ2vOq/C/rF03ydAJzzHnqhw==
X-Received: by 2002:a05:6102:2c0c:b0:5de:db29:5c07 with SMTP id ada2fe7eead31-5ec74374a4dmr390644137.19.1767661278503;
        Mon, 05 Jan 2026 17:01:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea8b1sm181082e87.6.2026.01.05.17.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 17:01:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 03:01:11 +0200
Subject: [PATCH v2 01/14] regulator: dt-bindings: qcom,wcn3990-pmu:
 describe PMUs on WCN39xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-wcn3990-pwrctl-v2-1-0386204328be@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
In-Reply-To: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3229;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+qQ1M2lLHUY9VOnTAxKFSWl8p7pJdw4ZlpXlukoKYNk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXF7YEuFI1nPjM70ASOG40vYKExegfcu1r/tK9
 2GnG/rfayaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVxe2AAKCRCLPIo+Aiko
 1clWB/sExA7rsq4oLHQT9hWULFIGtTpyJtnzQg8pR/3v0pSialanL32mFSrGGXJosXZlMSADkQS
 jI745zddSU4ZO4i/OOOyGFHb0DkcxLhZ1sOqLV8CPnN6bhXLcinlx45zRgV/2GiUOzim62Uy9tg
 DQeCbnZALFYDl4mbp9KwltSrvokRQa29qO8Yigori7j0CGma9fghC1WAw4ihN2fh3YokfLARbeq
 oJX8E+iWvckASgO1ogQz08Wy+PqnU3QNwRbYwbf/9AS+OaleQ/APJCH1vhJpVnd0fSM+Cib7tor
 ZEhQgg3xvYypLZM5R6ZpjFrtH9LOg872JKLO4tGSMP0HA05l
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695c5ee3 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Ged_dzZm240b16LGnFsA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: g26rNEsL-a5agkdJAzULEh25vZwAb9xM
X-Proofpoint-ORIG-GUID: g26rNEsL-a5agkdJAzULEh25vZwAb9xM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAwNyBTYWx0ZWRfX1fUxcuTl8ajZ
 6pAkHZFfP+QCIfDpvQ87CXxEAe4I0BqGTuQ3vZu7K44DoKCbNeghdsfJEcAvaV2IhFZMsJghZow
 Fxs1WacwI9CHRqxI6SZj7IlgKoi/d0f7OC1nFcgWsa5eV2qrk4fpfg5icMqe0zhHyDxVubHAkCR
 E31RSDsfGKs2RsdMtNCT0us5qVaBDKcgdcsY7sgCO9qpNYo4pK6AjeUf3vDCZHxnFioIevgSagX
 hiAOi57gKlXiaxW/dyjvy9cUuwH0KaFCEtVgADW5OGPzDvHbGYfD9l6EytANm4ZjPI8S6HLTvbr
 Yzr543Ly0PPnR2v/GzHN3qm4OVFlC59Vd7UhAaAmB9k59s57EbiXCqckk7JixjD8laTvzDGFM6M
 GnqkdTzaIJ7qcx1GtPNc9Ou5pQ75VMFJiyId9YL8v17C3Rz1kfNJfzP4vye/FzU4lK/fNzncNpP
 qpfQvFog7LfDSAU0Ddg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060007

WCN3990 and other similar WiFi/BT chips incorporate a simple on-chip PMU
(clearly described as such in the documentation). Provide DT schema
covering other Qualcomm WiFi/BT chips to cover these devices too.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/regulator/qcom,wcn3990-pmu.yaml       | 100 +++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,wcn3990-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,wcn3990-pmu.yaml
new file mode 100644
index 000000000000..9a7abc878b83
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/qcom,wcn3990-pmu.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/qcom,wcn3990-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. WCN3990 PMU Regulators
+
+maintainers:
+  - Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
+
+description:
+  The WCN3990 package contains discrete modules for WLAN and Bluetooth. They
+  are powered by the Power Management Unit (PMU) that takes inputs from the
+  host and provides LDO outputs. This document describes this module.
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn3950-pmu
+      - qcom,wcn3988-pmu
+      - qcom,wcn3990-pmu
+      - qcom,wcn3991-pmu
+      - qcom,wcn3998-pmu
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XTAL supply regulator handle
+
+  vddrf-supply:
+    description: VDD_RF supply regulator handle
+
+  vddch0-supply:
+    description: chain 0 supply regulator handle
+
+  vddch1-supply:
+    description: chain 1 supply regulator handle
+
+  swctrl-gpios:
+    maxItems: 1
+    description: GPIO line indicating the state of the clock supply to the BT module
+
+  clocks:
+    maxItems: 1
+    description: Reference clock handle
+
+  regulators:
+    type: object
+    description:
+      LDO outputs of the PMU
+
+    patternProperties:
+      "^ldo[0-9]$":
+        $ref: regulator.yaml#
+        type: object
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - regulators
+  - vddio-supply
+  - vddxo-supply
+  - vddrf-supply
+  - vddch0-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    pmu {
+        compatible = "qcom,wcn3990-pmu";
+
+        vddio-supply = <&vreg_io>;
+        vddxo-supply = <&vreg_xo>;
+        vddrf-supply = <&vreg_rf>;
+        vddch0-supply = <&vreg_ch0>;
+
+        regulators {
+            vreg_pmu_io: ldo0 {
+                regulator-name = "vreg_pmu_io";
+            };
+
+            vreg_pmu_xo: ldo1 {
+                regulator-name = "vreg_pmu_xo";
+            };
+
+            vreg_pmu_rf: ldo2 {
+                regulator-name = "vreg_pmu_rf";
+            };
+
+            vreg_pmu_ch0: ldo3 {
+                regulator-name = "vreg_pmu_ch0";
+            };
+        };
+    };

-- 
2.47.3


