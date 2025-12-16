Return-Path: <devicetree+bounces-246992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D7FCC2A53
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:20:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B38E2301C8B3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E8E34AB09;
	Tue, 16 Dec 2025 12:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BYfT5lBa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aCevg7bv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7069348867
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886908; cv=none; b=T5uv+0y0BNEhndlocQ0QgFJJFJUgx75y76hxkz5EcmL7GpU7LVOm4FxVLBliD2QIhUYx2Z1xn/xuAMqY5pafS4aJxXoo7ipVYuheDX55jmHSf0937QcHoNsoVQcSELlfPUrXX0uKx0NTylLbWCqAMK+yEWfLr+E7nT69Y6Qexs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886908; c=relaxed/simple;
	bh=G1gWv8618a7rqJzvKhye4h/vsqybaxCNL//qIdBIfmc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mfH7iSV6ejG3W8oWCw6VZENF0rDfvmddGlN/fmBDilbOp/p4HhN4IsFxwK1uc8HO5LP+uivpXnu+2Uvz0b3h100cBtGmPYETwVOvzlpyi59+3raJyG4XtY86NH55aRjOL4RXVMwTVG/SWjTfCw4wDxoiRvpW7gybWjDDm7iAeOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BYfT5lBa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aCevg7bv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC7I7o3708638
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dzx7C+q//Ee
	3OcHfJVXO31JMgk+3QiczRw+McarTXGM=; b=BYfT5lBawHDyscdO1ONZpSxuqtc
	Npl1qFD0+kBL/DxsQYmaTPxDaGpkilxdNqCIE2G0pDSGRJjD3Nx5eUWzW+ZZZcBe
	QvtILbky2wQiZPOsvdzDoMnSA3JG1x+MhS2rywk4fIYU+M9GFLpeY9HqF4Go/Z67
	fsU/p/QNtns4S0Bc9ZG54DFuKyxrvV1l3k6Yqd7HTxgOeQijAstjufu1Y1t6whD7
	YNfsCaG2W0H2o4P2bPGEc4vy9PRS2QYGb//gHG4X/GIHh+fjKZMvHUpr/usA2Flx
	G+hRrfe6x6rzrb6RwziduGWLJCk/aYwQHWiOtN9t9iFbK2MpEdeLdJXTvoQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b375b007g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:26 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0a4b748a0so69136385ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886905; x=1766491705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzx7C+q//Ee3OcHfJVXO31JMgk+3QiczRw+McarTXGM=;
        b=aCevg7bvxpGQbprxTK85bM/cT0MCw8iucxinWTgCXSTpo4lN3rE0i5GKgWY11tM9gB
         VbSKfRMGtZgvdXrPvj1qWKDubjAgx7rdxZtJ+EZC4K8Wh/EK+7BcA7UeFhH22DiNet30
         rj0iARAe061huxmRFnLcxWoehofylprtG70kDLma5M2iXipJN8FRrv6uGtIo7PC2OMls
         P46CFMqidFDMhrmCkrvWJStSHG4KPBgy0XSy4KKnGNWiFk2mAqUHZJBzNvw4tlurnEmv
         pdWfSLcEsdR4+ZND8zGcS+COWj+3vx6nVPVai3T4GfrdUp1M2KzoOy4Lg67fvhCFYLMB
         tZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886905; x=1766491705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dzx7C+q//Ee3OcHfJVXO31JMgk+3QiczRw+McarTXGM=;
        b=U8rlz8OdFbmqk0a/7VW4Hy+gBiF8Z0KSJSU7jiPtpV2+26+tJqKuePMekHfOOYY5Ya
         lcZRZtkurc5WmByDiXxS1rhZu+gHyKwXAR+fNx+M115ubSNN7S0FOCWhRLE0AmJvNXMs
         OJ4VFhiWrZPk0+YTMlTgSwKVplfItVyUSw3TSspRovd4CTxfg1NcUxMfWz2JgrBChmA/
         TqcJPqkkPvfyqW/TY0tLIPMYV/5f0nEkWHN0GhljwG5rFchLriEGuQzoxYdQNFNeH786
         PmodECNTfynpdmsZIHJgc+2bTBoahwh5YorRAgmXQcFW1rJD9EVakKFofHDyD0wY+Jse
         5/dA==
