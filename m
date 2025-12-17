Return-Path: <devicetree+bounces-247548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 295B5CC8A79
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4E8230B42A3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB484345CBE;
	Wed, 17 Dec 2025 15:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h4yE/bl1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SqU4ColK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2B53451B4
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987019; cv=none; b=sT2IrheU3agthbbglL5HOanBEeAMBOsKg92IibU6IKXHKpuJK3rX7bdifBv2UGWQjO4ytIvBP3QKMiTh3YSFvmwdRqWb+97PT7WR5yM05wewRcNIb3R7cdXFwHKsnAaFPV6bcpxtQMRIrn408PZXFBK77ce2W80/xkf+NXqlGgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987019; c=relaxed/simple;
	bh=JIDJccGK6VCXUI5GwQl1csj/I7WBbeD2m5Vc289HB7I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mi793Zi+mnYvn9GybD5hylWywcygmyGQdsvzcBFFjs4majg6wgSm7GRPR+pnYoz7FEPA5APwt2BtFsugJDi/MlpmThdxrihxNurXvCoWmPm6ZIsrX74LTsIf4Z+x0+kUGxuRZwZGt0yvgOG72M2cgCnTxdrfYX5ZDcktyire5CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h4yE/bl1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SqU4ColK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKrfd2764423
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=; b=h4yE/bl1N/LPEksw
	HizaVroIknINHY8wHfurBWlsbT/XpSiW3pRfxsTKfMwkd838i83AZk9DF6HeAL0t
	ESwRrEwWpNJEyRa2KEqy84NAE3D5Zx51TZP06GIERVj6HFqrmfUBfEuO8Y2eM0mR
	byUTKU0Hc9RRjvzSerNXtFX01xhXNOpHCDKR0ljW2jAp5EwCd5P1x++VtiMGvaec
	Uz8OmnQqa4fQXVLUuo69H/Gn8rg/DfWmi5MRpd8N0qCaTN58ztAGjQbp8Q+6q1pg
	X95TVQKmO8GMe08Cngvxjp8R/+8pdOCurMPmT3KPyZ4YAnhYaJi0mE/xlY4DMiy5
	OQQPUg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefk1re-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee27e24711so105210101cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987010; x=1766591810; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=;
        b=SqU4ColKr1kxPwJa3It3LXepBR0Y0isyhzc18978nRzwOA3ErUkHvKnB7AQdo6I3Ku
         XE4M/L965MNSWH+PtjQz99PViBb9OTKHSCMCQEsV7f80RQmzYABTV3DLO1fl88lPRcFf
         VmGyvQQovp6hRfsecuQzscx3a/TbJh5J5USd3POaK7KINkWy0NdfLEF8TdDvDB0wtanT
         lIyMkEcWQHDSpUsxNQuakB8516wPPhYySC9KpuhiU3cbzAb0xovEtEwXXpe3/Qa0Bygw
         Aw4c9Rq1Mdh0OKrL26COiYmJ4Trkpns/GkaU1xxbbeL8WbV2HsDnL32KLMmQFItbqd+7
         uAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987010; x=1766591810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q1kYYrCUUghjJloQmbk2m2RGCwULA9YSBVRKtbqC1nc=;
        b=q7IcUISl/IizKL3o0+uOLDp3UqZOVqG2AJZ+4dO2EFpytUuFZeTtdlQ0tPTzJqoqme
         wu4MmOs5KPwhsF89LRyuBqSHzS7rdVqK+BnEmC44xr+n8CuN1OjT7K4ttmbURwmyVVGK
         kx8st9NziR16aMJ57ph7/OjkNn9WydTyWDVBRlQunQPyMXuUqrP3jI0YWDFwpbJRVciE
         zrB3hLJX0PFo9N/HbNDKzfEGl2imFMt+lWqHwjBN4+/KDb8rlN88cQfuHa6Imx8Gqr56
         lgzh6ssne4h9y2tQFwkVtfhDPeBdcR50POReQ5qKsmufCbmsyS5p9WvSjUmpLQ3oUSse
         p2PQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlUFdyhfwr0FPG6+54YSTJCcjw3UCUzFzDcrtINMKOFTx/bpqYCgX3AyZbEAcJovX28V6dyqYswWxS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu2SNKDcXKm03S6wkURyxISxr4dmTbmqLXQEuhBkyM+ubYzW8V
	3SAtLRxkNql+hBy3EdXjytswwzps4UXwT1ihBhhPD7QePeBJLGpR5n/T9uG5qJplFZdIoVLzWQj
	vl0LGZbdDDXFuzzRx3ZcvDMawrctbXmUiOfRryrFBhddzkOsUx9Nk5lXwJ/YX/MJh
