Return-Path: <devicetree+bounces-219658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B533CB8D5F6
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AA9D189B96E
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991FF2D2496;
	Sun, 21 Sep 2025 07:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dmrbgMz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201D72D0C8C
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438699; cv=none; b=f2gJoEYLM40x4T7n48myJfrZiUuEU5hBCpmtSE8x7ucuTIzyKZyB7NBOK0pa7+2M/8bkZqmKGYP4CXfNtgSQHEJLm8lRoLbG4pm+7bsJeu9QWCH9XYnqepbMXsti9dowcLjqbmajUcYzJlkQPBs8s83NOS0o5TuzdBiIBVfkOvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438699; c=relaxed/simple;
	bh=gkMfNWX7UF1qoXPLmQBXGIhOGX2CqmoLfAcVoTTxvTQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N0l9/sG/PjNLiP8nBltZG7kYeXIgMIBaq91mCrlck5W0/U3W/ecMIW/RiJOByJe5b8ALWp4cayE1H9CfcBFeZOYj8cvgg/keyA9CjQC4EIwGAp+Ul1eGhYbowEgCRUyDVWZMCiqfZzRHO5Y13sLO5bObmGlH1ieQfWhf8oONbjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dmrbgMz5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L5VmhN022338
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hjSUqNHOwcOgxyTiutAx2CcM6pFy+KzH69E/2l64SVU=; b=dmrbgMz504vy3ARa
	p7+ySv9FffxK6p3vyWL5nYHaMrMF9AUeBJ/8laa6UIEMxcndOTwpBKm2S/0jSiwX
	1BzvSrkT11d+xCOLhxbOHoPY2XMw6Fh4raNFmcamNEu4r2xYzjDSLiWcxBoj572r
	lGeFUZD51yZRFs1QkbuY7m5GsLPdpMbLQZpmpMeSLyW0UHBRoyQ+F7eSCedUepfq
	ccX0HV4py5+dvHxBGrdk3O3R3KWS4cwWtcE+auTVyvDfS8AWwCnkOq9mV+oARBId
	gmxm1hlWedUNJx4Krw94cm7vDGkAyjQ9wPdYWkmr0j5HJva2nJCcBznQ5fytA8dh
	FofNBw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyej2er-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b7a5595a05so72181581cf.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438694; x=1759043494;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hjSUqNHOwcOgxyTiutAx2CcM6pFy+KzH69E/2l64SVU=;
        b=lWva63VLeyJ9mskciIcbUMd3G4OaBzDuaanLfWiwX1xQBlgKERFoR7EqjunqYT6P0l
         uRQ2NtG2HlD8mZ+uKvjJp70igYqWJn+iEKiSJUK8HslaVXgJtX+zheHT7mmFv6TNh66z
         68jlqQ9NKiV6rsQ2MKQQpK0ShSmUnh6Y6mHI8Dp0xTMzM9C+WFgE9gNpqUzJMjMu4dqS
         jyWud1iCiuKCB1VPXbaY9n7I5G3XngtoUG9PvIO/eN4l6i+kUZZeg50wXo5+zw4f6sL7
         8H7E16hs2PM2Atm78QwVeyqhunMb9Iel4CYvPbdRx2rTONXD3QW19xZcOl5pzNPpMFBo
         PHxA==
X-Forwarded-Encrypted: i=1; AJvYcCVK+UEAvLlbtfgzuuCw2DqCQbw7hLeJeOWiyq16KOzyDTlkOON9+/gthMeoNfoMq7PW00cpMjJgBEK4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz27uHVroOgkpiYOrM1Jp54clbOeTypO5Vgd6LdgnMnzSsXhmmD
	kVRFBF2U09fSJ/Cpi207AIKz8pMLW8KwsTR9mVoIi6JoFXssSqIYVdGJYswYyswt/tgdUMUQBpD
	qJKLjXvkt59NV4RsxkNx2BN0ho7foLcWS6HVk0GeRq3udNTVqyDD22VmfR60Ff2Kv
X-Gm-Gg: ASbGncvrls64GlOpJLKupOVVgRhSmAaq0/RboN2QJMng2qBsOM18BD6qHjaBClyZvyz
	+qndHaSfyKFUkeM6DxDn1sg53gFC22JwkguFPQPdZ0xgt+u25lGPPHS/AG0c5QHITe0e2xS4YGF
	3eHUk81F6IFdRm5SPStgU/B+BIrHc87ZEWbg8lpROBrT+jqJ7Ie5of9vmjDsA8VGCy7QnJh3c2i
	2hy7eI4eVW02gGmja31XrimkqI7Jie8TQiloHnW9iQo7kVe/BQ/50y1BpiURiiIOjdfzzqfih2f
	AfUW13eobJKGLGaAOaev5vhrQv0AeWySRWT0gApZ4JY5VK2vfSUKV3NDf0YIeiXXlzEq2+KmyYu
	+goFJ/VVVivJBao04LhEeixsfSIYwqdh8R0ZvvBTgxNpPxYaA4ZCr
