Return-Path: <devicetree+bounces-184289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EAFAD39BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:46:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8A3C16BA2D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D50B29B8E4;
	Tue, 10 Jun 2025 13:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WRnlXGcL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8432929B78B
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749563143; cv=none; b=SdF2n/woT9tQe6SLltTf61f+75a8lUhr3sraZDST0ql8+75TapPIO/UhWf/urpyXBaDN+iPg4hlhIetML/9yA5QLKXNikXcapXsrM52lGqxJfMoKOpF7+CN3MGTexEs1M8LVz24E96Y82q76XTEVbn0cuAmpX6GkBbe/AKz84Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749563143; c=relaxed/simple;
	bh=NgMsgeUzbu1NBsXjdXusMRPlVqn66otCTDVh6lp/wFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JKItpR61y/RX4YP38c/h47ly7QIXentjAMpRGNSs64oG59qDPR1Ig3zmGzEoLtpQyUbfDD62husvcTsp38hNJoeWGL16YBTiKs35PHJO93GmZiwutk5WlY90ARod++bFqb30QWQwL0M+iyuDb5QSSUsj3qSeiRcmdpHT5lhX3lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WRnlXGcL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AACv4B010142
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PafoB/3Wa4/aWlMuKHG6sO8D3G9m6I3Dvq2Y8WMHdVM=; b=WRnlXGcLz9ZroyHP
	1IUThS4u0jBvdxWJgUqSNonQllzfYsXHOEstZ92isBBYboG0FZWLWu6mzIIG2x4h
	hjhvcjZs916GnEFDWuy9046pNKXsoL5yzkfZV8fR2Gz8CmU/xD7KqUU6zlaEsjsU
	mE4qzbn620Ji6TIDQgDJn6SyaAnbypLY1jN/nyJ33g9ffh0/EXeXdSzMLvHErLWi
	DdNowpvhdnv2Z/ow3VoF7dU3hcAOqYOWKRHyPk968cbo7CtyFOq7hU7raSPFCxmE
	24smwm6tGWcr6fAnTk//LfiICRs2En3T4LWL4ck6DFsAvsFeOwGpR252MV688QBB
	K6NB0Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrh8k91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:45:40 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b1ffc678adfso3497753a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749563139; x=1750167939;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PafoB/3Wa4/aWlMuKHG6sO8D3G9m6I3Dvq2Y8WMHdVM=;
        b=FglrfLN5M1HNLQ3aLqQe3LDz+HnacGRRY+Uxt59V3bdJd+aKi5BBmRCM1wZbX6fBz+
         V+S2mgtm6KlqdvA/HUup5QiyhQklGR8JRqs/RPHJzNvbnb26B15ZKJUak0eiIxXXRMfT
         00byUMgw8XZhcF5pYcs21ilhKSXSIOzf/tp8wow2MmeIFseQRP8eOw4ZQ/SDfYFQ4jR5
         dHulqwIw0Vl3w2vZ+1SnlMEoUx6H+BcF+hJKnQGGYxCrDWhJErOxuTphUDs87dmXsTft
         iAb4G6gUEwn+J05qJwrKtHyVZ72LZ6e1xmPb5ZMzG53uF/AZ8tbKeZBgrt9orDb11o5x
         OoJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjnlB+gBtJUeFGEUpSBljFu6mYfOiXLOMyYayAjwaF8uxltpXNtM+hnDKMsmxxEx7xPH4nXSuCmTsV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz79gmE8PL+SkoPbEBNdzXtOrPUe/AkI4aA0TdPfNREWWLaT2kj
	CPtczXujmuCiMszXhclzYp1Gff6VHyDvDcspXoQYOYjGh1BSa4MhH/ucBfsoikdy0TBwNTn8dPK
	ci0naluLnZhx+3BgmqUzuuyu4Z82E4CY8mJnhnl/8QMqPtKIv9v9gP6TlWfHQbgqb
X-Gm-Gg: ASbGncsqOQyhIP9+Ebuq4xDUbyh8XfHskPLWtcaKVqbNOmGVOnSglGqKtYYI3/gQWBT
	HtstjZDHUMWoM89Sh9PvoMi8S8RkhfmrSIJuKaeRWXl60EdYEN8YNmRg1vKOliJENfLW1gX5A6r
	VuMsxk8pvCX7BgcG1izTWc5nLJJUZqlZ0aF0029Sz05ZD5ijGpf5P0dHW3B1bOEZKpH0Lg3Lk4H
	O1N1sU8jB0EWZL/NNf7vu/svlSxujCBVI7tDczUQnNfltW0rXm7ENtM6/JvmNinYa9BXS62OhJ9
	KVmR9nYC4l1QaVxa+ycNyWW2iI8Uec2JM996avLiUwUxgEYj4AMprmZjYfzDkTZyB3M5pjwiYmf
	CITxYOhWxiXQ3nSDr3f4+GKyrdMuoL5pw6bGVcpKPPsvJYu+WpdLll27AKA==
