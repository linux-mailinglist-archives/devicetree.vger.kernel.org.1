Return-Path: <devicetree+bounces-229705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB28BFAF1C
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F1BBC4F3B41
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACB4830FC25;
	Wed, 22 Oct 2025 08:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jZNZOoHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A941530EF7A
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761122474; cv=none; b=qXJPae0Jm+oYo5iLu9kNey5UBL7hcbovjY2uhM2bi52X+HEK07Bc4I7Mxc/O/t/7UF1R5GsbD8gXEqpIDoz37UVgA7vdzeVjzqlayH+R/4S7E52HTwApKaVCmQiFV/S1EbC1fWPzGMsTh6cXd7rTR+5kQ58qq/AK02mi3DEaBrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761122474; c=relaxed/simple;
	bh=9BgvtBVuYVEHbYuUn9h0z13dBPpwUOv1H4ZyhEvT1a4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tOXSP+Hwnor7VxDJwE15KEQAbtgIOqRV+IW/dN+6bBko4I1TmMVt87EknvHTBpsYhI/1T4OG8UDUsl70tKy77oaWrfhGwb2PTKbXJO0RJPRTGCmn3UpSnTwxEbYz1qUnatJ0Q3JcLVKGUtG+5rMOz3Z7G1evjESnCtrIhCBOGc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jZNZOoHj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2wcLo026856
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rcpnIe2kQH6
	oAlRh1j5LimFvmkLzzm7Un7fgpZ7DvBk=; b=jZNZOoHj498Zlp0ZrBGag+CChZY
	LbAVnLtR890JgX2sNrXyxnd7npCQ8xYDpWE7iBHCOkGdeUx5QEzVdHp4w9UHx28d
	GcwN33i7dJY8UnkFez55r4SSicapJbc4AKNkWyMVACaS7jUsYGV3IMRvb1KIzgXV
	UDrpb/heqlbbeI0T1rJAvO3s1c3VPwZZRzYYQtmSIHI/mIaKnO0LX2XTu4kvOEN3
	TtzRVet75XkK7irDyX/ZCxZ/Outhl0ZIhk4cLiSleDYGsXcPX/Eu8AutLHItldF7
	sPgJnHa9Vir5OtjB0Z6eqFbKUOqdffGbbvk7IV0cGRGxEJYTOGMqCqoGesA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j3wfu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:41:11 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33dadf7c5c0so908157a91.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 01:41:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761122470; x=1761727270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rcpnIe2kQH6oAlRh1j5LimFvmkLzzm7Un7fgpZ7DvBk=;
        b=XAhU+lYrIUSBLDiJyLZ8QTPdzRzl4ZLAtu6kinyjfy1KhldLpIJ3VpohkskQmYxV2u
         qjP1BglObanVXboqBEEOotkU4/5wN8EDeGGyKIRL4atZeu36yT5iz/Y8sJyb7+SZbeaC
         6he/yJJc6wt5mIvpRSwRbrCRadUwwDhSdnRqvrRlppDCiFeN/7JFllGbY/xhy2YEgwWJ
         mb3iLbaS5F+Hl+x/lwFZdAjoXuFZGlqaabDsJob2qwDZrLOVHWKPhXy2wHugv01Rr2T2
         krnwnGoJ/UYU+K8CVkXKyyo0nSKLHuh7s9wZjJ6jYOhFSbPa0S7as34vQtr7pRmhyOEv
         Mvbw==
X-Forwarded-Encrypted: i=1; AJvYcCVbkJ5f0Qk1NxwBpUT6Sn7CS0Gv0cgODDUcjcHkgsSWqLQDn609TBo42ToyFwLbM5CqXKNtYERgpEH3@vger.kernel.org
X-Gm-Message-State: AOJu0YxAT8Yo6p2yAYDljEnJm++EvfaX4HV3pqtS5EvJBFiuTeNaA+2a
	c11yxOfbzgJYk0jaA7fO8Eu0VqhZcbgMSNXx41dAg1iVIkeK+ungbgUch4RaKDu9SFGTCKV0J+C
	eOYx3o+N9Q4EbilZ6cSbCBkIEJ0Q+bJ5Gyf2UrxHZ/dC+i2IgUsemIfY+u57e0RF8
X-Gm-Gg: ASbGncvbAQWvAv4uspqrr8VWBde++Bqzr/8EJdIU/ObkLsj2PR18Hi3xNogs+mLNEqx
	2qQg6VTwgG/zmWUjT/BHJgf7ymCh7KrYrxjpXY0OT8fmy/2yd2YdL+NJkesjKu0EfUcItiJRQAE
	bAgMZvkr/oVlKvKO/SlrNMvsVRcWZvBxZl/TePubpYFTJ8gDwc+W4yMxTPGMYAr1DLIlEuptuAK
	l+ztf6uMWSah4rZmtzMmRQJTAK56y/BmWQg/d9VgL1d6O4b3US/8g6cVMJgB03XCCbdUQ2ImWgr
	PEvVh7LRNjMe5DGqBXR4oNi6qrHojkwpS8tpKKb3YQU85AERprHwtgHQQpXEEwIzkXNCtgsDT5A
	wdbDr3fTCgOkB08oyWmU4xLCAHgA5dBrlBAVT
X-Received: by 2002:a17:90b:1f88:b0:32e:11cc:d17a with SMTP id 98e67ed59e1d1-33e905ddd23mr885291a91.4.1761122470316;
        Wed, 22 Oct 2025 01:41:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYgk7dPlHO1B8hexkjytvuREV5Mqakcse5L2rTllD23cI/RCXl9woZIjksBiokxdnCxS/O0w==
X-Received: by 2002:a17:90b:1f88:b0:32e:11cc:d17a with SMTP id 98e67ed59e1d1-33e905ddd23mr885264a91.4.1761122469843;
        Wed, 22 Oct 2025 01:41:09 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a25e9be9f3sm3740317b3a.71.2025.10.22.01.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 01:41:09 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v8 2/3] arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
Date: Wed, 22 Oct 2025 14:10:51 +0530
Message-Id: <20251022084052.218043-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com>
References: <20251022084052.218043-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX0eeJ0GqUP2lb
 O7NcgEQb3zdcT+flBP6DavETXCLtwSoAx90TkArocnLpdCOgZFQdU5khYutIF7Xwtu9LWcNuSD7
 TTRwn/MOp7FkxoJCWvENZECk/60+ZgOGIJrOR4Buq/PtiVe6bc9xVeZ0x0LzpzMNyZKRGJKVIX0
 OfNZeSZ1fgyi83SM2ty2oWfCKaDMQfASnxP2FfqOxbvQl8Osa7WhhQj/OhmEneSllxAoQfqpRWO
 axHqbyqnOMl8z0X80v4HjU9zNjExGgq+qkFxcKbm9MEzDwAHpZHQp6EoMcUSRS8RpFKwMFGWDNG
 Qv6/+EfnvpY4rOPgSJD2c8ijH66K9t6OYP/3BQ+pKaxZTPnijHG26BpHeFL3pHfdIqQ/far0MM6
 x0xEfhekdRpZUs1GTN5gHSM2F55e6w==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f898a7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=Tsvuh88POXG944tnl6EA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: XWHEvs7jo5hn3C0R4nPJ45EhciP35HC-
X-Proofpoint-ORIG-GUID: XWHEvs7jo5hn3C0R4nPJ45EhciP35HC-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Enable USB support on SM8750 MTP variants.  The current definition will
start the USB controller in peripheral mode by default until
dependencies are added, such as USB role detection.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
[Konrad: Suggestion to flatten DT]
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 3bbb53b7c71f..1b526d96fba8 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1200,3 +1200,25 @@ &ufs_mem_hc {
 
 	status = "okay";
 };
+
+&usb_1 {
+	dr_mode = "peripheral";
+
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l2d_0p88>;
+	vdda12-supply = <&vreg_l3g_1p2>;
+
+	phys = <&pmih0108_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3g_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p88>;
+
+	status = "okay";
+};
-- 
2.34.1