X-Received: by 2002:a05:622a:1ccc:b0:4b7:89b8:d09c with SMTP id d75a77b69052e-4c0755a3fd2mr90590481cf.74.1758438694360;
        Sun, 21 Sep 2025 00:11:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEo+1aQxqQMBxF96A7LIXaDR0BfbSj6EHV9y/IvDyLt7koCg02jKaYp+23rpZ76kP5uPfRFbg==
X-Received: by 2002:a05:622a:1ccc:b0:4b7:89b8:d09c with SMTP id d75a77b69052e-4c0755a3fd2mr90590351cf.74.1758438693861;
        Sun, 21 Sep 2025 00:11:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:17 +0300
Subject: [PATCH 01/14] regulator: dt-bindings:
 qcom,sdm845-refgen-regulator: document more platforms
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-1-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1364;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=gkMfNWX7UF1qoXPLmQBXGIhOGX2CqmoLfAcVoTTxvTQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6UgL0gkepLUc10qUCM/pJa7MkVq0ADnvx594
 VmJ24wYFTyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIAAKCRCLPIo+Aiko
 1fBJB/4hVPU4rixEFPDWJrldp2b6LfQlU82ZVppkwMnrRpfqXuLbdCuh9nmgiQeFylM40Hepq8W
 1bFc1YmSRKWUPaGSBYHpIsBMX3GlDClYgMjW2jtnSwuLJyztlzG7no/CrSbH4V6DuEm8V2yMu5F
 f3YLtWWgdq8u3vEe+JAZim4isqF3OqrpYr2xsgCFs2Evxa1czaP1G/xc9a2cp7cRNvZxrHJ02KT
 9qCVoskArsg05BvEwfD/If8NHIMA5v1yZBOy9p1zRRgPqVeabA4TEbX0lmRli+lnG0s4bHK4E1g
 kaq2sRqxYYcgZLctnCaCOf8LTLfu/V84ZjClIaRnOF+NlndK
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: -UuTlsiWpSYd1A2gbPTZPJvn4KJtbehW
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68cfa529 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Z0kpv9XV0UCBN2vuPzcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX2X1dx6Vcl3J5
 M+SUp4kCJpLV2aFw14qmeLs2L/ORNDtRZ3oI1+NDcRz708TeE0yCxOrTJKwOpIdp/Aa+jBX6kAq
 Jw71mHuE2ZfJkRKSr6KfhPCT1wpGw6WMwvrLbL9w4SYAP7ei4jxMOcFtbOU+FGvPDoj08RmqjLw
 ppNlJrDYrWJv/ck2lU4u9KEm+15FiAs0n8ar9RRDyHf77HPdigAsxT/zpu7S/63BkxVw1pWGYDD
 3YRLhjrzcR82ZLx/wn4XodvbE/ZQp+wVLsdxZ5o7cz6E5ghBXIMpThovM2pbHXasgJhhBcwAdCR
 egw8jMKvcBnJuHKFGiva6UYXUkA34PYXnNWT1D7lCr+bO+jDi4T88swaWGf53NJJ9mb9Os49vum
 wAwKRI2o
X-Proofpoint-ORIG-GUID: -UuTlsiWpSYd1A2gbPTZPJvn4KJtbehW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Document refgen block being present on SDM670, Lemans and QCS8300
platforms. It should be used to provide reference voltage to DSI
controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/regulator/qcom,sdm845-refgen-regulator.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,sdm845-refgen-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,sdm845-refgen-regulator.yaml
index f02f97d4fdd215f3c83f851a5c5713488051e58d..40f9223d4c27219222a1036dece3b53ce0334a1e 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,sdm845-refgen-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,sdm845-refgen-regulator.yaml
@@ -23,11 +23,14 @@ properties:
           - enum:
               - qcom,sc7180-refgen-regulator
               - qcom,sc8180x-refgen-regulator
+              - qcom,sdm670-refgen-regulator
               - qcom,sm8150-refgen-regulator
           - const: qcom,sdm845-refgen-regulator
 
       - items:
           - enum:
+              - qcom,qcs8300-refgen-regulator
+              - qcom,sa8775p-refgen-regulator
               - qcom,sc7280-refgen-regulator
               - qcom,sc8280xp-refgen-regulator
               - qcom,sm6350-refgen-regulator

-- 
2.47.3