X-Received: by 2002:a05:6a21:8dc9:b0:1f5:6b36:f574 with SMTP id adf61e73a8af0-21f78c75463mr3996066637.38.1749563139147;
        Tue, 10 Jun 2025 06:45:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjjZpNDZxLb9Z6pAdAQAD/xCdCacbKubRpCZmPtfdp4I6UMK9b1IuSydPftAse8qDNXpGldg==
X-Received: by 2002:a05:6a21:8dc9:b0:1f5:6b36:f574 with SMTP id adf61e73a8af0-21f78c75463mr3996032637.38.1749563138749;
        Tue, 10 Jun 2025 06:45:38 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2f5ee70085sm5858107a12.25.2025.06.10.06.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 06:45:38 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 19:15:19 +0530
Subject: [PATCH v5 3/5] dt-bindings: watchdog: qcom-wdt: Document sram
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-wdt_reset_reason-v5-3-2d2835160ab5@oss.qualcomm.com>
References: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
In-Reply-To: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749563123; l=1882;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=NgMsgeUzbu1NBsXjdXusMRPlVqn66otCTDVh6lp/wFo=;
 b=AAqKs26bBLfnLC+UHWUOLU9c8X4MRvyGM2fp3soA+25gWxjKfJX/Z5oJE4C0FOe1K6mihEpAS
 yR1KQRO723eClZQoxeIinNj83GJ9a9AUedp/9sByxmnBDpFJsEn7v/C
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=68483704 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=0aCF2Bm0WFNHtCR-1QwA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: 6_kmX9juvSh-1Y6Cwf5Qi3AK8lpH_EG9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDEwOCBTYWx0ZWRfX3DQYgCUpyhSx
 NqzuBEjIHeP7VOq9eIu0Yksv5KRsVoozvvwfP8/USzVVwR/uGYDFf16GhrF4cflnDszlZCFAfRl
 r4B3gkl+NtrRDPZ/pOPFl6VlOrnndqQX1GlsfSGz9P6sA2Jc6vyW5LV5vhYgfkRkP5jadH5pUH3
 CaT2FBQNZM49EiNd+SIFjmsHHfP8tGMkSoDOww3uHP5EmqTmdLd9abENYqLle6j2HjuTTbe8wH7
 4wkEh9glls3bcZRq19720u+Pnl/NBYg6w4+0f2SaT18Bhsw0Rr3tRS6+AlMuNyeSBF+difOGAL4
 hwWWCezs9Ao9Cc5VSkrNyoVVgt2zmXQ9NSA9xP1Ao9e/94T18x9QBaMG8bNst1vrzgoitYFn5UL
 emcIXtGKgLAH47P1cTW586LhFhmwGsIaRobXUqhv3XueaV1HrnjP8/r6vDOK45K8mqvv49ks
X-Proofpoint-GUID: 6_kmX9juvSh-1Y6Cwf5Qi3AK8lpH_EG9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=999
 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100108

Document the "sram" property for the watchdog device on Qualcomm
IPQ platforms. Use this property to extract the restart reason from
IMEM, which is updated by XBL. Populate the watchdog's bootstatus sysFS
entry with this information, when the system reboots due to a watchdog
timeout.

Describe this property for the IPQ5424 watchdog device and extend support
to other targets subsequently.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v5:
	- Rename the property 'qcom,imem' to 'sram'
Changes in v4:
	- New patch
---
 .../devicetree/bindings/watchdog/qcom-wdt.yaml       | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 49e2b807db0bc9d3edfc93ec41ad0df0b74ed032..74a09c391fd8e2befeac07f254ea16d0ca362248 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -81,6 +81,16 @@ properties:
     minItems: 1
     maxItems: 5
 
+  sram:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      phandle to the IMEM syscon node that exposes the system restart reason
+    items:
+      - items:
+          - description: phandle of IMEM syscon
+          - description: offset of restart reason region
+          - description: value indicate that the watchdog timeout has occurred
+
 required:
   - compatible
   - reg
@@ -117,6 +127,16 @@ allOf:
       required:
         - clock-frequency
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,apss-wdt-ipq5424
+    then:
+      required:
+        - sram
+
 unevaluatedProperties: false
 
 examples:

-- 
2.34.1


