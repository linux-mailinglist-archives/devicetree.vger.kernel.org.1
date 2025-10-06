Return-Path: <devicetree+bounces-223954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0C1BBFA9E
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0E5CB4EDC15
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98E625EF90;
	Mon,  6 Oct 2025 22:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oOZwfOCB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15600196C7C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789218; cv=none; b=dM4OIMJnE2koPscDcHaI1LO9Ov3QSZvKI0ugGbQBOARXIYKhyMjHduef0COHo5sKcyol8/5I69CTXN3bz8GFMOu/E/TC2iQg3XmqUCx4QQfGH0h5OYkJgy6fGE/k2iFroRECNOfJ+LIDFK4dNBalIUjjKWurhzxhE3b3IwWdORM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789218; c=relaxed/simple;
	bh=cfM3s21T8CQ3sOfi9Dc1sx2mJ27UuKxMJmEc0kjDpws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SgWSYCzwjI8k2nVavbzeDEuQfMvRoZGmFdZWSgl0pXlSXsUTtWD3ugtsZLXCh6oRCcFHiseJs8u9oxHPA7XlN9vEK5ci5BKKBTI8XmFq4jV1of+XSxFfbgggAY64wtgcqQ46p6GUvirbfMY4Kiu5Uue4ccbcsUk/KWr+s738oAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oOZwfOCB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596EW1L7011762
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=oOZwfOCBwgDoryc4mTe3JY8fHqi
	y5LqzEC/ozhIgi3WVGovhl/N8dTil69mpmCsP8FhRydMymbvvth1/C2JAuIr5cnh
	iQle4YBINg08PIQSkjyC5XJ+9EUUrNi6jJkw47wYmQrEcbdj/ymDIwxUj9tEiZFC
	Ry4jNI4Pkc2USTQkQEOThPEKiCkUJpbu8LJHZNMGsr6pQhU7wIfpbRqvkKrRc6PP
	DztODVrdpzUeWPx8IMdIBFDRTH+o4upmZNqRc1nJUghL//exiRcpZJTYsJ/Ay4xI
	9UwNem4aN59CH/hXCTFMCsCm3QANu+/kHtc5c1QO3/FgQGSxteu0QKPMQlQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dwhy0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780f82484faso3734800b3a.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789211; x=1760394011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=hSNC3B9ltl2gCYvv2b/6nzMRUs7n16g3agoNlq9NdSIBW5xccNoAST1Lt6yzuaG7x3
         xDA/J7IgZggw84EJ9QIm2h/wEza5z8B3zIeaIGW9VZtNU50kivBnTYwzmtChwvEPj+0/
         bvqF18NihnK5z7yTne1DvMaQNcAQ8mT9WuWyrfw2OGoor0gQ891XHZt/oAP13dZxrlzk
         w48p7QOcG8I/fgkghRjfyWHHX62yLjbiHxqa3v6IIfQoI8/VYXlbgpgEOO9kwt4q1Uu3
         4HbtGL7I/3BlcktEzrRESZiuH8fIIWCdbPkFazS+Zm0+aVQwm+sKAPXpd8jWuXT147Pd
         M1dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbzSWpVWWnjvP8zC/ExpWL1v+alTb5/ruWUcr9pK15lNu7S+t1lAnTqB07EZMQSFB8N0O3kGKxz5BW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0eTs2rHp+CayEGd6l1K04SSwFn98++UbjVF3RRfMA2TFV6G6o
	4USg/+dsMpP3eQ9OtgJV91iZqw/3hihipHCKG+L6k7WBbTAgekHnVp/a5dkIPMETzrl4rgsNcom
	hOYODLKGURLYCDweCDgzbVH+efabO9IfBQSdHcQAeS3CHus/gVdJAsDv6dcmACCYP
X-Gm-Gg: ASbGncv+LlgowuGEnrrzOeUF2phqL6tXNBf1jiTcPHA2YMR+RfMA5DuJOwQCWhRbqRk
	GH/Y6VaWx3kQYAiflNwiypltCCQcPNsCaypa5xoWe/C28ruehmKfs06phGXdWZeZVXbxzYERnBv
	FCv4yYMiS5ROV24KZ40kyOqe2Y4znrS6Xs5+VsyD9lsaGGV8NRuTNXTpQNClMxKtrEaaB3jsFSR
	l1AhA8V8077AiEUqwVrQQ4ZsivFsObcZM3UM0AtYBbNZjLq95ReShmqHGfkbLg0f0jHd1EV0Ex9
	w522SJmcno+q07x+C4Ttnok2m/gWVtgRC6jRT5LprLL0X9NMGY45k5l0szpEo09oC38aVkJ6e76
	688ueucDZA7NzRMqRYjxsWA==
X-Received: by 2002:a05:6a00:2304:b0:781:1e91:fd8c with SMTP id d2e1a72fcca58-78c98d5d579mr15544436b3a.11.1759789211242;
        Mon, 06 Oct 2025 15:20:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIm8mI+7X+Hd2BCDb5Dl4LJU7yRAMUsvYgqVVINq5kq0s+hlHcmFW7vgYhMca0ppEpo7MuMA==
X-Received: by 2002:a05:6a00:2304:b0:781:1e91:fd8c with SMTP id d2e1a72fcca58-78c98d5d579mr15544404b3a.11.1759789210762;
        Mon, 06 Oct 2025 15:20:10 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:10 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:55 -0700
Message-Id: <20251006222002.2182777-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e440a0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: tihVVip4-bPxv1arW3_XlSe_izGQUZWv
X-Proofpoint-ORIG-GUID: tihVVip4-bPxv1arW3_XlSe_izGQUZWv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX9O5/sLj19yq5
 4FMZwm1SGxdH2h71WgDy6LjGb8yO5zqzBHpl+fHla6arZGyZ3eyAEOTEF8RY1+Gwn/44Klfp6WR
 oRMxAG3EWGQF+lJuX+COSkvXHbjeWk4b+7bydzo65XR3Lc3hGOO8syOpHvXNUN2LMFONm6hqBH6
 vBUyP4s/NJY5c5FHjONCPJ9NqNf16Wn2yLAn8Yejo4K7bTXNYebjAASy1GYpWZJQGKrGOL4P/w4
 1yaE/BZ/1lLdtNyJKL1CZsL6Zs+vApJbLERQXXO/pYIvCYyTE53WxQhEaoYVhL1a4CvaqTE6p7I
 1Orj3OHYKsQTiSOZ4mm8lQokreMVn4gVjOAPR2PMNs1lK1JMEreuOIzhF5rYURtdI7i5JDH0JEW
 o2lBKBpYABgqLF3UA4zKk4kPkbjAPQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml      | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..0d5db71e0ad8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,12 +56,20 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: qcom,sm8750-m31-eusb2-phy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:

