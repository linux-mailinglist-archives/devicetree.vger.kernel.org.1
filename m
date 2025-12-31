Return-Path: <devicetree+bounces-250777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C51CEBC4C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DDD8306E8CF
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E1431C567;
	Wed, 31 Dec 2025 10:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oKrwz9OX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SeXXYHSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C369031B830
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176341; cv=none; b=d+j17IdxB5xhCT0Edsb6xmerFo3WdhpdEN7B77x87CldCjtTMlEudNkoBRjVN8+WxBm2wGeMC5NWi8OwQnuLQd4h0VkNi5krzVoWizGuzr62elsBr6Xn0VaMfeYJ8L3XgLEV5YAEdZo265KuRB8bfeYlG2rehV4a5CDBA9Dahbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176341; c=relaxed/simple;
	bh=WfDTSx43o07srL4cnb6/DW50kGeyfYTJghxLpiyPa4I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jupVA1yQPfcyNQgJf3zlUk+6UzTTMihtLAxMvVDuB6kxfDejp5vdLD117Z2MkWWr+dBTglv2CMvTSdSYWFi4PYWU7tZxCs3d7JLPYbnG4R0B8nHUFbDKGIEPwIqGDE/Y6d1vc9m4ScrsXQog2SFdXrJMC4E9qDpsQlqIhbOu9Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oKrwz9OX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SeXXYHSq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUMcWBo1701189
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KW7JFpPP2nQ7w0Xe2QOc9OWC3pEhCW7TP3OIUDY3TcY=; b=oKrwz9OXoo3rjtry
	EFO8jpf0Rf/5RhQmYV2LMdPI3oRGZJkSmOL5+fmLhb0BJTkjz3c7bcwAkyw5xQVt
	fD9KZVbMKCIDP4wUQCAe0ARa86P9XYmNXKN3aS1SSnYIKrjGK8a02F3MgG/swBSD
	WnWmgetyFlr8qUwRLeYk5SspZVhNjDbIbWzL4hT2zCHvLLlJ7PD38QQiXndK2MYX
	v1pJJUirsTiBsfNL7l7cX2JucsGBjJp8Sx8cc9D3YS7mR6tb9P1lWtBF+xyMy/32
	LyeCfaA+718SXlVko4XX5NmPEYIFcV1cOcr0TWsZY09NadWXpiRdtLEsxiEPkVnY
	AsCgxg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0vdm43k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:58 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c314af2d4so9986669a91.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176337; x=1767781137; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KW7JFpPP2nQ7w0Xe2QOc9OWC3pEhCW7TP3OIUDY3TcY=;
        b=SeXXYHSqYdac4Yp23+p5OlGsiphS2/AcvmBtU98S/xwji3MgvQBXiJjivJ9Lr0StZT
         7uoMherKNHUu8CiiomXGfo17Szezv71jExuDP8Ey+HS1nhYSlhpqB/sEUId+oqUw8Xsy
         44B9WpM/sObeE6FtrFQFXAtlVRpzvWTbg6luVQDOBOX6e1mYloAhJ/wiY4tWY7LCZ0/x
         j3r5gytqlwSA0wPMhMJuS9ikmMaZK5RSMgTDz+NeStNdurHAD0Q10VaIU/aW4dgG5Z2r
         PEzv3vG2GlKgz+2rOvPyXKkJ8pBM9lUGn6xIa1x5Q4Xmcz0bZ0in96D5LJwBtLUSvj2u
         wCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176337; x=1767781137;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KW7JFpPP2nQ7w0Xe2QOc9OWC3pEhCW7TP3OIUDY3TcY=;
        b=wRwt302aFTJ4GxpX3ArU6xNGcr0fRDcdEBxWtPS+ipZTsJgjOjNsPI/Sw8E/OxPCgz
         4YDPBiX2xcDGfBFKbUSiChalmzM8PiPSTbEvNcOqlJ9FRiLBm/K50mqNfrowec5r4ojR
         MuOhPvVqwNuixpGbUaYW6KffSIEeogaDo7gHU3sZcZWJPWIrWIBnX1R6e2QMsuC4F0ig
         pXAm7fLAJOBD7phNjT2aIcoSL45dAeNvF6ijIo8QHm5sSf4Lyfayd6F8r1NZaiWGlTFj
         utJHRG7FaRSd3OG6YMiE8jTXa2a/df4u1Cxa1BbjzbSi2RZUilr9FWA422EJILI2bO3w
         iwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUByjBIoIK4WkVIrgGkSVh92PtVWjw6+dRsOvz+1G9UJKqXbfU3utMMTlimNJEEJlJ4XQTpN183Yk/r@vger.kernel.org
X-Gm-Message-State: AOJu0YyZL+WTQ2NRwCYD6mTk705FUom04OFS7FCogSXM15lJJxcwjDqr
	sh6vmOO5416fnElvLV7sOG2djmh1xR526LMRcpH66qT2yWNhbmKXRlUfo2lDAYvo0PhYZZK/tHn
	patljA6pJMHHDvSjU6GQ02wBzdnrluix7EW53SyUUWMlG+suYPLKe2PhEAXsy+ttX
