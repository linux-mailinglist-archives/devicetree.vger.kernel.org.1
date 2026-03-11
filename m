Return-Path: <devicetree+bounces-274219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DolKvWTsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:10:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F62267080
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 087FA301BA53
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E9813E0C68;
	Wed, 11 Mar 2026 16:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2BFa8vr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kxWSEf4i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6033DDDB3
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245326; cv=none; b=m1K14s0FnZTTmWvGbmoonJhUoDMPYl/O73qT9hOQzOC7TvdFoEmNludjDB0iu7AaecCvXq4gh6o1KiYrywdfi3WaHTIFBNMBLJNHKzS23X395GglT6vtHmLWw7vZLE3mxYitLP7bvjEnpW/vcPOGS5APuISWnHsUFHG7vonsbt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245326; c=relaxed/simple;
	bh=D9IKkSDhQkZ4CBlACMDv5In+s6nGyoHpMlWQxtEa9Y0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uGvpv8BxH6u5D3/FHL+jjj70pGfkrCVkfPII4wMHoNhVEnOuKXOUgkicP+BK9b5Awr3fLuGHoYBWGI4qEzptl5dFSud36HuaAfSrXCxfInSI78Z85wN9PKDHo9SWKK4g3zPu2nVpew0M7R73ikjK04AhIkMSBnbz3Kzkde0lnAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2BFa8vr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kxWSEf4i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BFp4XE3171886
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g/GB542IMmzWnaIj2pnKfeVpWqji25xL6rPmBPjh2hk=; b=N2BFa8vrDnXDmhvh
	6Ocouxdh10aJnRY2siGwomoymwu/WkRw8cvaAH/lYKhQu/aTvO1RVl3Sx5iHvAhL
	Ed1XEvlSZDPS4GMHdmmHtcSXkQv79bt1S9RU6LJQ524wP3rzW5nUGX49odwDxxy8
	tb6grplFGr7m3h5WcVb7QMM17oVE41izb2RismYrEbGkwuF5/J4+h410ugqA2+Bo
	51gtu6u1Z9WdzNy4aU62wBKgQ7U3k0YCmhEOsYxtatyO9s9FdHteufoNBQEIYBBO
	Y4kgJpOkPjMpQesR4K8q52wFZEn2GyQETTx6EF1oIdBrp4m7VVwoCBjfteFJfCz1
	jpqcsg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cubd8r2jw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d66afceso2424018985a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245324; x=1773850124; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/GB542IMmzWnaIj2pnKfeVpWqji25xL6rPmBPjh2hk=;
        b=kxWSEf4iJRojaPyX5X0UOh2IfC7m+5Uf8omeHxjA+whp51pJ7oJFMR+7ojDRuV0FVj
         bQ3cJmZuXERzZhSCFkViVEebEBvnwP7hFLXFvVyVyG/lrfF0c28tqLtR15xYiF0Cx3Pq
         ZIlbBrta8zP0fPn9f6lLSEKmkCOs4fBTfHD/t/CmhopQbHHCXPVH6UEMh3+mYAxZOBND
         W1w5QG/ICwpKU8+XmBuuwO3X1Nps/YXQY50KrrJ9Tyy8A881ddDR0BwbdRwN6uQupWpB
         +fdZX5GpmeNEErU0o6tVbO+XjfausWRgr43muLjIo0fugOmAuidlCuyzU4ZBu3BJYxPx
         qUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245324; x=1773850124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g/GB542IMmzWnaIj2pnKfeVpWqji25xL6rPmBPjh2hk=;
        b=WtHg87x6nvKf8owqmX8Ll5beegvrpv3ZoE1Tc+E2xwepNLuC7EDrejHx7Bzk3MHFPG
         v02BymzifdHjbomU/+ZcZX5cyqwKsJvxTnZJ6wFDwu3xihcEgfYNc+Xg49dFQeUP1txx
         v1gOCYrlM7ce4cQ5oYB0XZTF4kQH3uEx2ecRm+xby1QlmmyXSsz5+AMcs9NEENX7TnAs
         tHVqw62NYkPi1J2SWMOsSrwK0cxwck55JYJM6vt0Gr10ifbeBjVtt9CQ6bSNDui38ihl
         DCvqi+IYaYKY+TpczRJP2oisa5IKKOwlOBPvUx+CwT88tuP5Ych5xgalR1hSePjeoY0E
         EvSQ==
X-Gm-Message-State: AOJu0YzyMhBOtJ/kdTkESxEWEEPyB//GEI52lNaAPmFCfQMoxnCvtX4B
	BC2QdCR21e6oCFQvD6k5YUqXWEqZ4LojjhZEqp+v4VpwMpRVpFMhXAU8hm9Jkj8H+pG2q7TUtVm
	bMQYMt17ksUVERIQHNt8YrsKWbzwTVdHwS7FfkrCL96kuas7Gfs5VTswOH/GDaDF+
