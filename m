Return-Path: <devicetree+bounces-258268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCQELOHvcWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:37:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983464A0A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 978C56202D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13B53B9603;
	Thu, 22 Jan 2026 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="optQ1y6p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VfUWsNrB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0243AEF4F
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074161; cv=none; b=HVA09h6V6pXo0599Jv5/n7OQUv/BTORLEFDbFrVdHA26U7XoqPMbo4S0uuLALYKggAhxlrlhO7G1/Jo/OWLuRp6kuHoM/G0vdsQExLjbvcVRaewEhJRH5uWZ2sS+dLMrkXQArwCuzYuMRfUTMmue6iG+s63H68hC72wLyOumN1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074161; c=relaxed/simple;
	bh=xgBWD3oKMcE0R82PzRBSvFmKkjuou92lS4125almkmY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GiDCCMoj/BP2RY/yTJLCv6E0/jRebW0OShDxXujIRr2Jx9wyIlLqSFKvHw7nCBxJx5aXKuhdhUJkiGWhkBmda/vFGvNqTdgIDbMA7UKS1COgGA8krfiSUV1KhzeNL1GO/ssARIy23QcofajNUgj3Gkomk3y7uaO6f+SaRfRQ2Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=optQ1y6p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VfUWsNrB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M6rajj724821
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=u3izV+aJ/Ol
	nciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=; b=optQ1y6pZtXwdQtJ8SA/GWaTgcL
	rG2OvS2nTWabkU7omHqrSWGRB6Y8hMudXsSyp4a68ADfmja4XrDSMgiMtVZTyZ0d
	sx9JObldx5CxoOe2z80Tgcl0duVxAENaothTAVJaamwDSiHEJk01WSQTzTsPpLYa
	niS9g4xj6p+lmukilxdOYDumEqJvaSDyyqXruf5neVEBdcbjUHoxsBIvmId7+p2G
	sg55Xgzm9E+DjENlXe60jifFEAsDe5PPp+Vyp3s8iUfPu3XYfqm+99npeD3bg6Kj
	bqLXY4B6ACIZ0RSAPhcuW+dKUjL153vAKANIssSrnP53XuZmaNLestp6Iog==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buf1bgfc8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:18 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b62da7602a0so543127a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769074158; x=1769678958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3izV+aJ/OlnciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=;
        b=VfUWsNrBV/uJv1Ia0xfXAvMuUXqY/I+rObVEQcoIBanFDE7xhg2ryojtV1ZX1I5bEk
         7fV2ex05SM1bCGizqzG6XBPgxL6lkB8GpobeB+tj3WhK0yFm58joZOtpsExfqaQAduY1
         AGgbQWcksbRIcEC+I1ak7zn5fKsg8LH8L9IvCud960L9WRbPlLFsPjBwrJKPDLoI74io
         vIu4iXink7pdMUDeqlaMjwGGMHRN2t3nyCWbbMZZ/IivghmMVZX9syCfmmKHRYwDHOLS
         KVnC+FLSRaGq6ULoF4tPkC+mqrt+m+m2eFuMf8eU94JBD6hJbWNzjPjr+wUMTeSc+Gf4
         jYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769074158; x=1769678958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u3izV+aJ/OlnciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=;
        b=sRd6zd/1tj2j9k4DZCy4hJKyZaYoep82qqViNvhTLvnR1oht7S06f02y6uyDcyAP87
         hqcdtHn3WOOjBbRWj/B31ZWZ0TLt03NGGAeOdBDQ+pwycT4EBrgT1wRC/ZSF1+IM4pTN
         1tFi8v8213GuNuMYmqObnNAlr5kGo3Kz/Bsdh8HBA6d3v1XHKqjXtmbzFuvYkfxE/yvw
         Kt179nMraINoymTRHiVXz2+DWd8t6ZKG50dilgnVtDg9xVVAYSUTSG7seQwCnLM4QMfG
         967vtYU1RT5zlMKIaz5FrCUafEW70wgw3pVlfhh34qVUrgVM+aVMRJz5YEAmcO0xryDP
         8AEw==
X-Forwarded-Encrypted: i=1; AJvYcCWurrhCXWN0OroXE2hteMkWLu9LK3qrJSAz0QA/tA1Ydz9YvKJyLCscCi5C8DmlxmNai8OmcMsbNNjf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Dei2oqiw0ohPVlx4MVHYSg+26dWg7XhbAhmv8ymv1NUMFXba
	tb2Cd0o3RQe17POQ26EWlOZI5mussbcOHoaAHaQFxETv9Zd0tK0K1IL77DrVVLyjdd2IcDxJnSq
	s6+Kexyes2lKejFKQqypHuU9qSgbPlsd5mMNwT/6sR8c/Z3MRUeNusoUHKzwa7hW0
