Return-Path: <devicetree+bounces-248418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 48945CD28A5
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 07:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E68B301AE01
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 06:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9422BE03B;
	Sat, 20 Dec 2025 06:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SK9HEyo9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LYa05sco"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2C25484B
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766212569; cv=none; b=oxzLl6967wpuOFhNqRl4/yhf1Cq6/eQm2AcnvMBlNSmNYJ38OlccRsW/VY1wDVKiYyvsdDY019/lOnEcWtmxU5CTfbZKffboRx4A5/4+ymlkhtu8A5L9ox9WAQiiUDOCj3wVnnPxum9xzIOHo2YZ89tqTvhWbWulePeqlwT5Fpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766212569; c=relaxed/simple;
	bh=G1gWv8618a7rqJzvKhye4h/vsqybaxCNL//qIdBIfmc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jfbWn6Tbs7lO+8sdxWj2i6tLq9xoqsK5/cYqlp3FQAw723VlItAfpzppVwwmOb5ShDvEFrOz8xNtIM+xhQhjlWqEPgotKIOfInIT5Ka0ibyAHSvQOt52y7GRtCmj+KTJnuR/RxaAYQzJn7x6XOG1hR8mShyBP9BgQbkyhScAfT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SK9HEyo9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LYa05sco; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BK4Rgqh2820270
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dzx7C+q//Ee
	3OcHfJVXO31JMgk+3QiczRw+McarTXGM=; b=SK9HEyo9gk9DstMZfNsuVEFBeiX
	iuW12bfJkv1qqOMWsCoMKRH+mjI+o9uOiazES3FVe4hlQ9WE4XuAV7H/YZav5bT4
	jajcXpoGi3+gTLqFUcY/PLSmReZM4oHPGmJg9tjCEx22Vd6Bv4hRvNEri1ME6jYc
	zDGDDzDDNKp7TfKGfZxTD9DglrmedV2U4mF2Ajg+ActUSMtyX8NPzXQ98sBRWS7+
	F0udNRhYBNvkf/mhBmIa19EL0V4I1+5DMlNNo6Cgqx/us8xzJj5sVIuQyLWSG2Ad
	gHVJ2eV9g6k3Mr9ycF9qe0cEQuBgXEYHzb12qlvBvq/w5l4lFMEeixoWchw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrwr653-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:07 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c93f0849dso2390261a91.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 22:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766212566; x=1766817366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzx7C+q//Ee3OcHfJVXO31JMgk+3QiczRw+McarTXGM=;
        b=LYa05scoK2BJJOL02tuS/5YQfvJIjiFZJek6t6DaJ1rc7XdE91iCmKmytaUg51bVh8
         d8vbx+ECDEneCw2e5opX0XWqF6q7hZcCIUdsxpQNFqQLVrQx/gDcfOSZqQg2lWx0UukV
         5has1M14DQAk6gIHju47+bGkMVzjiRy8Ti4tPud8PWz/KLDPDUoa6naSBHW3nCHnvbPS
         r3h0ffPye1AjnkNC6dgD9vUu1cTW0eS+ijcFVLr5CjZIX2gr1zgyFqEtnJvSRt5q8JkK
         WbCwslBqvifF9PC63X4iavrR+SMW49zl2eOofsbQKsm027JNVVunUYRRE2166ADXtA8Z
         thKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766212566; x=1766817366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dzx7C+q//Ee3OcHfJVXO31JMgk+3QiczRw+McarTXGM=;
        b=OF1PlavPD5lbT0qLdT1xkvqCK39BrluErsDjorfnmoQ91zpAINAUIiMajc9anSZtGN
         tcj6IVO7BRWgmH728voDU7ugqhD6VCDoFmJYlCvB+XRGHU8FVS3hk90rnasAJwukLzkH
         CY0QcqwCLavIfte0gKwi4defpL4uq4gttFn6e4BBHBPNq6pYQ7ZJ6dBvjRlVlb49T9d5
         gMSFXYBrasEb7NJbXusw9lwNeVM6j7qGj5rI3LQo0o2x6w8qSESyhLdwcytcv+Lcyzej
         Oq5w9vt7nEeG1IhRv2dDELiCHclPlZqOwkADBHIC4tZKC54FcJzV+Y9sk4MXivbOA62G
         1GYw==
