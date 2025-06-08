Return-Path: <devicetree+bounces-183589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97775AD132F
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94C6C7A3BF3
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 16:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFD019DFA2;
	Sun,  8 Jun 2025 16:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YFdYdb1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C48188006
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 16:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749398862; cv=none; b=DFLjZFDOlwobBQyHNSiIX+dF0xoFK1uan7/hXoWSxlXszsguNgLzsbauVF90Abl4gtlgVvcRLDxmeXuzAIOog0Lg079EVai9qdGRqUYgt+R112efgUsf7HmkHFad/1JWd4t7iQ2sBLIjmnSfLt7OtSyONnt+V7CtZuG8EIk4vDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749398862; c=relaxed/simple;
	bh=yNO/ed2Go8K0AIBDvmBlGehUp1fQRum5wBLPeNR5CJQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PS0Hr3n9oDcqUShsX1Pp483vQa4HD8VnhgfVCogS2ujr2y596+gS58EP8EAZ6eqTXnlZQmZKejgCy8NTZBz4M8t0U5Chj90Op7anPESn2alSGETUvHq2Tt4M+9mjUuIR/bIKaj1L5Z1QMlcjP2afQFmFqZI1gIkTMwXZvTXNQws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YFdYdb1B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558CqXUW002671
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 16:07:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	adPn/VepZDO8MNcaaUsyt6OITz1wGKLk71fadnnJLp0=; b=YFdYdb1BdDETYxLH
	HpVv1OhMvR6brBm7sgLBuZONQ2qAiNt4ag1VdBEsjCA8KQz9CmQ0/kz3leRFk/Y3
	xJiSfYtL3kz3n5iiLzioKPJ6A8C1H04xc3oTLHgW4xZd10kjHP3i92rEh/4IzH+C
	khiJ6OD9bjQF4cgyJks+IqNL5694tpm2NuHP8AuITO4ovvb81g+Kfe8eJodeviZS
	3ppkzfqu9lVADcxFTd7An7BdiLZhnn5p30Qkv668B3yK3wQeHOorxUOrhBKfJldX
	y0YYh9yTDXEZVU/kiBO+bqneZ3eE20lE4i1pmZNoOf+xuhvHBLvngkddTCW/+m3I
	M6B8uQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn634ye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 16:07:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caef20a528so913104485a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 09:07:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749398858; x=1750003658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=adPn/VepZDO8MNcaaUsyt6OITz1wGKLk71fadnnJLp0=;
        b=et7hcNg5rTE7zCg6A56sQt4FtKZmR7lnqciR1nxNFcKoU2mCCaYyR7XomVMIcPQ5dv
         F541N/W9E1cRgiE7Pt8ck7GwrsKanwXqqiekFeR8PB+ZKz7QSBJ4ps8FAbkNsdGFWFIz
         pX8jyb8e48hSVBaPOegYX8b0ND8jvQe69qM35ICpGcZITcGK9XD2o2tUzjJisaAYRp0u
         NSMmYJyBFHUEDPj6nFDXRXS1yJi8Q4Vhq7MCHwAARu5LNgLV0wZ80bcnrFYDb/B1M4YA
         Vx2t6VGKpWn9b26IEb+hSmlF0Lcc3axH9x19PzaQFfMNuKNgW6FcOd55Dk4TRgaBWt1y
         Uc5w==
X-Forwarded-Encrypted: i=1; AJvYcCU4BmlimV8HJ52WNIyWV0dR+l3BBHit4Q6JcEhoDgssidjzd8ICQZSyCFMQw7jB2SsLsLw1DjdNuVTS@vger.kernel.org
X-Gm-Message-State: AOJu0YzV/YI8Fb/HGecbJ0qImEgU8ElmC3piIon2cJyakmlvsZNCXK2c
	qDV8waqd8L9Q/uLXWySJBrkYBnJQ/dDRy5f2zgAUifHOSSs2KY3Cxm/qew3au2wNgvM6zTibCUZ
	mw3lBlFNHu/aF/uV+VC2a9wHymkO49IgM6Ld1LXqGAtKHCxbmVt8Al+RyZfJX6xZA
X-Gm-Gg: ASbGnctOlHKf/Z174nDLplMcEH0jYRnALBnb7I0Gy7oD4DU8W6QdD/mL3BfEPqaU+ci
	p6DeWzGz6t06be9Uu4TC6rNbbkZPy6Ay7QgtlHfAkjMzRja3FzB+s2p2z/vsAFMNGyVHtr2bn1k
	WMEoljKbJ77/LYXHGuHmcfJpp99P7NPyzgsIrQ7LRPr5KIhBA+nS/MXj9aK1TFKQkEZh2A8v4X4
	3CpsrmLfmJT4F05rJRo0mUPVHeBEEIUGeU8jBHAr5pL0fYkdCfpO47cVjn+zYeOsl3NDl22XMQl
	j5HEDicPefLpwHzdgNSKRE8dPHAXEsOrJeV++llZy2IJNIGXXgHvsoEkltiWfGEXMum8X+Z2lUh
	Jtm0QmObSUm2YvNOMzF2WRZkk
