Return-Path: <devicetree+bounces-251815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B2FCF76C6
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0A1D30EA2E0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB02A30EF7E;
	Tue,  6 Jan 2026 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nrvMEVvZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kOPQZNUY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D7830C619
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 09:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767690291; cv=none; b=Pdb6lg/NCoEiwuZnzH8oGisG8bJ4PiC6f0ZCEVOeyNvLJWUU3FiN1ER5nqy6dG6u3BuxTjNMfELtO2+jCheBTuwHyez6kzlR8iLPdFIJZD992mqXdeoBZdKK4Vgc3SYm5Lbm00GlqXO0gSCHMZnVhTeJOyY535/jV/8hmJput+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767690291; c=relaxed/simple;
	bh=uqFW8puCO0fUaXKLgdQhR3LwSpiQJfvZ21tQNaUkeLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OBbxbMKUIZRzZjnFbc/xfErnNX5TmvawtQ9GZuLkhpVrSXB7OOi6GDUmUE4TwzKgwDSkJXGNgKrPGmU/vUTPWiFtOcQd09nRHfJOFLfC2kTHw1ju1UnmkIggEEoeEDfdhd7PIs56TQNPCOmT+++WLwKx7nrzRKpJRcb1jjsQz5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nrvMEVvZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kOPQZNUY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QSCr2430117
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 09:04:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vMjYCueNFemsZYYgy413EWXcSrM+NfgEUoma/TD3MWc=; b=nrvMEVvZmeXeRyX0
	7GC6JuXsdbv91Xtgp6wR3dFfP8xscwbf52vEoXLwB2NF1Ku3taLqxynRhMhc5fSS
	J2yINJCiHLN++vcq8I5vgYrX3gunc9otdqEZ4Wmc4XsBC2RyHQ/ezuwBEKdydOGk
	FCp3ipWEyE6d8QfDtjznQGfr5JkFGAk1SnXLde//kFQYU6UZ034JH4lwdmpQBoy2
	nmuowgkM+69914R/qHTf+4nwd7F2xQZugsRHe79ht4Xi9FI2Ha3LNSGXNx+4P5pL
	cc8HT5gVBvsfAcrBqMsowVZZKh1ONZ1QVrK6a9BTXB6tDqd5AunFBixss1+12flp
	Pn4tPQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr7398p4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:04:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e2342803so190542585a.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690288; x=1768295088; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMjYCueNFemsZYYgy413EWXcSrM+NfgEUoma/TD3MWc=;
        b=kOPQZNUYFGUz7kkpI7khnAJ+wMps1yqRBSfU0027TnkyMbX8fDUo/o8yiFNQQ/A157
         HU2ygxFU44kAgOayMRzR6mLVgOqLwLUZWDx4yTX4vUwtOPGH+e5d8rAAmL6AQgcFzufS
         4o1ZzRNmfn/o89qCz2HCkMlyacRGgYFnmD9ZndQBlddErtRIA5biINv86HM3q1ySoxdO
         nTHx1DioRGV1wdwukhkjTxQu0gOOciRr+Y8QtubULcc5ri7l2DHr+5oWxPCNv2MuYrUx
         3UliVrJ0l9xf7WdKBBr1JGsI1xKCFr5VRqp6vnxS9bdTqw4/mo0cWym1ver9Rvh0yUb/
         O4Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690288; x=1768295088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vMjYCueNFemsZYYgy413EWXcSrM+NfgEUoma/TD3MWc=;
        b=Bvn18usuQm3KZwOgHuSpiErS6VvE55452oehm4AR6TgTxRkYR3+ZsXTFV7tO30GCux
         pHEjx6AR3eD9P5eBdG/aFnKCmG+5M19Ru0LJimLeoPcLOtSV6oiVb/oD3L3mW+YAU5gl
         drr8+DbB25DukFz+3pWs8VAYPbVgQ9eMjJxmiITNjDiUC3q23wftLUP41oFP4KuAe1wQ
         WVqP7/tvB0avG8PZVokOPvTQIbiSaMzHARrEhEPQ7FRWOTLJJPfqJ+c8b3nOavi2UT8U
         LSxvVL2wV3Ra0oRqujI5nVdw2ZDyfUYox6oibx3NHNbudTpIsBTJJFAeO5XJDpB1zRUs
         VfLw==
