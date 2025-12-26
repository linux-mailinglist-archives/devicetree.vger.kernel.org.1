Return-Path: <devicetree+bounces-249750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75771CDEB34
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 13:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 455A430057F1
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 12:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96B6280325;
	Fri, 26 Dec 2025 12:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmQo6Kxy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D+nub4le"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8C11CAA4
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 12:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766752399; cv=none; b=bzk11na3CU4QvqW6DTR1cQ0PqNoyU/KvGgRwBvoEBqpuIgfGeikI/zqXnb94Q1f9Oc4Rv9xqAKm3xCwYaETMxt5LRU3HF/iMGF+Ijh7UB/GFnoJ2R6JrcDRSvBa6mxtIaw/rckghCGZ4kQU5e/N/2tAXsO3DWdhAXqyccsCKVzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766752399; c=relaxed/simple;
	bh=BfXcXEGjOp5PexTkR2J4p+xf5jzu6P/9zQKbeX/afhE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JVNGxhfcf7SU6zCf0RNQEDqt1WyXQ3LumvvNoxKNKQxuvkmmuZNxqAidST30ChjF8n75r+xUe0FIlNev0+T/TG/cewCKhzJZ8OyRqugPvuyJjsoTHliUTYHZZmtP/sJFDStZ1ERPfOeA12WCNaEU61ZZoL8FDws5+OFwQkOQQHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmQo6Kxy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D+nub4le; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ94LOi176980
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 12:33:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=g/2ZBukE+OSOHiQCIshOHY03F9Rzucomp9k
	2YNJaSVU=; b=CmQo6KxyTZpJ0SUJMuBsePgQDCcAY1FwufjfGGOfLxlnTLJoUpK
	FVz6PZf9V9Rmyq1OS29gyrKoay1pfNtYwcrs364ipEApQMdIPncwthSj22sl69fL
	7OBAY+bPf9eoxrIREBET7MaNDKwbesNamufg+UB88NvSgNu3iX+34zCO42cEtZk/
	jsXkNbLKlp3bBdnll5JXJa62agqsXP0iyO0cSYY2ILOWALsmV2u9xGVLwtv20o2B
	On0jSJs42Xu5InRHLj3q116LFyglJBPNPdCyLIDiK29x5icDGW70L9mMHU79mtlI
	mIM8tTWrQSuERLg1AHmTjlRgThOEsOxma5w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b9qdk8cb5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 12:33:17 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b80de683efso13983491b3a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 04:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766752396; x=1767357196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g/2ZBukE+OSOHiQCIshOHY03F9Rzucomp9k2YNJaSVU=;
        b=D+nub4leIi+0ny2wAjVs2SEKrx+hBU+f7zGzDL6UGuZufSy3NhVJvP2iPLL76BsokV
         BW9TzcjFqYgL68h8Qcsk+NVX5QLAh1iMgMqoYVu9eyXmTlaDXkng1C3BwBtrMkYQ0pML
         OetP5D6GdphXksUIFO7Sa9k4rWMuD1l7bmjao+2fr5UAsuMPAuIDedoXQ40oA9LcvE5n
         YabNk2bV5+pPCm3eP2QQ5R3nxv+v+cK2MwP6Too2mXjknx4YkwTxt+tN793YsEL8++iC
         TG7RqL5q40NFZF6mcPguVnqsjiZEx0IetRVIt4mkSXuHIffqRpRsfGnba2a71njqnmhH
         ENxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766752396; x=1767357196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/2ZBukE+OSOHiQCIshOHY03F9Rzucomp9k2YNJaSVU=;
        b=rZEX/0Xe8+A0lrus4eSTWezlQesuNSp3gGv6bHf2cL1RMPkX6c8eIyGoHTpUIaMRzx
         YB2Tlmi8QlxvK/xzPRU781UQKNuaL3bCdWDHx9rt7G4wNrGVJNjiNSFvSCnInbJw5Bof
         eewnzRLci/iCxZLixXa0FL0yWOC++Vo4MBTvpNY7YUFFlUUUABG1FIoaU4JB1e8ivScf
         /AxksYAMtpq8YvHCMOugYARUsnJyGn9Q4qHvHmQb8PCw9SmRSvK3zme6BRn1ZsbcHY/H
         x3rIHBAZJWowE3zXrNX86LTc4CbbLgweBLVCCMavOjLQF0mp/rWGPWOcIpXviuPK786x
         PMiw==
X-Forwarded-Encrypted: i=1; AJvYcCXzyV9Fovch9zvgyZFEeVTffIdKFvRNwzUQnYIEU6FwvHdYuPf2jDmwN38e2efkB8xhSz18QDU8MZkR@vger.kernel.org
X-Gm-Message-State: AOJu0YwU45JI6E2f0Ev6yZXF2FZYbviVl74ceQDUf4gUqpufjCmOLFK5
	ZeTWI1xy45UaPj5Hd7DdZ3BJlN978La0XpLneQpyUopCMgMl0LkszSFuySopeG6GSSky+vDgJEb
	Al9YB/TGwt6lu2xcak623q69TzTpyhFCvbzWNcr/jP7TGiqb43Ymu2rej4Rjl4/Xn
