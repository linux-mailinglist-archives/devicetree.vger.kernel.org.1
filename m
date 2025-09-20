Return-Path: <devicetree+bounces-219482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F525B8BDF0
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E64AFA0637C
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B489C226D16;
	Sat, 20 Sep 2025 03:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R/Zf1bqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FC322332E
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338479; cv=none; b=bs+raPfdHu1Ad636bmeeDVcsi9KStEXnDkj+tjJTN6wJmN25YfQq5GfRukx36KHl57IsYl2Lio+WpnfJNFqgTgQNuMu2la5+Rp/ps0cFu2sXygYchMKh9cC1Lk7GDnujRbgRZ7sMykg6GSG3WshMi8DHGeOtstV8P3WLXT99ZsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338479; c=relaxed/simple;
	bh=FChmN2K25IEif5KaRFlunR0xe4GViKFxw/PGab+7yIw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JOD+rvQR2gluLSntTPW727TkynZ4hyuww5dESY74AKcsSqQhTIFI/fjcudkAz7eSflXQlZdneGNC+gKtB6D3Jx6D5eZ/cS5CT57e5HhsDQU68AP2ZMs4rTDmpp9jSY9mRhtXXdIxoYjqRz6xYvHe9gPuVBCbgB5nv4MN1zhCezY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R/Zf1bqJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FTOT019795
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=v5tmMdZXUOm
	Jw/ggIyYVsmTSYyBwUp+iA2AluiqlOBQ=; b=R/Zf1bqJRVVYzeOtR0sjwOUS/v3
	IGwo1v+5nWeo5+Lb7GTgNTJNAHDVDGVdfhI0xllGRsk6CDB03tQWalWi+0IKlGAf
	2SPbTEofHdOigiA3PSqwPzdBFtIH33Q24q7Ibrnhc5bYMQ1mCca6FA1lzdhOyRwB
	l2drZvOYXJI8BhGJI4H590RH+ckv2lkm/gqbw4soyrlr9aeGT7Tj14I52DS5AdZ3
	bQ2HPh3+MiPuxn9oEYdmlfFQ/zFeYkww0VZl0PnzSVuhC1Af7105vXss2m1hqzHI
	ZTzhuTyZ4O6SwlMSkQBXeCoPT9GLgGs2orf2DzGB95XjlDI82xKW/Jk2giA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy14fg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:17 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5527f0d39bso1046773a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338476; x=1758943276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v5tmMdZXUOmJw/ggIyYVsmTSYyBwUp+iA2AluiqlOBQ=;
        b=i94+oT6nyhdqLnLLUyH6mpV1ZvHJi9n4A+6b7rlxfIalP3LK+nxruXP/xa5J/YkuVb
         jOFqC7YvNuwLXN7OxePQtk7AYfAf+IgmpYD8LXumMkn4pJokN/ZRxZzoUW41PAT1JaRj
         Vw5HZwkm5lWFYoIwI7ViVEROAH4D6lCU7p+tu1nwbTwYmY0T/xX2WCxHypHGCyHcnvEu
         F4DKTWuyhdNS+lmSfEu/NGZlQ4YCpb8WH90mlxAtdWvzeB81kfg1MSr5EC/zlstV4+Qt
         u7Yh3t8cCUhbLpVlEJ4f42564JVjNXXssUY1EBegeQHQaOoThjh6IyUYcxtfz4Wv5a5V
         18qA==
X-Forwarded-Encrypted: i=1; AJvYcCUziRIMzz9hCwh3mDlCqJcpWEoWtVIT+y54/66UcF9x8UIIf6fG6yXV1vtCfsCaMm4Y3+u0q1vOzWfW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/RUmy32/gJaZBDsg7dCNye3jjIGE14dV7BShzc6i0ouEfotgF
	OQtz3RkdF8P6rz4Mx2yl4J8MTXw2s7ICXAaR05mqmmTZA4dNijdYvzz8ri7y3Poslh/oUY4IzQ/
	/O/bZ81lZYfu72f4jTWeoeRfmNH0SEzMfu8R+sSWmt9dgShD760fKJ2waUO7KYFzd
X-Gm-Gg: ASbGncuMNYiA0YMjjNPqpeu1Ajs3muyfB4dW3G09NlTsXviE1G7oYDImozUJm15rRd/
	0NL3dDVk+6assI9bwIJWriSLUPlbUJ3qI0UNGpSR4e3KSYspg9MzXUNq2CXsegz8e5uIi1DLPCn
	pW4OTw0iLLeytpZPXreMdYuriOXgY5XA6osNCTOv3+uAx9uoql8VmuZVLIfX1/xF8qTLBcRpyyL
	+JwakGgnYRdsipC1BShlkA2s8666l5D/VlEozlvmnG/S9JuzrB1UaFYdHNg75wFndXpzucAgSZZ
	O8Ia+VrYgBwSxcvJ8C4ffk6eJbmEfclnooP8qcxuDY7QM7BS4qSIReFLGKDyvqVvjtdcq2sJS3u
	80W6CKhdVHyhBStBo
X-Received: by 2002:a05:6a20:2444:b0:24e:2cee:9585 with SMTP id adf61e73a8af0-29274fb33c5mr8251256637.54.1758338476473;
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOqZ5VhtjKbilxthQa6bXSwR4zCDyXQKASkb4d3QLk2LNVbpxHxAtIPLoxjj1rAPuc1i5rzQ==
X-Received: by 2002:a05:6a20:2444:b0:24e:2cee:9585 with SMTP id adf61e73a8af0-29274fb33c5mr8251223637.54.1758338476056;
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:15 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Fri, 19 Sep 2025 20:21:01 -0700
Message-Id: <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: U7G6pfg245eJWscNA162sNKfLPFqH7Q5
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68ce1dad cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6ooe3h3ZW61ma_5lk_AA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: U7G6pfg245eJWscNA162sNKfLPFqH7Q5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9kx4tOHNj5cE
 rU/gMinks84K0XhuL2giyaqTYJzx3JZm6BGlaCRUarx9w3nCE4F5EZj3zHMSvL3JREc4uaG/SHu
 Zc8qxqP7jZEXU5IocBjlzxQweZSm1cFNV74YLltxw2X8GAlESfMpy3hehhmJ4Az28PFCV/Xe61Q
 aaGXfKPcti08Nkil7mcvEwdj7Zffntj4KRLn8QSX/zje4ZfiTswN7VYcoD7W9zO8iRZwx2yE22u
 3Bja/D/I67Sd0lOp0SIMP8jFoaoaG3jyCA1MD2dRzzclkL6dVlSwvTGZfIm2RjCWwT/ukV6vnTD
 yzzNIOQVAWlsc4dBuxN+RDeg1IqS4IEI8+EP1bf8XhsAnRx8Xe5bXso0PALdHaV7BO31M6txVUy
 IuhZEJTn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..772a727a5462 100644
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
 
@@ -139,6 +142,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sdm845-qmp-usb3-uni-phy
     then:
       properties:
@@ -147,7 +151,7 @@ allOf:
         clock-names:
           items:
             - const: aux
-            - const: cfg_ahb
+            - enum: [cfg_ahb, clkref]
             - const: ref
             - const: com_aux
             - const: pipe
@@ -157,6 +161,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy

