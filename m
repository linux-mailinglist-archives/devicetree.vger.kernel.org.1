Return-Path: <devicetree+bounces-250165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0CCCE69FC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B2A9300CBA2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42AEE2D97B7;
	Mon, 29 Dec 2025 11:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HxT6NwR3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZWMOzJQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43EA2D8382
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767009462; cv=none; b=BuMQRmTPlIiyXc0eErWk2pVnpB2MRwcrL9ZLdNOoOlL/Ovd4H2tinuSTP0ua9ow3PPMuq9kTnMNRZMIZWdquvCGY4YJ0EdcpaZvo2f1d+ILPlS/5s6vAofDP2BeEI25RF9z0kVIAN/ha3QoXtNvqpIvyqSYencsqvxEKMr7+r4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767009462; c=relaxed/simple;
	bh=BewsNS9SqpxvSCK5wDz0XrlBx7mMNeSs7Khxl2WuUq0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d/JlULkzoaiQBHiWoZfi+oPN8DJ2kbzkHFaADiJaw5Ybd+BL0id8NbDw/zyJ5Wo8jZh8tjyc1YO5FhCS5pIZGOy5l2SFhHpYuwcwIj7XYums9MF2z8ejmeZPvpKGIgG2UfKUYOyI7uPFXcoX2pjp6EW4lua10y2kok1ELooeLZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HxT6NwR3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZWMOzJQz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAclG53755663
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:57:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=oUAJjDGcfm8FZcDWt4kU/L4+/V1PyEokkxD
	6HwvMzys=; b=HxT6NwR3G+VMJyj1ji+AXjCice5AQD5I2VPB1SbgLWFvTWn9DkM
	VIYIki2M07ERefBq9gT17mip6cyqSZhTy1xUSZkrOlwHCLWLzaZh93S66r6dxdBL
	H/B+qFuksseP9KgHttXZuGzHUcvGVVoVydF+khE4zzfryg++0Bp7XBNVLeC25IYZ
	u3tQ2ccvjEl5EEIIh/A+OxC2RhmzPv1wPCjcrHFtQdOYGJVVytFz2x5VqFnpaDdr
	/aAIgOItbpqEy9F/x2qJpZWJ2xz/1616SKO2VUAajaLw7AtdgckpwHSDuYwnykDI
	RAFKHZAGUNG3MgGmf8YLPlCxq7PQ+ROSyvA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr4bkx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:57:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so221027911cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767009459; x=1767614259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oUAJjDGcfm8FZcDWt4kU/L4+/V1PyEokkxD6HwvMzys=;
        b=ZWMOzJQzYhUik71XTO3A4ZsHWh246WjF4DEbRq2V211k0rWOjtnmwnATdBwKiI/4Cz
         Ks6LNT0qxjNSBpm3maEMZJBj3/W3sBRMCXC2fghLyGQ+BuqjH5bwdbJNGGT215vUqd/P
         k66D99q/HeKyS+cDmEg93PtST433hI04JH2Fdryv0NFVjsWrwc2qZCRVpl4LhGovP9Zo
         YiloAmfu+RRWbhsaDwpwfVDNSh/ZfxwYZYkGaGQbxvwv6USzEvT09EYvX3SIbqOr4UZl
         F5naASGuf47AEVDuhrA9XJwm+Gw+WTLEfFeZdjkAJi0NgBPtIrFVMb10rTR8akUFgDa/
         S5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767009459; x=1767614259;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oUAJjDGcfm8FZcDWt4kU/L4+/V1PyEokkxD6HwvMzys=;
        b=wwXjil8cP3KwQPVH2oIInOzIzk/g/e7rVsjkhfbIbcZoWbkaO5EDUN3g7d0BUJ+y9r
         1dFg2LCr2D+KRUY6I/oVZG+yj0ejpW5nEjjxw/K10cZJVIXlabrktRo7N/Zc/w8FlJ/z
         Yg7xciZj9R+6WNP1vETIHcHfvSzwwfsiS99C2zu3R7V4w3evI6F5iUXgQWvl3WccJhsq
         DaDywdcGL6BYPJkHYEsarwqpRQckkBSZWdRirnN+8TZawh1W0OrOO0WxNImCWElWyoVJ
         FCK6pr/7MTHNqAxDhkUxwtqoqfsAqmBWHlxlHhwxg3iWvrovufJm1KOOC+vvVEckeOEs
         1mFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw/I5MBeyVDKRor4yC/y83yQof4RSvpaplOh7Ew1XecjXdY6JcEuknT6cqYszDQqTYbX6FxZ79IT+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YytNU71M4x6vgCTmCt6upu9l2MxA1od89Z9QA9HjKJOQZZ4O9Rd
	+c1p9LLegGxNEydgALk91/N9phGD18zCuono6VJUESi2xWLfqKZS+JNjfN/al5eV8jzq6b7YTeH
	nmzXsNpP96Md/AWU336lhDGq/tSoV9smfJy8e04ICC/YDCoZ23BJrIFhBjb/YCQ9h
