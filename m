Return-Path: <devicetree+bounces-220961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ED2B9C9DE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90277382140
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0BDB2C08BF;
	Wed, 24 Sep 2025 23:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="phhJzxyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA17F2C028C
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756918; cv=none; b=naFywzlcgc62kzvXJra9vWqMj4J9L12gegrFrgZooKWIEoUHVHBmXoCG8eCbcvmEp9LAdCweJyYj9Y0XNENX7A4eOy10njnT2ENqGfse3Cd2dBn+DsG/DtPGYX38A57hErdH2/OarFsAZJ+9n2gaXOV+Y7PTSfTvBQYS1bt+CCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756918; c=relaxed/simple;
	bh=hU4ophAaEAd6H7eRZm1uuGkEAXFGtcDMUcpBkxQVHUs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KHCV9eRvkkjn+FeoFulzDAQ20NCj8lyeY8JyIZPQU2YX36MLgoi7RvBKXEhXFFg+JpzvrGpkHtKRvE4ABBksPyan7Si/i9CVnuotiIBtSb5YvbfclDdaW6ToEN44x298SYBZlrYoo/HjGEkFVu+QYiiher8af8NX6VUUdKcqWBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=phhJzxyw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCnMu6022454
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PWqICJbVMy0RpODDALIty+rOGzCBRBu0xbDRo92ujfQ=; b=phhJzxywA9wrOq6t
	Cyty256UpxzAYkUiVTu9ZbneuG3pkOZBj+WsJ24fsAo5XF1pvHzwRqPRNi/nlJOU
	2xOzZaUSGo46reGxoTJ3VT2mp+76HBDPrMrdQjJbzUZJ8pA9HIDlKxAPiGbVrdMG
	9xXRxdPOPbe8QE8jJCZtGceKkgrI19Pnol1BlQyb6/Z7lq4zN0V58BFbFod81WOQ
	zjMx9d6VBrAEE6TXIa7LYQJBULY6DdsDPUtXoHvoit9/Qzk7YN6k0skexPLc1Y7W
	1Rtx1XarO7FBQUeGscxGHDazh4Hgn9S/kji3+y6d5mo+zw+OkgkUBD1amkYlialb
	rQTqPw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadkr6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55118e2d01so220431a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756909; x=1759361709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWqICJbVMy0RpODDALIty+rOGzCBRBu0xbDRo92ujfQ=;
        b=YAoWr7DW+uysOv3bcRYRU/E/QSemsZP8/pSQH3/nH+EaM9J3u97UBSFVqJYGcT3VOk
         sWInH4cvtK/BsRUUc4+Lazmc5UX71tQNI0fsk2H/w/RDM5I91SlqC4lKDqx11WlQHGab
         lcFv0GnzyzS/HwHtSFsC+vj3NexdqmngCvSF+bVYOuwLjEk6xKCvviirJLJqS86Uj7O9
         R2ojaQS9wyphXuIGZWNOy2BxFKTruL6HbDzcXosmfJxxlxhSBR6dZR4lHyYHG6O8t0+s
         4zdjypZOzc3Xvc/V2ajumxnvj6aj7DhqbzsCHUdzQsZCT1cN1aFQlC3fVHLKTCmNr44P
         NM1w==
X-Forwarded-Encrypted: i=1; AJvYcCUJPMLmqyCOkMr86RG+kuv8eFq0LEsvrMEcYYlSn8p27ZT8ijzXpQeBjgpqfA+f3vVSNmvy9F3MNkyP@vger.kernel.org
X-Gm-Message-State: AOJu0YyHJL3PzXmfSvJO3uHhmPKFNaTThD2emobXHam2PWA81FzGJyMx
	zVDUuosRA/jMuxtfoaBbyjxVeebRc7vj0Q7X+QDw3UN2xvDHwVoGY+I9SZJR4ciHobHesDwzndp
	+zui7Rn6sv05N0FmTiG+t6+hMVfXxW+Y27gIz2ptf9phULVMSRX3WlVgw7YlhrDtQ