X-Forwarded-Encrypted: i=1; AJvYcCV58vAAoK+yRktmXpqgaLECUVQidJy/G49wKmRW5N2F4hhN4y7sWmUbtm4xh0CtFbO4Knk5/+vlibmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzsAkQ0JTayKFWT2OBUZPgJhDCYFA/I1TeA0PPxkfpj8HJD7aO2
	kcX8UNJ1Aw0mHRHfrEbOZWUcpLLSD4vnrbcXqVPkqZvG85WtIWdOiV/O0wJM+BiQm0TIbJrhQIl
	Fc5Vbvfmscm1VyxZUwwvKRSGE3gZ0c5XQjK9JqieGpW0CNj9oDJwps0BnJ6tEpLHn
X-Gm-Gg: AY/fxX5aNOqn5oyc95NePd9vU4/YiB17W+eEwhSyPQwpq4Aly3Y3e/FzYeaQyGoklF/
	bOl8Bf/fiYMK7Hkrut8MP+vd6c5W3KKaHAZjRWeM88/yQKwPAdz+FWwQzUATAq8r6bfiLd2Ygfs
	ipdEDbvS6XepmDUkCl433L1WVXNwNwp5GRgIHPMUghweTSzSdSSIrdVOA/B+At0+DXuaA4087Gs
	DRSNMcr0kJ0uWseQCGNgsBdZ7w93GOeUXOIQTyH3BmzLy1jF0X2FgjSoQ6QNWgawcb8uhG7sY3T
	tz2875xBmhqyW5VSiGLiOwxx4AMcogkO+e6VNeV+qJfOo4W8eFdWP0NdIP6kIZTloCRPCDweaiq
	8Jqh4AGMm8w+EtcacghLydP6PgrD6RjS35KoyuwDKNzTISmhSi95mNNnAoodWY+1sjteE6G4htH
	56
X-Received: by 2002:a05:620a:bc6:b0:8a9:ef98:6835 with SMTP id af79cd13be357-8c37eb4c572mr307834285a.33.1767690288453;
        Tue, 06 Jan 2026 01:04:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHO2vVmcmA1kzoyToPbJj4mzxCeunHud+/7B9m4HzzAP75SxP2QWLREZwAgFtlSyPzmf/LG3Q==
X-Received: by 2002:a05:620a:bc6:b0:8a9:ef98:6835 with SMTP id af79cd13be357-8c37eb4c572mr307817585a.33.1767690284515;
        Tue, 06 Jan 2026 01:04:44 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f53113fsm134368185a.41.2026.01.06.01.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:04:44 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 17:04:18 +0800