X-Gm-Gg: AY/fxX47RRLttqUFyBPvCN0u7KhgrcARQ7bP5rxZl5A2l77ll7XiBkcL+jVtWUOB0u+
	Y94C9ubi+fhS2LfMASSJBMBKQJ5ZgzuTdUu2TCj2omFzF8JjCiFoXgErde552mn9f8atTcEyrwU
	roA04TUVxL5Nemqt253NkQRbOxgr3Ji58tKlqzAo1y/TU7v5RvBVP9fSc4b7JvzYlV1uLJGUUOP
	bIPb2GbxQyNKGLe0JStuxN9N1V4YxUIICfEKDTFPLHe+GxQ7bOlBPgjHm6rH/KzGwCZqVVb+5Be
	ZLEHlIRXhoCzDXmgLWwQFuU+q6TnCWqRROHkiLASZONcYoEp1Lmi4WgK0swxOi9z2N8AY37TZ4c
	mjjPNs2SY/sfdoNNx67EA0OrYgQ==
X-Received: by 2002:ac8:4912:0:b0:4f4:bce1:31b6 with SMTP id d75a77b69052e-4f4bce13d18mr254122411cf.19.1767009458980;
        Mon, 29 Dec 2025 03:57:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3MoxW7QO1tS6i3fzefDmlQvpExf/LlB7NTW0W9nWxV7dnxXGhKKTH6k+5VBB1tPTEvZNISw==
X-Received: by 2002:ac8:4912:0:b0:4f4:bce1:31b6 with SMTP id d75a77b69052e-4f4bce13d18mr254122301cf.19.1767009458529;
        Mon, 29 Dec 2025 03:57:38 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80426fc164sm3146571866b.30.2025.12.29.03.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 03:57:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gaurav Kashyap <quic_gaurkash@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        stable@vger.kernel.org
