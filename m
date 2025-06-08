Return-Path: <devicetree+bounces-183588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1029CAD132C
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE9E97A3B36
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 16:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343F0194A73;
	Sun,  8 Jun 2025 16:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dqMC5jH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B363B16DEB3
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 16:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749398861; cv=none; b=rbvVrghY4iauVg49VRhPMlJICO93ZfM3J6lZGRBXWKv/m43oBaVu1i+JWoeC/6o3oc0xhXQPVOvzfNCZfbU7wFExnAMKkNIVv78EMVTuCYfVVP9KXny71ft6WmtNZQqTH2TYlJfuRL3QuLVqrEncas6D7Dpj8iNJ4I4R6P5gSCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749398861; c=relaxed/simple;
	bh=xNUos8tMyJTZs9l00RUfjTbkkE4YfRaJU63mvymHz6Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Lj58QfydI8R1Ftoyz2fKXLV8MLCROXlhcAZ64F86TxzGuuVKRQjw2MMG24PZVJLcaVR4sb5dzQVVYIc6NIYrSOoGmxdrja+TaqX8UPO89WYZy12XPwZt91nntfuTDEuBlUFpkDywrJOv7xLQKKz7j/ldpd+mnBxANZwUxP6660w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dqMC5jH3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558FkCRJ008980
	for <devicetree@vger.kernel.org>; Sun, 8 Jun 2025 16:07:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2DmFjKIFcfBEBm6hD4ZevV
	afYtIuTQbyd1B3Nfqg0kw=; b=dqMC5jH34+GpzqahlHKPQ3LDtb4Yc9r3+cnFiY
	uGCDq/td/XZfqsK6Nt3aGmwQsJU46EWJrO+cEjHMwvH/Yjbri7qjE1CdXMkpQ9OA
	yYzkarj2zfUYK+eyEHYWSzCrNj6LiGXoMMts4+bDj8QVYnIPmHFjH8Jy2Ow/gw7H
	Eg/hWh1FhJ3TheopwvFauI/5NDMIpQrWnJR5ntnwNru5XF4xcqL4rmGsE8Hxhi8E
	9S8fZkV3zeyBoUAeVzh6pLc0IuvVyLFjwlyNdJhOCa1CKE+DE+JaNkYohPbNvv07
	MQTE88PoDjCUC2sUP+4idvxBUJqFGtAX97RrI6l8FdC1ZPnQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474b4j3ab8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 16:07:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d099c1779dso662190485a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 09:07:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749398857; x=1750003657;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2DmFjKIFcfBEBm6hD4ZevVafYtIuTQbyd1B3Nfqg0kw=;
        b=skZQqEBTrSnhKbNYC4sUJAa6rNzY0Ycudxsi+ezyHhD8IjxH9ZA0ZmjUYDoFJZ0u1q
         hPmrAafOQKQCJ78+kcTMbcq3UaT0za4rTd/ApW00qeYu9iz7tjr1wQJXYn/8SJCVG5S5
         b18J1qirTsMFX36epsxlgbWLOuVsVcmkm/qS9WbhwGlc9UDBbN3o17QNjHOPR6vNR0Jl
         bLMLVqUQcUw1S62e1FEQR1ehtHTbN1bauBrIIWVCxHEV1KZN8dkmjDSq+S6vD9Kk/VXc
         UA30bwOR0rYtGVe9M97YEt+Jjt+vrKEWpnx68rekyT8nD/8nHs0Jz/e62Tq0Zu29um2b
         8Nrg==
X-Forwarded-Encrypted: i=1; AJvYcCULBgfrJr2lvmV4Wwlqwv5Z8euKNtpa5zCbqeHNeWQMa8l6trTv+627XOVo0uH7ykazvaETI2MJt+0n@vger.kernel.org
X-Gm-Message-State: AOJu0YwpzmAfLAC76OKsW/v3P4/k8d0zMfn82OW1q0bViutSyzAb+GKv
	68xs7FSPkTHlFyfbSIcEYvdmwk32B1BP1ackI8p27SUdEya8EXQZQ6vpVSvuthKnNpR1hi7FC58
	L6kQN+1yrj3XTqFIQm3Jb8VjR1P1NQ35GgGuP1tS3Rwgvkuh4k2lJD172ewSHqHO6OjNLqyAy
X-Gm-Gg: ASbGnct295YVQ7sgocUzgNJgdoLI02XH/kyqV0Bt17h+F6XCD17vXWt5tqnZXRsIRJe
	03wOUS48KLqYVj9yXzOrtPO5n80Ro/SMg6ozCXSJcQ1mAvE7y9leW1G8saGCfgUx82d8UHyYdJk
	D5RgsKrrAqHP+tBwVcDa2scrk7v0KVgsPtxAsIQ9IA9/l1Vmr8lfKMZxv+nsVPRJ7aocF/Y28yt
	WAQVLDjj0Ffu5kulXsgMID2mYywEMa9MYy0LxQ1Hu+PK96Mfohf8b5kTrSbj/xFaLQFz1yB5I6l
	4kLib8NW/SAlTynPlG7iujcD9U5Cb8plIGLv+cWgy9pBVD18F1IcEv/Br9+5F9of2V7ouZdQ3mR
	6bnYjxXN28JszT2WoSbm16bvPNKoE91s32K8=
