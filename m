Return-Path: <devicetree+bounces-249488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A08CDC0CC
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6A282300A6C6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A77931AA89;
	Wed, 24 Dec 2025 10:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CgoaKCA9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kdJViQXm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BAC31A7F2
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573631; cv=none; b=owW1Pcx2XuN+9Wx+HDIUy2Cd0KDLAjLW1otU1Mcef5mQSvzjdhrcMlU/tG3EBJI7dCxUpDkfmLz/LBNl1Hd9KAJAodZd4tShy0JjtEe2yVaAEmM/CsIcpQwsMR3BSM4EkX789SFxlMb6qC0rjT1lNOuMzBiRQAFxrwdO18Uexwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573631; c=relaxed/simple;
	bh=2itzp5Me8KCm4wDk0c8WCgo+rJvV4Ir6J9SaNy5gByE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RSiCe6bIoz6jaa2zGbSlE5MxEYVAia7wVuYUbYJYrxPTlKjYBKnOoed/kil63iGk1mNwPgFRLEpjait4jUNghi2bcka1Bx+zDBBykBdMf0PNQrZ8Hcc6YRwtfkAZ+wcBIUnS8gGdpPtQLOddiJGXyzYEAgyvsE0H+JNrUZfMlio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CgoaKCA9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kdJViQXm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO354ZA913442
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=; b=CgoaKCA94ePw+UKL
	myGNpF/1AJWyBIhgjY56YvHr1Lbup1cbeOprAmZ18owkeirocUlqnB+jk6qsYTGY
	mv1yQD1tUh+4maMpes0PMZNlCr2KR6eHq14Db4MCgLh2vBoaYr5OmmV2Ss+N9xln
	sv4oqBxfb6ncegvl40mphyGjFLnrTY19qlcGvsdAcnz1mGm5wXz0DFhQPaIfIgGu
	DNEcOLgYdOKJqbjyBlOb/gTghM8DEv2ZqpYQZkLY/nDz5xJSFZgxpXl1gdWwyIYA
	fqGe7ggq5z8eQ3aqPra/PQaa18P28fCzXg1P7wv42jrsFBylHpOfJO3o02nZ9xSc
	C5vozQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7vt2jyp6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed74ab4172so136545191cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573629; x=1767178429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=;
        b=kdJViQXm4K5DVXazsm3a6e3ChKmUSy9F5yotnE+RejnW9+DYDnTTwyqrqRy8FSZMJr
         DQFK2zkyIQ42SX8rfRvpHiZabWWL98W2qKH6ATC+N7dF1UuUEulWZ7WNd9uLXStK+00j
         AoSBPrvHyqnA7hQEYbo8tm4A1yi1+ZCcsZ8ULKC8b0G+oACvyq2XpQ0ZW0YOUXMrSC+1
         +25lQVolHwGZh0uNgzRVNa6qC7R+lkt7i3bC8PmmniiV6hYx0/oovilivb1SeeBuVdvw
         gIxB2dxeC7uEjFF4M6UrBbEXaLqMyOrzoAtMkv9e6G1cWK6E8Kyh/I1ICBkilNQpk4RZ
         F34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573629; x=1767178429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CUEk8+imaWpqVm7FWfHPYemNpfkMDwtBIiNTxavoxlE=;
        b=QTcLl9YGlT2hud2sHHcL8zucXoJdgzMev/SzKOCd+for06AxlptD7L30VLMfLxzVeM
         Q/gpwoTzi//Zr18t3AWBDgNGVK2agcrIoaoO1QgKWkmJeQz4Gok5tAzVrNQRkj1+iqNf
         C/tk+VYnr0ZSxK+mn9bBCBXzSI6o4hUEAssqVqBTlXUQ0p+SvIPqEG+VwS9NINwWuzMw
         iFpnhiXpsX4NimwyCBdlcYEkj/VlwEZuxLAwiLruw2SqxVdiZFX5JhGlzMW7zzsvJ5l6
         hpquvYxJ9Dvk9+mv32BEKX8Y3bgWh/LKcplVgxUJRpKnDwcj+ivx+tI145haSpOB1a9o
         J1NA==
X-Forwarded-Encrypted: i=1; AJvYcCUZQ/4fD9OX+04IoROE0xn5E1rThhkvAWyVkCa1ngvG4bjGYYcxoTVGuAhN7HENpCUDy2mjPvzEpPnP@vger.kernel.org
X-Gm-Message-State: AOJu0YwOkFkYo3h4d/IMtbn6MRjIjt/jkckP6xauer7qOePIqHBcmgkc
	/Di5yNnTLHa36ipxMf3F/igSUc8QPOPXbqcYh6s4v1p4Eci/joneNz3FBPy3iEKZWjcnYg2iFI4
	2CE5LGKtN1zqWZfpMh3Yci+GmdNicdVig9ocOwvTpoGgGsnF6UBgvRrGlIrwYMRbi
