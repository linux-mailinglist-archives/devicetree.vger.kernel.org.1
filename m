Return-Path: <devicetree+bounces-274211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP6COPOTsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:10:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44835267079
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56E1730F29EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5593E022C;
	Wed, 11 Mar 2026 16:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ktwEc8LP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V1ilm3aC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5C73E0C69
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245308; cv=none; b=lgZ/DBt0iESDJWsOiui2qEaiXSF//ZwgqzzELETYWzcEilW1BRnASK2Bk4VgNy6zhSw0qmJvZVKWhJmr572UZVLdPsKrYMXHFi952NIYswFfxBJ9llMgpSTHig6j9VRdp5Z7SuPOToewnK84dRA6a096cxVmaEDlVMualvjQ7sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245308; c=relaxed/simple;
	bh=JwRzNt4B6EnGT7UaefAGI7rGsOlsfOONVNQNtf8/iIY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HbGbQ+mGSPKLHk6yRypb+769lwCFysozt2nKdL5Tbio8gfARAVCblzpGkEZXaduEqx/mWziUYThPrbE7TLS3F/3QpwRoDO/ghIOSUnpjCjCMlXDY1knumrE6nJyu+V85J56jIJ8SD4R2efgDfyen2n6X0I8jSMe+XdYhoo1T2Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ktwEc8LP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V1ilm3aC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BCsj5G2031208
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yCDmbAZx5fR0Oyd/mH7xT0WBu69Jhfu7+1RKrHRONVo=; b=ktwEc8LPImY8+HAV
	xng+4HQkaBvKlgA5ZhhjHcv6pXlox6laU6yRfFCtGWC+bR06dW+cNf4NjwZQFN52
	Gi9poDbJYJQ/Gqn07r83C2XkoodZ8zD1S93lk9VbhX6TBIgVc61wf7vhnMTyaC13
	Yk832f1AQ4zp48upEdySMhsdJX9XQl47a0P2bVHNcBHrP+RUAA8aCuJP4YbJn/8U
	+6++f0hRuhJUl/uP0T1jrGedUCSrP5n1i9uZ1TrqIFDqgmK5FzDSgqqtLIOb05SY
	wXHHxfFgoFs57AlnIluuNrwp+MXMfNkLGayBOoq+qIphPXn30eI13ExnCKA15Jdn
	8LY6Tg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu40h2075-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:21 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5ffb9a0bf22so114773137.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245301; x=1773850101; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yCDmbAZx5fR0Oyd/mH7xT0WBu69Jhfu7+1RKrHRONVo=;
        b=V1ilm3aC2cokpV1nCZLxHs4KhYfSOwMOhhvtWFb6216UUITKrD1oExHGj90TpQd6uD
         DNvVluk1k1ReoRf1A6TPM+XrsW8sOftBCMgnOYdXJZ0l942JxdOJUuGzw3B+xLt+XsV1
         6w0KR5eGXGFg7TPdAlpYQO9ylm0jyz2Css23qvM741u1Ig7FbgPMhjWhPMQ+IKNQ4Hjt
         HLCC/B04G6hL6q4nNjUw/G52SlpdGQaw97cDPxi0r64iqYmJt8M1pIn6XsOWD9Rf/u/N
         bRp2v3VbIIvNk3NyRtAiKiNQAujbLtlureAUOTB5ky8AkYWO7J7scipbu5HLYgca6/t5
         1q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245301; x=1773850101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yCDmbAZx5fR0Oyd/mH7xT0WBu69Jhfu7+1RKrHRONVo=;
        b=hol0kXD6Wbjgqq+tBvgNITD7jKTxsxgmb2VdsXyulbKRfUKSaMNBgXhEowrbdZwKkw
         /cSp4MRo+GBa9k3TVAhlF8M8aSpOMXh9W4M/01bQnAGNmmaSeg8sK5Q3AlAdHz1kM8si
         WDqQDFq/1Q7G3hN03kIbq+iczU1rw++V2t3J7t72IWRxLxHbAJgFHgZEOs7OM8BckSPz
         4YfRaH3Y9+0UfgGI5mqN9dPWtyfucPgRnntJGKXkB06p2LidIICtcLmCic6kRnzs1Bht
         2rsHs28gEdUB23vH2/4fhBqy9tLibveNQnagNqf+tS+VT8Xg9jEPvd5UOQgdBVFzRyXx
         6WPQ==
