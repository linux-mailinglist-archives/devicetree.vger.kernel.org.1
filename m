Return-Path: <devicetree+bounces-220965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D10B9C9FC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35BE8421011
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B032C11F8;
	Wed, 24 Sep 2025 23:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lP2TRpjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA842C08A1
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756920; cv=none; b=oBzAWUbj1/ubznJm3sY52VobnADmsb6qON5P8xOGrjwXlgjI6mkoliUEl88koxbzuHRYyXjDl9Ir4SdkLSNtwdhFsTmR/hNQ9rVYzXtlVycaFvgGRfbFlJTnuPNB+AjLG1vlus+VxSwn0DKxMiQcpCWbMFJ2gMyYJ6Wy5Ahbi7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756920; c=relaxed/simple;
	bh=YFE6gRJwBJey7qoAfsJWRiZl1FI7ewVERjhZ54aTXY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UlKgZb2bnpUbOolhw+Y6r2JLYp+u/Be+UY0Xdw4tdJJym5+EvU4cqOvMiN+yxbrVd4aSoFf6UVlkBkVaQb0tn8/jpp58iujMe/FFWVFKgrWuGr5DRQS4AVRMHco8UH2IxAr9La/qpLab1nDpM06lXQUqh7MWYi6P0tKpKo8bhrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lP2TRpjt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCkQ2g029712
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NZvnJ81KxkQIo11RALQNJeyWDefLx9wBbmisYnHSbMk=; b=lP2TRpjtxNLaRnYi
	1GHoBPrTehPeQclbB+aDJ0g9+Jea9memCE3JqEJdRji1Zdo3AmGJaRjBRnmGUuP5
	OpC9usv71XmRZpM8WpklVR0hPLMKYDxgEV0xOCr/Z1F96Hflcpo/FO8yLM+wglCN
	E9bjv/HatppoPWw3RlmFrIRIvhbwOxInYzJSfJP07YyVHt7CHAJY6ZaAxxYM5hGe
	x7Ht8HWY8NByPIQzmbUpZvFIyt3YCCDOpOqTp8NNQJOPtF6BhFIBBZjLznUaIHhQ
	A0b48nbOFkNlZU0s8puDPPMBvbEKADZgqIOHeXus654oys+MhdsMWIJ4R98qR6OU
	bXGB6w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fnx30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4f8e079bc1so205063a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756911; x=1759361711;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZvnJ81KxkQIo11RALQNJeyWDefLx9wBbmisYnHSbMk=;
        b=jEhekJPnBbq3c+Iv324PX26dELiTc9SW3vQ4IM6ZkQ/1Mihs1j3geqaiSyyBUbMup5
         9XVggzb6deKSYQfLnGJDCyI0uuO04OdkndlUvjHrjq6HszFeGZFYA25teoKPpzvqR4AE
         n6IScLpQMyOvAsCmL1aXWJbTjPGQK7r7Gj/3X4x3f3Jz6ZblaRxUclfKlxUOx7ikQHOd
         GloRnFxOfEO10DbSKzuSCrG1L1bjulFhrW63WUOt9286yuKOmgDvt2DKJIuOh7LGujeZ
         wccsz0XZH8OffJef0rB73+8aCG6Y3z1Pxx0JSPZFPBRant1R5lhJnS/o5uPh87GU0FXa
         grqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXm7duuI6cVWUjvnEAK5OfMO1HGUSTcCpnpMQ5WmkJfInJs7nBOghHgfnb+if5IAAdQ6PKhKUwGIAmS@vger.kernel.org
X-Gm-Message-State: AOJu0YyQTcQJgEET69CaMHQFrm8aOeYrJ2z+B0T2B1WGFiJcp94gDmLK
	JW2ucWz8HsAK5j+XZF+NInPXAatvNatOehWnMtTqYog7KR7Tx72px1uoPmYlPlsKhKPcfyokHid
	dahVT87J+tvgxmi5rK4vAeaeuV+l//I7XKaZL5J4zGvQwgVMN6bw2n/nrctGCKwQB
X-Gm-Gg: ASbGncsbeEB/QeF5rjCaX/vx+ejp1WYbu3HMa6a8tKrtc36gT5251qpPXomUP5paVQE
	f1HuppMj2YoHA7AvvgK/AGbqsamVAi8o46BhgZbp3w7eo5Nv6qlL+BYKBcb3jFnbfGdy1JVUGi1
	6gCDwuIiIyz/wN63ajthRpEaSjpCHRn5mZFH0goKtxnlsXAr1PlbmWNm7GdGU02yWmp0rA6thDw
	Eh6ncw4P3C7ElASxs45gWL/ler9rfySyyh7uziq3NsH85z2rpPPyyOIDZCeYf8czXHdZ9tsaCNR
	e18r/LvFTmRxBYJkSj6Nipmyrayp8UOUaTMR6ovnvLXLyS7pQUaX514CZY4zs5q4ul+mwUF0Rkp
	uTTY9CQfhl0+4koI=
X-Received: by 2002:a05:6a21:329a:b0:2ae:fefc:feaf with SMTP id adf61e73a8af0-2e7c4ea142emr1577353637.12.1758756910787;
        Wed, 24 Sep 2025 16:35:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZshf7magBR8c6L1yQi+3Wkf6pFAYDU/U6kxJathQw18FK67RwzHeL0RkuK2ImFKF5YafX3Q==
X-Received: by 2002:a05:6a21:329a:b0:2ae:fefc:feaf with SMTP id adf61e73a8af0-2e7c4ea142emr1577326637.12.1758756910358;
        Wed, 24 Sep 2025 16:35:10 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:09 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:55 -0700
Subject: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1111;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=g9oeeGr6I8KdbWoQAM9xUpSM8MuOeurLB0TLJr9UVOc=;
 b=85EyRAKxKUztOphPzLmjV/sEJUN9oi+oN9pXyNnRzVKuupm4S6iFFK+XVfMTvbawTRA4GtMZe
 iKaSU/Ob6tgDp/lR1g811dG0qbmiFrzcpd6WVdHA53Y8w3/EQfJSe6c
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: IKrE1_u9q1t6_9TQjoNHq_h41DVmpUh_
X-Proofpoint-GUID: IKrE1_u9q1t6_9TQjoNHq_h41DVmpUh_
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d48035 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXzFLjhqHfqk60
 xmCsAVdi5w+LM1utK7WzDkFuID6PBzRnYmq+KZoOtHRXuasfAHH5pINXwctK17U9qcKvjtDTNOP
 c04ZUalgIdpTUBIP4CvoahqCh57J2snLs/ItNvHLHZYInufKAJ2Q3tUT1NasbcX/wgf7Wvw6K0i
 LuRuQ4E7ENfvicbERjQ1/7qdFsJ9T5Xn1JT2ndHAegNoryBCzob9wptf6K1/u7twNEwuDTI4e/o
 efGngXy79G4R7vGj3J8T/nKDSZdHTlU7xhlkNk5aAMBwpBOmuFyH4a9tF6Qp3pX5xsAo7Yx703V
 sEeihS9z6Q8bgkxMYTvIdknCzDfyr9RuTNpBTkUFPbPlNnK8cUg/KnRBMbsYMKBB7uKsaRwJ2qg
 G3nK70/X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..ab1cdedac05c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,7 +15,11 @@ description:
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
       - enum:
           - qcom,sm8750-m31-eusb2-phy
 

-- 
2.25.1