X-Gm-Gg: AY/fxX6BnJNtzvfv61wWlOH6UxjH+XVC47fggAskvLsFW/tSXXXBBxzpvhFI/GraE3o
	Cey3tXJUi5mjU70u6nVaMhtmxHzbXAvQiwUuTX1weBbo6tr9YI1jUlC0Q59d5tW1HFujvP3GZGP
	9QH4661klA5nObGo8/iba8QUyUuJimJvJoA0jzyfWBnlC4V3HYamV/lYQK+OYiSz90UrRohW/gM
	TBGAVKrDEI5oIQSKcKUlh2NCJSL6zCyhxE/Mly8zpQDOd7YMbRmGtZok5oKEWnlj9Ct63kxETpL
	4mjbnSY29SM4MCqgIkblobU6eYFqGH24huICE6UMJbjKjYX8qFk1+l3EXWoG/SBuoPy4ULAK//M
	s3v24XYZgiCPffzM=
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr258486041cf.80.1766573628723;
        Wed, 24 Dec 2025 02:53:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOA2TrTt3Y5Yxhu2gzHGVIVp1sBaU/3OkerIWR4tWgNUNp5QoeJ798knCt9F7yBPv2aHBA7A==
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr258485851cf.80.1766573628268;
        Wed, 24 Dec 2025 02:53:48 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:47 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:53:27 +0200
Subject: [PATCH RESEND v5 1/3] dt-bindings: phy: qcom-edp: Add missing
 clock for X Elite
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-1-3f45d349b5ac@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2068;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=QrTjRJ8nYr9W6PrQlc/hk+jiJqNSvuKkuj99rkGdvAk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8Y07FYpe5du9vHER+Ym7O1WVf4E+/pH9ssJe
 C592AUFTEKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGNAAKCRAbX0TJAJUV
 VvUsEACwiVci0YOxDy/aKhNSSkugMJ50g32aB3/YY75XR3PF9Ts7qM6Nox75klK/54Rblt5W/uh
 YlgZcdbn4bEk+OYaCuNtZFN4PnoJHRqWisLTp53jKDVKFQBTepE5BoU7IED/8V7QtCoYWEiSNVp
 1XfjePDDG2Z1LwanG6NN3NqVXeS1cwAveOIR/fCH3ANx4+N8LVm5WTNvCxelf4pugpzfQn/Ksd5
 EE5rkx/UNw74zMqk1xbd7T4VeWVhhV/QvnLHIYROp8cLEzX0zljRHdi2kEFSdyiLZH9FhIN9V3F
 VkHQfZeYuTVegHXZnikINHMl6dHQ9rl8qyMubsGqyYz6Ss1aOSMg1mMVA+nwYRKmpBDgVmJ4i4p
 BS/LuamWSOBlKeFsLCnG73WVwy7Ld856t7eVkLxaPYswyOrMBD6PBc0RdohtFvhn5x9l66m5ALn
 kGKyE1tz2KL8cagudV2tBvJaRg1b7NPUVGFAlcwmAza9EaSmLWCZ1aSI3sFwVBkjBndXRwwJCTM
 g3NCvPW9CEMjID4HuHHdYKSLfbougUg60iXPl2bkTon4SIAc+h9UsxOlaA0yvu5AiW0Ms7dcgGE
 c3+/H4nYN/wTVbyKOkgx7oOt4TzG5KCCKLxaLEe5eDbqe/XjPoAnEruskQmetsg6R+3FT50dXAr
 enAlRRk4ht4RhmA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfXwAITAVPX6e8P
 EqPx+Bs5kOhX2STMgOsJ0x+OVkcFkrtZ3CwdQiu8qijERyiXiAYTweJcZA1eswuWQhWIcsXRRXE
 4O2byg7E1YtvNp3l/pAIIL7gWj05rkJnToi6BBEIVRxeUbmRUw95RpXUVGJNLWEy+NfUwlt1loA
 pSOoC+qopY9TKNkWK6olt/KpzLQGMBj4f4m+TBGkxXtf7iVyLtO8dDMXdUX53RWkjOUdhc8Pjat
 8xv7UPkZQlX2HPLXyWxe2P4L/7p5QqVB7i0MNp2tlHCnrt5uWboC30Bs6i1kDo4/9fXc16Ek3MN
 KcB+I3dIRTkUdgPZji2nMH6DMS1biWLUIuhEBF4kB1aVdFZVWC0Y6V/83kpVcN+Wjl6rFGDCQZo
 oj3Cgv2U8J4Xy5VHbxcn5LLynQeVHKDkJDF6q/5Q49lbrrC7YdSebHY72OVQa4H8jWB9dekN3aC
 VSbO6G41zS9apjlsP7Q==
X-Proofpoint-GUID: f-UuSMvJ4CI6D933RlahoGb8kvnGMvtd
X-Proofpoint-ORIG-GUID: f-UuSMvJ4CI6D933RlahoGb8kvnGMvtd
X-Authority-Analysis: v=2.4 cv=brtBxUai c=1 sm=1 tr=0 ts=694bc63d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=tBDzFmnqMxbdcKwNnfgA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094

From: Abel Vesa <abel.vesa@linaro.org>

On X Elite platform, the eDP PHY uses one more clock called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So attach the this ref clock to the PHY.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb95..bfc4d75f50ff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: ref
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.48.1


