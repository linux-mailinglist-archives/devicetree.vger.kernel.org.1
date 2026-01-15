Return-Path: <devicetree+bounces-255741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACBDD27E77
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D26F43120BE9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E11543D1CCC;
	Thu, 15 Jan 2026 18:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ihhRTNAv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EPxOhnJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953B43C199D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502959; cv=none; b=MVwSe1i8i7OGGxJ6WozgptzDgsvUZC2DxwnJCwkO2qbiA6tDS96T1vmJtUzqNg8vmZFAe7eAbztbq4W72U/Iwo8ZL5rQrIeKc48NXL+5wS//6D/4TWyLp8zAtPo2R7Gw5g2dqYnlacYPfP5A6KDcIhlFEK9rXXjUzj0m2MBlQKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502959; c=relaxed/simple;
	bh=8Ps6/ZB9sMWXbg2rQU91hoCqw7vRALlCvUf2dxKJhBo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tpfL6KG+0aiOYCs8L8Xj809TnnQ+oAWjyF5XtEHPz8ULCILNFahlQ4npkxWAVxfNs3nhrc+eKnqwIXmwEgHPeZBN8kaTX1Crqttm/Q3TSMeUpG2LNfcoc5sHsxV6R71QZTO6gdiSobKlr09EWhTpQgj8Kfuoi3h0QZzJR3GwpEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ihhRTNAv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EPxOhnJG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFg6922313369
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=1x9sx3KheQ7
	g8OGjbROqW2N17D4RfqLGmQ3FoycRusA=; b=ihhRTNAv10jc5aNvNjEL/WKEgKK
	Bbl3mJbGWXudaAwp2AM+33IHwWcuGR/5kgwCQyVVNwLXOWCLJ2fkompXX/9yosYl
	hGFmqXFfUqEmEFueacLiSKMFYIRHqffnEkIo56c6+4LKTyYz3tjsj+tgHwkOKeU0
	NYXxpA236hQUOk6g+J4mq6e0yuQV5Lc4tz0xIL9eGHVKTL8VW/5/2Ygm9HGw9p60
	mUVTxbkE1gexgLi1CVteUOSxpcmnQHvnwXdUatFO7ly+gcFDvrlHAnTt/qAUNKUF
	4s+sypXtidWGj/Hu1naBbvND1c5VYtyFuzQ9Sf7yISzLbaF4jT2qN7762ig==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq340gnq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:49:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb0ae16a63so159346085a.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768502951; x=1769107751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1x9sx3KheQ7g8OGjbROqW2N17D4RfqLGmQ3FoycRusA=;
        b=EPxOhnJGfyywYf4i7DdDz4nYbBbZIpDfPwLvGUh1nX8HJE5XdaBroUaNhonTxKxKYa
         ekLjS9+GXIR1H/oYEKLUfJPbCkuNc7AIsS3mr+pbLKjY2AShcqngOD7KMF/eZ86teU71
         I9BiMQ4MNCaeF5+qJIGFr0yINrBTSaWbYSJYlqd0j+36H1NVvVufYJBvAaZWCKjGAD2Y
         y4hlxVk5W5y/UCkBbHNEHhGdS7F1MYOwnaXvNAPMzWP+Y8DE0/N38JO7oIwRzqkHdDZZ
         cCEp8mxVvAoKbjqY9NxtKgnQb+r2HwZOUA3u0u+rmnrkA0VvEn+dXDy/LWcwB7tCLpyH
         AQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768502951; x=1769107751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1x9sx3KheQ7g8OGjbROqW2N17D4RfqLGmQ3FoycRusA=;
        b=Hlwcdi0DhBQsmg3pVcIvRpgmf59UJd+XcAVRqPWeYKSL6Qn56w/dLfrvbzoMfFOJuJ
         eiXKjvf/KL6SXLS6a49Wd0jCSHHrqyt3ahyKAjR26elTpEWY9zcpjQsbPq2iKu5kxHPM
         VcH/VxrY1WH0Yp7ss1J7wzx5J96+ccf2XNEKDgfX9WgiQHRre63Aij//w4W3jOjWrO7W
         rTAuSak+Uk5At1+4295pxGFimjM2xfgLG4wxX5KhkuXwr1HPmwXTgs+o1uKNjeXP74Vj
         1SnJpw47CG1KIqcN4kQC+EG5YGbfVvwtEKVgnt2vYIIh0IwO47YL5j+GO5V0Ns80nxUn
         ykOg==
