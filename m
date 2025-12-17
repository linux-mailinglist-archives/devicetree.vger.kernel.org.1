Return-Path: <devicetree+bounces-247546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E23ECC8B3F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BC0132229E6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6738A346E4E;
	Wed, 17 Dec 2025 15:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nbi9QMGu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ivLiBsoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE823446BB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987013; cv=none; b=dnoH4qZKiBpwp9DIa4fJsP5NBPrxOmPJGT1oBSbwfpqNORpwagRcxU7fmLusj/q005nf5cf4WfYiQ1k6GFz2FO+L08l2eofUNNTyVFdpfOOzKQZBpe5JNvt0jEKQ845rhm49nmigXBcaNYlmM6eRa329EpU30P6pbAgZQcf6y9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987013; c=relaxed/simple;
	bh=8Y5eeW2zn3FKkukeVggq85DPa7zs15vkyJ/66vVtlOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uQa51kzlG1NEc4G8LmVQnIRr8Ydg2xNaDKwpQ2KYaFAzDvxOBGAK8qWNP7Q4GniorrMBJvMVyvP8U9N2Hr4Oi+9j6agMUY3+OLWrMU1ZZ8Sbm3W8/H7CvMNmWLe/rD3KYTAY9wFVA1vhFIEpJA1A+sfLhUGoLnJxHSG1ccvVSUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nbi9QMGu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ivLiBsoY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKv3k330794
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DIkkL9L1E2rTuvT0LXtiLimUzQXYRbkaRP0qfbLoCSQ=; b=Nbi9QMGuLDgFosGT
	qfYlpxFqZqxHKKzQcrVZCOWAuao2d3baTdNBkxW7Ftlh3HiwtEXhXsJ5kj5+bNE0
	mv2eM5uexGiLw1zrKr96CDAN/l6OxstQuN57qlMhY+fqV2C+xvYI1Zu0SFcXp72k
	KVn45pePEGeYGMII5WTpdmgoIbQxcXOWreAQ9n5ssR1SdFvh7Wa1PGATLWPenSdO
	D6B79UEJj2y/KX/yMvIBfzeVL8WzZikDyAZiG5Ls+Ec8ko72Zo5SEkHV4KO5D7N1
	T3XuZiV24rHQ0OcvvaGAM/8OUp9NRehmYTxiPyI3OJbarSrFDw0L0+AI0D0bmcub
	+tLaYA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e14d2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51396f3efso1111098485a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987006; x=1766591806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIkkL9L1E2rTuvT0LXtiLimUzQXYRbkaRP0qfbLoCSQ=;
        b=ivLiBsoYZX7aBLWdBtw4NBShfEstgN6sgH5UDkeXzNGDDQkovQTOtX3RQv71h1EgYY
         pmDISZQtsY0Cqo87naCwBLOw94tGkHKJP1NdthWMjdeDqL9HexcdiJ99OPy9s4SdUNxL
         VtRtsS7k5jdYF3IINlovacPgAHiUyk0W88cTE3CNPYskbX7nSUppORAqm+qmG7zY4JnU
         owgDnDxoCcAEE8q5P5WtiTideAOhanaxqz3iSLwWpGsa+nM9NOCVV5tYRFYfXelSA6Rn
         g7rETf/bWbvwFsGgklU5yC82eatVe3/is73xHhvvh7uzP6v32Cpu/0vkWwhV9a9i7YaO
         DrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987006; x=1766591806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DIkkL9L1E2rTuvT0LXtiLimUzQXYRbkaRP0qfbLoCSQ=;
        b=HLSMGrMmclDO16876y+nngbUuc9+vYi34fSIEaOVzvDhOICcwkJR9+8vOZ/HI9a6Vh
         dbOOZtLU1lg5aD/NLW4nFUtcwR1ACETKJ8QL3KX43S4jcyISBGmoqDM06gCUOWkV59KT
         aJitR+GMcgnsTaMTd9EUNFWOhQoEGusGXu0WR8BYVB55KBUNCisFt/nSXCqTcEkk1OV2
         zVlQhybTN+JZ2E2FdxCm6/rbEbNTgwJWVFbeApTH8/f9AFMbW++hZbNU+nGXh0fl65l0
         s9xAm0naD/6oQGLcK8SVfemUbsKmWXNKq4hinhWZt8tfQ5uK/EfEBvI9z0VpxwtcFWhA
         J7Dg==
X-Forwarded-Encrypted: i=1; AJvYcCX1ZrYDzPqWV4W0ZghFipwY/mUfOexqRhIr+yfjtZqaVZDY57IX1QfZtPaZIUQxj7YYlreMW12HWpua@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5VPHlCOoFjCpYhFsCAg7y0ugZ2qHbbi5dKdxQEw1NMC6hjCVQ
	oKTEnmnMI3nOB7O+bQHjK3BakSQ//SGeSOr0Au0uja2HUKsodFAD1MPfSUy/FsNyje0QeaRCG40
	GYUaTmAO4EN2r0KCs2WeUwqfNGVorCk79GcNSTGlVBsfBTjrn/WERKz5E8vvzkfQG
X-Gm-Gg: AY/fxX4J0Y79OGe8fIiRvbyrGMqBD7A3g9tSthayivHk5n9ppIsq9VTAI9eqWniY50I
	PvgMPV8PWCYy/TyBXFyzar5DDLSrusTGYnSm+SAOiCYV22UFZ01KZYaN3+/TSeX8AR8bKL3CZAy
	jJNDyS76kVC6+K8Naqxo2mPoIybMKtfj5pCkkH+MH9RggI9yRjj3DB4uMBMpjmmecflvpT3Qe89
	VWw1PL01XPUujl4qFGy5fjD70iLxHvbIRan124SGAL6t7hnga+7aMO/RfuzuzzKlBfUgjCS8dxb
	gFepbzHcRN/Ud/hkLdVsXCGwlMsGke8qKWUSqXdxIRRQSSYCJVmg72JCPsMFwX5F1Zo8f6t0+Hc
	yXp9j0mLjZb5RQor0v+OIkO9IN+cawB3I