Subject: [PATCH v3 3/3] arm64: dts: qcom: talos: Add camss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-sm6150-camss-v3-3-d1d5c4d02b0b@oss.qualcomm.com>
References: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
In-Reply-To: <20260106-sm6150-camss-v3-0-d1d5c4d02b0b@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767690260; l=6653;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=uqFW8puCO0fUaXKLgdQhR3LwSpiQJfvZ21tQNaUkeLE=;
 b=WJR4Fft1zkY7INI28MoVl5mqpTtUCkdL2gUw3YznumgtBjD46nWEgLO5mWyIl+2fHLKuQJHKD
 wCSER48/4YOByMbV0YAuh2eq4gUSyxm5mlpGtv9PZ8umelGf6DTXRi1
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695cd031 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=_q6n6E3gDzqWkXQ7FWgA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WCwElednl_5xAxXY0RkO_R2TgLN9JBcT
X-Proofpoint-GUID: WCwElednl_5xAxXY0RkO_R2TgLN9JBcT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfXz4sIAtpQgaDV
 NkVIU4UrwkPbGq7YfA7kL9/rGPHliyFZXIHjTvt79mebsaEcNOdQBJzyK4XpHf2TZJonCX4+EAb
 H1N6/tX0VTOhlHIEZ1hfL9vJdvb3ez3uSqdkjKgCh5TKSjmcKcJr3fH7NNTKTBj7XWT+GeFD+9/
 T2opm/8YZN+n3yTVrW6f/O0JlC8aJq7Ti5cRZfoN0kZKJvnIaZLN4OKxiBaPshEU6AOpRvqY+dt
 U6FAxZ8Upx5WAnO3q3JLIaTpzeQFoKtUzHt00ez/YVMzVm2VTPAP0Sm1Bh07F+bpUoDoJ3LE/7e
 Vas0RpW7mSuUdYKPJJv9H83a1tfSo6UUpJSUi9VVVNX757NABrkLXqfou8e/j5+UxKCRoOZdUt/
 6KzHqK/ZD8e2igPIQHjPkhY5Z8AaM+9y4RVkZ3zcF3oSKiaWexFSjpaZ7Y5X3sWT6CchZFfSxv8
 MmCL64jVpG7PFGRPfVQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060076

Add node for the SM6150 camera subsystem.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 200 ++++++++++++++++++++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 95d26e3136229f9015d49e2be22f6b28f1e842f4..6368e0a2502cf41acee0783dcd2950099a29f40b 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -3785,6 +3785,206 @@ videocc: clock-controller@ab00000 {
 			#power-domain-cells = <1>;
 		};
 
