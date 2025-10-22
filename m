Return-Path: <devicetree+bounces-229625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE72BFA535
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D83F3A304B
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1AE2F3615;
	Wed, 22 Oct 2025 06:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g87rnSle"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498F82F28F2
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115836; cv=none; b=mV3wwNnCpB/gQ9mJnO3z3mrs2/YnAOwSC+w1wIGa9zRAiL4sRkSsgkHfMYROkyWi8sxxtSzAfn1P06bJ26tKjavTn1+wXevZ+HxDbvkC73Y5wKEbfdlqJ4Tc4a9A079xoeRfR5BFHRH27p9mbHudRIe6rb/mfXcfD0X3ooZ1CzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115836; c=relaxed/simple;
	bh=AK+eOpCifQrdqxAyerpg5zHdAyrQIsKrccy3rba6YEg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hMLUgjRxYYQnbD43MRCCK9PU9K3sWjAEIbvGK72KQeJvTWngIjgBZr/ByGv7acA72L5HJy66QcKyV+nO7Ha5qKzGrStfESglBiIn92g+8oQsc1HSlf1sLdwM77HxbZwUMIsIi3xIQPKhyZIy/SY9omClxBVKyGJZn49vDEShvZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g87rnSle; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LNG2Rj004127
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s9mJDCjcSwaN3f8D9wmyTS2crTbn+Fud3WxhiyTqBBw=; b=g87rnSleme87DTFb
	geVCR+lQP/mNH88MTyd/aBd4uMbk5j2naRA7/AHcN/gFhYj8CvUeWPNxIj+UJaYG
	qJN4Wk9OP7DQxlpI+PCr6DYvhwDqTUgaYLERpwpdAEQe3z7PXiphytKvM7FtkG3f
	jZIZshFoT3pmAb2NiaLkTJVs3ttaFqSYT1FWH2LYiiM1pvZCstqL9WrJY8DCNu33
	LTJVmIlNvFNQx/zoJeMeLhxqe6oRLSTTFWf8H8h22wVFNtyFlMVBNHnrSQwriVyC
	6d/eNvNKwSAzKouFAQVDViZyqJBwuy6SL0edPnGArLgYoqa44cj9KP25WTltt1Ea
	s2m/RA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkps931c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32edda89a37so5667440a91.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115834; x=1761720634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s9mJDCjcSwaN3f8D9wmyTS2crTbn+Fud3WxhiyTqBBw=;
        b=BDjyFk8D2mdbPv2Tu5w9IWY+vVJ56wEK/JR8B1/n6OZR/PxLR9uR+IlWk/Y5SrWxlg
         6BtTvqLyRVkfay65hbC85Rwod/92mXbkQGI+QXSAqID9w9izmlkKiAYzS8nbOSitJXBT
         kob42/GrUF8QCH5q8fKgZGEmWDHjt20cR2JgZdrjyShHtLVOqf5sQz0BPKs3jXGs8tUV
         rqbu5Rzl68sMbQHoAJ6fFn6SM9rCYQntp6oXcQ/QweBZhLP+eHVaTsq4GM3MuURJ8JWr
         dp7GuiX2iQ5lNYNNE94xM6ELVXRuPt6/R5oFrZjMC8nbWKygIHt0dzshCRYgTuYYPWVf
         CwNg==
X-Forwarded-Encrypted: i=1; AJvYcCUTYkq8DxX3RnLB7pbsY9zQ/jz5ncGjzHgTI8X4Ik1WNvbAkHjrTWLaDIrtj/p1TJXu49jjpVu7AOfB@vger.kernel.org
X-Gm-Message-State: AOJu0YyvO75lPOg3Xa/94XGLbTD1GCC6pVH0Pjf+Auk5gRxocNnkhY/s
	4u9vUQFEWvP//kpX7qjF49doQHA9FrgolFxB0vVuLBDc/8Ps5hilm5YOddORj02fJN1cRS07TZi
	b1ZWhi3K1hi95aA1XFgAXArJbBPyTkGHwji1WoR/SQG1WblXYXj9MD8rQL/XusYVe
X-Gm-Gg: ASbGncuV2TcEqelz1H+Hh0tzWwSxgCNIod4kPzipSCfMR2JvFUGcErR8Vd1oZiNAFjE
	272QGcQxvpkHc5U9cYzym/J4KNLrtCRCZgnrJPa/KdZRrWaDzFYbor/IFtJ9mcvm4tjA361yZyy
	N/pBEdFWdndC+5PXmDHYDbdSfJiFGxt/FXinjciHfjsfYYKpgHXfcV7TTWM1yV4wFszim+f9249
	LpjXfTf7XaZDfOl0s9TIVh+BpB4RNPCCKQKZDsLdP1evzU7vL4tLEByidwUrmKDbV3oYClhqn05
	CLUSK7NOvSJIqCZHxn0A9oG+jQ2cMLkJDW0w61s3JOWBiIGy9EP7zAcvJo9YShw/pQrQvMWXMMC
	7TGkDRcEV+1yA19ryOi4+lVfjC7yshkbkE+ZffHSOT5brCPWl7A==
X-Received: by 2002:a17:90b:17cb:b0:335:2823:3689 with SMTP id 98e67ed59e1d1-33bcf85ac3dmr26314860a91.4.1761115833559;
        Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDVc9txyy/LodTPX6Zl2bPT4KMUb2rb4Djs4TPJs7eGzSz76XX2iUq94kalMFF9cqfDmnbwA==
X-Received: by 2002:a17:90b:17cb:b0:335:2823:3689 with SMTP id 98e67ed59e1d1-33bcf85ac3dmr26314829a91.4.1761115833124;
        Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:28 -0700
Subject: [PATCH v2 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-knp-usb-v2-2-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=1105;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=C2z1zpD5/k7zrrU1kiIxZnHAMyo8I2Wxj97A71MaKoE=;
 b=5R7Gn1k7ZEznAPlNPCPEnEY/Fe8DQaxDCQiOfn18V0Fa1yb9LsL9ao3QQcpKdWqRNYLa6+zJ3
 wsCMPTFtscwBx0YY5AvrZzEOyAmExpV3sXTe7M0fV2akCXWU3vhE5hT
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX97E8icH4SenJ
 rV41gdZnbQmykNJ9acyBrNtYB9OgMFjkt6DEc5VGrc5WNMeyGQ9dulgf56al0BWbdLiqC6Nxlbn
 xFXZbehGtXFAWdpC+eH8wdYHhpl7M9m9PKVSmpfuMsJBywD6EB3X3pEtzm3OYfoEvdOlZKl4fYI
 GPLfwaZQ05X7LxYe2rfg+7ZKuHzf8scrX9CQHGEr/oYrXHogvqzt2QzqK9dTuOMK0JGwtyIDLbz
 dOaF5PnU/C1RXjtkqHkX+8W2WpGxABo2V7FF3d4wxBdpzSbVICVl98OgkT7rOiS0xNM2Ts2TbFI
 o/I10WufzlZkSwh5qqk+7ouhzGl4a8YQuhSwCKo/8RCh8dFnQgzMBhahiTLyRWo3xRm+59rWRE6
 6mQiGR7Au0odvQeWahl+ahFg3lyzlQ==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f87eba cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: WDLmUgum4JWDTUVqDzFc26-hv7p73im2
X-Proofpoint-ORIG-GUID: WDLmUgum4JWDTUVqDzFc26-hv7p73im2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
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


