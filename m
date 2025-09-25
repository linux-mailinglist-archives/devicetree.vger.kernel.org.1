Return-Path: <devicetree+bounces-221160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF332B9D993
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F3F9189E649
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AF1D2EA47E;
	Thu, 25 Sep 2025 06:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hbD2kGQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952292EA15C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781761; cv=none; b=NAlusXTKgCaufNnpHMk1tvHJze/RiXM3gSO/b84qbUnF3hG8ZYw5oc5qyJOUz8ELuTP28HQx4lhW7fpMxEq2R/QQXuTngOXPM6D2HZ7AbchISTRe2/yY5Bj45y4VjBItHJAYOnI28+ZT2f2I0CPgEqMt4lZO5b3cpqmAJPDZSAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781761; c=relaxed/simple;
	bh=D3joMpRcaeR3gLLXU5PCwDBHjh3jgbSRLlNslB9/hYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=plxaQhnI01Wh8KTMk2ynFUvlAcIShjjOgVlp2cYRyM/OqWGD80/JU7wQxf/t+1Bzp8k94Fj/cn7QJob7kyYLOHl1/jcvYlZKytxB/dvVJQIK3W2Twf9e42YQSD3q1bQtPBImen5u5eN3KKAPAdTKt3dZY9S/hYbAy8MSY7jdxTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hbD2kGQ8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0HiYv021499
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4p33NgPxej04es67Nsx769+T5sIjjSqFb0zB/Kwm1+U=; b=hbD2kGQ8sZ566U9I
	78GIyL9K1zldxXPH9r7g1FBEDSSeHC2xpf4TxONeD8ndvBMEX3lll9SB/VQ2ff8a
	/bWHXqEYHuFj80FG4fjyh56Cf6uIVewR1zzb9Kaq4ChY0TiHR4N5R3uwFw2U2kQO
	aWDb4asp5ear/tE9tnponZl8MieKrRn/2Nki1L3tCDsRmzqHHwKz/sOKhuIAhvoq
	Y/3zRj2o8QZLJgPwqgoFZKS8k1Li3wjYXZlh0+Pw9B/kAECoYLjecOsi61A+PWkT
	c+o3Npx4g+axXBO3BdVlX+4+RMKZq0+YcAQbTwhKlzQo2/cHIszLzjts8m+oE9dE
	LzKVAg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaejyf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:18 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780fdbbdd20so630376b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781757; x=1759386557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4p33NgPxej04es67Nsx769+T5sIjjSqFb0zB/Kwm1+U=;
        b=CZ9TS+TgxbsC4TkFs9t7G0rOH4ufm5ebK9iIoVM7T9NrVFZ7Eh5p+0mYai/BwSZD0D
         rAGS9+IncEDjsxePQmog+EKMes1zVMlPBHXzPE0FlceUJpLkZGNfa4t5wFTOyPujebQc
         tE6O9EEBKUeODCJvWrICXq+DcF2NGyQrraIPMjaNu4S3gcdZBEurvb88984XP+kIEglm
         Ui1a+I3rswt1YOuaHcVALWyj1Fy6qS16uUQaCOZWEn4bHRRmUuDb87DvG/QWsCWmF8jL
         tVsk4BbU4mfj2dc6JT33YCpMT+5zC/GK7SL3j+Eha3QUEcs8bIbcFbuFHBHCZr4g7mCe
         +9wg==
X-Forwarded-Encrypted: i=1; AJvYcCWPulU2IJ2/3tLN7H0rJmamGInWeiVO2pz6ohd04Nx7Jap2p6phStvzi7oG1ixuTg5UbQBL39nhpCzi@vger.kernel.org
X-Gm-Message-State: AOJu0YwD/HyTKDgb7UpK62fswt4coTjvd7nx93U8u667W03dRwBNrVI1
	BN2sqbzjlGeHNk4oI+VmBsIvJM1K8HbC3rGAh9j/opqj7pKvqaDAEEnX7Trch6cfJweyCLCvFKa
	+6Wq6xqMJHoF/Fe3f6eyRxzS/wPfUlQei2fSUfstWV+h3IGL+5rQY7gnOIlHjxX4t
