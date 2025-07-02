Return-Path: <devicetree+bounces-191981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF069AF118E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:19:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E22C4A2215
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465BC2620EE;
	Wed,  2 Jul 2025 10:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GQEIm0Ig"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3AA2609EC
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451490; cv=none; b=LLtYb5iMK4bUpGAmnHHVSzqSUE7h9GrYBP8v20GdPf5BOm3PDevl/ATFhwonbO8QT4Ugi68CaUjuCejcl0Q3a9rQe76wYQ2YT4Hpx1RfgKh7HryruzNlH6HWIz+joV1P/7fG7J2iyB4veLsv4sp0ZOYhxRUf9wA+IWQRiRg+aUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451490; c=relaxed/simple;
	bh=wQhsflpGUJsF+aNy/iW2kaaJ5se0e5REu9ZJGt4Bxr4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aEi9aAp7SElaIAvRAQs0132gyoPmFBw9oIZDnGS1ymfXYzaI8+r2d0TuyOwteb0K/4ip5O1gWXY7p9ypnXEASa5V36A51K7G6xIIzajNuKUCMEcqbYstEW0tHvywop4F0DSWYLxIbRpY0CdyuPhH395uYEwCmRcyqo0vxNImEL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GQEIm0Ig; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5627PPfu024884
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:18:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wTRlJy5AluWIif9amlNmxw6fYDtyppKSnmMprtqf4AU=; b=GQEIm0IgtuBprJEQ
	JFmCsA8OA0XaxjzaT/6iKGDQ85eDaG2r/W65EbWw4SD1nrFIyDnNb7zqk+K1wVWs
	tVqUL37HqmtJON9+xL0YuhskbsUq+yv/0hP611N/9tksMNj44CgoTctxOFaRlfOv
	ZsDJo5VB7Q/d4jOA897+gkU6elWRuwfauXIuiw3wZAUXhhzQvNRKmqnaYwPYebch
	+oBLPSBkoWpKWNeOTB/j4DaS/FdJZMruuVTaRaf4AaccMRgueE8EXetnW/qDkVy6
	h97Zl2R/w3PZpyyItp7NqC7ZnEG/qh+l8ASLaNpe5U+JpNG/mYy2Yd7x5AkUX0wy
	iCvxcQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j802433b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:18:07 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-747ddba7c90so3582790b3a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451486; x=1752056286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTRlJy5AluWIif9amlNmxw6fYDtyppKSnmMprtqf4AU=;
        b=igCKsH1d3YtxKlsmCVFicgU9nOj4XLPyeD22KuUZVPM78NIBZ+66iWYHK0xhqfaFVI
         I5EVX3S0wKNEvM8FIvYOffzYfWzxFOdgYwifrluscB7g2hOx6PMW89AxLSUwnmWiUhva
         EhhXAAZbinP7FBe5/F0dtoUszCOquf61aLuiGTkSkDM40trDty42UenuDarwQlz7CoKO
         RpV37J8cSsLVGcTgBrXPKP0xZUs334/ygL/VpQC1pNDPIYy5ItG5zduTScStY2fI8Mj/
         42/s9v9LJrZ/MKqrwoWM5GBsq+O+RmzUUhNmE1F0W2Ys3kAiai/crhgKwY1JO/Rl1a/Z
         8xbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwsxxCi5K4Xv8t7YGB84KveljowZYyMJJRuVxEjMWj07gRzj+j5426Ko7HvJ76TEMfC2g50dQnPO8J@vger.kernel.org
X-Gm-Message-State: AOJu0YzfnHhF8/kBho57m0mAlcm5qO+heDs4trF2VnGBBE7jGpEjVAMf
	tvskhObBYI8JVV7CFRAPLRbabTKbkRdEs6ehgSS8pDdOINqoPq+UNWbRpYxKeLVXthPMtdcEuYn
	AfpnVLr4YFXU87RJx9FFAeaImC6Oa1fD+8WC/rc4gLyJH/A+vELPaROUgSkOlpPsL
