Return-Path: <devicetree+bounces-178346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053DABB7A2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:44:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C4203A2F2D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9540C279323;
	Mon, 19 May 2025 08:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ahi/r0cb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7909278E60
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643677; cv=none; b=LuY/hF4ybx6Lo5ls9aUFtvBAKsCNh3kHTOzzZ+0wtE7Wka3qvFCgFEDQGC6G/ywEYQfOXuap3/De5kTduMP5Dq4zsnuH2dnmFW6r30BbP3UYC7JBO5Bzdc6J39F786ykFqctjASqv0R/mfbI7F1JBSuJQkdk72PGF/ov0ZG4lyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643677; c=relaxed/simple;
	bh=TsLhbYEG4W2UZwLu98GnAPHGkYHCo0Vd/d+EIez/5IU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V+6QxYW9dbEvq1RNTuYpaDOxUluqppZMqmcyc2r6s6DPXfaX56VJZMLKuV8+/uAz18xWpAn907iQyjZ+8eZxIN2DF6AtWYkufxRoCsaq0AwuTA0NYLASgEJ3bezyx08ceJUc1Y7NcgYmWmYmdCeDHDC0+3272ugPj+ICIuBKIYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ahi/r0cb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54ILhYhK031155
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q3i9LWuFQVKGnOBRD8v7wh7A2ciM2J9NI+q99j6RIhw=; b=Ahi/r0cbJmnnirKs
	k8TyuQSJic0aSrcFWjC7aeBYOXp3hEoCJrUngrtXskoF2w0dspWvMQhq6KErqCTk
	Tr8+68FszJYPpfiqtPs/Lp2F0rGWUMHhcxjhmBp1fOZyT6+sHrxZXyJaVy+t4z2O
	n3h6OAvIG/YjLKaDMiACu90nn5xbdAzoOFbNeWMxIGqDPcgu4e7OvHS9p+wEP9iD
	eOwflDW942j3XEe61kapODxtzksW78T3xXPybmzTablastoJBh+/W/SpR7IvnS7+
	bwOIbh7cyarvhPp03nMZTWlZ6uL3jMpOplXwj0LQ+mB0pHnTpBqXXbMpdmvW/Ucc
	OYeSUg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjjsumns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b1ffc678adfso2630853a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643673; x=1748248473;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3i9LWuFQVKGnOBRD8v7wh7A2ciM2J9NI+q99j6RIhw=;
        b=rYjHqII8rI1mZts109YyqjUmi8uTz7hxWQUj0imNsC/EqqzZExD7lI8RKUFhwilVEg
         R9Hh5NbU7dVYSM5MsEJIKG+Qn2W0DTTv7LaXoERG76bOFTI/ys0auM54YazBDfWfrTVC
         LycPeajEWHr0ug39lUPxaqUf1NGPFu4hpwfGeDDqsX/+XkKlcyKAjBNj8Uqw0vIsqPm3
         +AIaQuqjYHEJeHnleKNfCzhI6VRsSbNx+6rQl5hBjPa+XSUiWdsbRBtPiNmj49g37wP+
         bUIJq1cky1NjeTPtsPngd2LlqHe5pfIp134ZrnJDqIQEzScOf1m7yM4j2qBYX24ESV0D
         VwLw==
X-Forwarded-Encrypted: i=1; AJvYcCWdb7tEMpsCFQf0GjAEdHaqtSkB66OgCf/mLKKvJjG2/MCi4tyiNGadXTdfYhyszh6JcABkyiAF/4A4@vger.kernel.org
X-Gm-Message-State: AOJu0YxU2/0LV/PjWAd/EmPbN1wyN4ZzPUr7JEOqNDUsDsDiPx0ytOSv
	MHRHgjK9uktmKRlvbXQ8ewJdxqxIWjkq8iBLxv7IpcLBK2CEGNzhYiryG4OkTEANZt20VndmAZ7
	zqOkxywP92vNi11JTIfT23s2J54E+dcxb2JZLunUMHLF0mAvFUJXgK6AKSGnmn2D0