X-Gm-Message-State: AOJu0YyZP1WIjhl/xBGypZeE/I7M4gAR8ytNPuzNapoaYWOguIuDe+fn
	+CpXWTCjZ7Lmm7T0LARUfmBpy8hu1ErrO3ZfCON8caB0DOsZEv4mCtmP8Y8kJPxCxv/UdTg9mx2
	M2ZKwGAaKq2VT9lIbb2eQIPDl+neplNIXulfQMYDezZhB0wm5HdK6HJQMPGIon49r
X-Gm-Gg: ATEYQzwkBCjAfcbqeIy6tm5/7I3AufZippFjfCAdo6s4kCUFdIIPL0wMuFFUi8gFvzL
	F0gDGC/o/l2ShmwhiMZ1yrFuy2/NtbfawUOMwwqxs4VUAGmlQms04AIKA6cvcmbLWYbAmCzeuHp
	/R7p0T94zPyrekVd2b9nLY+D2fOYFZ8ZHQp/yX//xIL2cZTZx+SsWRwgtMo3nm1/uMrkoG/84pQ
	IgyOpXDoAfDj4wiPBoN1aFut1o7Ed4NSOysRqXpSCQLmQ2oWuuJlatrYteeHaPSW8hp0jKZmlG+
	KKtYGwyanUaFFYTox+/AjeIo90sXPu5kM76ooC5BuLYs2eW0+GtdEvgwCJnPemJOHBeItST/sb8
	cPLsFXYZ6RbRWqVO3tA7h9jCnTDMNYEmwbuxIUA30gbEs
X-Received: by 2002:a05:6102:c0a:b0:600:39ed:f113 with SMTP id ada2fe7eead31-601df056388mr1247468137.40.1773245300436;
        Wed, 11 Mar 2026 09:08:20 -0700 (PDT)
X-Received: by 2002:a05:6102:c0a:b0:600:39ed:f113 with SMTP id ada2fe7eead31-601df056388mr1247451137.40.1773245300001;
        Wed, 11 Mar 2026 09:08:20 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:07:58 +0100
