Return-Path: <devicetree+bounces-177194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A19AB6A38
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 13:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 513B53B9F9E
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B0B275108;
	Wed, 14 May 2025 11:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UTgJrQ5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D52D27A925
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747222660; cv=none; b=tNsZyDUpmlaeo9G6BsUJrlnaGH+48GJjZ8DMcSR5X4DWKJEQSIdzvac+pkOT2KBpjXR1/ed0TjvVN+VOiq5x5FcoN/HQvKatFhlY6chlBzpA4nWCtE+g7Tr9BtuO0fnwI+rqNEQbTOpXhn5xXywi3cHlyzSMa6gv5FlX7CozxM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747222660; c=relaxed/simple;
	bh=9ozY19np9D59zhCMV9nEj2Z3kQvxFnZfxXl6FezHh9k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NGJu7b/gBM3j9khzbRrLCMojsXNti5ATx09jDp5mqecvsEbyNt/twYrA98+MEObWK7I0MQQkYlawieN0ZBu7uapavqsrGC/ceHI0mxSChfroa+KBWfwOrXBk8XPpFy8FroXJBsTmhm0Y6VH4Ht3HS5UCJmCKLXPROf66toaahIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UTgJrQ5k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuoi4012645
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=; b=UTgJrQ5kDIgzKLg2
	IMmfmq6Y3nB2ARIKT66Wc64+ZdDRSS1DdA9X/aEfYLnzFo/UJevARklyYRRxGDjg
	qL99bSEY0FBHDSBHxpsZc41SmszxIlmvJaDg6Jr7N6N7pDyNcCSKjrlANyljQu+S
	jduDsXouiP1SILab/iryYqCiUTt99eOnBvQrvrykVZvw+MpkdLUKyD5gKCqOAtiG
	Ba37A7Ek/TKTUI6tZdjug0FGKCtBENQohzxcxDubuw/I4lHF5wk83crRL8xsi/r+
	YCHBFxwYte+LjIw8CK5zGnMcbWJZ/eWsMKW41mB0j2GoWO91PrICb8quZ1ZKPiyz
	GLikZg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcyjgs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22e815dd332so109778225ad.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 04:37:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747222657; x=1747827457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zCBrRVec53XJAJcr8a7rcd7CgHI9045Hz8PKjdUV4vM=;
        b=qVtAn1WwqufphIJfAVCbw3OTDUjfW6RrV41xvpP8gEWGB4/FKplD5bCWluA9Ru4A7Y
         6eMVBsERsQDSrTOGC1c/gFjpCsCUzUk+pWuOKUGjHimtoC71A/Ss1Ua2juetWv368ZW8
         b3468re4XPCGf3lpF8jpdhy83G3VcUWc3xnSK+7m6pZVOdgNVaxF+B6MSRE8Pz1YzFIc
         V4rq9jqX3IvyM14gUXrvMkrzEZHH/7wIBW1N5MPjrXv7KsVbQ7Hq3FOZm/WndW7Me9PO
         pB3pQzIy55mr5gb4w9x27J48dVi97L4rJ1Li+922Qx1yGa6WH4veQpfND8Jt8gYr/lz/
         /G7g==
X-Forwarded-Encrypted: i=1; AJvYcCVddtn5SU5bzEim31GeqKk8pl5NDiIUsRdelcrJwP4gDTm+KHAe7cvHI5jcW5G00KUZpPtJ/GOp5/Nh@vger.kernel.org
X-Gm-Message-State: AOJu0YzyDthlfXBjBx/IBiR1mukX0vX+vFji35ItLTTLzgi9XAzpNOel
	H3pl98R4Nv8niX5LW8GQMlhd/DD/Iqy0DA9WRNHaJFCf5JcmNzOZCDihghequ66/tEmVw5l227W
	JHRLav7gl8e+oJqtISdhxXeF6HG1SItYSrReLO8/V1gS6D2xM2qHU/qYll0JF
