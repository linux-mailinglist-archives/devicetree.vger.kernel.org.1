Return-Path: <devicetree+bounces-232198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D4BC15747
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27E143A6FA5
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AFA34403C;
	Tue, 28 Oct 2025 15:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pFzvOHuh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07345341648
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665231; cv=none; b=enjIQTUrrAbfYGJLrIejXorTop9KQ99m3ocNhEAiywvZ1HfAmKElssLK2jWqb7M22Fjhutgse2yCDL6kfWvE86yJb2ib6cTNXC7QcWSyDy2UJRQGUd3F+8eMHNlAsW/NnnW/3pvU9oCxhJ2uDYmibvdt9LfXq7IXEqbYKtNfaaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665231; c=relaxed/simple;
	bh=HIse2/6LjXjNvqZLf8SY4sWJTdhbA7cCdS1xQrYMFgU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cj9VmptYVPcdsJPuLvIOVYxG/On7B6jZNH0LRgVFZ1zYloZL+e8acDPywlfMlP3fT5GOD9r5Fga+sUnT5f3TfE3W+tqY96SBM/Xd9dSmKAIw4CfmDaxcMZKCKvwTXfZknJkM1MDOFPRmJA3l7FurJRa0VvSn1jv9khAd/KT9lZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pFzvOHuh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SEngGY1895945
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SgQcI6nkUnBLoLSFlYf5nq81TfhQzj6LqBeVf4PPgVk=; b=pFzvOHuh4nCGHeWN
	/GU7fuhzd72e7qhZ0GRl2PfyS1MvWyuzvWKsVs7NTplKuxYIZgbPWlzZFXNpfwPn
	n3gVhWsWzrZbRmgiIShuRgD0WoFNUTUigMC3QQxAfulytvvnm4MmKOKGpPKCd6wJ
	seNnKMS4KWXJr+oJUwjXzqb+rqasuWGSNo72QTY5qrfw2+CthmxaTZYdO8W1IWUq
	MQOKfSfX4+Fr2pIvuy57fbAcPv4jaixzDDDASfM3bJa8AuSwaiI1Lbm9i8yx37uq
	sBhtfhYVp8Jszvgnd6lPnW/jkZWxSvCDGqZCdqiM0UmA/2TIb5g7I1tsPIg7Qs6T
	vOIFQg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2q5u9vdr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-294baa12981so24608835ad.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665228; x=1762270028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgQcI6nkUnBLoLSFlYf5nq81TfhQzj6LqBeVf4PPgVk=;
        b=NHcKuxOhlCSjDF99KtfBEIgNDCDEQLRNiNEk4r//3xQXfmhCgArDWCg7xbvdjP2hal
         TFZSvO+XJjESt+ylqI2LT6+71Sno+CsznaSLezOiXd+Mzvqy4gftUcjF8SjY/2yE1rje
         PupFY5iTSKazPI2/aRZsewzHaWJkZe/kyuPmrniHHYlR2ak5CVKvDJvLNh1Ah5Ttx/97
         3tdmz1AK02bgCTiMy3fnJEPAXGYBvsPEf1UTedkFzFHYA0gJC3pNlRe3tc+9FMFTwNXM
         ULKCVUOjBmgR7i7BFJ0AdUPJlshCzgeGKkWXex3PXBIzlqn4tfkJzsOnEU3oE1bynPIU
         CLcg==
X-Forwarded-Encrypted: i=1; AJvYcCU3dXw2CPZW/3al9zFN6+1oAX45jnGOSvjsacu/62AluEMY1RobnqFv4ApOtQzkzOpt8umk7qcMwRRG@vger.kernel.org
X-Gm-Message-State: AOJu0YzXTHMEMc7a5lNMxiUjTprmD5wD7k7AOMQlk02HhljDCy53EZi8
	ZyRJiUuEd9F+pad/V3Y4/9ZQjUe7NhmUt9fyLKVpUb/IZPS6HYmq3m8ACmeRRRBGNv5VNDzoepw
	NdLzmIayjROpW+I2nZeSU5t9Z1EhJUueMC90hnIwnoHsr+TZe3XYWNxJWjGh0QD2P
