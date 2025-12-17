Return-Path: <devicetree+bounces-247551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5DACC8F4C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 18:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F370B30B1AB4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A46B349B15;
	Wed, 17 Dec 2025 15:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PtgUSilB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ghPv09F8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4A347BCC
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987025; cv=none; b=VWQoAqr7/dM3Rat46esRPt3SS4tVUqx+Cw9QPjpTxyhckkw3hXh8qaDdROCkN6qOPlCj152H6yHlVDsYLenZZoLk0BIjXzZb5XNo1QbzMa89/shCW93n4M4PrNLGZ6khTiR2irQg6RqUZho6FoN9N32mlxx2bC7SrURj387D/rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987025; c=relaxed/simple;
	bh=IRPUyaWVtt81ELN8RFPfSay6jrmlbrMj1DFklO6mS/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=seIjpfloaTER718gvWfPTwndBlEt91GGNiUzNQkXmu+lA/IYNKvOE8Rf0QGci2bGsvPHltIoFxVLiHnCxUFksAAGfDTo/HBsSoCi/utCJEagQr0sTJ9e3qNGNVOtMjxTVZhbPVScpsYEQWNSN+J7RZ5ZqzwHQ4/YEayTGjTdY1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PtgUSilB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ghPv09F8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKok72764399
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m4WuYH2vpOkIakvEa/nSVG8WF7NjL89kvyWGM2cYExo=; b=PtgUSilB/rFVz5I6
	jqcXeN5ybcbcUW2TYVZH3m6jeakCdKk92f97EGC369QbQQohPmjSmbLezv1EZJR6
	Die6MLUKuqYr5NEcRjkTvIjCR5Ss6RkXZG546PcPFd2E2BoHCh6DhXDVR/UMJQHs
	uVLKlQH+kC4oXf4D85v78ryR32RB5Jy2ad7BRIHfOyn5WWnJXdrOvJ/C/XVVic1c
	wxnKTPjQ2mhy94Xo/16UBN/VI5VvtDO+u+zmINAhsgjROSZnz2Erc66sf056GYnM
	40myVB9z+nnBewNWEH7RS7F13SDWXjhH0eTE6zYz1tM0wqs6ocYk+t+cqhihT1cf
	3v9Zrg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefk1ss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a360b8096so82671046d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987015; x=1766591815; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m4WuYH2vpOkIakvEa/nSVG8WF7NjL89kvyWGM2cYExo=;
        b=ghPv09F8HzOhwR95nixIhrjjGgJVAXOJzn47P2f8B0CSsJC+HvAhOUz2KIyTi3pTPE
         suHI0idQluIuUCLIMYcoYEUWQvQoxbU7mTzjtMd66NTFkfMXQuwg9mYYJ1M2ySSME7lP
         SN6XGFWmhHwwww51LDL6QShfv6W3jwprGEXChrw7BM98bh/BP3uN79EF36Rf542aYTO9
         pGav1XgqBXZvFlG8BJsszvsgZRMlRVvkDfKmklIDhejBgDAWUZLSHMc0dMsZ4ZUBtiLy
         fZxgPKEs8KJhJRHdp/IDtE+KonNKiWtNhw68BWviTN++2LPEf0yUSCQ04vqT2r6Kv7a3
         vBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987015; x=1766591815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m4WuYH2vpOkIakvEa/nSVG8WF7NjL89kvyWGM2cYExo=;
        b=RXpDSyidipUcZfRE+9j/JumjemZ0L9uwUEObFdOM6p1cGTt0X+y1L654w0YMOCgBbl
         ysKjDelXk+CGx5NDpc1KWLb46y8grZnNl/gW8EAmALm07ddKYjC73m54AeMP6JseYCt8
         SDQnyArOKHbulAkY6U8RmeKTvHIAsazbg22LGea7nNjKndD2hE420NUylQkMkJJLjsAf
         BFjIX5z7qb9fJnyWD6A1bgMZVB/1kQ8nq8f5g9j6adJYiauk1nqo8uLGjgXTiX0BADZb
         k9oWwRI/lG7mxOFjApbT9QEI8AVOsTXP+Uk2/ICnryen29vvPzEek83gvfRxne4vkqFg
         PxdA==
X-Forwarded-Encrypted: i=1; AJvYcCUG5a+s+lllKAKQzNC6/lTyCJo8M07fqkS2sY3R1T+8SJZMrJC07H6qgh46eyv59+wTgJB7mDrpcEHK@vger.kernel.org
X-Gm-Message-State: AOJu0YwfyqAOqnYx00dM9dZg1m2+nFyp48Lban5RSWMXl6zByfJj2I8q
	RFAxiYNidNqgUHpH6+HTxQTcXIcFJpcfXkTdnp61JddoQWaKYr6v6k6uzYytNC0twNqAf3vgCQH
	XdpTVeENQDfLRPOEPUgkNVhzKwgX8KYjBOHXwA4UZ9J3WHXsVFDy7Xao5GkvtRnI1
X-Gm-Gg: AY/fxX4gkgM3Rw/HEIvLay9O/qcqsY8mweXdLMrzCEPy/TB9WEHPEU5vNUtnj5r94Jw
	1ihQFGrtT7IQ5TNYvl04sHXMUzzUOckowH/9+a6aSpwiHbuymOh6haLLvGPb9U6LZ8KKfxnrjV6
	0nMr3zcbIt3jY/LbgOcFU0aYEFJKvW8lixlJYGf7LHz+RX4Dao32DkUtJOO1qsaYIMBNWYnUpyh
	23HJAqsn1WYNe65oaPO3s+rcZpOSaiIh5RIgQ+Rvd1OlBfBHbJr9REf2CrGql8OJtxNkj9flSQi
	rqq8KbAUMLEfrw/obHHS4TwCl9tPwDGAX6y1p1GUpam6gWz2IHsj9V/9qQcE1P5GBoHSrPm2XGw
	wXeWuLHQVwuotwudGg7T8iaaRBzcppE1f
X-Received: by 2002:a05:622a:2448:b0:4f1:ca7d:b4eb with SMTP id d75a77b69052e-4f1d05af39cmr260530091cf.49.1765987014673;
        Wed, 17 Dec 2025 07:56:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVEKfMmTmGDlWefdZ2FfDAQZAZn+u3/nSYWz/m1t0sHztkRO+wEWlxCXbi5a0sXIOPxJUtJQ==
X-Received: by 2002:a05:622a:2448:b0:4f1:ca7d:b4eb with SMTP id d75a77b69052e-4f1d05af39cmr260529661cf.49.1765987014178;
        Wed, 17 Dec 2025 07:56:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:26 +0100
Subject: [PATCH v3 08/11] dt-bindings: bluetooth: qcom,wcn6855-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-8-ced8c85f5e21@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6392;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=IRPUyaWVtt81ELN8RFPfSay6jrmlbrMj1DFklO6mS/A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKzVlDWSHpFe7nZUBvcnTkYO6vNJMPEpaOG6
 xbMKAF/H0GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSswAKCRDBN2bmhouD
 1++qD/43HeDzKjhgl71ZsBFTIj35YBw/Y+YGmA6NBV1p/O0LsLov+esobuZhkRTLYMIq/iegFQt
 DOo5funFtVy2jr1wobq9AWZZfoc3897//ibyQhQU15PFLf3q01Uodc5w1WNDtzSACCkZtioY3/L
 2oKTMV1W52R1Ap2nDeQxy7dnXV1pqEPlb8CB/k/hNcQ10X5ChV203ZobkEKoRv+YsDyzkRHGYw2
 h9TykE3g9tuShiIVJ+ZWDGBsYdspklnMF32oBT0D1NHaj2YUyuR186JHDy7Qj8krrxusTSYoUIG
 VNsbsSgg8djgbKQ+7OlLOFimP5Za3a5mcf4cmdC/e98MOgBBsDxWLkemNB+34Tb2O7PWS+JXK1b
 +eyxjvG/PCS1r7Umf83ldfWkPNkZ5K1CeBdVEmQ1XsWdxwU9/mh8la7p/a17PusQNlN6wExspFx
 bPt25LEmm9yjKgqszZBfia1CPgusVaUQPyGz/G4nfpG0siEEFCi8AUmewhnDl8Gkl2DGe+3orAn
 AgiyUNhn+SiRFFYcEEGGy5WDuSduJ7z8pix6VdluGuYmmUswfr1o3H6CCODena2PHyQlJkZJph/
 3w6V47d4DK1j5unWOOVqwdmNxzKKObwNQwvqIrLZocEUmTkDXCwVBq/h8Zf7bOQnZQgUXuy+TEe
 ygpwwFfTYNKbj4g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX1i8ndZ5WFU4a
 hl0dcwzDUNLP5FYkrjfp2GgpTFOGHHOM5uHKHP/GDL/2P0lv3x+Z6KFOKUQgSmkccC3a+stiaC6
 f/FQp6ScYEPC57F5AIxWYJ4I56LRMbT3bFX9mou483ueGlkEBQ2WmvhPUa3I2jupq11M+dRCxMJ
 zZayH4cRAsrcBQmzsXG+VP5NhbazelirefUOJOE+pCt365GaB+UzIwoACj3tZ029z8++cC42hri
 5x83e5IWNpD7auceA3qsYIAyJlx4+84J+2z3KdKiu4aYqXCVTE9IgBoMs/ZQNOwhC1jdwvRWciT
 sddCn0UKQmFpxxZKRkzR5W+evy+hES7dO9EXlCvO11yv0JSMtIA7mnxO5W+eAj2lTR5n+exV+Lv
 hIvH9OrlX4gsRHgignfLZIdMCnF8Wg==
