Return-Path: <devicetree+bounces-274216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA9hIZaTsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:08:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 41087267003
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04B5A301FBAC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7EC3E123D;
	Wed, 11 Mar 2026 16:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mYimLgVq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P06MSC4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED26320A0E
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245317; cv=none; b=IPe7ofGKtLQAqp9hIIfbXa3M7mcFYUIKgzh+/lqdF06PdiacthudIGvHxRl1P83ZrWaCCiUfys1rBJdAY4zEiWZwVkQZV4KhknjqNWAYp/+YHx3Jzmn+keUilJjuygrDCqWR7gJF8+dlUTsWdjWO3E39mSvQ5hQZbtEMgSnA1k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245317; c=relaxed/simple;
	bh=iLlqblad1f75c+77Eu7RwhDSX693PHnfY+OiiRU36k0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ifuWCgGKmYMoWUxL8+gFGGWaEwsEXsU9WatNeGqKG02RC8qos0MQjpj8bMmu+lGOTaM+ASJZlWQYDLYTk1nbU0penwf2BwP9RA/UilVUxxb3LRzrcteyJFA922KgZ5ibrb//6fKa7SXQLLg8MPuJLpLCnPomewajKL/X9r5z1bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mYimLgVq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P06MSC4z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BD7vYr4032625
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tQgim6yWE8jugbPfqHPbGso8EiolNoLvAlJ40f1fpWA=; b=mYimLgVqXOEVzRp1
	Uh794COu/nq31BACV0bOx8xETj3CsWBaVldFPnJ1ISCZFgiMnEGVE+A/GTIj/Cod
	EGx9r4kbl7WJG7ga+/rt/vpEop/j5ALYYUtCvzEPz0ASAmHPa34IGv7nlAzRBh0Y
	qkrbkeR1mct+/6aPk8oKy6vslBTSZigA3+etVIShpvUT3x6O1XYSOBeON/8Xwosh
	Vx3W4kaiyjaJ+45k2J5CUt6kl1e1gR6yDslVaxFUmS7y3GUeRJ20YCNyyXa9X58p
	5AEUIA41C6xvSNHa03ZvXbHpgOgsVBR+b2KgtoWk/6aLzgkujRdmh4lBEKGzPxp5
	XluyDQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu90t8qxn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d4cc049so3999556185a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245314; x=1773850114; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQgim6yWE8jugbPfqHPbGso8EiolNoLvAlJ40f1fpWA=;
        b=P06MSC4zvzE4H4eAXHp+3RGvp16R1AZ7hquU/TgP9yjDcj0UL5bGrsBA1OtL42bhdF
         O+UXKnjcSS4i7kCiyrAm+nlaBSB/JPFayPZ4FJ75jXsOV3rCk9v/U8msL+VXlvQ4+uOs
         CZB247pPgQqdtQi6CSv3gVRQ3+CSS6N8qkQi0EEZaYs+/iq5egSg/ZWIgeAUL8OzuNHu
         vfNwQ0vckidKdPB1RXplAr7cnM56cD1sdvngsUxb63IjFr6qDOYD3sux79m0gkxM13Dg
         fJ93YR8N+wFQztQZ/QUIW9R2ceRwAENu0Pvlt++heiQ2rsjcsAe3swqlSnbSfwRb3mRr
         KizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245314; x=1773850114;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQgim6yWE8jugbPfqHPbGso8EiolNoLvAlJ40f1fpWA=;
        b=E4ceAGTjXiffFpJwWH6Oh/vuRjuh9y50n6Cxzqu2pcVWZOJGMCrjyc6Dh08M7l7oq2
         p1/cFxnNtQjGsK22mTGsnM7d75+0RfeylFdecF7bzndoUoiEJnSTs8e8Vk0H80s+dPdX
         AtJhC2HiuKTOxQe9NeQuVWZvJWq+HDp7MSwmK1xS9URh1FmZ2Ij9tCaZ+amFaRwlIRYa
         F0ztKCqfMr1uatz+C9LZThwCcfQTp3hanFois9fo/B7oUpTXq46ZaiN+CRXlOotC8atS
         qmQH1MHGj0DZR1NJPiDtRDdKZHFnVKNUqimPZPmXePp8kMArynZvyC3u0DuQwgbsr3tY
         7ZBA==
X-Gm-Message-State: AOJu0YwjD2bQloFLH1rRRwub8m2lO8LlfwqBq6iqIbas5rL9YYXvy3i1
	wt9Ip1zYVXmjnpn+K1h5daQkajA/Sz7taStkJhsAQenFkv8sZxB4LbD7+M9vsXd8tkq6+2F2LtB
	F1/5D8Cu0ICV/r9HPKDugIi6YRSfs1BZkAoQh02DDeYJ4722VFPiq9SQRdY7c6xfT
X-Gm-Gg: ATEYQzxFGQSG1B9dxvIITc2gNx9Rld+NnLELVm+pLKPZNdnWVM898YOCaPLkFTutb2r
	nvEPD0Ou+DbrS33OK3r2WNApiWhZLjb0FesDPAFkvvLcAdJSZfso4yW03IdJdzm6n1Rb42u8scp
	da9CCUh/54Kj37rPgK4kMFFdVMeW8wAF8OpLt1BRHusHDAxrsXnnPNxa0t3W8AXOCO9Iu2rY1y3
	Mly4HM2FDPL8PAuj0nXmZr6mAVcylKXcmIK//vFoTeag4ncAhd5g9JdngYA//c0NPyhD7D/8OkW
	exPORpGiuV/UICygHdOUg+9bRM6bmNBPicYIQTsWIu5c6/7nBQIW5JHfdzF79mxzia4IgkKvY1o
	e33bv03j1s7+HMhuvcKLT+1mTXoELjQ/FQS5Ct5voKBHW