X-Gm-Gg: AZuq6aJME6ovhuNgKB6WpVgP46vOU5thzQJ6jJfKf3veIACQaskElDYLpaowlM5RtIP
	C7SGFZnRac/oSoUPOdTDnqe4Mw2xikqz/fNFK/DIZw+++ncmYMC2HAkmzQvvTd0FHnEJW62A6m4
	YC9+kB3Jzd38Zze6uqgo4xas1+e7AztzfnUUemOeOeEX08x66lkfg4zClp25wPs9lKfT0UwW3hG
	vphb6b6vvoIUd12dzNBaTO5KMMzPRsaQrepdsYJwbfdx3ESifsftAS85NZ+D4Q2iHnW34y9DGXR
	5cPbDL4PqLOzxYNLkGzw1xa2fBhF7iZmmycu4DaFDYAx4e+KXXCdeynjpez6/QCL/CMp6GcBdoc
	FXeRMUXhGjreEEqW+CPApN+h3vGb/5JJ5qtpdm+Qmuh0=
X-Received: by 2002:a05:6a20:7d8b:b0:38b:e68f:4645 with SMTP id adf61e73a8af0-38e00c038a7mr18068426637.24.1769074157655;
        Thu, 22 Jan 2026 01:29:17 -0800 (PST)
X-Received: by 2002:a05:6a20:7d8b:b0:38b:e68f:4645 with SMTP id adf61e73a8af0-38e00c038a7mr18068389637.24.1769074157124;
        Thu, 22 Jan 2026 01:29:17 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf355ca7sm17395247a12.27.2026.01.22.01.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 01:29:16 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v5 2/4] usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
Date: Thu, 22 Jan 2026 14:58:50 +0530
Message-Id: <20260122092852.887624-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: nbZmVa0VYcm4_a6zbykWr3820mIAmq-6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA2NCBTYWx0ZWRfXyXzMsFpYy+nR
 iCpZPbznEDTxAZsv6gBXwaTjKk4aSu1GwTqjWM3lPv4wVH7+Fugfr67NV7fiijw/WR92houGoah
 WnLeM3Rfvp18hFvAjJeeJiPzwiTqxOrVNntdnob6yVqX8ztaozlhRivocNCEx4dDrGAvsYhqMYE
 s8ASOU2+sBCpZF+a9VN5nc7sn/emAxthnpJZPVdwZ/a2BH5VYAP+hPOyNQeSS3dM9cuFun7dcHI
 0e8z7pCYFffDBvSl7LrpVPK33PAZoGkgN19qUz6/jkcHsDbjfraGZy4N1dWPwFtJsPttXZjoeZb
 DfcPf3jqwQ6gQf8GZ9cAdiwSO0Oz7ADoDSetMgASoe8uqCcEYxG3A9mafw3eZqB7OsxsDJh2AH0
 /POdS9hPXfku/wO1cZ3RLFYwGyd9rC46O72DtaJ6Bnq4AiRE/suGqEEsT6n+VYbA3pGUiWWLpzR
 FesVHW2HVQ4zRgc6nUQ==
X-Authority-Analysis: v=2.4 cv=G+0R0tk5 c=1 sm=1 tr=0 ts=6971edee cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OYpQ5T_13xl2kP2VnJ8A:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: nbZmVa0VYcm4_a6zbykWr3820mIAmq-6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5983464A0A
X-Rspamd-Action: no action

Add support for the GL3590 4 ports USB3.2 hub.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 drivers/usb/misc/onboard_usb_dev.c | 1 +
 drivers/usb/misc/onboard_usb_dev.h | 8 ++++++++
 2 files changed, 9 insertions(+)

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
index 1a1e86e60e04..af9f3a33e850 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -108,6 +108,13 @@ static const struct onboard_dev_pdata genesys_gl852g_data = {
 	.is_hub = true,
 };
 
+static const struct onboard_dev_pdata genesys_gl3590_data = {
+	.reset_us = 50,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdd12" },
+	.is_hub = true,
+};
+
 static const struct onboard_dev_pdata vialab_vl817_data = {
 	.reset_us = 10,
 	.num_supplies = 1,
@@ -147,6 +154,7 @@ static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,625", .data = &genesys_gl3590_data, },
 	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
 	{ .compatible = "usbbda,179", .data = &realtek_rtl8188etv_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
-- 
2.34.1