X-Gm-Gg: AY/fxX7wpKbN7eaeHdSJ9ec/vUa6r3sQu5llhhusejOfKaU0/94ZoFLUX//ZYmCzizc
	GiA8xQlN6FyNYhQyt0wPeXV7wgZUADLoLlBMFTK70XJKYEpMHVxapGf5W3KK2PE90DQtVpWt3Dt
	TUHc3Q07wEq3b9HB8zmr4Y0l+7LXCZ2xCcMCaDyjkU76wmzpcW7kNRWSpSAgLsjqeEf3sh88xgl
	2JK4gYTZ9iY+YLdtUoIQxCeHoGpiautLjqmt1x38k6tvbPAKUK2F8Z9yovjBG0Yi53xZgBR0u64
	7tb3n6d+Xhfd0zwOx43ZjJX808ZIUDJ+NYKVSfnbke2ba/7YbBvr77IINQ1Q8s28MENSU3m+Om4
	Uyzc279N4XtlK2ULxW8BRS4utGT/fJeXu
X-Received: by 2002:ac8:5d14:0:b0:4ee:17e9:999a with SMTP id d75a77b69052e-4f1d0531327mr259702651cf.33.1765987009750;
        Wed, 17 Dec 2025 07:56:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLoeU1gpIJQUUEfmAJcHe4P7WfDl6vPIxClIJPvXIFT/alseoCsuFa2MVXOhdCcCPGy4HOYQ==
X-Received: by 2002:ac8:5d14:0:b0:4ee:17e9:999a with SMTP id d75a77b69052e-4f1d0531327mr259702271cf.33.1765987009230;
        Wed, 17 Dec 2025 07:56:49 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:23 +0100
Subject: [PATCH v3 05/11] dt-bindings: bluetooth: qcom,wcn3990-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-5-ced8c85f5e21@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5226;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=JIDJccGK6VCXUI5GwQl1csj/I7WBbeD2m5Vc289HB7I=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKxtPV3nZVGaLjdVSwXCCzuZbzNnRfwL+MlK
 1nlJ33rnS+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSsQAKCRDBN2bmhouD
 10CID/9m25qiPqGaoRVekfUEli6Ao5/PmxkhY+xKaAAnJRtL5mNxt1ECPNiZMCLMubRu4tiqUPA
 KgkRk5DJJmSnafxCGPLciwVGVRLRKIyRPXahronKGMd+RDUHXT1gGvAW+4dh4BYCG8w5yjk3XIV
 mhmLz9RAd2bvKqBZjVvaz4VA+ZmXGtNKkUGXhFMOazUBsAMipwhOHizKDqMojGEna+VlN5aWvax
 g/dOhzvx36Zauji4SoauwGiP/MaJkhnTEtef0CV0byz7QJYoENaDRJu7xyUuTaz49ejTN1UI5/8
 uT25kdcmT3DMkiHarZj0gezX4PKWoVCZO0VFpAVTAVJTKxfu58772KnoIjyhRCzuT0Guh+8KBra
 mrCH30NznlQ19+cKntH0ae5kyZc74T8RhtrsILGaibdzygnWXNqqzUU5TXLQ8lo9aWZnf18Disn
 2iDV7LoFrc+Q4TgEMdaujLDGqEd5WTm6FFucGVsobbuww3hyQXMXU8KMFA1fNBvsa1ccFhr0A89
 caa5zbr1HKS9xdJVdJ7f3b5rJwSwakIXQY8bdT1FSx6rWqnlhm8e54r5+wiQgbtvn31zf+7s3UJ
 UC/akWFYwc+JKRiZQJUcMaVfrxbQLWNJ+ejgkdWOXlkZVx3U90cVnsEpTaSp+7e2HyxSZq5Wcdu
 IIxYgVdGnLohTRQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfXybjJkjwBoxQs
 iWMHuv3ybLSXnu9+NxaqIzq8eZcSyrl939z17/YXPtYzcaiXeUe+FTZdcy4Vky2wm0IyV2iltC1
 ALR4CCP8rbdu/mj3rhO5hP6BhCOdtDUQg1G3CJw0FpOEaK8bl4TLgULXxmgLnYaPHKGdBXgobKX
 43Es7BjTNmkthS7FUWNV9fQ/j29WevrTbbhA5aLOGGiozZ1L9iWOEyAtJAsNoicqHOy6pMh9ne0
 vhXzNWdknrulxv7Ox3l00yPiTbNuPJ/Ee917GRjqI1zP+y7PnkRmcBHjmUqcNW0I+NPFWprARk1
 9NL49JKpeQF5qET7S7LtPeOdXU/8uQzTWC8yDMpWpXX/L3mmpUAH6bgFh1qg/fAGnFqFgJ7Iado
 o+IBNYO2gZgLoyM5I/D2X51m90NpVA==
