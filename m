Return-Path: <devicetree+bounces-167658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62657A8B3E5
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3CBF5A315A
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE66A233D93;
	Wed, 16 Apr 2025 08:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V1k+7CsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C94122D7A7
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792186; cv=none; b=WkV79aDT5mzKEWUqGDQCw0hIU0GKMJBt2JS5hOqOqrsfIezs/PRMtGYvVa+5AwHZ2BecuGPhQ4ITynyQ0U72yhBDp8SCbSCPZhtiYJUvakjlWIdHOiwNdd5jLUpiAGZPW1DAw1N1kzTme6qNgfW5GpN834OK57SWffWPqYWtQYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792186; c=relaxed/simple;
	bh=Bdkn2b6ZpeMHbQhVahzonRMdWfvL/rZtW6VH4bwyHSs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mwraRuG97al1G5YPHop2K3KeZQyU+rxb+p9qWpTYhi4bRMWiycXqZVcnwc+U+NlST5CD5Amz0OwmvL9LP3/YlMt46DUgr6tg/6pnSqvREu1+On1TtHOK0RbEQurXZHoS6RMcUvQI326IyHU4IYqcEMveIZsTbI1kRv+xH/Svqqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V1k+7CsN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JO9B022025
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cH8mZ0MUw4+nzZg4NOXeMV2RqmXxipr0ZYOxyNbOdl0=; b=V1k+7CsNWrsjqo0W
	ZX2xMKSIq0/FmA0rq5DXdmWYzMn4t6RAhPl41v7l5CC4VpHQ8/I3RCYvyIxH+tEV
	/Znnw21bOet0hj5t36rzSWKUCIQybm9qOg4kMJrr0b7zVbAk1EbiV4pCwev/q+l+
	8XCZCDEUEasYdzQLXerME5+WgKTWMpiRKsm+v1n+lP0x9gXX9/uf1eChqWpRKUtc
	7VfYl00pQK0oHJIOR6/B1xaAXJHVZ0uzjHwI/weYJCtAHWDb6SaBtPfP6EY6rPsM
	oeUWHhRcNc/miKbpxjYsa8aHZ1ENordLSh6aWX54mFXE8T1aTSnmvR6gAzaQp9Fo
	XGd8Vw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjjt0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:43 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2242ce15cc3so51367155ad.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792182; x=1745396982;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cH8mZ0MUw4+nzZg4NOXeMV2RqmXxipr0ZYOxyNbOdl0=;
        b=hQfkexSdVkn79uRyM9zSZi7xk0baNSap2DSZh+x3DhHUEJ0duN54atp/lMPnBw8Rn5
         bzAjVZXoNnwxj5OZLzQml4V+NT1oOwUDGgCylFRllZPLU+kpwm/WK3ls9+iemvd6bGSe
         wVeM0sLa1Wz0tzwDddQK7P8VWDPRE2/0yLM96ETuW8rN3+pml6mCbBgkHlXEe+4HzEc9
         yiuXQMiWm2m0aj/32PwLeIYdJC3Hmhf2/ybXOHM9Z+v1Md2lAUvEn3GPwDOo7/DKqDEj
         3hgt1o0jjIEtAo5lGFTuXU20akqVvxIEaFlKNatRX1Oq1QEJoywpTUUZmhCRgm/d71Z6
         JB9A==
X-Forwarded-Encrypted: i=1; AJvYcCWRjkICWppH9/b9z2KzrJtCdvwWC7JgAwSx6ivFIa7ei8jVz2CbHKEf3cSNSs9WEoRH/PrqJ+FbdNzx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwwbh4xuIEslCyOmHEH1vSn8mgDj8N1Oy3roT52fqI809ATJ2Q
	URTMsmNY6vCtrNiEmOPDH86O7ySSd2FySCUKCq1MlYxwSrBcWEO3lXyJf23D1LAgdVEqIgch6SU
	QZnCwXS3CerkxS6xobcLdyGEyNn8D7cwET0ytgN/FogNJGYdGD2bGJTLaORWW
X-Gm-Gg: ASbGncu2PboaO+Mef5hRjyDWBf7W+3LdhRnO83YoCFWiz3yXqM6j96FSt+SsPnzTLTd
	KBXkNOK43gx9crbswHn8Wl47Gmq+/XZOuH401Z4ZhK84FUm0JuKQqEAVz0GRTeKRYMHfEYII52b
	NqBU74pYUmCLJ8wabtPURKUKwLZppfZPYrGyVqq/s39Gkb3NyDmkhErPS2R1N1aiFyG8Lxq67bO
	29fStXQDCrWZbN0DF8r4MI4XRg0YJy453tEqnUo9ihVyNAJnk+md3iXzkvgZhq3Caww1A7UUGuS
	7CX2z4s1KLQSr1P4SPrLKG1M49uLrUUZbc0DQHND4RKYAZ/D7S33+1v+BXxAMwuIbigOWglIGST
	Ym3Ot4TsgofDIb4Q2kqxBS7vsVrUbFpFEg4+FrcNjUGEOicQ=
X-Received: by 2002:a17:903:22cd:b0:224:1001:6787 with SMTP id d9443c01a7336-22c358bc567mr14879225ad.4.1744792182592;
        Wed, 16 Apr 2025 01:29:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgrK4YU6GJo1s3qFd78AbTpbWE5QhvljMD/CkRuhrNJNzpD7F8dVjir5MH7OEUm9GXptaiRA==
X-Received: by 2002:a17:903:22cd:b0:224:1001:6787 with SMTP id d9443c01a7336-22c358bc567mr14878975ad.4.1744792182203;
        Wed, 16 Apr 2025 01:29:42 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:41 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:59:21 +0530
Subject: [PATCH v2 4/5] arm64: dts: qcom: ipq5424: drop the fallback WDT
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250416-wdt_reset_reason-v2-4-c65bba312914@oss.qualcomm.com>
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=958;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=Bdkn2b6ZpeMHbQhVahzonRMdWfvL/rZtW6VH4bwyHSs=;
 b=lL/ai6TMfCSkT5IJ6SVB/cYi7PikRg45B1UVsr68J3/l+BxYDyxNH+DPZRgN/8h1ZiRjuN0WP
 KEy9hi3ljaiDm0HkKsHWsx5sMXb+rDcXXdPVlnxlgInrqwukyzzS5co
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: 08qQ79Ptq-84slkM-bd0AdN0lypaRi4b
X-Proofpoint-ORIG-GUID: 08qQ79Ptq-84slkM-bd0AdN0lypaRi4b
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67ff6a78 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Xt55oPNL4kCmFbjnQFYA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=610 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

To retrieve the restart reason from IMEM, certain device specific data
to be used. To achieve that, drop the fallback compatible.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
	- New Patch
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 4f18ea79502738c2b9cb4b13e8eb4ac4ddd89adf..21252352b7328e4a1b7ba6ca7080f73722f097ad 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -376,7 +376,7 @@ intc: interrupt-controller@f200000 {
 		};
 
 		watchdog@f410000 {
-			compatible = "qcom,apss-wdt-ipq5424", "qcom,kpss-wdt";
+			compatible = "qcom,apss-wdt-ipq5424";
 			reg = <0 0x0f410000 0 0x1000>;
 			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&sleep_clk>;

-- 
2.34.1


