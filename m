Return-Path: <devicetree+bounces-249428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20795CDBC1D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36010309769B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D2832FA38;
	Wed, 24 Dec 2025 09:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KkGGFlfV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q4g31L2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C2832FA28
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567249; cv=none; b=Oc/9poWKEB1aWMkAgXHUy8+dY7l/aAbeOdgWTl5Bp8SfpVSUKDc9WzUaAuWAk7xx5wd3RwUGaq2jg0dDtD2GNhmCYlSFzMdPMnqrcvcvLTYEa1Ra45ZkWndL+lmt4c8sICUnvr+Eu7oktvJwqj6nOfWGLI5rdjFlWDBEKw6dtjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567249; c=relaxed/simple;
	bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t+BJzZbG5rbNqoDinggZvaCaHvIapIQsSyxKk8YxQ5mwTo7XTYn8NjhjiZ/Z2TqbVexVI6gJQU0fPXtsoPj9ywqrESx03hgOxJSGLem/zvKWQpM9zW0qAvCJTQGyXXwpHylsIZAazeVknjWRtwolpALVb2fS9cjsEwzalpi443I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KkGGFlfV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q4g31L2a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO5Y2x11018267
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=; b=KkGGFlfVJeNvO8nW
	DO5c75xW7tB2eW8su7rJMJ1aW6AQkzjDeVIJ//9yr4/DvhEFoGxRHNv5O8n8hN+N
	D+Y31zvGf+XYWMDwP4JD0vLnnj9w2bna4JrUVB2/vHz/QqIYrf/wJcVN7X/OdVlI
	nrXT+KqYQzdoe8YA0aMlZVqBspjypgbE2ZnCf7BEBkJDei/fngmMJc9fWHnUWADs
	AOr1CejqUVBTz6WsbbaLrHnDZwsDOfilWH+gGXwp7h+BL2wChaI0EiCLtAiTbhTx
	G4d2myIYVKPQ0Z1nnxkCD+mvvhP0PtNpI0QH9zXKxZ+ceeYBD9ZoSalYz39dJgEm
	JxO/UQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjsadcj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0bb1192cbso116864215ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766567245; x=1767172045; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=Q4g31L2arGS1UhpebplBvjubyIiIED/WS6DvcBwczDxSuD69b5LnHUHJu+DvQ4Puiq
         UdWZE4b0cUKbU/sGTeUYdBPwHrXsRGyG3RJ9EXeEdH19fJghpUcfv6Hi+a5jdQ5Apdp2
         Zi/i273BtKa7FZRYDs5NElJN5FnAJdnjE9LwRqrU/dZ4RTUzUDNaHiCO1aw6Q82u4qNu
         a6yXBm7LH+6kZceo90ybR5y3GeLNBvAp0Ge+Sv2IrqU96AeQKjw/addzXK9aCNn1lmju
         1Cy0CnG4ypG38yd1VXZuHIErEKGI3btcVnN/BkzGmkS7xKVOCSl/RNE+fFMEe4EBiOxk
         +q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766567245; x=1767172045;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5PgA1qa3IfjGRmReOuT+Jdii9AuqyqupAfSP/tz1CU=;
        b=EWV5/J98LfsPY9ES7uHFetBakHmMUJY6qS0GK8KbZve9n2V5GmJ4N90o68GykeEZDT
         0Xn2pIDC57vS99rBSnG3koYqKzJPFSlgSPo7dIDTOuchcVPXeZ1/rdmpYf1qscjZNhrJ
         eUOk7spuwvB5XNUCN67os2MZ/GToHe4if+ea9cWqogmhEbEiU/l5Lwu0bK8v7Url+U0g
         wOHEAv5Mme02SgJUBScjHVgDLOXfhg6KMVqwdmBnCQ5wnGEnAEXd1MitmtzHyFAKzPPv
         H2E3fFgDRljfxlkYO9uoVOc46yuREOY5LalRFmWyAcd5grepHTgRyGVhCLT7UO+g0vat
         dRfg==
X-Forwarded-Encrypted: i=1; AJvYcCX6MylmLWrEEZl8L//6u4rMoWmUPa3p67jHwTr4d1EalLRkqpEOVMn8Y/v2E5O3oPGb9zcesIWIDvl/@vger.kernel.org
X-Gm-Message-State: AOJu0YyYnq7VuUenimYdRNL7q+FdKM2Z7M6JD7iVSfNSWvLVengPJfRp
	5Aur7qYBmgetGaGPf7v5z2N0Li3iRYKJuY2mHmT0yxANAZz8TwfJq1T8BYeVfEAfT+P7bxJyxQ2
	RFyITDHe9Q3uVwyJJTWl7DPZwrS8ZRnX0vpM34ax/rjeCP08f/pnCFENc+B4YhAVP
