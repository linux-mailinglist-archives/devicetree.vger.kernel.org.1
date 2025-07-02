Return-Path: <devicetree+bounces-191979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDEEAF1187
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:19:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E34FD7A9DA0
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C519225DD1C;
	Wed,  2 Jul 2025 10:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bk+bvhHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE7C25D527
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451483; cv=none; b=N3vTZsFF676uKeKze+ZCqusy9tzMmDtzjLtdcMj9xzy82ka21BkiwZp3ZhqgQNcARLTClskxvNzw2lC5NrssysT5RptEaeAixbdqc5fgrcGmAaFGuxa73QjlKctaXHiFm5CxhYMwEW2SarihA6yaeLEbU/LBZ1kl9FkTXq06aZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451483; c=relaxed/simple;
	bh=BChmyNzrbptXwc79lffspr6OBkQ+ogUUU2HgUK1XJhY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BHNCJRb5GJUns8UyZ6nuh0ujpPA5H8rP968b6Hsab6uGcNwqwRZBtPU31X+WxaKefP6lwLprl4b6Io+ymsVw+ue7ydrVkj8H1ZNZU1+wQGo6Y8sOcToFWZuP8AP/M9JpQ91YbApkhdXjdeD8MK7XEAVCCqXqkQgJlTJTC3X0DmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bk+bvhHW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5627jAUt025172
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:18:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GoXuhL/dpHUk34qN7MYe65pVIfgaZ8Idp1jgX88vXd0=; b=Bk+bvhHWKE/hNC5a
	5XdNb0Mr2CNw7bN8bGkCATv9TDhmb2lzNSqXuR66L7iDj8/c893mzdwIjrsfOYRQ
	7lQB6xctdX/x1+kyXj8+hpUzTPhuJ31qCQlEA7JVZ6Erk1jEqrc3aAvJck95gN//
	HT3zqHOMMTiReEICvLS4FqTQW7DNXz41aAY95J0IixPq1I/w8ZmCP+W4ML5Ji8R6
	EXh2HaRxfzxICQRAx7py3+hekYTlnhnqgrve1LxQ/EQnCS3aHKdNL/tJ2MyGV4/K
	SN1jTOOW+NLqNckuf12NyFo8xG+7KABjJiygzVypMV77U3htOZBcJnr4trpSXfwb
	8Tfo7Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64sdur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:18:01 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74b29ee4f8bso2890342b3a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451480; x=1752056280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GoXuhL/dpHUk34qN7MYe65pVIfgaZ8Idp1jgX88vXd0=;
        b=fzL0gQoraomC7TI/6uhaBHtW2NjDHsvmAic3TQssTHP0Wb/m+0mkQtYrHiGvvcwUA5
         cu2kAxiFSsDFZdmi862wB+8RE6Grogia5wGxa6LkfleHpEJ4mfnWxJTvCrC6TVUNQuap
         VTYjA+TN49xp4/k9AOyNKWzy7zohGIPhnzT3l5QZ6/rkaz0/j4q3NAJhGEJga+IKwdGk
         6k8YSGWyKZcbEm0TkmQ95ffYxZIwD9nEUInv15Q+58/g3HvwgdImk4dmO4G10ELvMqoA
         +H9kDfH7ChHyskmd3rKYWiCZ4SXjUY3iXEYPiRsIvriGo/S2XpxErnVaeTPLnNUDSOev
         yaOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsBkbk4znkhHH6eR8JeUi5qs/wS6oysAeqamOBiMA0Iev0OWwUNRIrzBSxndDalaal7TDGJZ2lrq2t@vger.kernel.org
X-Gm-Message-State: AOJu0YzL+LGWAmdeLp4nDuNDhKa/d8TLsOA/tsNeayeGOOsTNTUPrI3b
	znmWQCRN+HCyy4V6IQP/TseAelLatrMYgsc1vCNmtNFxs24Wi2r5RNS/JyuzyprzwzUFcRvNw5G
	sfnh0wsTgZOWVN+tBSKdLFsV9/Y5w7IYl+4k3opeIM/89AQmu+nQH98TyeQMFMKNA