Subject: [PATCH] arm64: qcom: sm8750: Fix BAM DMA probing
Date: Mon, 29 Dec 2025 12:57:35 +0100
Message-ID: <20251229115734.205744-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1471; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=BewsNS9SqpxvSCK5wDz0XrlBx7mMNeSs7Khxl2WuUq0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpUmyu7ddQWEplHnsukdjz7AjiCdknas9BBtuUx
 OPX0DPyMWWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaVJsrgAKCRDBN2bmhouD
 199XD/sEGi1D+Ko8tw7yx2LN4yE99AfHNlDuJrVI9ledkDvYGY40hAsQxO/B4dlcfXi4tkphoOv
 /7xe3B20/BLWYaPCJjCHpo1TOBuhvwYbO0noJHfqaHYzkHsGDlYI1Ldu82VXGKE/+QeiPuUeBmT
 K0oiQfo3L0174esEbB30YOJ/5VZhz8rKC4WEBW4Y3HJN+nBv0++TkNb7HNmgBQR+E2aKbbbssCE
 vjoq2Ce4nVLf/Jvk/ohmxkFitEqQeEjsem+9NNIUcsxpQy83l0dJriBlanzt8jVix2tRDK9lwT6
 X5nRVxPx3oo1kuRjke5+URlVmwereIwAbiR4Qm2cNkwYTEvuqVF5huR3yV5jlR4oiQMDs/59Ak2
 CHjgMbTQJkEM7UP0CavNxtmxQoNONaMm3wT4AoKDk70Ka0dGozs6m+1VfXDftaSA0o/HfLiieDv
 Nv/1FNOdyOQ9c2QRumK+DD/Vg0fhtUiANUPIzBS0FJwy6xryoROAD5HLxvspWfusvjL0pgPe+pm
 anKdX7YOQ+SrDLp3Ul7QeIx9U0EnCWbVmelzutoYC1ANdX8cml0Zxik+UjsvS6aEp+Q1KOmlAe/
 HihAI8kWF7lEbQPawY2GZWTDTCGhxVrtMY5nHGhK4wfW7o249qZjQ4F7KRDT77s4lS2JwBk0vRJ X+S0TjjfzTQef4Q==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMSBTYWx0ZWRfXxaX8atnUAnQf
 Er4PGd0bhS+AuLkXJHF0k6MwcokBL5SgjWSK6lmghggyBlF9fHhkM2TGuJeg1k78R69h9rSOqcF
 FpwtZhzFDbqiOmpOtNGDg8epJbyv7t9iKiEzcPk+IUkjJAmX4/1AsFnK525N+fcY58P9dy/F+Sw
 rue5yAm30ZA0pBuBn4yLGQv6/NcAgVc/nKlPH1EvgVskYombFdrYhtpsXjT9dlvHy5GhZAOM8DZ
 Ofe/7j0gC5rZT5o3DlGogBGOE+8OfuMMfvcnx2ADkDDS63C0h95Tap/tLACtLxtPl9rnpEHPPAb
 rTQ4JHnjg04l9Z6f3Yw7Z4XEMQYV2Et4sDADROu3tfY5bNL1y4i8+8du+b7TmigrXGhLxVGPu18
 jHujeYDjZyypqSEVxgpyPsAIaHXvGOwKXrQmc3y+KKM/tFFtLoelegjrMCMdTWLYDdS61On4WdQ
 GSjByXOT0OzSMb/JyBQ==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69526cb4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=kLiTxru8Czh8OvV4UKwA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 4zgv3ZMr0O1cfWDAzWemaC12bIF25_H3
X-Proofpoint-ORIG-GUID: 4zgv3ZMr0O1cfWDAzWemaC12bIF25_H3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290111

Bindings always required "qcom,num-ees" and "num-channels" properties,
as reported by dtbs_check:

  sm8750-mtp.dtb: dma-controller@1dc4000 (qcom,bam-v1.7.4): 'anyOf' conditional failed, one must be fixed:
    'qcom,powered-remotely' is a required property
    'num-channels' is a required property
    'qcom,num-ees' is a required property
    'clocks' is a required property
    'clock-names' is a required property

However since commit 5068b5254812 ("dmaengine: qcom: bam_dma: Fix DT
error handling for num-channels/ees") missing properties are actually
fatal and BAM does not probe:

  bam-dma-engine 1dc4000.dma-controller: num-channels unspecified in dt
  bam-dma-engine 1dc4000.dma-controller: probe with driver bam-dma-engine failed with error -22

Fixes: eeb0f3e4ea67 ("arm64: dts: qcom: sm8750: Add QCrypto nodes")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3040c02fb6e4..bd555ec9e04a 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2076,6 +2076,8 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x481 0>;
 
 			qcom,ee = <0>;
+			qcom,num-ees = <4>;
+			num-channels = <20>;
 			qcom,controlled-remotely;
 		};
 
-- 
2.51.0