X-Gm-Gg: ATEYQzxL494vJB5cl4uRsok6ZCu/kqCcAjXFzXqwmRnykog8tbl7sDDDTQ6R7ZTMPoB
	4aejt7Bhn6JDT7nRI2Dcpl9DbAgXmThblyny0fvVK6h5b8qTtvq2MnzVEF2Nfr59+xhPU5hXbF/
	oMmAWBdCS7Qd84nTAYH0Udkr145alZsLPsKaS2yrVsocASgyS+v97pHCsdgnclXhduCIkGfnjhD
	yWUu/SeFs1wtoEBA/B+UrC/asL5WqbcJzXPOXCzkb+spueNCPPFuFsey7by4gzTnGkkMsIjY2K0
	6I0MPMj/pu92QqctowfyiPKQLbcePO1ZukoVzNgb3+h/PlR2qZ0zVw3UXZ/HxvEQD8ZscODpoxo
	htd+3DhclWO1zVu2BA8iniFXe4H/pcbHG3F/v/xhthKMl
X-Received: by 2002:a05:620a:198c:b0:8ca:2cf9:819c with SMTP id af79cd13be357-8cda1a2d227mr390677885a.40.1773245323401;
        Wed, 11 Mar 2026 09:08:43 -0700 (PDT)
X-Received: by 2002:a05:620a:198c:b0:8ca:2cf9:819c with SMTP id af79cd13be357-8cda1a2d227mr390670585a.40.1773245322571;
        Wed, 11 Mar 2026 09:08:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:07 +0100
Subject: [PATCH 11/12] arm64: dts: imx8qm-mek: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-11-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1328;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=D9IKkSDhQkZ4CBlACMDv5In+s6nGyoHpMlWQxtEa9Y0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNokQ8AYwYH0RS4+Nbm67yN/nyBv0zU6Tz6R
 v49hE3+HXaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTaAAKCRDBN2bmhouD
 13ODD/0SuhEHzZqwnJhU7xI7M9xh3DKYpLg7HXx3ohOLk62EHJ6v+Ls5DdcFS3H01409qPjQWKp
 Z1W0+g0wxfUFwEwYyNx5gNNLYD1Eotl8+Oii3dMU3tIFWCE4PIMfo4iPp9bqttLNIEt5XVmMVXc
 OcSWcd0ex3pMt4s3DKFaWAYVBZFG5g0nZOfaeYqEpEhzyLdkO+iMHMOPMy5spDXmaq1ZqVO1v2S
 CTkjud1EguPQBWbKEY/LBKrRNp85SOIb8fEbZyUeBz/XE4c+rr7swVAh9BN/+p/n7YX8TlznN9t
 zWAmbL8dhqhNDp+BGVmbzGlN5wrtJ/47micS5AhqnZOb9kjPG7bVcSbDvd5gMOB7U4qIhbAuVR/
 8+wCU87J5bNa9o1154CcK9jUGVpBRqVUNIc0x0ZmyKNq49q8Qj26MB06xvDTxDTkS9lqv/yc9np
 pDjQC3ptptr+DiM5mXXHgmCNox1PpP7DmRTwdqB2MmwEoBP7nouO/Xfn2beTwrC7rIktscNhlou
 XEfFBMno4c4wH01HWazHZkzFqmQYxG9TfVF/ODJEj7s8YflADILAoXuJGbeLpIsKwfX7OM+TttK
 pLJlo6bAZTT/qNnL5C6mgv/URRZtJACq9phdh1+jIwOS5d2JOnKhftgmA2X1whrJWShEwx5sp6G
 y63PyVeIzPJBEwA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: 22dXlg_RGR15aFDsGAmzUqfJHsbZYlSx
X-Authority-Analysis: v=2.4 cv=eqHSD4pX c=1 sm=1 tr=0 ts=69b1938c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=rBNLUka9-jj59pslBkYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 22dXlg_RGR15aFDsGAmzUqfJHsbZYlSx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX39QeycKNNdbS
 XRDgM9KNMpe+PJPzjHYuIYuzNLALbxFMXOMy5kZ1VPoL7a3CBA7uxz+Oufd9DlIaXQp3W+Jhzn2
 oAfhnOzxefYSMY2dQu7nhV/nXYExSRJyqTnnWLRtFrQMb9C392vXdQFjNNGmQqicf9nbON1b3ss
 O1SLGf/OBUdB6k2edIxzl8n8rqLZ+l1NQiujiPqwml4vPggh/00oFii/VDPgx6gcT/H89LFfujd
 bWBcAyqrl8TWkolPmUqbJyT6DRnUPZkDyvnB4+rwjbHIzcg8J6tjrQEP1z+BK8JLlqK1AmJvtG/
 XELju3ygqsgtvhIZFI9xiSFFOKGEqcT2wd9aKbaGJImX21bfkWciap2UpY26ZiDubsakP7mCr5i
 NNJ68wEq4wb9o+jA+7WboVjR/cK3wASXDblomXU+w3yyQVpppJE1jwVWLtmAJwSnKRcs4Fb8UUm
 GIvQXXj6gAqIMu7E4kA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274219-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 55F62267080
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index dadc136aec6e..2595181504f4 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -802,7 +802,7 @@ &pciea {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pciea>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio4 29 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pciea>;
 	vpcie3v3aux-supply = <&reg_pciea>;
 	supports-clkreq;
@@ -814,7 +814,7 @@ &pcieb {
 	phy-names = "pcie-phy";
 	pinctrl-0 = <&pinctrl_pcieb>;
 	pinctrl-names = "default";
-	reset-gpio = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 

-- 
2.51.0


