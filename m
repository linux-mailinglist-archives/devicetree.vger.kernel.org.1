Return-Path: <devicetree+bounces-212126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07920B41D7B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAE5754664E
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADE72FFDD8;
	Wed,  3 Sep 2025 11:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ioE/qN5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407A23002A6
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900099; cv=none; b=AJOpZEJUU6a3nPzjLajmnUe2P5EE/ojRcarUrtfIN8YjBmEABKoq3YMsUHMRbdi9+sNURP/MU/H75ia9xGpD2Sbswr+VYbFU2kTIIPpf4ppjt6lpl5av7VJ3RsQtlFeiQtOTpAQHkBUVxFl2MWY7WUCXS3G35nEWC3S+2in5QXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900099; c=relaxed/simple;
	bh=OMmO2qusXp7Lt8NQ08hSTCdRjFkU8mgyUlODCMZLmPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RWRyARnpExBTL23uWoCnqcanGIkXnJWcpD5xt02b4XaXrsBjwVcozyShF9O4cCFKAUYY0isczL33nzzFLdenUH4/Z07HgHQssEFVZH/4Q+n/vh4ULlj8emj486Dn30gmU3G1yaeUmNePLLEf814T+D9ImjpyBbMCQv8WZEs5qNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ioE/qN5g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEqA2013914
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:48:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HYUvyVFhjknE/WVt1KWvLE4zOZML2zuiKhdUsPmDp6A=; b=ioE/qN5g1eg8D7Xu
	7S12Iim6Si5kXMKfZovyxl9tgsw4l2Kq3HRCo7O13zZawjWASNSH1yNIK2ddOI7+
	ANrXcdHFxNPIW6i1wQqVRLh7oFC/yX+ZXogM47/aV5tAuoReNk52Ab8NvSj1giHf
	wp7RyU+nwQLJQCyNwVIvIMt0RM6vLboqJ7NnOW+Pq+eGPZDOCQ1IOys5DVZnnT5Z
	ye6cnolLNt74xSakF+EAeCipbkPmBHiaJ6d8efeLffXv+fUFLAKz05C6isKOi8BC
	0Za3/gi3JhdjY3ogEQDfQlmC4YXFxuMzpXj5iXEvAaeYo0qcaKweoBc9XVS2umeK
	vWYH6Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy7cub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:48:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7724ff1200eso2949700b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900096; x=1757504896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYUvyVFhjknE/WVt1KWvLE4zOZML2zuiKhdUsPmDp6A=;
        b=FlaHcm/iGCOVhfv4cKhOy0mG5Y5+gBBLcz28xO15q8OSJTgqUO+KSd6ml5C+oE1xIU
         LMyTZjhY5vab0bluPNGkd9McyDK4pjiu8wQeVe+hcHncuV+Rc/WbtGzNXAxY96jL6mqO
         N0DYt9tRCq8Eu0GsPh1OwnXHZ/e9oozvk1jbKj/EzRI4CBAjaug29qCyG0awdQoby3z3
         zxgwOANRSUp7C3/LwvFzMyTowa+USD7iE4UwPssqejMH1z/ojYBxL0pF/8O4Fpa3adHh
         fQ3xfpVDiWCypdQa0eJUACMqnCnXp6FsNpG1W9Um8zI05wS9Cr8+wv7fZ9mpsX5IqGLz
         Tm/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4PyoZtut6f9UH8UjpEujgW7o3vKMYD7gxT3uRqUC2MhO4HtePYI+rVU80yD/TMPspsaMH24g9Frc1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr9swV8AeGFmMGY265nsEAXjglBYru/1JfMWtVkOzbSbAJ0cvr
	2TTFHFTZDTnIt4mt56QKus3b8uWymgsZU5uY+cJjD2qQSxNY4belsKvHVD1zOhzp+tGfmeRAZGb
	mfDBh/vg9DOGylbso3fiMoqhwhuaIX6TcDNeBCOtfty4nU0IQ1TOwNri6jo/NbxA2
