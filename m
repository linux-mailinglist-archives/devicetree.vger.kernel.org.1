Return-Path: <devicetree+bounces-133730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 756349FBAA2
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C16497A1C67
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC7F19CC0F;
	Tue, 24 Dec 2024 08:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y5BRSDQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBE719A2A3
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030002; cv=none; b=IbaNGr7xm0TEB8uQpV8+yUZOQyvLbuuZEZ/aGNA30BQjGNlqj4L7Jh+NQoaXP8819FWHj54ErZq2X5h2S/hzCCqADp3UaFWDMIMqjWjNkAyWBVBX5ofcpgLRylGo9MpBjdxojxXiLpow8ne7cMCPt9G8mWb/0z7ZeOj8/Ny60tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030002; c=relaxed/simple;
	bh=W0N4/coitWW0xWo9nsJOENYp9jOBCJOQx3Uafy8U+OU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fT0oGRNTr0UcYy7BwMtOlMoFDdipadUY3mLauRpaVS4cZxgU7loW6ARKLghdg5E0fDdNgRipOoEYqLc26I+0KUwZ0Ireu88ll+jIg+rs2cTU0BylJSIGODv/QqvMaXHdLGakcvK3UPaI9vpiTaelhv/kH4caBDNEQNgqyiVTNhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y5BRSDQC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO18phs015492
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=n7Z58j+xEKX
	XWkqjkJYYjOVgfCNeO+sM2+/LbnVc+Ag=; b=Y5BRSDQC3wDVCZxJSt3Z1u67wyw
	jKadBy8SGRiS82CnnUOAXL8D1iKv8pjNB2HY/fryxebSJuiYH+VNFavBFH8nkHZG
	drE10mxhA/OtWNJYj/ypNiLsslDh1icE+7sQHCbutnbGAnwx6k/pQTnYk2ee1kpX
	AV0w1ir638jTRG0W30cEY2jnJTQ2/6/nIaQP8M96d3kvXsAtjFet51mSQopjxXCJ
	KlT7lZTy1Z0/KDdB8tnkFLUM1HGnWr9nu5vAZlepbi+/wZxMNozL2bzEhJSkZ/ju
	1jgnm4PK7T8nGNgPtDILNJ+ue4yzfk1Qz5TFFKSRcytVcmovNbetLaQV7eg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qk1n1q9u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:39 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2163c2f32fdso81307655ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 00:46:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735029999; x=1735634799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7Z58j+xEKXXWkqjkJYYjOVgfCNeO+sM2+/LbnVc+Ag=;
        b=QBNjiMuFZk+Ivy1TeV8yc4rMdRANuspgmYL2LiIbHSFbzSg/vwXEBvElISHDbHe2d8
         WxhcCkTTAeTmSU6GXnJNXFP0FqTb2fc+7XBNIsYgaRYZ7MMsF0U3rZEbfkfS+UC4GKBL
         L4iyayby8/H1PhxDi+H+CVnwO7aFhXDHP+ALPBgrzRb0udL1rce9zXWKDlum+fUgxbcQ
         ArFbSgFXiCif1UXSGh1i1wojRNThP2p0jtFlQh720KoOdBqiqiBVWcFiqiZdPW7HxqPp
         i+AYoO9KPATeiotOXQf54bstv6v0depp5yYW5csU1BfpEVm9I7cKTFs8zCWfJjpOH6zf
         pcpA==
X-Forwarded-Encrypted: i=1; AJvYcCX+w1SImP7PdYwfyzO+A8gTCSGU9Ek5O4G6eTd6xPUMwtfwscwfFkIy/0kg23lCqwxoyo1AkI+JQOEi@vger.kernel.org
X-Gm-Message-State: AOJu0YysdHPmjpgyLGKQi7HjT4oJFI03CTUP959cGIM2AbKBiKjOouj/
	LkDPekNW7h4BY1SlnzIRSqkhRtuuGR81IOY2KHUaZE641nwxokvEA7srckZoJtYbDg3+qIYelYf
	d5JdUXsGIWFjHDQ+xpBNzc/6jmu6KMt1GJWvFpQfdFL3sYGZOS/Jtv3FNJVgD
X-Gm-Gg: ASbGnctmK8KMykxmy2hMq3PN9IjwbgxM5MqvP5LjbkMuD30CgCDrNrSlEoBZOA0Mpsa
	Zidu7Z+V2ZAdRkml+noO6rVqkEQ2eLRM8nVwALADq1coaUyf5rPbZZWe8f/ZHbU43IgUtwoTobz
	9ieGrWNt/d5yCxO86jrLipT875H3NAr558JL80V43WRe93xMA3Vt41CNSlB3CsiKhVFk9NRcbVx
	U+JfZdGdZD6F8IVrwgZlkeRi1/8o/vk7bhREvVW5+7sxT5nrWID1vTL2qemgmBCc4uwc+rrQl1A
	hc26XGNOSkEqBBgGY4U=
X-Received: by 2002:a17:902:c406:b0:219:cdf1:a0b8 with SMTP id d9443c01a7336-219e6ebb28dmr230534185ad.30.1735029998723;
        Tue, 24 Dec 2024 00:46:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+AYe3lv+lxwHtcSMXIlO0zzvIFAqhtir5DVDaVD4dsPaQwqh+CNLDmptIavydio+z/Bn/XA==
X-Received: by 2002:a17:902:c406:b0:219:cdf1:a0b8 with SMTP id d9443c01a7336-219e6ebb28dmr230533865ad.30.1735029998348;
        Tue, 24 Dec 2024 00:46:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3 bindings
Date: Tue, 24 Dec 2024 14:16:19 +0530
Message-Id: <20241224084621.4139021-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sqK79pN-EXmc2-1cdXcLgRpUYkdVuNGk
X-Proofpoint-GUID: sqK79pN-EXmc2-1cdXcLgRpUYkdVuNGk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=620 clxscore=1015 spamscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412240073

Update dt-bindings to add primary controller of QCS615 to USB
DWC3 controller list.

Although this controller has a QUSB2 Phy, it belongs to a
generation of SoCs like SDM670/SDM845/SM6350 where DP/DM is
used for wakeup instead of qusb2_phy interrupt.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 98bb82c795d4..8fd02e8aaaa5 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8998-dwc3
           - qcom,qcm2290-dwc3
           - qcom,qcs404-dwc3
+          - qcom,qcs615-dwc3
           - qcom,qcs8300-dwc3
           - qcom,qdu1000-dwc3
           - qcom,sa8775p-dwc3
@@ -341,6 +342,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-dwc3
+              - qcom,qcs615-dwc3
               - qcom,sar2130p-dwc3
               - qcom,sc8180x-dwc3
               - qcom,sc8180x-dwc3-mp
@@ -471,6 +473,7 @@ allOf:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,msm8994-dwc3
+              - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3
               - qcom,qdu1000-dwc3
               - qcom,sa8775p-dwc3
-- 
2.34.1