X-Gm-Gg: ASbGncvW/5ZKlhb8FQzT8eFTC8vFN5XpRcaxOZNI/RdpJyTe6xJ2SrtMRtvb/7HDqaz
	PCj6uMFW2lLKbgUcc98BRaNAJITTAYyCk6SLAc6cGoiWrAU+2XcD2rgIvvIzgN2lO6V2mZuo4f1
	P1O9oP4D9alV4fRkCOrwlzGYZ74JiM6u03rmTCBHBgaZmXQ8AgdQS0y8J5cIdZz2FZq/+krIzBM
	4XqT4fB6ZZzkJJiaSK3zvWAx6x6ilpFE6K17S9DS2E6XJvV2sR+jKMAzXaVcdzulbKTQoXSfTcP
	vrF4mrga+bcfaHEum+VBA4QPq9NTuRfnOcCb5AwiJ5IQdtV+1nxvoByCIkf0R7UsR+o+F/EbYpL
	tkAKPBJN5EASmZaPh7v9p6SqfwdDY7NC+Paw=
X-Received: by 2002:a17:903:1c8:b0:267:8049:7c87 with SMTP id d9443c01a7336-294cc70eccbmr43094265ad.14.1761665227289;
        Tue, 28 Oct 2025 08:27:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHr3oiAmNZooz/nfH0CRpP85CU5ciJ7wKCzEgD0BM8YcfRozU3AQY5O8zEhnyFkgZ8zfF4Sig==
X-Received: by 2002:a17:903:1c8:b0:267:8049:7c87 with SMTP id d9443c01a7336-294cc70eccbmr43093825ad.14.1761665226706;
        Tue, 28 Oct 2025 08:27:06 -0700 (PDT)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e4113fsm119490755ad.90.2025.10.28.08.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:27:06 -0700 (PDT)
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 20:56:49 +0530
Subject: [PATCH 1/2] dt-bindings: dp-connector: describe enable gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-enable-gpio-dp-connector-v1-1-2babdf1d2289@oss.qualcomm.com>
References: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
In-Reply-To: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761665215; l=951;
 i=venkata.valluru@oss.qualcomm.com; s=20251028; h=from:subject:message-id;
 bh=HIse2/6LjXjNvqZLf8SY4sWJTdhbA7cCdS1xQrYMFgU=;
 b=q0dbkVCREQhWewqq8/EKUDSgVvCuBEABQSzKjyuiLuCHJTRuASfPE1UfYiG3XGad8+8c19CTg
 CG2gaZhBbFlA8k1HaBK2J9OLlFQ1dZyrE3JE7nzag9kJemdz+dLXLc2
X-Developer-Key: i=venkata.valluru@oss.qualcomm.com; a=ed25519;
 pk=KEpJdy7/I8HDmNSf6B83x+sFHUNr+mjMNJ2qe4G/zXI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDEzMCBTYWx0ZWRfX81rBFvAgNhWO
 XUqGu3BsSPEJ75DcXoAPODc/y622LrW6VGfuHv6AsbASvI4jw4q86pDYU1BzOIxHEse6HqzuHpj
 6yNMNHfk9+xl/AiGRztASLTxiif2JmOwYHGN7PWj/MagJV5m4Vq87z7s8DMFLcqnAXHR3TlWBJG
 4dBUJVYm8m46VC87MkITAZq4vs9eZGWT+vLf/TFEY4NWxRjnZ9Wua09JaFFMAT+500JAyh7VWIB
 H+Y713ha7zi/PuxsOb6OTET0XyTFn5wcyEamwkCkYejQQMBT5xyJHjCJ7TMNknGSv38/qUq++yF
 vYj7GljANYZFEfaDMaBid5CQjp2O03y9pUq9fH4sr+KeXYXNlZiJNltC9ZUZAR0fz2MS3YIibPk
 TKS7KSBOks9htd/cVdNUVMcUG0WUoA==
X-Proofpoint-ORIG-GUID: jOL7nwvPWJ0cUOFcs4t-Gv3gP52zE4ze
X-Proofpoint-GUID: jOL7nwvPWJ0cUOFcs4t-Gv3gP52zE4ze
X-Authority-Analysis: v=2.4 cv=c9CmgB9l c=1 sm=1 tr=0 ts=6900e0cc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PexBTdYITyibd1_YPJUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280130

In some cases, dp-connector need a gpio for
connector to be enabled. Currently, there is no such
entry so, add enable-gpios for such cases.

Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/connector/dp-connector.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
index 1f2b449dc910..e703b19b7168 100644
--- a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -20,6 +20,10 @@ properties:
       - full-size
       - mini
 
+  enable-gpios:
+    description: A GPIO line connected to enable connector
+    maxItems: 1
+
   hpd-gpios:
     description: A GPIO line connected to HPD
     maxItems: 1

-- 
2.34.1