X-Proofpoint-ORIG-GUID: uYY0aaTi1052-GNMj2XJGK9NZF7g_szZ
X-Proofpoint-GUID: uYY0aaTi1052-GNMj2XJGK9NZF7g_szZ
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=6942d2c2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TJdhL1X_YdA7ouKO9xEA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170126

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn3990-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

This binding is very similar to qcom,wcn3950-bt, however devices have
additional VDD_CH1 supply.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Changes in v2:
1. Drop few supplies from qualcomm-bluetooth.yaml which are not used by
   devices left there.
---
 .../bindings/net/bluetooth/qcom,wcn3990-bt.yaml    | 66 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 47 ---------------
 2 files changed, 66 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
new file mode 100644
index 000000000000..89ceb1f7def0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn3990-bt.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn3990-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCN3990/WCN3991/WCN3998 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn3990-bt
+      - qcom,wcn3991-bt
+      - qcom,wcn3998-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  vddch0-supply:
+    description: VDD_CH0 supply regulator handle
+
+  vddch1-supply:
+    description: VDD_CH1 supply regulator handle
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddrf-supply:
+    description: VDD_RF supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - vddch0-supply
+  - vddio-supply
+  - vddrf-supply
+  - vddxo-supply
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
+            compatible = "qcom,wcn3990-bt";
+            firmware-name = "crnv21.bin";
+            max-speed = <3200000>;
+            vddio-supply = <&vreg_s4a_1p8>;
+            vddch0-supply = <&vreg_l25a_3p3>;
+            vddch1-supply = <&vreg_l23a_3p3>;
+            vddrf-supply = <&vreg_l17a_1p3>;
+            vddxo-supply = <&vreg_l7a_1p8>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 82cce508e295..5581e810f08e 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,9 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,wcn3990-bt
-      - qcom,wcn3991-bt
-      - qcom,wcn3998-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
@@ -32,25 +29,9 @@ properties:
     description: gpio specifier is used to find status
                  of clock supply to SoC
 
-  clocks:
-    maxItems: 1
-    description: clock provided to the controller (SUSCLK_32KHZ)
-
   vddio-supply:
     description: VDD_IO supply regulator handle
 
-  vddxo-supply:
-    description: VDD_XO supply regulator handle
-
-  vddrf-supply:
-    description: VDD_RF supply regulator handle
-
-  vddch0-supply:
-    description: VDD_CH0 supply regulator handle
-
-  vddch1-supply:
-    description: VDD_CH1 supply regulator handle
-
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
@@ -117,21 +98,6 @@ allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn3990-bt
-              - qcom,wcn3991-bt
-              - qcom,wcn3998-bt
-    then:
-      required:
-        - vddio-supply
-        - vddxo-supply
-        - vddrf-supply
-        - vddch0-supply
-
   - if:
       properties:
         compatible:
@@ -178,19 +144,6 @@ allOf:
         - vddrfa1p8-supply
 
 examples:
-  - |
-    serial {
-
-        bluetooth {
-            compatible = "qcom,wcn3990-bt";
-            vddio-supply = <&vreg_s4a_1p8>;
-            vddxo-supply = <&vreg_l7a_1p8>;
-            vddrf-supply = <&vreg_l17a_1p3>;
-            vddch0-supply = <&vreg_l25a_3p3>;
-            max-speed = <3200000>;
-            firmware-name = "crnv21.bin";
-        };
-    };
   - |
     #include <dt-bindings/gpio/gpio.h>
     serial {

-- 
2.51.0