X-Gm-Gg: ASbGncuRst213WlE1cR901X/cpRMwBAdpielotR/wgzuew+wAal8iaNdDKG+kNIggDr
	3XxGEtlgxHAFJdLgvzMVtzSeiCll2EIcV+BIa8u19wNa9XLHY8hGC+wcUw2BS/gqFaCpDmqq2Eh
	EplloogKDoQXA7pmJLU57e9mDnxz8EMgE9ADvO7JZYJy+ncA2W8LKF9e2oMKDwypxLyIsH+TkBN
	5SKXi21GuHcdv7Cw9aml1IjoHNTMxk82rat/dop3eSHoqTYTKQ3vv8IGRY7lLNETr36y3pO+hAN
	k1JWBknrDDY4uSe3efEf+iawujmwgZu3J5o63XqteXKEPJn6OZR5dyKFBan0tFjl0TFGbD6hdQh
	kKNJc8ShR85A+zemgYJpiewqJtp4GP74yrg2rJ9adP7Veb9ouiJ1Q0Diqqw==
X-Received: by 2002:a05:6a00:14cb:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-74b50ff200fmr3190967b3a.1.1751451479834;
        Wed, 02 Jul 2025 03:17:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXcFfdkHx9AghU20rt9aF2VMJWcy10rwNXrXSDxqTM5WskhvWbDhoL+zPyIhIRnCB+hqfXOg==
X-Received: by 2002:a05:6a00:14cb:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-74b50ff200fmr3190943b3a.1.1751451479436;
        Wed, 02 Jul 2025 03:17:59 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:17:58 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 02 Jul 2025 15:47:37 +0530
Subject: [PATCH 5/7] arm64: dts: qcom: ipq9574: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250702-imem-v1-5-12d49b1ceff0@oss.qualcomm.com>
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
In-Reply-To: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451460; l=1171;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=BChmyNzrbptXwc79lffspr6OBkQ+ogUUU2HgUK1XJhY=;
 b=WGerw5DWA5FvQ3+7xGczckFhDI6J1ABa6E1jUiK5UBXC8LU6UwB3V74s9GL6Ipw9G40kBgP68
 l5nkVn7VkeiCQaaOKDTsds70aBcrvGYn4Y3FwtxphWlF5i8xbABSxf/
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=68650759 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfX0K3Gft99FRx6
 RP1ijHwas2fFbhEA1fVZZzDz4dffOxjEJx9WBtUxTqJ0Mc2AsV+mymNRuXMJQcSDb8DgDGCy+HN
 eOAg3qaMu3GdVUH48iK9MrI/aUGhPHXyCJAby8YWpP5qfZuVtwEYEiSIkimDh5yvW01hh/Dv0Fw
 lLZ8aBnnjas7m/Xy0XaOfoL+raLvOFJ2o/Ad8rWml+VLWFZnnnNwDU2INVXl49IDL/p8vCzAoKp
 2+v0BEuAmhpZ939O7QVLhxdaO7XRaT2B9MgWkjHdhj+06KzkUdAck+7bzbUqEdbZQIw5buT+gKn
 VfpHQKifMKuBu68D0O78aXpCJTlO0gl5/g0O6ZniktbIJmW3mZMKtbhDAgtSOhxofmFw2HZ02Zn
 PELKfTIPj3JP2mlA8CAcPPIbZE6uC9kuyf50mY1eBrz9TbIMC2JueOE1MIVG9c8Bj/PicPt9
X-Proofpoint-GUID: 6xuEU-NRlDW8qLg89oYRZzWFpSUE2JqK
X-Proofpoint-ORIG-GUID: 6xuEU-NRlDW8qLg89oYRZzWFpSUE2JqK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=741
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020083

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 32KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 815b5f9540b80e91e81e02a97b20c0426f40b003..2a42e8a9c79274f2b983d31e0b7b587ad524b211 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -741,6 +741,15 @@ usb_0_qmpphy: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq9574-imem", "syscon", "simple-mfd";
+			reg = <0x08600000 0x8000>;
+			ranges = <0 0x08600000 0x8000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb@8af8800 {
 			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