X-Received: by 2002:a05:620a:2614:b0:7d3:91e5:5f10 with SMTP id af79cd13be357-7d391e563f0mr350790885a.18.1749398857335;
        Sun, 08 Jun 2025 09:07:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5628JA1HhmA6KC/drUXsCrJg5LWgDNQwz7I9cwloHhVscF9x3LpTuOw343GWhZhY5I/LCUw==
X-Received: by 2002:a05:620a:2614:b0:7d3:91e5:5f10 with SMTP id af79cd13be357-7d391e563f0mr350787785a.18.1749398856997;
        Sun, 08 Jun 2025 09:07:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772a9d2sm818970e87.186.2025.06.08.09.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jun 2025 09:07:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/2] dt-bindings: usb: genesys,gl850g: describe downstream
 facing ports
Date: Sun, 08 Jun 2025 19:07:29 +0300
Message-Id: <20250608-genesys-ports-v1-0-09ca19f6838e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEK1RWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMwML3fTUvNTiymLdgvyikmJdA0sTA/PEJFNT08QUJaCegqLUtMwKsHn
 RsbW1AIf7NMFfAAAA
X-Change-ID: 20250608-genesys-ports-09407ab555ad
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=752;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=xNUos8tMyJTZs9l00RUfjTbkkE4YfRaJU63mvymHz6Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoRbVHSjNWCf9im0oyvJbg7KM/y88DVCiLAv8h/
 fechkskzgWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaEW1RwAKCRCLPIo+Aiko
 1YqUB/9CKdqFy78i8CP3OKFQLk0HEDNXN6UTO3u6MjX+EpwFlNgS6VNF6IYlV1Sk6Z5Zm+mTgg/
 AQKvbKsn7IaJoXnH8QKkwv29XeFmlt467SAWbskRCtHjYte02b/HwFbQxvDTYTwV7bDofzridy6
 87+OGmAuIFhmUu6YoZU1E+/tuCEpBGCbXZ/8os+nwo4KUktHldnRZ5KcQL2A1AjeyzRuKKJIiQW
 LSZiPh81EncQyjfdvNkau3u+bUqZ8bPyyTxGcD3SRIESdPCCByJjHMKRhvAzehyVVWGYpejS2/j
 YMo1il2sQ/T/Vesj/Q+TaX5ZKjiSg1/CYqdZfg9vonqNjQCw
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA4MDEyOSBTYWx0ZWRfX6JROro1alRgH
 bqa5Jqh7PH6CBoH2bZU6KJs1QIIqE/rUJk8jz3QDoPOPhagQ+DniaSQbD6sNYCJWlYG8Nwpuq0q
 PUWwBA8rcBbaXcTIi6WxQ6jPGNHMx32mq4bv9ezgCZV/IzE+4imGnTjWcg86qRfh0rwfJW6MZBf
 rAHBzDlGMx7VO/f6wskZLY8ry4DkZei9Mr6lS1SK/4O9iPbfGMGGOSm9D2q2NBoS5RW0PlIVAJ3
 u6YrZ5Htiwd9JXbh9WFC5eu1fk4y8wgF/gvhLcAE988acLbCWnbpX+Eg0VpdfNaGv2mWt8cHXh0
 5i+qW5fuocb8oxDl+oOn/P8hUj9+Xo7e85HlHM53Zfk8u0cOF48sjsKuFAF0LkO9hhM+6BB6ol9
 CK5MLsiMdqCqQU6JwdNlqCDSCLhtLnG3MCdPsEbB3MmJpztkfsup3fk96z2cBVjDKcJMmpw8
X-Proofpoint-GUID: K4xQlkq2soGCAeNq7_vfIE3wljUfK2dS
X-Authority-Analysis: v=2.4 cv=Te6WtQQh c=1 sm=1 tr=0 ts=6845b54a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_VuCBpOh_WUD-g_gB6sA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: K4xQlkq2soGCAeNq7_vfIE3wljUfK2dS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-08_02,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 bulkscore=0 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0
 mlxlogscore=701 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506080129

In order to describe connections between Genesys GL850G hub and
corresponding Type-C connectors on some of laptops (e.g. Lenovo Yoga
C630), follow example of RTS5411 and describe downstream facing ports.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (2):
      dt-bindings: usb: genesys,gl850g: use usb-hub.yaml
      dt-bindings: usb: genesys,gl850g: add downstream facing ports

 .../devicetree/bindings/usb/genesys,gl850g.yaml    | 28 +++++++++++-----------
 1 file changed, 14 insertions(+), 14 deletions(-)
---
base-commit: 4f27f06ec12190c7c62c722e99ab6243dea81a94
change-id: 20250608-genesys-ports-09407ab555ad

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