X-Proofpoint-ORIG-GUID: llaE3qqycOKJkxNOh02Pm1gR-2TZUKV8
X-Proofpoint-GUID: llaE3qqycOKJkxNOh02Pm1gR-2TZUKV8
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=6942d2c7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=TihS8u2qB4LoSCkHJ9EA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
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
possible properties (19 supplies).  Split qcom,wcn6855-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Changes in v2:
1. Drop few supplies from qualcomm-bluetooth.yaml which are not used by
   devices left there.
2. Add also Bartosz as maintainer because he was working with this
   device in the past.

Expected existing warnings for:
qcs9100-ride-r3.dtb, qcs9100-ride.dtb, sa8775p-ride.dtb,
sa8775p-ride-r3.dtb, sc8280xp-microsoft-arcata*.dtb e.g.:

sc8280xp-microsoft-arcata.dtb: bluetooth (qcom,wcn6855-bt): 'vddaon-supply' is a required property
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
sc8280xp-microsoft-arcata.dtb: bluetooth (qcom,wcn6855-bt): 'vddwlcx-supply' is a required property
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
sc8280xp-microsoft-arcata.dtb: bluetooth (qcom,wcn6855-bt): 'vddwlmx-supply' is a required property
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
sc8280xp-microsoft-arcata.dtb: bluetooth (qcom,wcn6855-bt): 'vddbtcmx-supply' is a required property
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
sc8280xp-microsoft-arcata.dtb: bluetooth (qcom,wcn6855-bt): 'vddrfa1p8-supply' is a required property
---
 .../bindings/net/bluetooth/qcom,wcn6855-bt.yaml    | 94 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 26 ------
 2 files changed, 94 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml
new file mode 100644
index 000000000000..a4a887a4dde1
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn6855-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm WCN6855 Bluetooth
+
+maintainers:
+  - Bartosz Golaszewski <brgl@bgdev.pl>
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,wcn6855-bt
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
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
+  vddwlcx-supply:
+    description: VDD_WLCX supply regulator handle
+
+  vddwlmx-supply:
+    description: VDD_WLMX supply regulator handle
+
+required:
+  - compatible
+  - vddaon-supply
+  - vddbtcmx-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p8-supply
+  - vddrfacmn-supply
+  - vddwlcx-supply
+  - vddwlmx-supply
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
+            compatible = "qcom,wcn6855-bt";
+
+            max-speed = <3000000>;
+            vddaon-supply = <&vreg_pmu_aon_0p8>;
+            vddbtcmx-supply = <&vreg_pmu_btcmx_0p8>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+            vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+            vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 1ee97089e1d5..62d7cdb67a3a 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,7 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,wcn6855-bt
       - qcom,wcn7850-bt
 
   enable-gpios:
@@ -37,21 +36,12 @@ properties:
   vdddig-supply:
     description: VDD_DIG supply regulator handle
 
-  vddbtcmx-supply:
-    description: VDD_BT_CMX supply regulator handle
-
-  vddbtcxmx-supply:
-    description: VDD_BT_CXMX supply regulator handle
-
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
 
-  vddrfa1p7-supply:
-    description: VDD_RFA_1P7 supply regulator handle
-
   vddrfa1p8-supply:
     description: VDD_RFA_1P8 supply regulator handle
 
@@ -91,22 +81,6 @@ allOf:
   - $ref: bluetooth-controller.yaml#
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn6855-bt
-    then:
-      required:
-        - vddrfacmn-supply
-        - vddaon-supply
-        - vddwlcx-supply
-        - vddwlmx-supply
-        - vddbtcmx-supply
-        - vddrfa0p8-supply
-        - vddrfa1p2-supply
-        - vddrfa1p8-supply
   - if:
       properties:
         compatible:

-- 
2.51.0