X-Gm-Gg: AY/fxX5WPPzMh/d8xE6DMOWlJjvCdNfgfXu/TPa0QOqWJHsZwndPHhdmEpVG2wd1Rp8
	dM293vivSzMTMOh7JulS8yTPpoBY1TJONS0JGNjPnuQh1Wvpz4nSubhBIBOLqaBVL5awEtNasYR
	RjzgnJ9b++XXelkYzqdleBHo8cwMBhzqtOuxLgQ1PjzSjvGaXhyRWOEzwNgwouwGA1SNoaNyUNS
	w5rBm+2r5JEDvkCZJUvGVKQTlIcEMFJkA+4L5NmSBJ7Wg5bod3D2rDKhg6H2e6qzopPnycA0/1d
	yTwJrk/DRMsRSry1Ssv+/9UawAQa4Xa/sPIi2UydK2oSjkyjGeY+GQwunYA+eBvN7QBtjiuYczn
	lprIMywlvbqLS2C3whKUlruEKmMY1GM1wjeY2gxnFvmwA7Y3ltMFT82KHSgP/A0ZwVSMYHw0Z
X-Received: by 2002:a17:903:3bd0:b0:2a1:39cd:7462 with SMTP id d9443c01a7336-2a2f221278cmr148934515ad.8.1766567245449;
        Wed, 24 Dec 2025 01:07:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQJSCcEDJYpAElLBdwqPKFsyNLcK2o3ZpFHifNOj2aFk1A63DITNNzdU1841TN9YFANz2I4A==
X-Received: by 2002:a17:903:3bd0:b0:2a1:39cd:7462 with SMTP id d9443c01a7336-2a2f221278cmr148934225ad.8.1766567244933;
        Wed, 24 Dec 2025 01:07:24 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm148418095ad.21.2025.12.24.01.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:07:24 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 17:06:15 +0800
Subject: [PATCH v9 5/8] dt-bindings: arm: add an interrupt property for
 Coresight CTCU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-enable-byte-cntr-for-ctcu-v9-5-886c4496fed4@oss.qualcomm.com>
References: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
In-Reply-To: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766567216; l=1751;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=D10EnaHvzxc5IcCAThb9a/AzzqWooUS88J0GgYqXhUw=;
 b=tKR99cySKmryaYnNrYe05xHL6TEQFTTMHE0xGP1WEUL9152DOtRwuSu4OlI2/9ZkD/Y8RUsDv
 045i+bqbKOZDc9WJKr1W1gRHkc/BycGY2HUPjFzCpHYx1zIvbuBsZ9C
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3OCBTYWx0ZWRfX7sidso3J3yI+
 tC44nc8Q+G8FUQgJ04XBNqGz5Y0WXIZ+Fab2tvwTn48VUcck/GneE5tG+bpaZyn2efbysL04Gb7
 Ve+Z8wpWRTdmCaxyMD3wNSTxAP4rnqXbcH+jy6NwdK1LYtrlzoxHSjUgYEcV9zpujuaBB781XEn
 ssmXX6iUWLVcxvXD55JoGo5an9aRtBzvaXcaNs3LNA3y/o/F27z7w9pLjLwBPEzXBGeA3qbFKqr
 tr17fP8bNv7HaQvlYznPz6g1w9MkhGl3I0OX1yKygCABf9SRUrwaCc9TqTnqX58bErqzfSr//wH
 xJ6TX5Bim7bvETZQGs89BO7qx+EFd5ZFJ56dFAp2qbojp0pBWHNCVdvZdK+5aV7EjbNUmCqpXPm
 2Wm1ykrh5HXcXdi99ivt149WVU8fdPiPtLKHxQZzL+bwEXrnbUvLu87ZwmZtZrXWXWwhIeCyAC0
 dMW7oGJS62hZafc6ZCQ==
X-Proofpoint-ORIG-GUID: fHL69yl8MNUi4QCR-xeWXh7sFvPhwSQi
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694bad4e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gSyxy6DGYGa4b6s9XCEA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: fHL69yl8MNUi4QCR-xeWXh7sFvPhwSQi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240078

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshold of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index c969c16c21ef..ac27a8b89085 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,11 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Interrupt for the ETR device connected to in-port0.
+      - description: Interrupt for the ETR device connected to in-port1.
+
   label:
     description:
       Description of a coresight device.
@@ -60,6 +65,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -67,6 +74,9 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;

-- 
2.34.1


