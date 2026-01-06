Return-Path: <devicetree+bounces-252083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3391CFAB03
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F9983257282
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352472D9ECD;
	Tue,  6 Jan 2026 18:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="phxp7HYr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NOI/IUHL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327252BDC05
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725426; cv=none; b=nTy12q4wj/cTZNdTJtH8u0MUX1vE22NipGN0ItIBGPIK4KS8hDQbCFKydVsXSsTSj/MMll479jsOFePvC4cEBHilZhHE559Yon3yqvAas28pQcRf2UUL4U7+qi6o08vM51Zjp1kktpVzDmaWcGuvRshhcgNEen7OvVvdV8fNvRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725426; c=relaxed/simple;
	bh=lyDLvNF18lEiSSeSlvoSMCzQtT5OvpV21/43W8uDkJw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZZCZkoejCsjOHKeQhBbhDhlKt81FZvWB6U+aPyIrEsjO4Kq4UbacfyrV4WDaTYPaZNj74J3Z1DjIdUjiHRsAJkkulUm/Z/GQx5RflzMZpoT2N4w6ht5hToIz6Z613S5MlkLKR20yYGx91uzigieETtoKm43S6Fnol9FDJ0VTaWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=phxp7HYr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NOI/IUHL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606I7PIx1462102
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vr4LRkDX0duY5LLos4+PWvLC+7jFX2bckr8
	xKAUGqQw=; b=phxp7HYrJx2xkX+XZgW2GA3IVbyyl+PWSC/BoMDAC6qhYUDvhIp
	/WYJtp/KUr8c/h0XnX+Er2tmIzeDd70rulyJRmtd/XQ7NAx4lS1DRX7VttEehwGK
	ONvBuOWptB5HRwDIhq72KJDYyHivc2ZQDzaEsIAqV3q2hPf6GOLUg0w2IzTRgdl/
	x9P6IK2B/2/MEY6+8Jv5lAJd+8eY3K1zyxTMSJGoTTgmDKWKnfGdLYao+JCh68yp
	EQLlRnivROeRYVuxiZOrLxX0Eus878MmZpxkyPe0WqBePhTae+Nvs9Dm9Y7lM206
	JeK7OKRjH6aPP40uAGWBndNgzp2HFvsxwOg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm1ebw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:50:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edad69b4e8so2625931cf.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767725421; x=1768330221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vr4LRkDX0duY5LLos4+PWvLC+7jFX2bckr8xKAUGqQw=;
        b=NOI/IUHLqPBS0c2z4YGn+Icl4fvYa1oI5DH2PGw89hi0k7U36JFf7xXVleL766KkCQ
         CAixjvFe/XZcL9oKZPLXNMPgZj3GJ9B4INNLYV1OzKM7xRvO8RS1hycUmGincsZIu8hT
         WIXaVlkcvYT+6sZfBf8C8mdm7/qNK1U0k60KQz8Rbdl8GuAIA6rnhCnhckBV7si79QMf
         amHPfyl2KZUVuiRj8hNWZWhH4Ms+QZjk/FwG5M0d9MGNDq9Dqe6dw7hB3qwRP22TWNku
         vkvRpiclKUIVfYLyceKea3s1OvQB20dgPjRkWtQE4m5pHj94mLtDjXydMX6+QIKZ/uVn
         IwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767725421; x=1768330221;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vr4LRkDX0duY5LLos4+PWvLC+7jFX2bckr8xKAUGqQw=;
        b=RaqU5W/iToPO6JFTfb11wtLOXzcnvjqbESrcpqz6cCSS01jR7JHdQ8hUNMFXJQ2ezE
         zk0oUq9CluyKJ8drVWc6c0mHRQ6xqlcywyWAfQDXNk4MWEeeP20lMTEUgisp7qhffeOx
         kLjv2/d2d0lviy2pVfaWMQmJ4Vj8h8Byc/LNHXu2KmJQEiqQvL6lUryJ70I9gomj7ZTz
         gUufpyJMMEkQ9fWJhcub+zV7+Y+K8xLn+hEievpgNYqT+vyFVtXd1CKgbcRJzLLLeGkZ
         OwYma4ee545Vs+boqD0zTVSskKlmaXknw4W4i0myHEprD7U/hgjL1ZXRbf6GasIWtDHG
         QgSg==
X-Forwarded-Encrypted: i=1; AJvYcCXzxMEiYrzWPtoCtrEv1IdTb8QCXRXLBplM/9rzKT/0TMg9Vi9hYRuVm8fmRj25sZHpfd15AE+sYn4R@vger.kernel.org
X-Gm-Message-State: AOJu0YzBkWWzgDgDZNQI9YM7Ym2zvioiRqdJeOOg8lHRavmA2QYxR+7a
	8tPENFgLlojBf3NUdp3tGx15jGiViFQ4oLX1fgGCROxHgZJVLEmi8+2RFTYCRQHirDVWKVrMf1l
	P4M7+K72KzWpPvIjxLlSU5rhYQ4Ti3HyhZRJjww/jDGgrBu1NG1jSk3GUPD8zoqPH
X-Gm-Gg: AY/fxX51JNmPiVi1HvwDFRkPd5d5y6LmuajoxKHANOnT91T2/s2lyzoAYlxNGmMGwC7
	aBTvBlJiI5Aue+GB7TbSYctDzo3qDIuT4cyG/RyKnEBaCk3HIj6baUXH3usC+NQN6jqqWELZhjt
	QuJX6V6B0yx64WXDbIBo+3v3uXfKPgk7YGCWJqkTfPwaGZJYE8DH5LnLAci+Qyui2qcRYBFTrCr
	g2wmx9/WSn3R2AJ8TQ71XbvZVYU79kc/EMKDxEZVWrJB/fSB1eeFQBci8bdSnnbHzum10p5Ofru
	Ca4vTNmbDov6YcV9zVcYnlp8BXGEdKANZPuE5MQxxVnsd2Db3FPXvzewNH3KaCujrDIHT28clvn
	jU0Hins03Y+93I2qj0fqqSLyx1A==