X-Received: by 2002:a05:622a:4a09:b0:4ef:c5cf:ec0e with SMTP id d75a77b69052e-4f1d05e1649mr272288621cf.55.1765987006332;
        Wed, 17 Dec 2025 07:56:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF91HiZ5QsdbqB9X46VznsNkIfbtajTfY0IWKtwtajuqQpQSyqtS9JSuDul0I5cjrxT5OY5NA==
X-Received: by 2002:a05:622a:4a09:b0:4ef:c5cf:ec0e with SMTP id d75a77b69052e-4f1d05e1649mr272288271cf.55.1765987005925;
        Wed, 17 Dec 2025 07:56:45 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:21 +0100
Subject: [PATCH v3 03/11] dt-bindings: bluetooth: qcom,qca6390-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-3-ced8c85f5e21@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3764;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=8Y5eeW2zn3FKkukeVggq85DPa7zs15vkyJ/66vVtlOs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKvsEngTfpGswBUp7dWd1WRAMheo5SQbaUbH
 EfGCOtlzb+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSrwAKCRDBN2bmhouD
 15tLEACUBe1e/BPosO56BrMUejUnIhWwS+S/VBliv9vkccQIDQqsbc0ih/+RIKoEM17FUfei6Hf
 WVh13x9PPKHRglp7q+PxkCWl7SiO+rh1i+CRXVU1a88tudpIOZw5u5LOs7GCWKp3UKhSsDDdjC2
 ZJm56hn6D9FsRKwYrpDLSGyCoN94VPp0bKdAi3LIvkuiPkOowAZvUrrad1jBfas7KAz3WNCZmPz
 y2erZAiFJ3ijglXWGmqxn1Bld3EwE5s7a5noibzBLw/g9q2DxUzXikfrmx5dF9f9TBFvQ6rfFAO
 owAYpztfpjAvQvVoO6EUmWk7w0JBrwqZrhWhqAbldZyVkXC4A4WpIOixHUchW34mUijBEF8VCzc
 97QSv6Tsv6IvyU6rzrvNWox1QvGjuqzu2U4J/qE8X46xXqSYKI8ggSEsxhavaC+rH7HM+jGsTh/
 J3WUUPe66TIXAcLeEaqo01X4X5jgh2n83wvagj0YiY6f2D/u4PZs/zedK7KjIi69YyZ4Wt35SLT
 40b0UG9wGmRVGbVqyfthUAnLs2DVjnQyOX+BQ7bYI/GlFEqsrpEmPffNDl8zEncZHvomifgh78C
 OUfKyc+vbbIeTI7BW4n0FkO6KMOELSYr2uSYuj4hKTL0MdhLL+0qdowZNN+sZBcYg4yjmazVRMk
 Os+kiHuiS7g801Q==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX7Fp1wYqkVwHe
 T63qio1SSNgoz7sG0jR0xJkbxLXXPvPYNe1SNx34DtloMFoMFovt6aZ2gs9v7JGYGqL3V9UZnsp
 rRfU2DmwO+c1KItOMcGB3rJmzWpEZjoPj+32b74sooi5rVPHz6SjzZAjCNzGx928bTFcnV/hMiU
 xoZraZw8jtw/30AvHBaBqKEDT0KMhKQJ76V7E6M6BBG3QJh9HYzHSU91ZSwI6uJiP8RmUVqMu6k
 YANHLG+iQd3kHWZ6eicZMRmerCSgKEv6BPnQz/FWegwmY0gxxcRfLvVEmflnvBe5rlwZX0MXUec
 JP32uoA9znwxw7ItvGsfflRaUq0JGiqxGdd5DKrNCU/UhxU+fNtDqf8o84JWA5c96XLFXH7LZ/S
 cwAZMp2FfR/sm958EfmzWfzZOsFlTA==
X-Proofpoint-GUID: XOWumujunxL3VJpTxdRj-KptLP17ktNs
X-Proofpoint-ORIG-GUID: XOWumujunxL3VJpTxdRj-KptLP17ktNs
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942d2bf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=NmeI-4ZN_4R3alAclVcA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qca6390-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/net/bluetooth/qcom,qca6390-bt.yaml    | 64 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 15 -----
 2 files changed, 64 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml
new file mode 100644
index 000000000000..cffbc9e61cd6
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca6390-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA6390 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca6390-bt
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddbtcmx-supply:
+    description: VDD_BT_CMX supply regulator handle
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
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
+required:
+  - compatible
+  - vddaon-supply
+  - vddbtcmx-supply
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
+            compatible = "qcom,qca6390-bt";
+            vddaon-supply = <&vreg_pmu_aon_0p59>;
+            vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index dba867ef3d06..ac58d6598091 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -21,7 +21,6 @@ properties:
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
       - qcom,wcn3998-bt
-      - qcom,qca6390-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
@@ -181,20 +180,6 @@ allOf:
         - vddrfa0p8-supply
         - vddrfa1p2-supply
         - vddrfa1p8-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qca6390-bt
-    then:
-      required:
-        - vddrfacmn-supply
-        - vddaon-supply
-        - vddbtcmx-supply
-        - vddrfa0p8-supply
-        - vddrfa1p2-supply
-        - vddrfa1p7-supply
 
 examples:
   - |

-- 
2.51.0