X-Forwarded-Encrypted: i=1; AJvYcCVKcRBimbnken5aqHXIfTAW839TXU2DmX0hVO+Zq81Bg7lN4cdwANt/ogWYFGgH0pTPyZYAc1GkJ3zB@vger.kernel.org
X-Gm-Message-State: AOJu0YysDjGD36SK34ecUGi8AC/Os2JgOMA3f4dlICLx1wwJFcdvKgZ9
	gqgnLWMz/ACTfHZ+QRttbFM3wfTiaQhy99g7M/8kcucPGqhLse478PkZZ4fQtmJ5CaojBIFXt04
	ZVBm2akbWTATjEpVjDlN/g2r08NlbQoLDnQDtH34iWi+5xd5if8A5FUuqtJ4fyAvQ
X-Gm-Gg: AY/fxX66hu8h48o7UMIMBYOnXjZVTKulBICbSy24eU6zTHsYhoapEm0TZFu/vyZ53Jm
	29vPhisXtUHIVmCILbIGbasfo1kf5dG2hwLYCQdN3WiO9YQbVHKvps2JMlrI+NGKELWpaK6eb0W
	lUU24WqORrXSE4dSWG9DiF/pA3zIQ539XAsCUxj6gXlDkuMwS67JKlklXd4Xoz7dvd5ksPZuB62
	h9pseBzmV9oMZRQFPFuIfurN3xJRn2XzGSLUZdzeSZ7093I/g0cJ9bTkuwQ61Wh60CgiePcFqwE
	alINnkuLFH8KysYP669FROZGEnaIyBQoo4CC+CNBGa5hSJQYxRAANugwOMYZt9C6IgjtXSRYqH6
	ac8anLSPl0b99HSQytOX8xvnAeg==
X-Received: by 2002:a05:620a:45a8:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8c6a670d051mr58511085a.30.1768502950569;
        Thu, 15 Jan 2026 10:49:10 -0800 (PST)
X-Received: by 2002:a05:620a:45a8:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8c6a670d051mr58507585a.30.1768502950058;
        Thu, 15 Jan 2026 10:49:10 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168c6dsm14408166b.19.2026.01.15.10.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 10:49:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 4/5] arm64: tegra: Drop unneeded status=okay on Tegra264