X-Gm-Gg: AY/fxX46qeZ+W6xfxTCYfmF6XBFN6p5XJj9Wq8hrBsgO2XDlEYaujQGwdQxlkAZqY+6
	x9CENx9g4M5CxBEIeDuFeXwVCDVYrgsvMN0s5ezQWilmcmO5DvE7FyLa9jNnK7Vxa8i3oQTCGF3
	nETUdDl6Zj8r1namgsHrFNljKKGcd89o8eExF0DIV2plVpRu5+ICUlajpsWFO/jx4OeDsrQmkMc
	0NP4AKcwk96SXYaOl2cVOZqENoFViZhDMKCZxNAaVu+kAYPX4favjZRSLqeKZOoBnTyQhaOZ7gV
	gkPDFL12fHNaVO9/f5gUfCryVUVeSh11GBWEOyjK99tujaoe3u+BXs8C51HqC+Ziv7VaJer0KX7
	WuNObM8aeHPqeSV01TjjsYhJYSY846QqlciZsKw==
X-Received: by 2002:a17:90b:3c4b:b0:34c:e5fc:faec with SMTP id 98e67ed59e1d1-34e9212f72dmr25100789a91.2.1767176337523;
        Wed, 31 Dec 2025 02:18:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGveq9ZL4Yy9lRSvQxH8/k9XbLAbQjNLqrDY6DJdTGOCo9Ub/f/K0iDFP5s4YVmtZ+C1sSJkA==
X-Received: by 2002:a17:90b:3c4b:b0:34c:e5fc:faec with SMTP id 98e67ed59e1d1-34e9212f72dmr25100770a91.2.1767176337035;
        Wed, 31 Dec 2025 02:18:57 -0800 (PST)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bd61b4csm30085504a12.18.2025.12.31.02.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:18:56 -0800 (PST)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 15:48:46 +0530
Subject: [PATCH 2/2] arm64: dts: qcom: purwa: Drop the Hamoa workaround for
 PDC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-purwa_pdc-v1-2-2b4979dd88ad@oss.qualcomm.com>
References: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
In-Reply-To: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767176326; l=1101;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=WfDTSx43o07srL4cnb6/DW50kGeyfYTJghxLpiyPa4I=;
 b=wATgeCfO0issVLNkteXCDat77LVMkMGrU6VK/aT4g2wSHEj4qHVaB5g0BQY2e79H4FBYmchSJ
 CKMRue5nB0TCv7jbiPSmohckheR28BGCPqoK6yXehEujmFBoWl+y0y/
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Authority-Analysis: v=2.4 cv=dfONHHXe c=1 sm=1 tr=0 ts=6954f892 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CaasDedagTLKq8XiIZkA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXzd3Ln+km71Pk
 /38Kj3qwrFRrtfUlItaQLJB2NpQvkKV+EHESXTIblBGhNd1pPQSNP4EcQzKi4xrvE/wnGNH/SyV
 4mGM/HkAgnqC+aNfw8xExw6qLbBdxL5sUZuh/kTLUbXorUuXH7eWyDfrDK1gUVN6OeS/YKXDAhK
 IZNmoE1chIOJ0bRynKW5nv97C+jZRLhGdHCiaT2+ay+pr7LnRxmkUtsuxvGnaVFkXNwuz5Cnrwg
 hivTiNhC23UCaz2bk4xAthGMdxnJzogeTPaVeX4o1Qqsa00M1mohotTSu7OYoP6x/5yOFcNCzdD
 f1prVYQdfWMXyadJAQcpZrSggk8XfPoxSgGjI0pNXuoe+41bDH1FfB9CeRygpSaVWYh/v3fBSSA
 dTyrbRvivU8TGnrw8etlnvrovTNlr4sj4y1qM/rcALe9gUbgTUj1JIqeGHTqNXiuVm4QHk9RgVO
 fAbv7zrAw0K8I5uQYrw==
X-Proofpoint-GUID: 3sQY7wG0eKK917MRgK0pq6xhjy7unpVk
X-Proofpoint-ORIG-GUID: 3sQY7wG0eKK917MRgK0pq6xhjy7unpVk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1011 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Purwa shares the Hamoa (X1E80100) PDC device, but the hardware register
bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc: Workaround
hardware register bug on X1E80100") is already fixed in Purwa silicon.

Hamoa compatible forces the software workaround. Use the Purwa specific
compatible string for the PDC node to remove the workaround from Purwa.

Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..e3e2dfedf0b3cad90b767d6b28fb0c60078d192b 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -152,6 +152,10 @@ &pcie6a_phy {
 	compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy";
 };
 
+&pdc {
+	compatible = "qcom,x1p42100-pdc", "qcom,pdc";
+};
+
 &qfprom {
 	gpu_speed_bin: gpu-speed-bin@119 {
 		reg = <0x119 0x2>;

-- 
2.34.1