+		camss: isp@acb3000 {
+			compatible = "qcom,sm6150-camss";
+
+			reg = <0x0 0x0acb3000 0x0 0x1000>,
+			      <0x0 0x0acba000 0x0 0x1000>,
+			      <0x0 0x0acc8000 0x0 0x1000>,
+			      <0x0 0x0ac65000 0x0 0x1000>,
+			      <0x0 0x0ac66000 0x0 0x1000>,
+			      <0x0 0x0ac67000 0x0 0x1000>,
+			      <0x0 0x0acaf000 0x0 0x4000>,
+			      <0x0 0x0acb6000 0x0 0x4000>,
+			      <0x0 0x0acc4000 0x0 0x4000>,
+			      <0x0 0x0ac6f000 0x0 0x3000>,
+			      <0x0 0x0ac42000 0x0 0x5000>,
+			      <0x0 0x0ac48000 0x0 0x1000>,
+			      <0x0 0x0ac40000 0x0 0x1000>,
+			      <0x0 0x0ac18000 0x0 0x3000>,
+			      <0x0 0x0ac00000 0x0 0x6000>,
+			      <0x0 0x0ac10000 0x0 0x8000>,
+			      <0x0 0x0ac87000 0x0 0x3000>,
+			      <0x0 0x0ac52000 0x0 0x4000>,
+			      <0x0 0x0ac4e000 0x0 0x4000>,
+			      <0x0 0x0ac6b000 0x0 0x0a00>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csid_lite",
+				    "csiphy0",
+				    "csiphy1",
+				    "csiphy2",
+				    "vfe0",
+				    "vfe1",
+				    "vfe_lite",
+				    "bps",
+				    "camnoc",
+				    "cpas_cdm",
+				    "cpas_top",
+				    "icp_csr",
+				    "icp_qgic",
+				    "icp_sierra",
+				    "ipe0",
+				    "jpeg_dma",
+				    "jpeg_enc",
+				    "lrme";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
+				 <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CSIPHY0_CLK>,
+				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY1_CLK>,
+				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+				 <&camcc CAM_CC_CSIPHY2_CLK>,
+				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+				 <&camcc CAM_CC_SOC_AHB_CLK>,
+				 <&camcc CAM_CC_IFE_0_CLK>,
+				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_1_CLK>,
+				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
+				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+				 <&camcc CAM_CC_BPS_CLK>,
+				 <&camcc CAM_CC_BPS_AHB_CLK>,
+				 <&camcc CAM_CC_BPS_AXI_CLK>,
+				 <&camcc CAM_CC_BPS_AREG_CLK>,
+				 <&camcc CAM_CC_ICP_CLK>,
+				 <&camcc CAM_CC_IPE_0_CLK>,
+				 <&camcc CAM_CC_IPE_0_AHB_CLK>,
+				 <&camcc CAM_CC_IPE_0_AREG_CLK>,
+				 <&camcc CAM_CC_IPE_0_AXI_CLK>,
+				 <&camcc CAM_CC_JPEG_CLK>,
+				 <&camcc CAM_CC_LRME_CLK>;
+			clock-names = "gcc_ahb",
+				      "gcc_axi_hf",
+				      "camnoc_axi",
+				      "cpas_ahb",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "csiphy2",
+				      "csiphy2_timer",
+				      "soc_ahb",
+				      "vfe0",
+				      "vfe0_axi",
+				      "vfe0_cphy_rx",
+				      "vfe0_csid",
+				      "vfe1",
+				      "vfe1_axi",
+				      "vfe1_cphy_rx",
+				      "vfe1_csid",
+				      "vfe_lite",
+				      "vfe_lite_cphy_rx",
+				      "vfe_lite_csid",
+				      "bps",
+				      "bps_ahb",
+				      "bps_axi",
+				      "bps_areg",
+				      "icp",
+				      "ipe0",
+				      "ipe0_ahb",
+				      "ipe0_areg",
+				      "ipe0_axi",
+				      "jpeg",
+				      "lrme";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ahb",
+					     "hf_0",
+					     "hf_1",
+					     "sf_mnoc";
+
+			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 459 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 461 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 463 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 475 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 474 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 476 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csid_lite",
+					  "csiphy0",
+					  "csiphy1",
+					  "csiphy2",
+					  "vfe0",
+					  "vfe1",
+					  "vfe_lite",
+					  "camnoc",
+					  "cdm",
+					  "icp",
+					  "jpeg_dma",
+					  "jpeg_enc",
+					  "lrme";
+
+			iommus = <&apps_smmu 0x0820 0x40>,
+				 <&apps_smmu 0x0840 0x00>,
+				 <&apps_smmu 0x0860 0x40>,
+				 <&apps_smmu 0x0c00 0x00>,
+				 <&apps_smmu 0x0cc0 0x00>,
+				 <&apps_smmu 0x0c80 0x00>,
+				 <&apps_smmu 0x0ca0 0x00>,
+				 <&apps_smmu 0x0d00 0x00>,
+				 <&apps_smmu 0x0d20 0x00>,
+				 <&apps_smmu 0x0d40 0x00>,
+				 <&apps_smmu 0x0d80 0x20>,
+				 <&apps_smmu 0x0da0 0x20>,
+				 <&apps_smmu 0x0de2 0x00>;
+
+			power-domains = <&camcc IFE_0_GDSC>,
+					<&camcc IFE_1_GDSC>,
+					<&camcc TITAN_TOP_GDSC>,
+					<&camcc BPS_GDSC>,
+					<&camcc IPE_0_GDSC>;
+			power-domain-names = "ife0",
+					     "ife1",
+					     "top",
+					     "bps",
+					     "ipe";
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+
+				port@2 {
+					reg = <2>;
+				};
+			};
+		};
+
 		camcc: clock-controller@ad00000 {
 			compatible = "qcom,qcs615-camcc";
 			reg = <0 0x0ad00000 0 0x10000>;

-- 
2.34.1