X-Forwarded-Encrypted: i=1; AJvYcCXSVDmpjxShk3E9kPZvUD3z3AU8di4/2ATyWqCP4RkGzP5DeKRRxu7BlOWdwxswhyOBKrH2IPVV3E2t@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj0/uzWJCpA7ORUlf/Hi/plSZ2Z9xnGCV05S7gBTXAgtEhPpDZ
	ndYzddmGoW5AnUQUwo+8Iz1z/bI+RxGjy0BU+QCFfR6IEvye4YrdwR9ZbavCJa4qJENcy6UzX53
	4k4UtkQ+ULSsx2MzfCm5X7rQ68Od5Fq4d5T1p029A7OwR1exIkEEAqnx5jdpiIZ1D3jRLFgcu
X-Gm-Gg: AY/fxX6uncR/E6LUzpnyMyTc2eBI8xeJXuDlCFfC5TFvhGY9pjaOL9Gvth266CalPmh
	0ukvRVtt0wbK758+6AtDK5/ikYAypvpjqMKFImdw1x9vaCaabS9C6nHnMOIEIgjsfGPES0OeABT
	whmj6u1n89uvwRDcPhy3jSoWcI5BfPHmpFpPCZ8Rq2DBxCTA06fILPT765uCM8QJofsC7Afb503
	721Y53rVtsaFvM1DO2ZVNvqyEr2q20xpIPG3VRvprBLRTD1goIeQqzxti9f8D1Xo1firIddmBZB
	TWwWN4D8viA9Oql+KiBPuHgfxXFPliVwx3XVrbBy3N+Rxe73oHAftdY+pnn+BXo2AExLrcK+SWU
	FpuuybjgYheOghoAVykcD9nRne5z9AXpVzKVYfsBCxbE=
X-Received: by 2002:a17:902:d510:b0:2a1:388c:ca63 with SMTP id d9443c01a7336-2a1388ccef1mr26573315ad.31.1765886905329;
        Tue, 16 Dec 2025 04:08:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuPHIDntGjUvMdy4jJIYEkJg9o95Lv0EUmUCHsfRKmkm+rNfF0ywWWdcAuxlb5uOs+1Xyr2A==
X-Received: by 2002:a17:902:d510:b0:2a1:388c:ca63 with SMTP id d9443c01a7336-2a1388ccef1mr26572885ad.31.1765886904738;
        Tue, 16 Dec 2025 04:08:24 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a110f6374asm48568695ad.63.2025.12.16.04.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 04:08:24 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 2/4] usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
Date: Tue, 16 Dec 2025 17:37:47 +0530
Message-Id: <20251216120749.94007-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
References: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX+phPKodeYPxy
 9bi2SZmMH64Q/1BXTa8MxHtpgTTxO7GhqHazvNfCJREB/6EOKixG2WjVM/+fz43Nz08iLff4FNu
 ykoAZr7SpIReq+I1X8Jn19gBf52HENP9dEmNUySD0nTOQk9Wk1z3NY2+9KkGe/mzkIrAkyarkSC
 f5q9kjhVJyFDRQG4CH7iA9eRupGaWwL5X+8mbQIKcWbvumGo87mvmkJ6LTRqaGGPEL1mK+LjjvS
 y2CXGogTD/9/cbAxBMnRaJtZKvzqah2STRcYFrU9amsOZDdmdGX0yrWo2dVzpJ1+2ux0AAM0+BS
 85FtUXe7W+vCEnNh75HH+Rp3nFQsSHG5MDis3X2dtJws61OZyZUzsm8vmY8GCR5jILjn7HoYX5c
 FU2pZTL0uoj7ZNdzX84M6h1BD+luTg==
X-Proofpoint-GUID: 1SIztVVzfCm3IM2GkDcm0uogzKgz4buk
X-Proofpoint-ORIG-GUID: 1SIztVVzfCm3IM2GkDcm0uogzKgz4buk
X-Authority-Analysis: v=2.4 cv=T9qBjvKQ c=1 sm=1 tr=0 ts=69414bba cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dwk_HVr8QTvVkdqdSRoA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

Add support for the GL3590 4 ports USB3.2 hub. This allows to control its
reset pins with a gpio.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 drivers/usb/misc/onboard_usb_dev.c | 1 +
 drivers/usb/misc/onboard_usb_dev.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 41360a7591e5..bde303b820d7 100644
--- a/drivers/usb/misc/onboard_usb_dev.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -661,6 +661,7 @@ static const struct usb_device_id onboard_dev_id_table[] = {
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0620) }, /* Genesys Logic GL3523 USB 3.1 HUB */
+	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0625) }, /* Genesys Logic GL3590 USB 3.2 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2412) }, /* USB2412 USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2514) }, /* USB2514B USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2517) }, /* USB2517 USB 2.0 HUB */
diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
index c1462be5526d..7706a04f2630 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -140,6 +140,7 @@ static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,625", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
 	{ .compatible = "usbbda,179", .data = &realtek_rtl8188etv_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
-- 
2.34.1