X-Gm-Gg: ASbGncsYvJCdRL1yPpKynbFoJADZUqHPPHajpzk6dNCB6wEJ7hNlGGiKGytaZLMUCQO
	lvSsbl8WKFQ4jyv11Kmb9PugXifepxi2nMZchvmrNlA4iKkvvAHLY6mu/2SV3pVPQUo7HIE6EpJ
	HqYxkYIHdAIxfKXdiLiyfGDbqFP08nmcP0iFo8kUZ/QA4ULQTh1dw+PJZg1k8Ngf9bJDF44BllP
	haqiIw0yRGFIlKlI1rXJAYOu6++2VU3fME7IH2FnVnEQZIl1VwVu2XT6yWT5YrTdzj0MT+RZfs/
	1id/RSmoJMMiHvHopJqmnjCqM8TQGtfKZmrxI5bA/JFUqs30EYKezYIWT+bv3+1gOMdW
X-Received: by 2002:a05:6a20:a10d:b0:248:86a1:a25f with SMTP id adf61e73a8af0-24886a1a5f2mr2868630637.24.1756900096003;
        Wed, 03 Sep 2025 04:48:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVF0YOtRnZh6lzIY4bOOxsucOqwE7IEqnFh1IXBtFdue3ljMah6LLr0S8VJ+jEOBFs+TNvxA==
X-Received: by 2002:a05:6a20:a10d:b0:248:86a1:a25f with SMTP id adf61e73a8af0-24886a1a5f2mr2868592637.24.1756900095515;
        Wed, 03 Sep 2025 04:48:15 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:48:15 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:10 +0530
Subject: [PATCH v2 09/13] arm64: dts: qcom: lemans-evk: Enable first USB
 controller in device mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-9-bfa381bf8ba2@oss.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=2112;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=wbi0daESjbNaIOArppgBBTQqid9X23CoN+c1pFU2aSo=;
 b=oRJD5bisNnpttQ3ShOqU4O6Fi5tTtdoR8thW7WDzmP550KyX6RXVCczUsU48CPWFCTuk14V9X
 NXYk6OUNXoMCcaUpcreCPEpn4SKKXbJz6dUaLyuOh9QtmZOKBj7JsLb
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b82b01 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Nk2SLWWF8xhsZ517u1EA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: ypro4UeYl8xEa5iJbOilDlC-0_-L7G-v
X-Proofpoint-ORIG-GUID: ypro4UeYl8xEa5iJbOilDlC-0_-L7G-v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX5iNs0AC76iKM
 uzWYbJfwNTRp6aeeuKWnWV3unWPcxmKuUXh/h0Kin7m2A6MXooxzSDPrsDjlMKWiJaCQEsR4YVJ
 A8TAjsEg7mq45nIn2F2W0dNVzwgdHOvXYcoBpbeGrlGGp6BSXn7TexJwaJNnYw1zZ7Mvx3I9Qw8
 K6Eg++KkEpbUStz6UW7n3YD3QyiVBqtkFj1rtIq3k74Sg/ooAQmlEGpGGYOPU2l+hglQElbpYc7
 yvo90VGWQNxa006qvoxOM5/iSuJ4UuW6mDAAM0rq0+4yje/6jPKGDWY8za6QQsa7eCUASh4qsVG
 A+q+w7rcsVQhnconmJzqJcmrScP7AIiN+snROMUGUJ1AoylHoQ9SyVrs1g5PuOQkCvmQuBnmScX
 xU4XH1hh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Enable the first USB controller in device mode on the Lemans EVK
board and configure the associated LDO regulators to power
the PHYs accordingly.

The USB port is a Type-C port controlled by HD3SS3320 port controller.
The role switch notifications would need to be routed to glue driver by
adding an appropriate usb-c-connector node in DT. However in the design,
the vbus supply that is to be provided to connected peripherals when
port is configured as an DFP, is controlled by a GPIO.

There is also one ID line going from Port controller chip to GPIO-50 of
the SoC. As per the datasheet of HD3SS3320:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID
pin low. This is done to enforce Type-C requirement that VBUS must be
at VSafe0V before re-enabling VBUS."

The current HD3SS3220 driver doesn't have this functionality present. So,
putting the first USB controller in device mode for now. Once the vbus
control based on ID pin is implemented in hd3ss3220.c, the
usb-c-connector will be implemented and dr mode would be made OTG.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index d85686d55994..b67b909fb97f 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -538,6 +538,29 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_0 {
+	status = "okay";
+};
+
+&usb_0_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_0_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };

-- 
2.51.0