X-Gm-Gg: AY/fxX4IPLD5sR8Y/Xnfw21X1SI1n0hIDnc+RrfT++XfXp6fJBOcAhJxQMpI/WCcAkv
	5ejHa7hlowoRyp54op/7bkfrVISP6gkJI3dNA0CbPb+ZS2zWSX31pcvGW8SGbDMoxFM+QHT7APH
	nYNFS/0tdKgrIPOA3frTslkKidWTyp6hid945vy+qBFQ1+h3d4j6BXXIFiNrKwUWJu2dvS7/UlO
	T8I6RyLAWGN9+lxV3WVx6rM6Zh7Kv1QjVairWByzuO7uyLSrJdERckkptAzjYP0OIzuVMrl+Lw3
	oYgBrTjCgDTmpck4q4w2CvT/1SrNJPFQXAkrwT2UWbfT+fkEvGXNocTJNyLmddbb7E8mSdwtRwx
	iSrTYDu8LA+ckvjqHmAhp4EPZlLuhFzzpWQ6NF5M=
X-Received: by 2002:a05:6a00:e13:b0:7e8:450c:61bc with SMTP id d2e1a72fcca58-7ff6607cfc0mr20758569b3a.44.1766752396524;
        Fri, 26 Dec 2025 04:33:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8MI8Rsi/LtsZDgsB+f+KdxfQyaRAkXtJdRyh9xD3gT718ARqDmeISlTScYQFTQB0dDWVAWw==
X-Received: by 2002:a05:6a00:e13:b0:7e8:450c:61bc with SMTP id d2e1a72fcca58-7ff6607cfc0mr20758552b3a.44.1766752396050;
        Fri, 26 Dec 2025 04:33:16 -0800 (PST)
Received: from hu-anshar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a93ab3csm21853696b3a.7.2025.12.26.04.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 04:33:15 -0800 (PST)
From: Ankit Sharma <ankit.sharma@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ankit Sharma <ankit.sharma@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: sm8750: Add capacity and DPC properties
Date: Fri, 26 Dec 2025 18:02:58 +0530
Message-ID: <20251226123258.1444419-1-ankit.sharma@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDExNiBTYWx0ZWRfX1cJY6LST5+rj
 MW1LR+QHhjIYbOjnN2EBfUTbEJOIgnxuZHIGsI7I9w0T7RK3JkAN3CABwPc4zrucmVPaatQenCV
 1tMPTwZ0tb4Ddu8rabqiY/lUaP17PVATu+vNA+3icUD227725zgY2W6XfjgVnckYbfzi8GSZVRi
 ZJjfugGOrZoEQHawraEAuuToBA/WIatorU5v2hxKxxBUzcaBcYvu8z4XvoN12sYj00RTjbiJoNs
 o0I8tCLWVO0RhBB4p9SEpHFHhTJghwYw65WGIJCtK455gviwdnhUunasFMcMexoh6hilxaSpaV4
 QvKFbLBTMjH4vDfRd4WowQOSIuiHnpm/R4+G/nXaSfAntRbXDuBRR9U55S+DJxZ/CQqIp1VBl53
 JUa1YTb73K4J19aY2AFPYvGKQBw629kSpH6nYGsf2m/vfvwSuIjTOW4C7ov8Rh1eEeLzNy76bdR
 2qaOqW5XBKZ83D3MwMA==
X-Proofpoint-GUID: orTsyDa4QJvqQ0pgPwmN-VtcyI6RlOku
X-Authority-Analysis: v=2.4 cv=br9BxUai c=1 sm=1 tr=0 ts=694e808d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=w7H_r0yA3_GDxpqraYcA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: orTsyDa4QJvqQ0pgPwmN-VtcyI6RlOku
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_03,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1011
 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260116

The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
used to build Energy Model which in turn is used by EAS to take
placement decisions.

Signed-off-by: Ankit Sharma <ankit.sharma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bb..c93511bf4625 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -37,6 +37,8 @@ cpu0: cpu@0 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd0>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;

 			l2_0: l2-cache {
 				compatible = "cache";
@@ -53,6 +55,8 @@ cpu1: cpu@100 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd1>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
 		};

 		cpu2: cpu@200 {
@@ -63,6 +67,8 @@ cpu2: cpu@200 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd2>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
 		};

 		cpu3: cpu@300 {
@@ -73,6 +79,8 @@ cpu3: cpu@300 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd3>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
 		};

 		cpu4: cpu@400 {
@@ -83,6 +91,8 @@ cpu4: cpu@400 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd4>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
 		};

 		cpu5: cpu@500 {
@@ -93,6 +103,8 @@ cpu5: cpu@500 {
 			next-level-cache = <&l2_0>;
 			power-domains = <&cpu_pd5>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
 		};

 		cpu6: cpu@10000 {
@@ -103,6 +115,8 @@ cpu6: cpu@10000 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd6>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1894>;
+			dynamic-power-coefficient = <588>;

 			l2_1: l2-cache {
 				compatible = "cache";
@@ -119,6 +133,8 @@ cpu7: cpu@10100 {
 			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd7>;
 			power-domain-names = "psci";
+			capacity-dmips-mhz = <1894>;
+			dynamic-power-coefficient = <588>;
 		};

 		cpu-map {
--
2.43.0