X-Received: by 2002:a05:620a:31a5:b0:8c7:1b17:e8fb with SMTP id af79cd13be357-8cda1a87c40mr428197985a.49.1773245314124;
        Wed, 11 Mar 2026 09:08:34 -0700 (PDT)
X-Received: by 2002:a05:620a:31a5:b0:8c7:1b17:e8fb with SMTP id af79cd13be357-8cda1a87c40mr428192185a.49.1773245313590;
        Wed, 11 Mar 2026 09:08:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:03 +0100
Subject: [PATCH 07/12] arm64: dts: imx8: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-7-ea1cc09fba84@oss.qualcomm.com>
References: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
In-Reply-To: <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@dh-electronics.com, linux@ew.tq-group.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2815;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=iLlqblad1f75c+77Eu7RwhDSX693PHnfY+OiiRU36k0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNkkCgi79yXjssmbqsDOBlmEM+iM+233kd5Y
 yIQ48IBXkSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTZAAKCRDBN2bmhouD
 1223D/0cBbQUE36jrFXET4DyV4UuMhIvtbdvtBvRPdhBwLlIkYLK7kteE4OCh0euFw6whFzu+67
 1vHW2F0uurogdT/HUtE9n6dt3NO7ll9oibFkdwpmxUE/7Nde/rARs4dyhHAUh8mTzQIQ2KQFO0x
 W3MlUay41GR35UpbIxAqhlPUhisFz70ohnI+FgIrhArYdsb4PO/lOKJfle9aea5P4flarhuWZ5W
 dVACrEfesRfQxbGyROForjNVRcMkh7+S/ZiygkrF+IlXnhQ11OD1Ip9rSzsRGyvROP0dM0fbKqM
 WdOxCNb3c/F3UKDuUstP6KiFdWGZmcMMSYtKqwCcossfD77++ijC8jtmeeOH5MLuliZtpWR5qyq
 CMIlXEM/PeqAwklTU+wiBZhPdlU41rHPXHvaU9oIU93jfS6z/5WjRFVJ6pG6joFSE+0TgQqMgtu
 d48pMsXm5DEnNFzaM6Gw1uqc1/FvLI4U6TpW87VLggBW9harxueKWyoMhV4FbdOnyWBiHFK6Yn4
 HDfq7PoB0pS0mUwJ7N/JNfT8Ymrobhao2BR3KS2Qx6yKAaf+DkT61OXQgEjVw2etkezHENus17q
 s1BZt7lDUxa2TC1GDefFEXpJmUrCd0v5bKdowiZ1RSHmugajogP8hcKCh63MY3YnEP8X8inAqLz
 5I6lbpO2aB7F5vA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: EWNLOklWqUiuMYNt8X9R946CuJQIS9GY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX00tlvL6JVuCJ
 waXGLWJkceiJ+RA51qM6sEYyz0ZrNw6W3I0p3IqW8t9g1Mi6wCwe+2bRPtDph2nWKNfOpq+P5ko
 AjEWOn/X3gdaVOyhEGlY2SBuC7ftDWLqRZUvt1YijAAacxpLtzv8qInRY+FHtTsLF6OgOZWulWh
 qgvogXjDkBp4BQMvM0c8avXdkQrs+ncPi1sa3IlKBlY31gpXo1fvNcTLwmcB9lLl29tVkicVP/C
 gHWdzLoQjlDw2XJLQ/FKdCw5Sfl92GB8lK1rjAlExV6E9h06cZ6DpzX2BtutQSd6E2YI77haLcI
 qFXOrbS9le1tw3/Kw/79FU389j3Qb6GHasA23ol62QyfI+4rsGFR41giXX+N2T1TpQsIt7c0awA
 lm8zOZUQDqmXDLijV9Woop9XLeFK9H6r+Q0MSzqMeKmqGW5RDx6dh6kjVRaim14+x4Br6G9xa//
 7SlOoyB8xRPvsJDayHw==
X-Authority-Analysis: v=2.4 cv=DfEaa/tW c=1 sm=1 tr=0 ts=69b19383 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=J5n0A9H0bXRu_Ym2jYcA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: EWNLOklWqUiuMYNt8X9R946CuJQIS9GY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274216-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 41087267003
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 4 ++--
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts       | 4 ++--
 arch/arm64/boot/dts/freescale/tqma8xxs.dtsi         | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 6fc82b5eb58c..6d8a57ff56c2 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -806,7 +806,7 @@ &pciea {
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	phys = <&hsio_phy 0 PHY_TYPE_PCIE 0>;
 	phy-names = "pcie-phy";
-	reset-gpio = <&lsio_gpio0 30 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio0 30 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_switch>;
 };
 
@@ -816,7 +816,7 @@ &pcieb {
 	pinctrl-0 = <&pinctrl_pcieb>, <&pinctrl_wifi>;
 	phys = <&hsio_phy 1 PHY_TYPE_PCIE 1>;
 	phy-names = "pcie-phy";
-	reset-gpio = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
index 5c68d33e19f2..bdd1dbc6b322 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -651,7 +651,7 @@ &pcie0 {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcieb>;
 	vpcie3v3aux-supply = <&reg_pcieb>;
 	status = "okay";
@@ -662,7 +662,7 @@ &pcie0_ep {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcieb>;
 	status = "disabled";
 };
diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
index bfc918f18d01..677a05b38391 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
@@ -407,7 +407,7 @@ &pcieb {
 	phy-names = "pcie-phy";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcieb>;
-	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
 };
 
 &sai1 {

-- 
2.51.0


