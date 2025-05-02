Return-Path: <devicetree+bounces-173000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CF0AA733A
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAF0298280E
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D5F255E37;
	Fri,  2 May 2025 13:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FnXJzSlf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F30255251
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191901; cv=none; b=R++1G870glJyrrYi+V5DkapPagnA6DkW2eWm4SEujYp6GH+Z5l1XX0dnEvGEoPCITNdFmIiUg1pf8HnpBnjyZAwZBNHTLVgyoQDF33V/gN2YGyfh09XGSuCjkx9w9GYxNXWzr6Abdr+/D5nckzA6yBQnCaosl6A8q9FtllHmAos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191901; c=relaxed/simple;
	bh=QSvt6ky/pJ8+VntHnwTRnuK5ob78/so6X2MfYNDfB8g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=knsTHbaeMO72bYJ4oAlPUjObt9p4H6L2MSuRGrZy1g/YeXBGHquwUpvIkIKxDUuO+VcBPTcRXSUeCtOHo+re5SM/pliGiMLajQw9VIFdxyTYRztotLJu8RMDyaXehU7o7+Ohq0t5yU8mCDXWm52kdJwlkFiaDEPoYjNE2uP2w5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FnXJzSlf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421MxXw015843
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:18:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L6s4iQJFnCYwc8Njw/Q7Od3/r3Tk3o0yQdVDAkClWD0=; b=FnXJzSlfLY34wiIg
	dQGkI/aUCoZ4pYufIcjFEsEM+NhNNkZKfhkRI6Z0YClsupcsRKUAwiAgbF7d1V1r
	HcmTO77h/IGBz2BMChQzt1ixMFGz+QWUzjOxbgsNRLWM7BceLyPezxF/m9rtvmLG
	MglEZRJ99jvCYTdjoBqDcHsI+1nq2syzstgEAxRAUB0ALn5K92pIQV7R8tVVDIHU
	Psd7f8PT8AV/hw26LgYhooBfGHU/Sfli0IPVxRWQdcZaI6CEZd9y/xhmzP6eU2qC
	Xv6rRSKHmeZOj5I/1gCa9M1VG+N/Ino1F4MgKp46spdS9Gzi1qCyG6BxNRmxBn9R
	oBcaXw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u40b7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:18:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7391d68617cso3051771b3a.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:18:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746191897; x=1746796697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L6s4iQJFnCYwc8Njw/Q7Od3/r3Tk3o0yQdVDAkClWD0=;
        b=fOl10aYpCZK/jpSNB4cK9JdqAvxFj6oIDCNmJTAA13vhCOlIKcEJaE+tqOYZ7yfBij
         nMVaqLPKdbFWI3nfE5M2gt7nmPqyqNPbpGIcNVx+S6TYayoegttTq5XJ9k3p/dN08ZV/
         GbW9WVsYIS6tbx/0JIBSm95h9tdcPrvnLFULGcp85dIIjoMfmnbQJP5QW7lJ8lQl8V6J
         HYUujOGFdkCzmJhQw7xzo0Ni0O5LMfiTQDJ1D8yaRgGdbDHAy7JCSrP+6QRQSmh7PxfM
         rfkXOo+UTyUYm+XtGnA0oydlTHx+a3gyHMx7+RXS0F+/pnOo0nH1M7T5aMTyQfAporGG
         63fQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/BPPQQCUlznDeA2FhCdS6gMaVNO2VEO2Yc20yX9zeURzC06O8J4xcDXesfYPSorRzF64ndvY/dFdB@vger.kernel.org
X-Gm-Message-State: AOJu0YzglC8siZHRSuKXNYtbzy+m82jNNnNA7aHYOMTiRtM2ncRZJ328
	EsH5aHFehXWE8HhxY+cOGLCaZwBgaawt63I5a9QIysxOlaZabYFitNMpj0l6HXjR0Og5myhLdY7
	PSA9dsPpvkj7z3hHlW5v22JLV0TSXcQoQ0y+3OawUJY3sJr2/OqM8/ia2l8XW