X-Gm-Gg: ASbGnctJB/zs+wQJblwajZ2hL1XzjAzFDcMl1FX+5om42I0O7Z5wzZg4/5os53yotek
	jCTUtFbo9/POHFEF8WsOdi5yrJcGfOsKWsbMiRsJsm56Qdc9znRUpTvNZanbi032XoZ34UkgtzL
	w3wnYLCKBuM3cirTzi2HfjBX58/w6fPheK0yfZNhbk0HmhLOSZ79+OuKZ54cj4QR3RCZxMuXtqW
	P4OpYIDdffFz6HbHpZSHQMMJNpIcqqlK2MnsyIBlzQ3Dx3jJof/atp8rknbfFNMoz+46AFfW+Zj
	KYXiY/lO9uEagVExt0iwei9V1xujaf0DqsTI
X-Received: by 2002:a17:903:f83:b0:22c:33b2:e420 with SMTP id d9443c01a7336-231981168b4mr43376335ad.7.1747222657442;
        Wed, 14 May 2025 04:37:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy2ANRp1W7Xo4zQgSDDtOxADd63a7Iad8Pfvn+HNLrKI1GCN73ST9TXZ0ahB44k/Td+ySQ4Q==
X-Received: by 2002:a17:903:f83:b0:22c:33b2:e420 with SMTP id d9443c01a7336-231981168b4mr43375735ad.7.1747222656913;
        Wed, 14 May 2025 04:37:36 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2349ec78c3sm8652783a12.31.2025.05.14.04.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 04:37:36 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Wed, 14 May 2025 17:07:13 +0530
Subject: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
In-Reply-To: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747222639; l=1254;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=ZrWCEywu0mWwC+jWkykM+m7UXWwtOyeU4GP0qpQ4gdA=;
 b=JrrlDAXLbKSAfIOjsEe36TVtTbiFuAkW9tkOnWiLEx8yebiEDELOZVbKb97CtcLhNlAK+CzAl
 ikKgVQ0DPySBsHujx6ShsWlrzSlE+8TqZDEAq4Z7/c5rV+dNAXOe5ft
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: u4K_TGqkgDUqytVuXr248D_ZgEYkZXD3
X-Proofpoint-ORIG-GUID: u4K_TGqkgDUqytVuXr248D_ZgEYkZXD3
X-Authority-Analysis: v=2.4 cv=JszxrN4C c=1 sm=1 tr=0 ts=68248082 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=A2jF9ndpTPISZJbatkMA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDEwMSBTYWx0ZWRfXw1uj6xJIBRQO
 4hozjxyPTDtQPfsQEyPiPjSMZS6pmRzCt72HWsLUXm0RGUzlX4bXKipexQNqkgmEz3XdohYQTlW
 vfSc9tcI2Zay6V/pWbgJyYu6TIO3Ko6yl6gY68FAlmTX0tvZ6O9s4hWkZC8SkFK7VR43mo/k4ch
 SHEO4YSggSFrqKIrATkiBSj5rHuORoHNbVgolu708NwVRiwMiCdN3fwuIxfKs41ggi4Cf7UJ0y6
 6i9J0Ok2pMk0loPdNxI7nAzQRjc4s0MO8pS8CdwZLqsCxkjd4nkwanGGxEeEpXBN68Z4IrEbbQO
 AEtPvV2R9hOCQXyBEsHe1gUlk+rqucvkCXvPdF33rHwOmhTomqDMADdnFtHqgwH0BECV5HSfkgc
 UybQx6hUswjkCbAu8oRGT/A8F+CikU69TNP92TnSnpSJmLiEY9Ok0wGZJXNujT6FqcnJv0CK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_03,2025-05-14_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=917 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505140101

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

The maximum link speed was previously restricted to Gen3 due to the
absence of Gen4 equalization support in the driver.

Add change to remove max link speed property, Since Gen4 equalization
support has already been added into the driver.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 5bd0c03476b143444543c68cd1c1d475c3302555..b001e9a30e863d8964219c8bd61bc328be71b256 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -6462,7 +6462,6 @@ pcie0_ep: pcie-ep@1c00000 {
 		power-domains = <&gcc PCIE_0_GDSC>;
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <2>;
 		linux,pci-domain = <0>;
 
@@ -6620,7 +6619,6 @@ pcie1_ep: pcie-ep@1c10000 {
 		power-domains = <&gcc PCIE_1_GDSC>;
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
-		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
 		num-lanes = <4>;
 		linux,pci-domain = <1>;
 

-- 
2.25.1


