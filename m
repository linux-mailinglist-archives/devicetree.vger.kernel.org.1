Return-Path: <devicetree+bounces-252698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A0DD02152
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A44603059E8F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2E143CEFA;
	Thu,  8 Jan 2026 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZZ4r8jXp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BzBxcuNw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1399043CEFC
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864379; cv=none; b=Dd3yrXGq2uIzqGf1TEXyadtO2TVb0bDTfHrxlPl69S6QbnQAM7lHKcHBbvPZc7wOICGGMpfqO2YE0npRhCr+FM0FX4G1DEXeQZ+5/vXNiqz43STLRoS7AIBcXtqSxE3Oc7WJv1DPHaBxNzrjcIHTW17fch+335+Z1wmwhmZuZyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864379; c=relaxed/simple;
	bh=7tzW+SoqO/KjkPUSJkNtWasKuJ0lTryILdF3+7Fg0ds=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R2yhi6q55ChiqWot/VUkHucpszCbYS9UXl/WYisZMvk4u8n9gwlM97iTnYUadejxWVp1MLG0TXkbx/yCPoMTTvhLwuSDFmGvxPQOZ/xMX4EJJJUavvldFVyw1aaq/5mk9PXARB98/DrEhNjpzHs1Xp/cJ80m903ipN9DMRMjd9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZZ4r8jXp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BzBxcuNw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087VNap1837902
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:26:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dcmcdEtE/Uc
	A5WYasQACc/leyMVx7zWRdfe/DYdUQjY=; b=ZZ4r8jXpvCIkV2pb/cFc8ctDMSe
	S5SWuVheYSK9QfVIp66bZomVorlcgZefPl3VXxVPSz8zNEoGoqqSgHDut/dT9Jdh
	G8ZpR/RqgzAOIydjRX+Ol6vejJ8Wwz0YcMBAjosaQgbmegOE8F9k13QZs/MZsHMq
	SXiAz6EtnzVH9C3jh0+RibAOVAni1Cmu3fnLY7sOFPjTC1mB1Aw26hniFtPOrKIR
	F6UOPvUcWw1EVHVhePliulKzIb3TjonX5aL/JuD8oled4LGQcgMWfFhEtFnDS8wl
	dewhl6ahfMyjNZxV9QgYy8rm2DNcgYqr7toPuYbFsWsKc4MgH9xNNFmX2bw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj8920bed-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:26:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ffb28462fbso37876791cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864363; x=1768469163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dcmcdEtE/UcA5WYasQACc/leyMVx7zWRdfe/DYdUQjY=;
        b=BzBxcuNwfxglu3fdBHUFwzqiRgdiS3LYhlPbrAtz10QAzkTBof1ah2Yr2SyS8lS8vx
         GzCsvaG/c3xPJE3b2i8lKv9KcVST/jJP/aBjawPnC4bodBBYtjeMNVhubCjOxfhdCJXj
         1q/W9FyKJZNU/u57Yh29sazFZwPwAKRdIGyS/FrzRCTLdA1djWi22CQEobSP5bH+JaHm
         zYfPMa75C0yCCq2QWPuQxSqnSR4vDsOQt9Rqv/V6NjFmBvCZw8lX/56LhIOJ1PPmtv2Z
         IKpFun/1I4ib9T+li4+8QjeK/i5S9wKc4apSutWS4Knbxdg3U6zYr8US6aK7NWVaFsN9
         uM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864363; x=1768469163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dcmcdEtE/UcA5WYasQACc/leyMVx7zWRdfe/DYdUQjY=;
        b=NAxSSn8Xfv5peanzVekaEuzQ4W9sKi8enuRx0PqSEn3Id/HxWcNi5Z43vI/KGaUOcy
         W+ZmDTtNe2cfVO1urpSTjwwQ8mcq8F2R8SuO6PCR9I7ilrORMtM3OdKyjMMAOILUZ3ha
         UDqX05IF0Gd5vSVeHj9TBZKiiLt/m1yXBjXCMvjbutKcL6yCgApiniExxq6mR4yNeMz3
         o2vhLHkYSsyr+kbzKbNy2vh0wkXKnT9xpru/2CnsEY8W8PVQoWV4ZNoMA2vlbiL6VBxK
         sGpx+FqhboyY/HiULuPcI5+F+pD0IHxoUIWr99h1cxY676XMKfqBEs9yrg+fZLUoTmYZ
         ESNg==
