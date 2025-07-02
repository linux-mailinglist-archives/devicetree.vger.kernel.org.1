Return-Path: <devicetree+bounces-191980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 201D3AF118A
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:19:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 770B2166F9D
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B94B125F994;
	Wed,  2 Jul 2025 10:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WyXLeDqb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F39825EF90
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451486; cv=none; b=HeLpErlPuVG7o+ZKnesFDeO3Tfc877UNIHNwCP3hUwVsrMktZPebuyb5LlYNV3rCQruBTM420PfNiXy8DLFnAHeLyaqFBZwMdtB09D/hXnnY6Nzez2Cnh/HO7nS7tULO4hSTbjPT8GdIVhI4C07SZCQ9zBOkh3pTw31ijNodke4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451486; c=relaxed/simple;
	bh=FTU0yQHbOLuAOsUybPfK1jxnzYQyX0J9vLxVroO1rKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LQ0C5wz9W7mPbFb/o0kWl0yffTP7kyiO0SPtPGOTZCBOZRjd7BD57xL/tVHsmafhdsL4fvk+rPs0ht+AWZ38Fp2QplOoFJDi36zYbmd8hHL2V9HvkAJiARQbWVxaJjC4wFjYiPdhdK/eyTfDpKPIztd/kSuZLZQLhdv78MtDBBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WyXLeDqb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5626dEgm000324
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:18:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KBX4mfIGHvj28TXKQttLCh8fGJ1egnOpU5n32v/oz6E=; b=WyXLeDqbVRsW5ie1
	EKS9+x4hgswz/noDVSiyINsC2/xJQczWtN6JVeQVJ938YXf/6jZWpM634ZlaJg7c
	JidpicbQdm11eWrJNqEgCozBxd7/iDybjjNS2dkpnKBYqGlMcpNmq3xlpX6flgg4
	WSxIssFEQeBGjLXquUO7hDxOJGCzp7xITJui/AcdgtKE/eTQJ+wOYd0ITHSN7qFw
	q6OF4EYoSiqO0nu6hqE9VPmTIL8+brU3fWW9gwVDtLoXpznWvGd5eGa82eELwWN2
	UzKOJ4VOZmlGC4Pehr/vVZHttZkSVzcNpgc8OAYdVshXLy2jX63gC4ezDaoTtu7n
	ZIHmXA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qmc5cq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:18:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74858256d38so4192748b3a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451483; x=1752056283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KBX4mfIGHvj28TXKQttLCh8fGJ1egnOpU5n32v/oz6E=;
        b=hEYxffu0hh6hWSs/czlqD1LHqzHNoCDGa+RVWhRV9rGWR0fGfjc8akrgmTA2I4fx8o
         34tZkalSTmX9v75UL2YINBoDsRAgUQmnLAO4LrUM4YAD3Xm79oh5JHx4ZQ98dyz7ha/o
         WbbEdBfkBSDAlVMeJRS9Cny2ey/zLsMzXLsxsAwNgvtESDjT4ua8JtDxaPfs4Be+mhkn
         1HQ5XQDPjRJsc4EVBtNxvizxoRyoablZAvvI0PHEFPISxO3I8JXqD9PAOU65iBtBtjgT
         8Ah9J5Af1Z27IU25/hTtb3Ijd3PeeyI2WfXpJqMEgpsCp4H6XMY0KH+bAoz7qLzCspP8
         zXtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUrEU9TaFN1765iwjdikPSmLl6+F+sRutYWRYwe4UdTDdNedCkyWsms3eYWe6cKHZ6iFfczmuJjwTR@vger.kernel.org
X-Gm-Message-State: AOJu0YxAdKQnGdJjhj5mBDfLuiwz6WJX1ahZY8DRCM5y2ShNoIW8YKSb
	+MV/2lg1AN0ZRvChgkxtRGFVJ8lribHC+i1Dcqe9D+66hQ5J/hnVRCvshja7kZkYsxRn6OfK+41
	+2pRNLBOqYfWUQX4BEzHQnKsBpMhA2BaHtz6CDbjs+egmogCabAqjWlsdPhSKSsbW