X-Gm-Gg: ASbGncsalFQy6iwK21mWW+cS2fY1lZP8hgRhxBExK1V7p+/j080gwu8Ns7LBEq2QgJQ
	ktT339wOLNoDfRR0KnR1wfDBv7VJW6S34t7EMDyAvR+hMR1IgKr+mhU7T1XcaC5/ABBPNut8S1e
	lKEqoqfS9k3KqRKfA7fbIQo6Ss32Am1dg61OGinXiwUMFGTzE7VXc7+JNzXSiul4kokYVrYN0G5
	U1WZYYVf5Enn6t9f+O7EXsY6KAxdqzBnO2/9pHGOQ1ui6GgL1gkSrIku5JVdDtQswAf4j/N5l4Z
	stnvSKr+25REraDm2ikiU393mu5b3aytex2XtYlqRTBuFahLNj7lbloEAG0WPn1JkXPK3XnpO1n
	/zrdhCg5mMcZK62lGUOKhVtnKoU8czvVuYLNxTcghlCsHazvihDQd3HlCZw==
X-Received: by 2002:a05:6a00:2e23:b0:748:e0ee:dcff with SMTP id d2e1a72fcca58-74b50ff2460mr2719923b3a.11.1751451486500;
        Wed, 02 Jul 2025 03:18:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpMQEdvSXHqqhuaPgtstQB18HJ3z9tqef/wqhHRt/9fj8UJtu6zQxc7Ajq9lHSgUS46mwo1w==
X-Received: by 2002:a05:6a00:2e23:b0:748:e0ee:dcff with SMTP id d2e1a72fcca58-74b50ff2460mr2719897b3a.11.1751451486133;
        Wed, 02 Jul 2025 03:18:06 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:18:05 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 02 Jul 2025 15:47:39 +0530
Subject: [PATCH 7/7] arm64: dts: qcom: ipq5424: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250702-imem-v1-7-12d49b1ceff0@oss.qualcomm.com>
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
In-Reply-To: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451460; l=1241;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=wQhsflpGUJsF+aNy/iW2kaaJ5se0e5REu9ZJGt4Bxr4=;
 b=dlEJCwIp++OqsutI9yPrAT1bCt3t/bafD3CsMNbdS9MjMOUztfbCvJHjqTDengumkaXwyejs3
 SrB/oBcCpR4AVsG2FLFkPpnOAQfNpJwojGRJdukN6NKJexJ4ydDezYr
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: 6g6yOHjXUCmO45DbbrOewsoeJIVk-U_t
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=6865075f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=QDJorwyCwNfNgOuVDpwA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 6g6yOHjXUCmO45DbbrOewsoeJIVk-U_t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfXw2v6PqNZJxWc
 CZgaMd1nKJeCdiLA0F4a/Gr9J39O0v/9v9zOTj31FJQe47b0HSE0n2u8gx/oiCYlIGHgZ64iO0E
 W2mC+5ntLemTpxPom0JfgqWJKrfZ2h+HNTKF/Wepa0gg2xOnxKmxQNrM8Lf5LptNR6aQZ/aHlgV
 +8J/R+sE9F7OhrmNIIjFrtTdIKp9JbmIEVnifp9BNP08U7YKilVa/vGC9m45kdx7Jysqsnh/Lu5
 kL4wgtP6jk760+d6ilB1Nav+w+fOlayamNUS4KpT2Nref8NWAlBEnw07px/FuOvEpBWf/9c+wwV
 giRpuXrECY43Vy8LkhM40x/VBZRIJ9sxJdg604StIXZaQKbt+0S8btL4AJozuiQYRkx0nwHHVCF
 ZYRvxKfsRaF7fGMv64aZQqCzthXbLP3VWWVhUQfdyX9c67JFv+2moPSNTCxE09OOatFmPX82
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=803 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020083

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 112KB but only initial 4KB is
accessible by all masters in the SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 66bd2261eb25d79051adddef604c55f5b01e6e8b..7fdc003f210e5a69944b00361a16fbdf58f39801 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -591,6 +591,15 @@ ssphy_0: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
+			reg = <0 0x08600000 0 0x1c000>;
+			ranges = <0 0 0x08600000 0x1c000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb3@8a00000 {
 			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
 			reg = <0 0x08af8800 0 0x400>;

-- 
2.34.1


