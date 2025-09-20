Return-Path: <devicetree+bounces-219484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51954B8BE16
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44F031BC7B21
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB6C23956E;
	Sat, 20 Sep 2025 03:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JppcwkTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA71230274
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338483; cv=none; b=kSrrvw7JNjbMQY2HLxClRlgqmfMt/7N08cAroXmw7w+fZW0DeOMFR308aWYVaG3uei6NXmYrXCBzpM6SKNJ1TM7CTv5j3aIFzXDn04wKmMl+gmuHita0MCF3trjOpY2qtI2s8fLPZRITwdm9B/u5wh6h2wURB9xAarZvdoLFWY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338483; c=relaxed/simple;
	bh=dJA73O3dMi/pqX8EKZQSD9wv7GpWdJetJbicq4mFIDY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=luBl1i3a0bhVD5vyXv8F2caYesZgLOjxtjlLzpzR0o6UQcPtFqRJaARzJSbx/ATSHVST9SIRIAP1cumc7+6g/pDLdEcW4gfAuiI49nCgwoIoECJ6yEYMMkpPINrudbqdopGvFdfH4SUkYxlnNPvr8DPkp0GsbOPfJoZzkGR0Xbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JppcwkTG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FXmD000527
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GML8ureMAch
	wx8vpYthv/JvdPI2pl69vuBTqtCyVutE=; b=JppcwkTGoOok13dBZ2ghU/+mHIo
	XOxwUeiHHUSOJf2DQrdj9ftC1MzZzQ6pI9PiasPTlS9psFn9GZbmfKxYfbFp4Bi0
	ZABnsGHn6IGYtEQoImjBW2dpSAWNRO07nyYJPwUy26znHVunu2pWYb/4euPQHVmx
	dip5WkJ4gIwVzDpYYtITei76v+3nvZhC7TUAM1Y5WfXgOFT6ygjCAKyuUeALP1OO
	cjpPVl9FozRpSqNKujWlTSX/WprxkdcvsTwJoa6W9exQg9zQjNoLsNq9nd9aEbIt
	D+83Jgbp4d7A2Z5eZ9oYU5NxDeYXSoO1ZchIq6SxJKVeZJ7w8CjEf22xCPw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmng8mf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:19 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5529da7771so623278a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338478; x=1758943278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GML8ureMAchwx8vpYthv/JvdPI2pl69vuBTqtCyVutE=;
        b=mCzxryFwT51SBITWpv0z2cbSt0LebSKf6zM3Msea81zmos5V5y0F/KswGWS70VJwaV
         O8X+ciRZjZ4gcKoXK4iBVJoSQPGf7zndHMwgyDIy1x7e69ah02wAUXekeN3qKvp8AX3O
         JddnsIncHWTopJfCm/Gg+ju/KpRzo+Dm/X+wjHreYeYLO7A3EqRzQ/2TFj8c0HDsmaqw
         SxqHyX+0elZSL/tkXH8E2jQqthIRWCSHxsxVkQTy5L1+F5vjaLACaiDh0erAY0kZiZbO
         LjqfTqF6PwxquxYeyeTSGeiLrgZC8jplzLZXA55ZK6xWkKh3enaNyAFvmcwQ5c976pUw
         Qp+g==
X-Forwarded-Encrypted: i=1; AJvYcCWCUS6xl6tFkLQYDIZFoG1dCsMOQxQ11xGKrJixycw65iT3S8NZaMU9C6yxbhZFJe9Tv4ylrCJA5Dio@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0cqWtGjdrLBMHm94xi7R0yojKbOvbySdoSM9z1OusQnormeGw
	zToDCKBVLEXc1+3VZyKaj3ith4LKyAczVX9lyUvKb+A8WjI/eK3715bwcaL3mimg+3B6iEphKpj
	LKip00AopwGeP0prokxaHBGoC4g5iyDBvLJbmM9B1mFwB/AuBDkqQAQ7eRF+tKc8D
X-Gm-Gg: ASbGncvykZ5mNJ2zKY9g7Tejs7+LhKb2lECuQ2b2cRsVKJPbFD4kvsdn+lPcbYiHr2N
	tHzuRwfTOIS/SOP6NqmRSv6byqC2VmAwMjV/RGRrHgqZU2I3HPbA/mHkm6PAQwGBC4u2IiR/Qnk
	9V/dISLqvqQG654mC/ngO5aCd9iL0DkoGlRBxhb/64q2Mb4kb4MgCGkQK0c3OqOSJBKGqVhX20M
	sKWJfdqx2/3ipv4zo+x0HzRQDNMn5WfIjNV/GJvMbvYSPM+vv0/WF59920l0JlRsWdSJTERWmYo
	ymEtyfJkbpNDayMAMWMflTazddQQWTKQ5HmWxfE1i8dG+6YI5mPrVCt4WMaYUnUFXGPF5rWEQKC
	HXhrScP/qSsIp6Ob/
X-Received: by 2002:a05:6a20:5491:b0:243:78a:828c with SMTP id adf61e73a8af0-2927723466fmr8460150637.51.1758338478088;
        Fri, 19 Sep 2025 20:21:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGo3UQ3Zyf00PaJ6fvkX8fIq4kwna0eBd+Z2NMvErSf3djLCGdVAB0D7+Mb7C6OXe9h8e7FoA==
X-Received: by 2002:a05:6a20:5491:b0:243:78a:828c with SMTP id adf61e73a8af0-2927723466fmr8460121637.51.1758338477668;
        Fri, 19 Sep 2025 20:21:17 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:02 -0700
Message-Id: <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68ce1daf cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4j6cOweM1wKm_1e2C94A:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: r2LslzO10mwbiqk9QU01LyyIdKkfIIQh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX34gCkYLI4Aur
 x9Knt+FLpkzCMHWOuHqgWv9JtlayJh6hxlpOGj7yLtNDDLb/Y0lFVFmlWmVVzm/Dy9nwmcAolFt
 db9aG/5HOyCqNu4ShTraFSMbcvlKMo8dd35Ku9OEOYjOM9mYaZefwXq3n/9/KaiOAY2j5rdtds6
 eI0EeEBXnG9+w2wyViUn0Ve1Gg4ArECOFXIXXJS6K6iOVoEn/TPIgqRT+M+OI6MGF1aBhBdjynW
 fM8ktP5nz18KBflDZD4/wG7FCWu+KZ+W+F5VP1rJGRRr6vobqHsd/bW2SQ80+UDPr8dITc4Mltd
 4Xbk36dxw2TajTWimOKsOFXLQDdj4xCkZD9W56XlRT4mIAsw2BvKXhNuF9k8Mc7MpJwlhvMLbDZ
 hB2Wa6ip
X-Proofpoint-GUID: r2LslzO10mwbiqk9QU01LyyIdKkfIIQh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..b96b1ee80257 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,8 +56,6 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply

