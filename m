Return-Path: <devicetree+bounces-164221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFE3A7F8A7
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38524189E5D8
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 08:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F64264FA2;
	Tue,  8 Apr 2025 08:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pMh5kgzk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1102673A9
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 08:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102240; cv=none; b=fV2g/aegslZHb9XC4PSejD+SsTUSHyDwJBC5+9HM/PEf6jguNaZQDptinwVT0p02EeQW/4pZ7OoG0rOe7RFrJCtRqfrYsRE7UhyABSKeib/Z/f0rAjoL8YzpC/uQKBEI/bakh/X7k8kohagAKY0bAzyculorC80/KHR2SmsGNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102240; c=relaxed/simple;
	bh=M8s7BxCEMIKIVssuhwE1Qzjds3ely+Ku4yT4Ok75T/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FHVhNwXJR+rC2IOLgcHzPjOVHdHnNdj+XX4v0ZR6RMkhA1uKIGPA80a5ZCEEVUNws5e0yDC0q0dwfRYRPgfx57PaUQacwmIDNysdCRJrMjo5lN2AVq3hbYnGhMP26TQ27892VSscLSEToTgStT4S0afRcFkfJTvMPg9DJx16V+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pMh5kgzk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5382GM1v020149
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 08:50:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	loRI/DG6BJeyA3QEAVzMFr8Q2pNYjDeHa+tYwjZmEhA=; b=pMh5kgzktKuV5Ks2
	2YBESMxwiyrnw4nR0xSN7RZfp6utSc5b9lkS44COySojAE41hoXMvPtFm3kammd8
	jY/B5gGQq4jdI0VsopqG+f5oW8hNX1Yvv+4nYfYAnVFPPKWxeskl8mw8N1Z3IYB9
	z+6OeppTyNUQ0hLYuOKcHCJKZ0Dl7b3x0XzRj3CR+Z+bGcv6G3x2c2N50d+HlJG9
	uCtnYnENRgColE+5eVtSNJ2n43yMhC1iUyIZ3qfIhAWG+MgDbf0NTxCS1BDtqalM
	/ct9qaTVicT0SP8d2HFrHbPfX3JlgKUmJ5AvAnPo/6vEpwhHXPmiDHBw0hULq3uv
	3XNd8Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2q40c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 08:50:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2ff82dd6de0so4055922a91.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 01:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744102224; x=1744707024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=loRI/DG6BJeyA3QEAVzMFr8Q2pNYjDeHa+tYwjZmEhA=;
        b=wd1oOEzSJmAZB9Dp4wFAs6NJxaMJSv5Eqv916zqQmRkr7x5grmxsJWZmEydNX6tTPB
         krihucHpFVfQJfCZGGLnXKOPt1IM7TFRF6CRfXa8kA/thdBVObsBs6OdF6ryCCTFeZHB
         /8/0FJZpCKZaspV774jL/nqVAjlt94LuKwjkXSLVgVhBzVl1F8pokS1vlUTHhlHlThwi
         UkBx9NVIl9BSS3JO3NHUH1zif+2E/p7VnOFiBGdrUe3IA+lxym/byULnbEbLsVMzf5fS
         LsQenJq5UFDxOCgvBCr2AubewYFLHf88/JH1mEyCgLfKX5GRBqV2vi5jYTGapi/q/GOe
         8bFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUllcCGhOHMX9Ya5qNSFpbn9GgCHfpO5gGBFvYgbldXkYIwtMnBQt0DAHxAEWJg+2fZlozjlOdrS5zI@vger.kernel.org
X-Gm-Message-State: AOJu0YynRupH4cL/cXZa8N//CjfeoX9zcpRIRC+wxS+zf5kKNqd6S5OK
	F0PnU+TAV6xiaXhdTIf4/9uj9WGXgHi+s+VNo7XKC4snhodtTgn0Yd6PsuFrcAwdG/PzR72q2Ro
	g2LY0pHWhonDRSgKliVDjiQlroO8nccfWFVDLBlCbd9MdkAlJS6CqEEjrz2M3
X-Gm-Gg: ASbGncvuFxa01r4mMotRoRdEfP1rDX4qroa8Om2h2d3NV6sTj4giQID2YQ7IsMBfFhk
	rtTDlNqjCjve29Ao5pjDopqTaoq1ZSVWIxLVHfoVA0b1kXNWhr1+5TRvWG/jN0KIpIA+kvpdv4R
	PtBZ5+jAKhfe3JuwA8kVyr2P//AWx5+iCBrGYfVk/w5NvhUTQeApiFqntB0Kl5+OK+8RaPcRAbj
	iYo7ANBTPcuaszpo1hGME4Ii1LThY2Bn9LcsjaTHNbyydtoi8SMNTlBTRJMsGBdo3aVHzmTKU8k
	gCobcNwp2c1w71K6QwFtplAWgJsg+Z6g0LXnyNgIAb7dlimS7fv6E4JilH9E6UXgTgG0RiKstQU
	COadBS6f1KiLtSspZNlJfjXTwFdEGCdwnKw0dBRKKyEaEti0vJoc=
X-Received: by 2002:a17:90b:254d:b0:305:2d27:7cb0 with SMTP id 98e67ed59e1d1-306a48a6878mr19952897a91.21.1744102224157;
        Tue, 08 Apr 2025 01:50:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOwLSckL+yWdaN2uT8q2dSYvVISiMLUMwmKOZP5A/vUS1nZ9ejcw1TqflVkrhpjEqV/veqig==
X-Received: by 2002:a17:90b:254d:b0:305:2d27:7cb0 with SMTP id 98e67ed59e1d1-306a48a6878mr19952879a91.21.1744102223831;
        Tue, 08 Apr 2025 01:50:23 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3057cb5a823sm10480846a91.34.2025.04.08.01.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 01:50:23 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 08 Apr 2025 14:19:56 +0530
Subject: [PATCH RFC 6/6] arm64: dts: qcom: ipq5424: add node for the
 restart reason information
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-wdt_reset_reason-v1-6-e6ec30c2c926@oss.qualcomm.com>
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
In-Reply-To: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744102197; l=873;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=M8s7BxCEMIKIVssuhwE1Qzjds3ely+Ku4yT4Ok75T/I=;
 b=f8fhhU7k1xmVdNeYHDyzwFQAKC3YeDSuh8ItfvAVxu80upvicUEB4pbPW2s1FggobjsQtzrWV
 oe9GPtl/D1DBBF6a4pqG7f6XHIFt3k2MVzMl9mR1RHAp2R291G5zKfq
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: eA24-yaOuzkKgMgbHphE0tyasEIjGQh4
X-Proofpoint-GUID: eA24-yaOuzkKgMgbHphE0tyasEIjGQh4
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f4e35d cx=c_pps a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=-3m3cBowUQCSrRBqnYEA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_03,2025-04-07_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=836 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080063

Add a child node to the IMEM region to capture the system restart reason
in Qualcomm IPQ SoCs. This information is populated by the WDT driver via
bootstatus sysfs.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index a772736f314f46d11c473160c522af4edeb900b7..d399ae506748b22c1dc653d357c6fd071dd67f04 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -493,6 +493,11 @@ sram@8600000 {
 
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			restart-reason@7b0 {
+				compatible = "qcom,restart-reason-info";
+				reg = <0x7b0 0x4>;
+			};
 		};
 
 		usb3: usb3@8a00000 {

-- 
2.34.1