X-Gm-Gg: ASbGnctagSCqKLwVzsqupfj+wv7Y9NLOgy/xWNbSs/Q4XjYKufGKp/zfTe1Zt8iw3UA
	3cD/bBYtSPNx4ko6NtTRt0cq8L491u4sG91C6yXWNNbW45eUpkbIwRp3SCpPh+Zp8FRD1dSDlTv
	r+lXGq7j+//Zq6HvUyj6+Gi2pOe1T85p51ZnZfMOyKVPlWi7zDy+rwQVuhAg44jpM0EIDni/L5m
	BIWp6hoDmOq9xWbXozslimoeLhRCsNnfwiqA6R83wzLoZXKoFyIThFpq1wWY5hXPOwJRECPbNLO
	qdi6meMgZHCdve+uy2j6hz72viW20ZRi8P1FSrqkd/uMactFmZjRj0SWNdPbdBx5U4wSpQ41zzn
	hWxGFEZOqtxCorIzOiYmy6tkQIWqWY+el98y2wSIb9fMKhl4=
X-Received: by 2002:a05:6a21:3a4a:b0:20a:942:47e9 with SMTP id adf61e73a8af0-20ccbf32889mr4746732637.6.1746191897069;
        Fri, 02 May 2025 06:18:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHykiWgu6P5RWv+jpbrr8/w1EyzW13LNrNIfl/vAhCwU7yGp6LARSRGjcAThyA0Tgaw5qEwyQ==
X-Received: by 2002:a05:6a21:3a4a:b0:20a:942:47e9 with SMTP id adf61e73a8af0-20ccbf32889mr4746681637.6.1746191896626;
        Fri, 02 May 2025 06:18:16 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbb939sm1525886b3a.61.2025.05.02.06.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:18:15 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 02 May 2025 18:47:50 +0530
Subject: [PATCH v3 2/4] arm64: dts: qcom: ipq5424: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wdt_reset_reason-v3-2-b2dc7ace38ca@oss.qualcomm.com>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
In-Reply-To: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746191883; l=1449;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=QSvt6ky/pJ8+VntHnwTRnuK5ob78/so6X2MfYNDfB8g=;
 b=d3E799PB6j36wxzktWjKR4doHuuJ6ScVx0OfTufOffofpFC5S7yVcCULFdN6gsES1++Dc9cHO
 1XP9nlVvbcEB74cREnucq8d8i1rxwvoZDAJdtjIbt2gKxvMNw0I8rpU
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=Bv6dwZX5 c=1 sm=1 tr=0 ts=6814c61a cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=QDJorwyCwNfNgOuVDpwA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: IaqXCL8BgQdugl477HIPnY_8PHUgAAN_
X-Proofpoint-ORIG-GUID: IaqXCL8BgQdugl477HIPnY_8PHUgAAN_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwNSBTYWx0ZWRfX/stTC8Hyz6cY 0BNQLC0SdAUqOUy+HcvpkXtjKqcBQCXexa461xyBn8y/eY99/nazLvHMcBc8WjY49pDEk4rFWPB +x4sb9o468XyqqlX46dKZCEcBj9EFRTVZfo/m6R8gMmyVbyWU3DJINsJpK78a8IvOo7uoX75Ofn
 8RqGekV92OIvAa69b3zFIzrhJFCJkFdvl+aGM5g3t1+g9G/zI5plbZkurbEz03cn2xvVCfO7xeD wx7UVWLxe3ybZe05EgbXHrxeLOUEOfd1KOE5ZYPVPI4lcNSwqhE8jHVFAlO/PGrJmAXdypu9WR7 /emehM0vKtcAPwOwG5hp39nfQ2uYzvmKr8zHO4YsJMvHLQJ3tqM7W4jrJ3zC9gXktHmH8P0xXkS
 rtJi+Z6lVXXsmrNtDPf4BCElYJj1bCGVO8Oi1grl7IzYEX7HvLGhUV35j/v48vDoQgaZA08s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 mlxlogscore=900 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020105

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 112KB but only initial 4KB is
accessible by all masters in the SoC.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
	- Picked up the R-b tag
Changes in v2:
	- Describe the entire IMEM region in the node
	- Explicitly call out that initial 4K only accessible by all
	  masters in the commit message
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5d6ed2172b1bb0a57c593f121f387ec917f42419..4f18ea79502738c2b9cb4b13e8eb4ac4ddd89adf 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -486,6 +486,15 @@ ssphy_0: phy@7d000 {
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