X-Gm-Gg: ASbGnctiGgQPK2Q4Vkb0AxsgnBg+EzJw+7+sA0OhIAiy+dcyBo1kMVpwgZkAmRwsM3L
	TgYbuZuvIlx3T3UkekNvwklamOQCnkh+ziS2QA7g0T0UoRPOQ1z1qdmCs7dQxwsa3KrYCjoLnzs
	FVI0S2yyI6dlVAE0AfPkUuOBLk048g8/Jickr/P1i00IiGV2FVSiUggplrBsbff+zuJZ+Ahh5S2
	/Rk2lemwtb2WofshzZddIXGzXtnolHQtyff+OR9C2qEGZyYJ1IRUXsWQT2JA0p20lomhAqfB/ly
	jMTDnJFRRrtBKLK95gtSDBg5kovvf2yslRQ18f8SALtKp4brdqjx6V0ceIjUYfhkXLgjmh0yhyd
	ph0oQf7/0tfyEc8Ai3kxJ48nH+UfKbzeDXwGyzSgr583vDaSj71sid55wB7Mw
X-Received: by 2002:a05:6a00:218d:b0:736:3ea8:4805 with SMTP id d2e1a72fcca58-780fcdf4844mr2785094b3a.7.1758781756882;
        Wed, 24 Sep 2025 23:29:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZfyzzBkh9JSOcHQ5l9IcBwNXFRuCu6kft/cJooGDvfC5mFxMmtPNbwwJuJwp/7HfaNUir+g==
X-Received: by 2002:a05:6a00:218d:b0:736:3ea8:4805 with SMTP id d2e1a72fcca58-780fcdf4844mr2785066b3a.7.1758781756446;
        Wed, 24 Sep 2025 23:29:16 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:16 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:12 +0530
Subject: [PATCH v2 06/24] arm64: dts: qcom: glymur: Enable pdp0 mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-6-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: BzzWc5qJRPYBwbllM5sIFgTa-GQ-iVhA
X-Proofpoint-ORIG-GUID: BzzWc5qJRPYBwbllM5sIFgTa-GQ-iVhA
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4e13e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=nkVSH_9X_D7H38LkyDMA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX6b7QJ2VC+eg7
 7s2FqAtCMAaIHADVOORcsx+PEcvYnn7LL8XCPIGLqM08wGSr5sQTYGxrJFavKQB5QWk6gy3z67V
 s/YEWupuDjDPYAIp1IicQrUnxa6EOkSwEZdVuGcwEK2vXW5pKnfMNfD9jjRGFd7eDBezze55ZWA
 3DW1jnjdPTh0UlGEd0HKCULJxJ+FHs1h4hXHnd7yQNfUXXDbfYZzKOViQi4q8okP9vNvTe03KiX
 IZ2iOpcXixoaRK93kCT0yEO+2UPNlWf2lMIBWwHv7U+7sQr67delEXFe9P2EW+RkrNWAgsUUGkq
 aoqc6iZDtW5xkroKJp+ta1TGWV4TDztHwtfZGr4hl5k2u/ucIuAoaANsjF6lJju5htaFDhQ43G3
 laXRciN5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Enable pdp0 mailbox node on Glymur SoCs.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 66a548400c720474cde8a8b82ee686be507a795f..ae013c64e096b7c90c0aa4cfc50f078a85518acb 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -4065,6 +4065,14 @@ watchdog@17600000 {
 			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 		};
 
+		pdp0_mbox: mailbox@17610000 {
+			compatible = "qcom,glymur-cpucp-mbox", "qcom,x1e80100-cpucp-mbox";
+			reg = <0 0x17610000 0 0x8000>, <0 0x19980000 0 0x8000>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+			qcom,rx-chans = <0x7>;
+		};
+
 		timer@17810000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0x0 0x17810000 0x0 0x1000>;

-- 
2.34.1