X-Gm-Gg: ASbGncuKv8GbcDTCTeD2erhlUs/5VIHV8bCi/3lddsXqqZj1Fwkga2DEfjD3l58s37/
	r57xigbC8Jnn9y0qUWnFEzDImOsC93S2zfD6fCnIN4nxM2hRtUXUxD/uykEOZk7cRZFE4HpEl/y
	gaXB+sFWI6tDSrOS7RW7U3n+US8LfiPhzzOTOG9UmbmboHV8qQxLaOFf0uJwF0U9ZYPyMDlrLdV
	bG4vtUdievoyque2Br2+9Z0cOwus5wZERhMdnzh6+wuS7fBEfWZ6fEGbfct9i+u9tYbEqN94qXf
	0m9cZaDZ3EhRSn6cWHLD6BV0KMMER00t7vhRg/IUYjsMUgpkjIAAlfV+7behRAbDPhZESf5SvvU
	2Fpqvp5IhIXThl/eIzFrXwhrsty2gZrynqoGlLJws0+tfph2sddXT26tfzg==
X-Received: by 2002:a05:6a00:848:b0:739:50c0:b3fe with SMTP id d2e1a72fcca58-74b50df8be3mr3504770b3a.8.1751451483003;
        Wed, 02 Jul 2025 03:18:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgRvV9sdTWMDvkgooI5Qo4vx1nVTA+9j+sC7mo45Nm7Wu2hM8dJNKd9XnCJHchrKqcKHSwlw==
X-Received: by 2002:a05:6a00:848:b0:739:50c0:b3fe with SMTP id d2e1a72fcca58-74b50df8be3mr3504729b3a.8.1751451482531;
        Wed, 02 Jul 2025 03:18:02 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:18:02 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 02 Jul 2025 15:47:38 +0530
Subject: [PATCH 6/7] arm64: dts: qcom: ipq5332: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250702-imem-v1-6-12d49b1ceff0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451460; l=1172;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=FTU0yQHbOLuAOsUybPfK1jxnzYQyX0J9vLxVroO1rKY=;
 b=oiktSHHzoBU9Jz+DIjgHNaoFblRRZCIxVOBJapx3t+n6re0F1Sw+qnR6aGkjYg3VRrqblJnSV
 j7AuECJ97CIAPF+ZLOzIe8GEJRl1k7W3E4vsefDQkURRFU4vTR73j+W
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=6865075c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 1U_BvU34SElFHCWmSnJpme4IeEjZ-NP_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfXyb3TimkFHI4j
 Dstwhn9OovhQeTbXxgviwJeXKvnFpLB3NEPp9FLqSlVtU7KHGhX7eac42muIs3U5b8mjo7oSKP/
 3gtsLymlhRhGJLQJZcMFk5e6DCZXA3Jq1q7dkIMtQhoTt3dtDZm/PAU4POjo/yoQ6wodXxGepGk
 9PnISgl5dv7bUaaZk5/Rl1tpsTNbFmCVxQ+VWl9lJTR4yuo635ZtlLjvBEOPSVgnAKXCIhZZuwa
 MUFnnz1LBc/1BAOdbI12o84rGw8jQi3uTnWGdEs3E3OkE009hl7idq8g4u1EX06g3UAVFvQUJ3+
 kKkwFBjq0P0zS+G3C7UyxjSkVHoGVcMhNXNbEt5QYAiltqrK6n20WUmXhGMjfuFoiBbepAYAfMP
 PIKENrNZoFeFq1sJL1bmbNVD5ybO5KI7pag+IB17y0ynHc8ZwVuAIHNySvwp7DkTY8PiTexD
X-Proofpoint-GUID: 1U_BvU34SElFHCWmSnJpme4IeEjZ-NP_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=741
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020083

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 80KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index bd28c490415ff61624f6ff0461d79e975f2c397f..6f54f6e758309932a35d7156f32ccdf09dd36ee0 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -423,6 +423,15 @@ blsp1_spi2: spi@78b7000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5332-imem", "syscon", "simple-mfd";
+			reg = <0x08600000 0x14000>;
+			ranges = <0 0x08600000 0x14000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb: usb@8af8800 {
 			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1


