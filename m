Return-Path: <devicetree+bounces-231000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B90C0879A
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC6B73B94AA
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8631FECB0;
	Sat, 25 Oct 2025 00:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mKp/9JhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D51F1932
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353280; cv=none; b=cjzpoMkRIuW9krwaKpMCz5tjkdLCnmlRNNIdSMqTCsjNkI90NXBdPvdyV0jPYGIsFXCIcaVtABuC9mdWpsZAL6TF4ADVx2+OIIe8WMhGpahIyoGgI/k0Je5Lvif/mkpHpgzJ+ggnXcwO1HrP+urMkukPN5kZzxlODFYVaUEH+o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353280; c=relaxed/simple;
	bh=8f3QLSZbdMi9oAnzA0d0BJSP3MSQ5ZUA7CnreHeSgY8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lRC+n5krungaMv8v44YU1ZpXDqbXceoaVRONhj2LAq0eBJbMVoVwDjF2FLGcAjXvFA11sy6JWjA10rjjgcJFQRjYfBXZBx/ADA2uUseRWdiKuG39J4qXPuWYhmxSLNQXSt50dwA75VzkvaMYJwt/6hHUR6g7ilxR5yoUrWYj8D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mKp/9JhZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lJ1I027742
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OiyCrMPdV7eNoEt1MqrMVwtFtL3LASmksliQC+JXb54=; b=mKp/9JhZhZZ1TD7W
	PyTs+CK1Oinl6Ufl8v93qCKzz7bu0yEgtKx6LvhltTCQzViqTp2kiK21HYRXrNak
	4QFZOXKdIL3UdQKau7G00TJP1zNk8W3aZvNB8fqaaonXuWx1dtzY+s1WCwln78Zu
	MZZXl3Zf30YXGIA3Ao2Ycy76LZpft5xmPz33aK/rh9wGXggN7ZLPYMGG+argMi7+
	xlWHHMGmpp8hd3EhlJEap7jVsC8pcS0oqUbxpdFCEWt3ELDEnexjkP82da/kOy3X
	Y7a5VCKSLNuyX8GzTEuICmTG+EQV7GmrVzyip1wCnHr5KZ5tYQot72IR8teaRhKe
	8UJCJQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gedjjm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:47:57 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33ba9047881so2832511a91.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353276; x=1761958076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OiyCrMPdV7eNoEt1MqrMVwtFtL3LASmksliQC+JXb54=;
        b=xKlWUk9smTgmgazvlZqcK0btvu0CNHz3/aAr7ptHm5AfA8C5yNovfVdWWCv9Wsu91t
         H0ygFK7HD1IQ7Myb0YzEYbcdkFFw3yMOJaCsQyTOg4K/GAZgrXZStr06lHUYgeCYoxgM
         LjOVO5GjXQlzJViD/WoP6pr0Xd28O0VB5NzjnmX0vPh5twB5DQW0XUqHUlsAsbyp46g6
         KxWtUfzMVPXY+DllEQpyLhc9XIoL7GtsMPMQkKPmqUngKQH7Ge4+dG4LkoEbX0HZRdNh
         U/z+BLQCWgz2qEyJZLYFIH5E3cv2d/lMEB3dUPSfvKgtMwU8EVhHI2DWaxEkv55W5ohl
         c1bA==
X-Forwarded-Encrypted: i=1; AJvYcCUCq+KB47V4Xl8/kpeWo4BM5h0HI2fT6ecxsJ6XcVEUn5rRzE5nvTIZWadlAoWofjbBsL2bvDXcrPS4@vger.kernel.org
X-Gm-Message-State: AOJu0YwElN2K9y2fhYv93T91uHb3sIZZ4IK3M1EBh+vYEBX5zBcpR6wl
	meGsNpB3DSiwkMnUc76SYziWpE6IgkjQeZdKHsUFJ2ULG8UxZwJlVgon4Vv0fTgj0k3ObSBDgJh
	Ivd0YGCnk0N/kS6UmAROjanyYbH70bjzIKEAgT9HyZToflfk8sl7NfUyaCqXQ+IFU
X-Gm-Gg: ASbGncsqGLczi6NfXMjSYc74ytsoUHIJViR/7gYrZG1l04/D8t0Y3zCapcaNFZ6r0GD
	SSKUEaEOZp5xXlbEiot/upIdayCL4gLb4RQleEp1/l1rQRqzL2In7GBkGUTyOjWyLSshnt6PVXY
	vlkgXqgKUPNZ5iwzrfOqM5RWT542zoMfqZOOLaORGzTClHGgBV6S3Oj8eF8g73wniZKUNlY6l8d
	MjcvZCgpkFihcfPluuMA1zaPkif8uSb+EgPa6PEoEMXWf6sn9dTuyB0xBA2I+PlezK3BdKVcSRn
	cKXUOmb9HUn9Hk4x6PJ8tVTSbxUO6h9iK1CQnKEWPSbRkqgBExHXT3MN++9chRZZA0tLbOjxScI
	BsFrRvi7DHj7Kl8ml75SJO3ix3G09laHHGfiM770aSYeX4qB017g=
X-Received: by 2002:a17:90b:3a81:b0:335:2d25:7a7a with SMTP id 98e67ed59e1d1-33fd3d2f95fmr5490254a91.10.1761353276304;
        Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMxipVLSbzaSHbq2CMVQ8XouhSVyv3oe+2+wmcnIacWAZFWHjqUBUerrKYH+e1VF1BVwR2NA==
X-Received: by 2002:a17:90b:3a81:b0:335:2d25:7a7a with SMTP id 98e67ed59e1d1-33fd3d2f95fmr5490230a91.10.1761353275807;
        Fri, 24 Oct 2025 17:47:55 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:55 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:40 -0700
Subject: [PATCH v6 2/8] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-glymur_usb-v6-2-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXwRtvHa3yDaVr
 Msg4jZrO8Y4fdOBUjbucCYygtWtezq1p8MutE0XfgsGRoRQOjMgs/EGKZZbQAgdntXuCHGRrwhi
 /dkZR4WyOm1RqXd6kPCTEZo64CYxZ9TBPaCbslyttGTPsRX5+Vqv6LDkH5mjfLnVkhX34xBtG5x
 uCWThj4QdoahEOjnU3SFdY0D4WZAJ+zWqhsZM6OdcOyW8AZt/DFVsWPZqaVGyYL0fTrfVHJLGkH
 L5lJwCW6zqQx8mLPJ7d7d+kCBKYhFt/hUcEcqoLBzTgIhp1g6iGhUPM9+fVV1En1b5Kj0pK8tTJ
 zC3s6UiZP1nDdDDO1woRF+fpgIBE76oBF6d9MUvUvbbV1856PBqZ0NJijaiZryBaLlqX7psR94t
 SIsdegNAtSfgEzbGMxk+Bl9VQ3AZOA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68fc1e3d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hwycSGIRGvt53hta3DgA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: v_aQRr99q7cgS0qQsYtnUhR8hBX0FvBC
X-Proofpoint-ORIG-GUID: v_aQRr99q7cgS0qQsYtnUhR8hBX0FvBC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..f277fd547746 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -114,6 +117,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
@@ -126,6 +130,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 4
           maxItems: 4
         clock-names:
           items:
@@ -157,6 +162,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +171,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


