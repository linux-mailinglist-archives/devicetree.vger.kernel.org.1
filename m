Return-Path: <devicetree+bounces-217912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C95DAB59B57
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:05:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3868B3B9785
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E040362991;
	Tue, 16 Sep 2025 15:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DN38b5LB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7917C35FC15
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034826; cv=none; b=XT1+8HgsWCxHobdWkxSoHBvxkCXGurCEULm8aOtB6DtaOlA5LyJA5ae4mf5YVoEY9TZOPBwLx6FJPfqTeAz7qDP/9GoYnhDremL2V9j6YtqJbCBIomG5n0iTq7fanx4VfhbZCzsF8LCVsD9u0Oj5KY0FWXzwqvPYAWFcRthtE30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034826; c=relaxed/simple;
	bh=ikk8NmlgHBIXKKi2HrIINEqMiUPYOyvHsGGRdiTviLk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aLttYO0AJH5fdXQy0mJ/8W6O+FC1KN0INEikyxTUPULi3HC8Ujlr8yDuTyJBg2RY8dyo2DPsj6fRlkU0sV4oWM1xRkEnvXIuOTz4KitF+c8eDtm98YjCFErTg8py4aFQ5HeVCnxfTaD4p9WX5D8jDdUgR0T8/b1ivssm80H9Hqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DN38b5LB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAKFq3001544
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j7JNGdMUUlGm7BId+kkego/0ROcY2UfBRQYkHvt5mRI=; b=DN38b5LB59vsrch8
	yW9SRCRjuqsmJMZ4JJccdMU3TIafurLI14NdqCXpeqfx+626iP8oRsfgeyY9BFaM
	LSyxoOO/It8amU6a6xVeKZMKHd7UlTBnF/MekkJ+ZKusyDGYbYdgjeGdHGO5ZZOw
	ocvh+Xg7rb3+2bgtSkSWJ4+/7YUhCRUGCUZexbmqMZsvg2NnG7HlxoeAbC4EfQMB
	RmnJZLWdOY+qYrtaJLeq1yKKEOtFW2M5w8wccqYoqZMQ/jNNg2B+C1ioBFg00bG+
	buf3Pi3Sj8Oqf07WP6DmtjjWTZbjPhf3sAD08PfN21vnJtYHubQlgFlIWruM77j0
	eAtJgQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqq087y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:22 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581ce13aso113318645ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034821; x=1758639621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7JNGdMUUlGm7BId+kkego/0ROcY2UfBRQYkHvt5mRI=;
        b=BAu/cMLQxZAD0P/HcsIfolqpcsNYxofhmoE2AZeMDl/iS6wk6lUTh+CE3hVXXmk1/+
         1kkYm8M038KKtpfiT/bY+SL9opdeA3zI7gNXAj0+sqgQzPDb840aSyOecwDx14aiQurF
         TlPYCLcFfls3lWhIoXExgDaV9AfLfsljBGMWkFx2zFaRnkaEKZuGRd5ed8IYc5vkpOEX
         cqnNIRMUJeekFxRLMHLsPrEfNYkcMu8jdZsqTb0a7wc8jGIDPKkKqwBdC3rvLVxpHBLQ
         /ir77YOHsFy/xsUPr35uQLIADzh5HAw0qBVV4ZJ2hOzvq7pxAFvxIKrBWnRPIpUZiTkg
         Ekiw==
X-Forwarded-Encrypted: i=1; AJvYcCX5gytk/8m1dr+OCOWc8uwgNZZvPbvhd4nkQ6K9gwLuPr48/mm6414IOJ9dYygWKMnz657K95V6QFuA@vger.kernel.org
X-Gm-Message-State: AOJu0YwR20leRdku7DoOmHNRKXBlG9W4JiMT22W+c1VYImgbPo+QZvo+
	/tAkbD6ynED46TAhavT2TU9ZtBHJQNAO6fWUHFZb1QEOe/5xTA6IrHtB7vDacXTyD0ReXT7NwMd
	CsE1WYTmQCo4FBtmTibdnoeCW7JyzJVQDouDQ4wKw1eCB0Ewg/9hnEuks210i0xTS
X-Gm-Gg: ASbGncuYrvQ8IP96a7nqix5zePfzInJ7jyJViNCuxnxslq1gev2+wGnTJR0cb0WCdD3
	WlYI1JJefKGpuGBVe42djRk/aYzJVeli83n3xBtQJImbjx9x/UDHuns5BtJeRO6iYU1B5Lz9Is/
	VzIl6qZ1ZoTuCwJjeLHXedQu8HFZCoKrd24GP1JFWgZ1U6y/1THSgCqY6JmsH0ywD8raWdXKHp4
	ZMUziCY7fvcEFEqYqQJUvsW3QrdeWE26bbLv6bmQz53xr4rALOhl89xHFCxn0U1MwVT4jDoRAs1
	eXsY7757e1//UYs4Jt+SD/9jIQ8Bs4sqV0iQq756rHCiyvs01pGukTIAhRvNWCyqMV2T
X-Received: by 2002:a17:903:240d:b0:267:ba92:4d3a with SMTP id d9443c01a7336-267ba924f53mr55745405ad.6.1758034821112;
        Tue, 16 Sep 2025 08:00:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGBDIuuLfelQ55BgQOLi2nD2Rf+K0RonFrq6Y7HNrYSLaZsL5oFG0PeXSJdq0iobECYasATg==
X-Received: by 2002:a17:903:240d:b0:267:ba92:4d3a with SMTP id d9443c01a7336-267ba924f53mr55744005ad.6.1758034820166;
        Tue, 16 Sep 2025 08:00:20 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.08.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:00:19 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:30 +0530
Subject: [PATCH v6 08/10] arm64: dts: qcom: lemans-evk: Enable first USB
 controller in device mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-8-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=2240;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=tOp9jkhdAQpAHObbF4iI3LiXECWJrKR9z6goSfT05ew=;
 b=GBvFiMrig98tMfGxvKPpETIVhXCcCiuSkAw30ZBPtONVrXE/Ul3vF771BP2wUiB9+VR3+VZjM
 JZIEiRjSPfzA8tc7Bymh6X/BwzlCc3vtGohXLRLF7ig9N5bq+dHbnf8
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: XuwVMrVELZitnVKtllLngH6lPM01978u
X-Proofpoint-ORIG-GUID: XuwVMrVELZitnVKtllLngH6lPM01978u
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c97b86 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Nk2SLWWF8xhsZ517u1EA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfXydVM1NS6dRzT
 lWZGwWvENzEFL4Mu0uTrXU8d7iP7hq4WC7NbghhMSyZSVEq7XOoueJX7cVU9gJyDdiUHyzLyBt/
 QjNPQ/1pYQS7xiseEpRD8LHA64CuMtOPkiE5HkRCxd8Rkgkx33o+mmHBP2U0/qI/9i53QnXSLUG
 vbBSmV+OdQNFZV7tOBfLMJ1/efIQAFb00DBJlMqQRL8aUD5iwdx1J4cbeaPIgAcC3yjjHk0oROX
 4+CEz7E4iNGKiSG4LzUomoGzgshgfDdu6ZSgnMS7oKtuGplRlgQmLzwt9BFyjsiusNNoTRUSWdV
 zhzNsqExk+4i0mgecBTZIc97I3A6PCA4KgvGPUt0xCwcy1ZM1syJ1GPo30qCzYQIxIJqDU5sYwW
 lp8W0p8Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

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
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 5e720074d48f..3a0376f399e0 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -590,6 +590,29 @@ &ufs_mem_phy {
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