Subject: [PATCH 02/12] ARM: dts: imx6q: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-2-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5737;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=JwRzNt4B6EnGT7UaefAGI7rGsOlsfOONVNQNtf8/iIY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNgXbB0rc0LAl1KHwoXaPRCd9wa59WNWaNHo
 QouztkHfiSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTYAAKCRDBN2bmhouD
 18n8D/4lnfhN0WnY9brTWfS7Qsf92DAXRokN0KBw3Wm1t/rPCiNgG/F+a1mb1WLopZZwORD2Pz9
 D9rBQ9fqNATVwP3H8PM9GGpt/aC29+q36p4rjiK1FBy3CqWejFAy/drest8yHocr9q5BmZzQkkz
 VXppN3lycPEpyG1QT4DBIR6QET8KL8+kHEpi/1LjhWPirSrZZbUnWAiB0c+ltR1ZjvZD538wFGo
 J6n8EZhoM2W2m7fTkz64AJYZkJTavIIPusTEHLfNt3UzFOMNP1ert4aeJkBL7k04OQnRSS6LKeX
 mKW+/t5sxX6oQeRb68VrtYcGNwhHRAw+KJJiwrQNAAlbtD8/j9nmVvyf3VJ5bxwL+0B18BC4x2t
 oM/of7qpT371mvTZYEMWgd8NxvIy5v3o4+AFcsdtrK8qYDqZ/UvnJ57bwDzjkiqoC6U1NVKh+xR
 DdNPekiKxCm07kJgQmT+BfutuIK4y5TMy1rOUt8i/n/vdWw6Jc9tPhqSlBYl2zmxULXv2pX7NLf
 40I8MwifTnUwcotDQUxH2g512FVShd2QkL5IJMyS5vJwPRnRA4ith3XMXtfcwqnNKc+Ko3fsaJ8
 n1/j7s+Wh4byOl+a11ccRciK28uJ0dgVwTTGhtw+gjTmHC+7lDYqHyvVfj98q6ChQ+8fpQVDwVW
 0PA5EEYkyCbx3nQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX6RyQrdFF39DI
 luVJbS5gUnEqvJlpJPmYkpVnFbsGlMbwIBCvyyN3hUZ3IU+3Vb0j4Kk5cYtvQVUcYRod5oaCWnz
 5+7DtfuxaRanswMg000RMvyCteAm7be7pVhI4kr65lH93cs+S94kJdCB7tH1vOYhaofMeH3ZhEO
 NYJnI1f3ELfTJ2tpgM6P8+u/pr/t+RoNJRODyMFVHbIoEnbdSpclgEDaF49Iai8QXoDUDIJH+jf
 WaVFiEqnQjmY+JZ7KUaLmerwZzXAaQN2+OckUUtUyT6EH4/Jg12I5lsJp1f189sF+86eCrhkv2d
 xsdWjjuuWXzaIRqTgCydBhrfXTVrJlOGHN4squobCLwjoJBlbxoEqFezMhpR/L8RqBOLGPV6FrN
 Sbz7U7mzULqziYvVhtJPwl0xWfSTxsoCZnSMMhhvSmJAEOMoxGPdxfSIuI+8/roW6rbm4qEg01K
 NzUdvbPPQPZNL1JDhmg==
X-Proofpoint-ORIG-GUID: hqox43DaXKoHH8hb1GoARR87SCEPWj9j
X-Authority-Analysis: v=2.4 cv=YJ+SCBGx c=1 sm=1 tr=0 ts=69b19375 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=ABxXHdBjjovioIR3KOcA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: hqox43DaXKoHH8hb1GoARR87SCEPWj9j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274211-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.68:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.32:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 44835267079
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi             | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-novena.dts            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts           | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
index b6c45ad3f430..a1b1348e1070 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-eval.dtsi
@@ -55,7 +55,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 	reset-gpio-active-high;
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
index 3ac7a4501620..8eff41bb32b2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
@@ -146,7 +146,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 	reset-gpio-active-high;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
index f338be435277..64285501e086 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora.dts
@@ -93,7 +93,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_reset_moci>;
 	/* active-high meaning opposite of regular PERST# active-low polarity */
-	reset-gpio = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 	reset-gpio-active-high;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
index 02d66523668d..7de8cf7804d1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-ba16.dtsi
@@ -344,7 +344,7 @@ rtc@32 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	fsl,tx-swing-full = <103>;
 	fsl,tx-swing-low = <103>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
index 13245af8f74d..ff6c16b9a1dd 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
@@ -468,7 +468,7 @@ MX6QDL_PAD_SD1_DAT3__SD1_DATA3	0x17071
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 26 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 26 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_power_on_gpio>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
index cbe580dec182..5a3783d8f15c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-dmo-edmqmx6.dts
@@ -425,7 +425,7 @@ MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 8 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 8 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts b/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
index bf8fde9cb38d..e9a4b9f8015a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-gw5400-a.dts
@@ -330,7 +330,7 @@ &ldb {
 };
 
 &pcie {
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
index 24fc3ff1c70c..0cd0443b9df5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-novena.dts
@@ -459,7 +459,7 @@ lvds-channel@0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie_novena>;
-	reset-gpio = <&gpio3 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts b/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
index 3bd0e2c9e57a..fbd1dc6f6414 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
@@ -174,7 +174,7 @@ rtc: rtc@68 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 

-- 
2.51.0