X-Forwarded-Encrypted: i=1; AJvYcCUMd0cU1rbFJU08s3/SlGH/uHfZxLbRCEd1oQ8Yh4KsdModTKiOwy23vU1jHjBqcgu8kWDV4n7UNvxz@vger.kernel.org
X-Gm-Message-State: AOJu0YykgDrLhPEawq+Kn6qNBQzNUUn6Z9sFJgMskMBbWHZcKZvdbqcZ
	U+iA8SOrhNQ+6SaLhxXYqIkEEO0dG79vKimDc/DY+xNJkDMlIKwpGAII0YYlBzbCgHf5bnmxb64
	MDxbBEN9oWJxFNJhKhe5ckTv16L5wLgCwlpBtwMcsP3eFjKqYZlx5sg9TleVCjLVv
X-Gm-Gg: AY/fxX7LfljxbrU353NhFZn4/Z9fvhmG766WMjJWKI2p0vb4BGIGzpCufoa/Slmbje2
	mRM9e/0jofUYXSxfBLmetqA1PXpQpLliMIo/6gn7neHSZtsVhbh7emkJfU00o6ozeR9ZKkNaxNc
	4nrE5fI4MrZ1g6WebjRSCCUNzbsvnyM8gkJ9bmWyH9fd/Dl1aU7t3SLEBnz1aZLXpll7TpbN6dX
	qS2cNuDsG2pYbT4fcrwfiUX2vVIOtDirNXsPo9RAJugEbv2UeKAe9qF0odKlARf1iwT+5/SYaAZ
	Q5agA8656m3PkK9W14grhaG30axb2Vv27K7Ox4j4gR68HOggu5/2Fi/3DHGr7sV+gZrXxyvaDjJ
	CZTQM7EYmSJ8yRkA29EWog+ADO8TSWPjfcIVdhKB/ZfpUhYKZUgavjVXhSZ8nY7H7yi4=
X-Received: by 2002:a05:622a:5598:b0:4fc:8ed0:d4a4 with SMTP id d75a77b69052e-4ffb4a8e16emr69869231cf.64.1767864363208;
        Thu, 08 Jan 2026 01:26:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnMSG63YwgeHmPCeKJt9GWfZ6c7ZDqCt893uYy4dVwZ/Xewvy/jV4mEFhJwrhxdDJ3qAQhtw==
X-Received: by 2002:a05:622a:5598:b0:4fc:8ed0:d4a4 with SMTP id d75a77b69052e-4ffb4a8e16emr69868961cf.64.1767864362812;
        Thu, 08 Jan 2026 01:26:02 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770ce659sm49279916d6.10.2026.01.08.01.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 01:26:02 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com
Subject: [PATCH v2 2/2] arm64: dts: qcom: talos: Add PMU support
Date: Thu,  8 Jan 2026 17:25:42 +0800
Message-Id: <20260108092542.1371-3-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695f782c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qjBJZMR6ItVLWO7oi9kA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: tdLN-ymB1tAJYb6RoIBNMgv-Wem91cLl
X-Proofpoint-GUID: tdLN-ymB1tAJYb6RoIBNMgv-Wem91cLl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX5vOGO895xtHy
 4KoyJHkupUj0KfF/XrY35sMg+UoiDa8ABRO2GrjdfmHkSO0enmL6vVfdITgVyFQKhc2BO7abwKv
 8cz/pFx9S5MkdtZbOabGxJYxTj+EJ5eRLuaJfZnD9Mx7N+4mw4OzcvDkmVpL/k5PeRW1LCVDm6V
 Ztkv7+1dCSjuY4rvCU9O6TDdcUYmnOPQULx4ZSOICWGR5955/UrW36t4Q/TpkT2keyZHGG+5CAr
 jx7Q9mQKBmFLWwQTFeNHYj9UeTGLrPaiE4GHYKEgpIPcWUZuuiGKSfrNzfLeOesXS63jcdbG4RQ
 HG7MKyEcWriqWz9AOyEFidwpQaOMUjgSqNeC9ByNh3MFW/7VlXYMt6Cpe9xJhPf8N9GS+UKeIl7
 +JYGYv9Z0mrfixVfgOaISyEdoDHJFZcAhfVL1NJaH1TuBugSuQ6CwShd1FRG/9rbso9l/nixkA5
 7ih4Pd1sN4FkXsxR8QA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080062

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add the PMU node for talos platforms.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 084386f76a61..e16ccb371ee9 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -550,6 +550,16 @@ opp-128000000 {
 		};
 	};
 
+	pmu-a55 {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH &ppi_cluster0>;
+	};
+
+	pmu-a76 {
+		compatible = "arm,cortex-a76-pmu";
+		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH &ppi_cluster1>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
@@ -4213,6 +4223,16 @@ intc: interrupt-controller@17a00000 {
 			interrupt-controller;
 			#redistributor-regions = <1>;
 			redistributor-stride = <0x0 0x20000>;
+
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1 &cpu2 &cpu3 &cpu4 &cpu5>;
+				};
+
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu6 &cpu7>;
+				};
+			};
 		};
 
 		apss_shared: mailbox@17c00000 {
-- 
2.34.1