X-Received: by 2002:ac8:7f4e:0:b0:4f1:c5f6:22ad with SMTP id d75a77b69052e-4ffa841e189mr47262131cf.16.1767725421403;
        Tue, 06 Jan 2026 10:50:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQgB2TN/00DhQOfJABgdxPQwGMc4U9fgRcOA48gTkN1w5GF+TGGCNF7R+5tvaDFNLC51EjPQ==
X-Received: by 2002:ac8:7f4e:0:b0:4f1:c5f6:22ad with SMTP id d75a77b69052e-4ffa841e189mr47261831cf.16.1767725420994;
        Tue, 06 Jan 2026 10:50:20 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be65197sm2885576a12.19.2026.01.06.10.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 10:50:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: usb: qcom,dwc3: Correct IPQ5018 interrupts
Date: Tue,  6 Jan 2026 19:50:13 +0100
Message-ID: <20260106185012.19551-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2058; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=lyDLvNF18lEiSSeSlvoSMCzQtT5OvpV21/43W8uDkJw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpXVlkC4vzdoAM3Y320DPOO/LMxSS5amsSfF3Al
 /Q+VsUFGuuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaV1ZZAAKCRDBN2bmhouD
 18sfD/0blvlRnsJ+7xvBCbES/Wk2SrlYt5oY/hMRunDpewuW8t8e93SU6P/JrM0uUY/02Xl9bz8
 k82obMOu2uNB2h4iV5VoI7VTt9o004fv60GV/7qMLo3ntZTLFGppUTm2POhG4uK0sQR3OMvxLZ0
 vDeKOdN+UuVUaSeicVyNYgVjoCIhaxbabgEJqceeLinxvizOrCxCfOW5NavivebAYrUsvmmWDsP
 zYjsUaTbMy2bO1IEDY+KyaywJ7Vl41pPj5xjHLjeI5rRlReFZfbfnR/Cn2CALCpANw9uvm7muYL
 x65C7SjO2SSxAkdIAqTv+P373PHVUxU1DLLzEQweYLxtCMBKgrMgahSEI37HhqeFuCR04Qd0xe/
 tMaVEOpgc1AHgYbclxbkp0rjIsJquKjX0htxR0Hx57DRYxBxbIzvLKtKh3rVkW4zyffFapALnEq
 TweU9X6OtmlPUieUk3AA2xkSKhcMKZs65nmJE1N8liiSRW5gMaX5SD+RaPcU3QF7bV4xP+HeDJu
 Udy68d/aA8ryxd22oY1VQvJ8jz7p6yTH0HX62RMJojqCOr/itTyTYhuYdRek8DUDpTM3S27e+yS
 dYs1+/paummyL7aI7a2sFjuQiG5jSh/JCQ9rLr7AJtVFwM3YpuWgxiqOi+HoSO0b8DeMljwfM2C ijhaNnrgtaxKJTA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695d596e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3SqsvWQJRDs5ZQVTcbUA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: eymSkteWeJ3ZMP1zTeouojalg8tro76O
X-Proofpoint-ORIG-GUID: eymSkteWeJ3ZMP1zTeouojalg8tro76O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MyBTYWx0ZWRfXzrt+3/0B4p6q
 glaCIau3UUhE3B7GW1dK+FePQK6gxeTC9xmbtTYXJoypjYR0sjhqlkNkazei9kZ1s/DeCVmUBAx
 RBKjbyW69glh+cUvTla5hOmtbBQITFNiSeD592ins4P8l+FJjWypFDRepUP62xgahpRVAQGhv3J
 6isCeniu1mBbwegiAhebm531ij4TrMduI4TVIyhgLhBOt0IYOk1K48926CkSL6tO0mCOAlTxBTD
 gp6CqK51QeOdvewvZvORThN7AsSGUA2cD/DNSFKkGUSudskB7iJkGa1GJt11zh3DDit81/2SrtR
 kx5MBNPugpGLngWfpR0nWEOgMw3coKPugroueMvoHXC71yaw6PpSvfLsqv/m7OUVq71f4clnhxw
 9xn4JyUGhafwvLVmMKHiQsX/xu1NWGnIVey9Cfhsf4epPmj2C+qNB1l1wUkKoQrZhbZ/OWN85aQ
 1ANC72mUWw1SowaHyiw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060163

According to reference manual, IPQ5018 does not have QUSB2 PHY and its
interrupts should rather match ones used in IPQ5332 (so power_event,
eud_dmse_int_mx, eud_dpse_int_mx).

Fixes: 53c6d854be4e ("dt-bindings: usb: dwc3: Clean up hs_phy_irq in binding")
Fixes: 6e762f7b8edc ("dt-bindings: usb: Introduce qcom,snps-dwc3")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml      | 2 +-
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 4d1a039013fe..7d94b5f7d8d7 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -408,7 +408,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,ipq5018-dwc3
               - qcom,ipq6018-dwc3
               - qcom,ipq8074-dwc3
               - qcom,msm8953-dwc3
@@ -453,6 +452,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5018-dwc3
               - qcom,ipq5332-dwc3
     then:
       properties:
diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8cee7c5582f2..3073943c5964 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -420,7 +420,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,ipq5018-dwc3
               - qcom,ipq6018-dwc3
               - qcom,ipq8074-dwc3
               - qcom,msm8953-dwc3
@@ -467,6 +466,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5018-dwc3
               - qcom,ipq5332-dwc3
     then:
       properties:
-- 
2.51.0