X-Forwarded-Encrypted: i=1; AJvYcCVmGBG+G74egIwnl1USicGyZ6R8Fvoa522g6r8+MyjnWx16/nKrpZCId8oSkDLHOYIHeIb23PW/NuT1@vger.kernel.org
X-Gm-Message-State: AOJu0YxgsBChtMOxP32Spv7WAZ4/JcAZ9Qiz6IoHE1BNEl8IV3Zw/Yov
	xW64toYundvVSlF0TIc+GFTk7YvAFh6+h/LpFbQB0Dhmge5aoX2L47WNLjhHYH1UvII2e/S+2z+
	FI61mw4GXMliLssBZmSLpJrLX8PH0yH177fYM4Vm1QBGl6gdivCgLQRkKy1ji7XK/oCYgZdqz
X-Gm-Gg: AY/fxX6HtFra30gkZ74wmuFzmmA5mOqGR0RAaHC0rd4DN6pmrxVYWzCj8pzwhOv2Ewi
	qDwH0TUTTzPOozzQodKzKBIWXZe7GEJjd0Gp5kJ9YtiOxJby28cJarhsh2f4/9png7gdDDCwhDk
	ABMdRmAasd6/KTrCRFI/pF5pXPUoBb7ZxANieOQdi0Bhy2WHB3F8fwKs2992AHb0O9+s5rLWK+t
	pIp0Ho5XrGYL4GPNTZ5xM3pxkL+tI2mIpi8hBpxMsPfh3c49mtY6f+btBMQE3n1B/cE4gl7WRUJ
	VvXemzF+auRN3mdPHZYN2GoTYYcd4VTqn366tNsaA9MaSE0uc7/6NTNYdvN5W9LgD17nhAKui61
	VWUEte9Bdxv3IcDVRowu/i9tazu9w+5h9+mhH0ic3H/I=
X-Received: by 2002:a17:90b:3843:b0:32e:4716:d551 with SMTP id 98e67ed59e1d1-34e90d6a42cmr4876267a91.6.1766212566520;
        Fri, 19 Dec 2025 22:36:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYBs2yDuHgDxwYW9beNVaEliIpFPtjmvVWuWEZ7C6xUwl7d8HnoyXdKA7TYDgRuBYV3SKxvw==
X-Received: by 2002:a17:90b:3843:b0:32e:4716:d551 with SMTP id 98e67ed59e1d1-34e90d6a42cmr4876235a91.6.1766212565931;
        Fri, 19 Dec 2025 22:36:05 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7723b3a8sm2847143a91.3.2025.12.19.22.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 22:36:05 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 2/4] usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
Date: Sat, 20 Dec 2025 12:05:35 +0530
Message-Id: <20251220063537.3639535-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: _O4mRny29XO2IcUc-svax8y0lzvWwUpf
X-Authority-Analysis: v=2.4 cv=R+UO2NRX c=1 sm=1 tr=0 ts=694643d7 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dwk_HVr8QTvVkdqdSRoA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDA1MCBTYWx0ZWRfX7V809arzHRga
 taOZmME+Sgj33gm6zvT5Zga3UeS41RkM5Qv+y0uTtmLvizjbOfpekH1+/S7V45d2yBboFaSTlbt
 ABGnJU77NCUlnb05jk9+y5Sk0v7Cb6MVYzQPU5ltJRPjsj5EROZXOsDvlawKVnMTEVpvNd9CwqU
 ePQMRdeffgSEzNP13w/tPyu81ktIuldCItz8vWVoDUz1Sv77qu2fpcIKGBHLiA6XLzSwfyAszpF
 ZvLeNXUuUP1SbORu3AzfkcummfQadooDZjYKLG/zBnhKgyoD179WlPZ1XiO84ms9C4F/zVGSilF
 X89+10yOcpz6m1o3tTqpbLfBaWqQuSrTByvrrwdcc5Md1FU69NWZFaROWF48FNR1NhT6DttHwf9
 gkfl1tDZLhydhqINhimQwvW4sX4JqPWJBoNQTqT7HGg+cXoCoXG0VEB5BDMSngCO2h4gunuvCye
 05Eb7KgGP7IPTNYZ2kA==
X-Proofpoint-ORIG-GUID: _O4mRny29XO2IcUc-svax8y0lzvWwUpf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_01,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200050

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