Date: Thu, 15 Jan 2026 19:48:44 +0100
Message-ID: <20260115184840.310191-9-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260115184840.310191-6-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1488; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=8Ps6/ZB9sMWXbg2rQU91hoCqw7vRALlCvUf2dxKJhBo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpaTaN360SHRdh2/Z4qKvNzfT6AZtA61xeqX7XW
 d+AiQf52L2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWk2jQAKCRDBN2bmhouD
 18vBD/9DiWSNA5jH6WyRNxO6k8i8OWNnqxQ+tzweLScxLM32X/lBtW8NxhmLQa8tBF7Pa0Wem/Y
 lxbq+Thi0bvIdyOd/wQtWl8E/vF2VG8t6l3Uf/rvI8jH5h39+HY2IvrUOxOQ4LnNT5qPSg5EfFI
 ati4I8MT9yUbSttzMkj84bWenSmEUD07HSq8Kn+Fu6uW59gtgFbCKPEiqYFm5gZ3dXWfARMA7Yi
 Ib19VsPvP/IPrT5iT9vMGAHvxmBJeD0iRBqgEDDzNWVuswQTfwztSQeOsvhJcMsBJQiE2GoI57w
 ZLuqB556M89DgY9UADsLZTiu+ypj4Ur8AZOw0HYvUOox59plL+L5po0BDDTg2UJzRHK0YI7B39Z
 AHvSMN4HoCFDK8glA/MHrJEAMJmZQPdV4yw7a6tO+by0LOgnPCarF/mZxBMWvXNiOXEnXyKunbg
 C7ztd8ybzE7oVrhcnhu9L5mNcSbE6W2P4B++hjRTYlCJ/rJGPe/RqbWbywPk1pKoNHMbr1JK3T0
 0qT5zmzkxuXHrHT3eD/bF+vpQL1qmYrqGhZoxx1gI+TNdJV9fmBXRS0s2b9pe6nf25HgI2Knmvs
 RCZpzo3iMcJZjvKyOSbsUZOsIyIobwQ87dli7bsfx2S1gzUrieSL+5qlQIgog7JAAtqcOU2MlI3 /5fah6FZcHeA6bg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dSal7AVUczfqGmzcy1rhEa4ZeWuPBEkA
X-Authority-Analysis: v=2.4 cv=bp9BxUai c=1 sm=1 tr=0 ts=696936a7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=T11ZgC6G7QN3siJHUSwA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: dSal7AVUczfqGmzcy1rhEa4ZeWuPBEkA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE0NCBTYWx0ZWRfXy40YX6RYqNrb
 OYZTD0lvhEOYLHOP6f2jkBqe78+jdchebHFV2WVp+UyQ8TFRW8P3QiTlkSyl/uph3bC2kDHz+0b
 a9UOLPNlhppidDNyguMJwAFXxteKYW9nD8Pf1UTQTb08e9NWdnjRko/FhhtqlM9+RrpBt9RaKHX
 AWg0+mMhQmFXGUSgIrVkG/+b8vYlio1swGp68MrGXXIS5fQitEaWlFS/6kb7JC0NKaEoJlUWIn5
 h8zWgbAqEYl8VPn96QUNmqBaiYiAUIVHOQsrObuDWUFKAWudMU+JxMbtfIGc0WpmSZi53xuZDQy
 +eVqb2jZbbeQVIPD2D0XfmF939soPqAfU3TO6t/RQikuJFdzF0Ikag4rj6+1InqUcfJEil5zhMX
 j0NZkJ68OTQWdunVOLaOmkiumxNurbgBv9NeItmwnXCOPDPc9nWpNOhIwPWxHPrNrH3QGux9U+L
 KvCWDgPzoPE0yBJCMLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150144

Device nodes are enabled by default and this DTSI file does not include
anything else, thus it is impossible that nodes were disabled before and
need to be re-enabled.  Adding redundant status=okay is just confusing
and suggests some other code flow.  Verified with dtx_diff.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/nvidia/tegra264.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra264.dtsi b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
index f137565da804..f467561aef5b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
@@ -3736,7 +3736,6 @@ cpu0: cpu@0 {
 			compatible = "arm,armv8";
 			device_type = "cpu";
 			reg = <0x00000>;
-			status = "okay";
 
 			enable-method = "psci";
 
@@ -3752,7 +3751,6 @@ cpu1: cpu@1 {
 			compatible = "arm,armv8";
 			device_type = "cpu";
 			reg = <0x10000>;
-			status = "okay";
 
 			enable-method = "psci";
 
@@ -3790,12 +3788,10 @@ thermal {
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
-		status = "okay";
 	};
 
 	psci {
 		compatible = "arm,psci-1.0";
-		status = "okay";
 		method = "smc";
 	};
 
@@ -3822,6 +3818,5 @@ timer {
 			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
-		status = "okay";
 	};
 };
-- 
2.51.0