X-Gm-Gg: ASbGnctrRNMeymujY3H5zimBgj0C6DbjZE457Hr5GLac26fncjCfYc7QLJc4mCxSpCU
	RkZClUyrX+wypG0WRZKF7hygi5EDQUrIguqYm/jtUz+zxJbr2mcN/wWMBl4TN2E9vRZAcxiKhWT
	dN6NI5vkAA/4m6UmiTPg1OrxZV/VcQu9/2zwzq0xClRmw9w/9kAVpR5GHYpqoeVGb04wtr0qrlf
	6ieNWoAHAX/MnBsLh1jKgtPIazlPdE3isWzPb4CarZ/uKpYcNsE2CBHFJ2+Rsh+YWvwkYW0r+Kh
	xq3b2THkuJuKFjDS6prr+r1YXJ3/opVJnF/IrFbGleEBiSOZsc6IsA/Uks2Wtnps2DsgiqhWEjl
	g71edQKw17ZcMhryPer3h2xYNr/GkrkLJwWjzymHTfNz3hZ8=
X-Received: by 2002:a05:6a20:7fa7:b0:1f5:5ca4:2744 with SMTP id adf61e73a8af0-2162189ef47mr16769130637.17.1747643673293;
        Mon, 19 May 2025 01:34:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkog3pLTR6wQhBvQeivAevxsoJCv2JZBKSEW+h0R+Q7bF8fXq9mejEIQNqo0rSHrTjINqnmQ==
X-Received: by 2002:a05:6a20:7fa7:b0:1f5:5ca4:2744 with SMTP id adf61e73a8af0-2162189ef47mr16769088637.17.1747643672863;
        Mon, 19 May 2025 01:34:32 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf5a2cesm5705475a12.9.2025.05.19.01.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:34:32 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 19 May 2025 14:04:03 +0530
Subject: [PATCH v4 3/5] dt-bindings: watchdog: qcom-wdt: Document qcom,imem
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-wdt_reset_reason-v4-3-d59d21275c75@oss.qualcomm.com>
References: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
In-Reply-To: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747643657; l=1835;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=TsLhbYEG4W2UZwLu98GnAPHGkYHCo0Vd/d+EIez/5IU=;
 b=OyCJmSO5oVigl8JwR5QSAjSTJGL1WO0OhSspgEdH0DngJj+D0n8HNy8BGLCS50hozF0K+BY5G
 VqaROZdDVKIC3mA82cHdtMbTNVAdiR7GQGAAn39So0tJPJpk0C2V1vN
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: 3cj4AMIkEmjn5Mc0GgEtL7h1DW5kkWUe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MSBTYWx0ZWRfXznn6JAXGBxYV
 5Io3Cc7VfbXm6GVXW7VMIa8APBXu5GBfXT57/hEyW1F3ArtmIELNsG3r/PlwRHB4+PCg8g0pZB3
 2pNdaV2fz7os1nD6+LVpIVx3vVasguOhneiuC3+bi7ORTQeaUpTmmNAryQbc1oYzoY4wLfvNp6D
 ncdQb70WEBcVsEMXzHamVFz8hT30Ivn9R5kFLi9h0TuDaCVsuTKnAjAhhvGph8ZjFg8suiPaOs5
 z9IcyhOvemDrX9kE9rAasqd8u08YRsEiXN9eI0NlfijXOSJN9csfqVsGsbQ6uUe0+nQ+hssKtUh
 ZLEfVkK2oiKpXDgDZGy8aEgywbFn/qemVKMgRH9MKF+ms6LvuwQUEpjjIM28232r3uePR1/uKJ6
 iIfWr3Kf+rk22BYG1NSoAPCWliwCOAEIEebj0LQYGPcXnHuUyg1bEc4/qRePFJlU4C555hSl
X-Authority-Analysis: v=2.4 cv=K4giHzWI c=1 sm=1 tr=0 ts=682aed1a cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=hdD7v9c95OJ3thUhsDcA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 3cj4AMIkEmjn5Mc0GgEtL7h1DW5kkWUe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190081

Document the "qcom,imem" property for the watchdog device on Qualcomm
IPQ platforms. Use this property to extract the restart reason from
IMEM, which is updated by XBL. Populate the watchdog's bootstatus sysFS
entry with this information, when the system reboots due to a watchdog
timeout.

Describe this property for the IPQ5424 watchdog device and extend support
to other targets subsequently.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
	- New patch
---
 .../devicetree/bindings/watchdog/qcom-wdt.yaml       | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 49e2b807db0bc9d3edfc93ec41ad0df0b74ed032..bbe9b68ff4c8b813744ffd86bb52303943366fa2 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -81,6 +81,16 @@ properties:
     minItems: 1
     maxItems: 5
 
+  qcom,imem:
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
+        - qcom,imem
+
 unevaluatedProperties: false
 
 examples:

-- 
2.34.1