X-Gm-Gg: ASbGnctmI/I+LF5z6xaB/kPzHaz5GuoS1dyWPu90xFn8S9+iys+Z+9oiTl+4ItbqCIK
	OdQS3Be+bPbepl1VDGHtwVo9umah4DsmnM7QvAzoJtYXK+HHrVQe42IfPzFacTlPTlG8Zn4nL+s
	NgLR7Y+w1+ROnlPxPbO46bKI064PXJj++cMddSi95Nn3SSY3MFml56E0mvD+wT0hyImxl8iA5SS
	SF0GTudyYjqdSTl0p3evCocL0TiytL2T6o7uuvAxFYOJFtiyBtrZR71iqgYhXyPdMFamJhIFwLs
	O7CVj/zBwP2khiQ9a3FJIB/MHazMy+GB605BCaLJxEo85tg2+p5cPjCB8IrRUP5AV7vtAZhPCSh
	2FDGKbYjpPsSQbZg=
X-Received: by 2002:a05:6a20:1588:b0:2d5:e559:d24b with SMTP id adf61e73a8af0-2e7cdda1022mr1646268637.32.1758756908638;
        Wed, 24 Sep 2025 16:35:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiJ/zMalK4Rfhi+KRWDxvhLRY72fdHDoPyo5I/09BwNd98hpdC08x8DXI7JsGifufRFFlfPg==
X-Received: by 2002:a05:6a20:1588:b0:2d5:e559:d24b with SMTP id adf61e73a8af0-2e7cdda1022mr1646245637.32.1758756908189;
        Wed, 24 Sep 2025 16:35:08 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:07 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:54 -0700
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Kaanapali QMP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-usb-v1-1-48bf9fbcc546@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=3174;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=KM21eRPw1BjO3tWglGr4aBncFUF2vQ3eFtUu9OugNJA=;
 b=zFJE8FT4iTnf2yqujsSkjV8dmDKm55xtIEX4wmJa8Y4mo4yvYckHXkpnIkbGaFnepoNyTcSZB
 PXaiYpG0fohCy3P3qBf6UPHN4u46CRHhqcgVPyUghKrv90jmiWpQKXi
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 8pmV5aP_g5KMZcm7f8RyvkIQW3wNs1W3
X-Proofpoint-ORIG-GUID: 8pmV5aP_g5KMZcm7f8RyvkIQW3wNs1W3
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d48033 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX0JseHCA87/IW
 QXqekPhF9YA72F4rNeNb5/QWnecV/3Vkn3gyZSB6XiuE/f09/edaikZ8WvCv4CdQES4UDaldUoG
 hy/UvMzoNSMsjPhzxptGYp67TJ7Ze3q2M5agq6rqTKL3rVYRIm+x2/c+6kXbN2slGnuEMFXKx3c
 Bh1UHoDAN0b8CofOzrkMjaT8xCyAiE80KH3TcWUa1Z5PaN3cTGfLTkFJvKvtqxY1vkv3jzszd0l
 LahKkRG4UGCtH+0PF7bTiWroggPKi9TAX3QV/j2OebRM3kWuz0Ba5JZztkeRTSBjy3irnttp20b
 Qm6Yzg1ta53XLN36Yxe/zrKOeWMk6CAIN0+H7yqNNHb5Wsgmz4tYZGspZI9+cg4kHeNr2cKT1BD
 hs8tPQ5M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

From: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..8fa919ea3318 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,22 +15,27 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-usb3-dp-phy
+          - const: qcom,sm8750-qmp-usb3-dp-phy
+      - enum:
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -127,14 +132,15 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sar2130p-qmp-usb3-dp-phy
-            - qcom,sc8280xp-qmp-usb43dp-phy
-            - qcom,sm6350-qmp-usb3-dp-phy
-            - qcom,sm8550-qmp-usb3-dp-phy
-            - qcom,sm8650-qmp-usb3-dp-phy
-            - qcom,sm8750-qmp-usb3-dp-phy
-            - qcom,x1e80100-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,sar2130p-qmp-usb3-dp-phy
+              - qcom,sc8280xp-qmp-usb43dp-phy
+              - qcom,sm6350-qmp-usb3-dp-phy
+              - qcom,sm8550-qmp-usb3-dp-phy
+              - qcom,sm8650-qmp-usb3-dp-phy
+              - qcom,sm8750-qmp-usb3-dp-phy
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.25.1