X-Received: by 2002:a05:620a:4489:b0:7d0:996f:9c48 with SMTP id af79cd13be357-7d229861751mr1658962285a.9.1749398858541;
        Sun, 08 Jun 2025 09:07:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlPaTpcy3xLOre8K5J3pU6m7gxZVRO+o1eSC6VBiv8kn88YSzRogMI7FOd5sXBuGZDLPNiQg==
X-Received: by 2002:a05:620a:4489:b0:7d0:996f:9c48 with SMTP id af79cd13be357-7d229861751mr1658959285a.9.1749398858188;
        Sun, 08 Jun 2025 09:07:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772a9d2sm818970e87.186.2025.06.08.09.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jun 2025 09:07:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 08 Jun 2025 19:07:30 +0300
Subject: [PATCH 1/2] dt-bindings: usb: genesys,gl850g: use usb-hub.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250608-genesys-ports-v1-1-09ca19f6838e@oss.qualcomm.com>
References: <20250608-genesys-ports-v1-0-09ca19f6838e@oss.qualcomm.com>
In-Reply-To: <20250608-genesys-ports-v1-0-09ca19f6838e@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1607;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=yNO/ed2Go8K0AIBDvmBlGehUp1fQRum5wBLPeNR5CJQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoRbVHDOWqU3RcCmIRyhlY6wq7DMFi41Mcy8Whl
 0dfJkFcwDGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaEW1RwAKCRCLPIo+Aiko
 1ZmRCACLnMDzRbVT8kJXisVTVLXaRemsPkSzInjyDdIugvOgSTDp8dd09vwc9KE/YyVlKSnKHLI
 Rl/OyEX9pTg8vyZuIwTX+gU/PR47zYy4uKuITqF+CYTKijyxGUV7ISY6VQlDI7mGTG1akq6k/r1
 L3fZSZaBPMh4uJBRoFNNu2b9IRKvIY5RWg4AcHkBU1LZ0gW4t5xXRozWmiIQ44B1XnPgYlVdav0
 8PqzQ1SIT9MSGFdnpGZg8UBV8a91L821Zs+QqG7bQITADzP9936Ac+MDeu7k7haxZCCX/pCfIPs
 XuiQ/MTYI9jqnzp7108S957BE884yZJxJ6TH48cPd/dkdkBq
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDEyOSBTYWx0ZWRfX83gVnRyT1A3I
 +TKI49sgjOUYF0h3lKETEene2vj/ttNnyVfPIW/N19nfrcA8R1bC06Tgm1gR51KkYUyZCjY/4KS
 Xh5mYXnr/2EzCOee5Eue70KChJTQZtLSwnLv+8/JRLz5dJxMrhHjHKFl5rngrFRteqePEiamlsi
 mFrRAPFEBtiU+X2VuYfa30MffGksJhQmtjr9555tqCXRALSCIXPT531GYPtfzdAwsNateOek4Sv
 ZdyV+XBVI2JNhNvCq4b56e93x0ehKY2XgAZ8Wyy+tTSkAMIIACzorni1oq5eXDL0w9hzI/LQ9V4
 tMp2M6gfQdgCy7X7v5OzKMr73a8WCJ/SBbl/wiyD6dkkreQz7ENDPtVoBTdUoYUrA6IvDmhf4HT
 dyZNRtFhCjb1ofHNScGXlISF3iBJfBFUEFrlNZ2ShwaJTCg893JWubhZV7v8O6g6drJX0So5
X-Proofpoint-GUID: kXWuAUzWAZ9r8TmHeAG1VdFgw1mBSB80
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=6845b54b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=vfVmPWmGPVZTQumj4xgA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: kXWuAUzWAZ9r8TmHeAG1VdFgw1mBSB80
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506080129

In order to reduce duplication, switch GL850G to use USB hub bindings
instead of using simple usb-device.yaml

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/usb/genesys,gl850g.yaml          | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index 6fe2d356dcbdec20dd47e09c36174e1f0244e642..7f74f181b75c5924f18d3a1b09f713ca03cf9d8c 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -26,19 +26,14 @@ properties:
     description:
       The regulator that provides 3.3V or 5.0V core power to the hub.
 
-  peer-hub:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      For onboard hub controllers that support USB 3.x and USB 2.0 hubs
-      with shared resets and power supplies, this property is used to identify
-      the hubs with which these are shared.
+  peer-hub: true
 
 required:
   - compatible
   - reg
 
 allOf:
-  - $ref: usb-device.yaml#
+  - $ref: usb-hub.yaml#
   - if:
       properties:
         compatible:
@@ -62,13 +57,6 @@ allOf:
         peer-hub: true
         vdd-supply: true
 
-patternProperties:
-  "^.*@[0-9a-f]{1,2}$":
-    description: The hard wired USB devices
-    type: object
-    $ref: /schemas/usb/usb-device.yaml
-    additionalProperties: true
-
 unevaluatedProperties: false
 
 examples:

-- 
2.39.5


