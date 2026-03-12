Return-Path: <devicetree+bounces-274775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCXILysUs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C40C6277F0E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39E8E30ABD21
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A255940245A;
	Thu, 12 Mar 2026 19:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KliSlHdf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cUIkpP8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131C940244C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343106; cv=none; b=YtU7D+RnL1cQhkK5nYRd2SKldnSJWU+KbfQ3YBRcpBQKauB3ZkdiSzjtVUz7JXkLJoxVoJJXEA1IwtUFF/+OybIDTTmF6Mi229bnZ/09RwOxCp1hYUTgwk62FaA6gMb6hOpeeFvE8JuJe1Tl9Udxujpa0DzWCf1seKN6KSotJoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343106; c=relaxed/simple;
	bh=sCSn8EaGxkJ7RiSv19pVk9Xndqm5kr9dkfsOD4kkNJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D+TMSR2B4pUoqKidsLu83q1cjnpRgNlHgPKRhHSyF8hEgTPbKlQyorVicKAb6c1WhOpL+4QibjGidB7C+WH/i7rQrR/tI+BrL2gPguAe8XdrDEVirJKutbwMA/vU3IYHd04crjlQbKgzjaU+gp0fs+3mc7f8062qhPFodZ/rYNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KliSlHdf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cUIkpP8D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIkdV01922719
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aOg1TvMt5mwIozSwq3v3obDuc2Lhso1YJ9tDY6h6AFU=; b=KliSlHdfu5J9+2wi
	NHl3lJPdQmB2h73Icay+jPPcgzvwRprGrhm+bL2idjTTVo1C0GaNmTZePCSLVshv
	pHy1wj3YqGu6tBXNW/2ZuxX7cKBv9KNYgz3h/ERFMk1ZVtC847kh+5GYfhy0lvJc
	ESTzLfonPOoMGnWt11vh2CffTFWgKBrHqvspVVA/sbO7JPFfR/XbpN1mltlIKEkv
	4gEXJ53E0R8dc3pqpf9jlyV+22Qf9aS1kHdT1O5TBQ1KV72PZ65hnL7MBKE71sci
	fxQAVm60XVo+Z5zjj7DdPa++FPQHTRxNcTRLKJmU+eoRPbd1QzrrADdHpYUnMZpq
	WtRoLg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wuart-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50900e9803aso10556041cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343103; x=1773947903; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aOg1TvMt5mwIozSwq3v3obDuc2Lhso1YJ9tDY6h6AFU=;
        b=cUIkpP8DnWgBW6ofW/Qtgl19Opcg6ibz0ulo5+btiuRbflX/J7Zx0BVEEZyDl0BSLf
         nz1lvoz9c6cow/tWJv2DqpSDoKDVhzr94shOKJ91EDBUR8U7U7u7cK/25avLcH8ZlSAk
         vk4XhYnSM7Sf2PJ3jWm6U+eAhD5985H3HAhP/TvhU257V+Zs4CQRWZiONZ9jMegjHABe
         YLVAkjwjstn1RLU4CRR/yKcvQiytE//AMwfWoDaE+81uyTm8d958bXbbzVtJ3VCAdJRl
         IPbWC1aNbayolakXn9J5mq7+6kgWmsxgw7dMtj/0oN1XaUFdOkT28M7ESsxczOc2DsV1
         pn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343103; x=1773947903;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aOg1TvMt5mwIozSwq3v3obDuc2Lhso1YJ9tDY6h6AFU=;
        b=pA+SbPSlWIW+DbzS7RhQZH5TETldVlv/rWOhYKO9VKAg75EZEgjN+4NTgDF73e2bvC
         sHGeLIYZjExBeCt8u09wZtS/lcmi87d38HqnHqIxymkbekfn4d3WH5YNF/XCtZiyN5Y4
         oAYO45oHg7vr5UcAxyfMTCHVOzfTxXGPNd++Dlmuzc1D9mujy7QbiddES5TiwQy+NU16
         ymMiU9zhFWHnVrHMxPKX0wUDpv0Szse6esqCO2js0QDa/YUxPCKt9MnQ/tZ7KfIH4oiJ
         FU0YItRW/nazC9ApOaSbij1ACrPvlv1SmFJ6c/n+kFodARYwZI/xfZnc/AvvgLKIIekI
         aVaw==
X-Gm-Message-State: AOJu0YwOEMhhLNG5rm5Rbsa/y4NtY5dJhLZkijmh9QCgKuORJhSAG7wr
	66DKCXp+auD4rfNBn0YqEwFy6ISp3ky8pdm6jBPs2hrCckMnDr98jYz+nw0XcVYpquklIwfbsSO
	zfnSW1JwtxNsYHpvQuzqwITX2YU3aTBH5NCpxjckXFb2EgcDEc8go+ws1/3IknY+j
X-Gm-Gg: ATEYQzwUn3jobGpCkZEP0Wx9wQZsiNRVSFBOa5G89vkrSM15NhTsOKWlwtWP5p/R970
	KO+EV9K59y0aljPJqunfWCt/HlEkF55pi4Hl+9alLc+RyLtx8Pok7J0Z4LxGGKkifN+LUeIIK5x
	QFijNDCOFj7B7RIQlRATTScpCjSmRRtrFmUYOGu1znXYq4drutk+oL0som62lGtdZWNNjH80tm2
	gYcit/sGDE2PNSXPJBp3xNkfdo0nB9ZdssOcWhJaXSXmLsI9oHASyFx5lPtthuP1hK6xmdvAVTo
	rNb1kXhn5cXP2XOkFVNnDHbw7rKiOc4XPDzYlxPQjOaVedNMTnuDbBSmstJc3BW8a2SQA+APgOY
	sa68dXuTGYsEEguGlGDfsFCvwFFW3T7PHoY8YoX1PVWsh
X-Received: by 2002:a05:620a:6c0d:b0:8cd:9231:8b51 with SMTP id af79cd13be357-8cdb5a176fcmr119087585a.5.1773343102879;
        Thu, 12 Mar 2026 12:18:22 -0700 (PDT)
X-Received: by 2002:a05:620a:6c0d:b0:8cd:9231:8b51 with SMTP id af79cd13be357-8cdb5a176fcmr119083185a.5.1773343102255;
        Thu, 12 Mar 2026 12:18:22 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:53 +0100
Subject: [PATCH v2 06/12] arm64: dts: imx8mm: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-6-0d5040eb4a1e@oss.qualcomm.com>
References: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
In-Reply-To: <20260312-dts-snps-reset-gpios-v2-0-0d5040eb4a1e@oss.qualcomm.com>
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
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=11981;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=sCSn8EaGxkJ7RiSv19pVk9Xndqm5kr9dkfsOD4kkNJY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFlzbqEAUQEwbYJpQBlH0V5JVv1IwRXLtXfl
 F98jRc0UAOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRZQAKCRDBN2bmhouD
 1zUyEACILJNe9W63El4gdsnpg064Tjij1fLDF/xadAM/dLeJD9+oM2dRRhPKNMPhps8tmW/McOV
 wZjNz3ekcdhKfHugq/L5f+sZB4Fo8ezo7khehDDdQgxidmU/Kukr/C6gP7doWTEKSvE8w6wKTjs
 ti7sRk/bqMUSNX7JFISqw/dlxba9FIGlEVoMP4Iil0IFGrECc9Zl3x5yBhZY5oZmhEgNDM7XWLl
 zEfpk5xTtMkJixWzxumcLLFw5AB3Zi5zoQWzra9AuZhhQM4+R7aYguXLA+pGOTt5z8DD6bhCiJq
 V4smAU0x6/QviQo3cjf/XWnGIFEp6c6ETQjfEfsFtcF3XXxLAqG8Bkv/YPE9UIrBppj1RXRX4lP
 63zmKrDMSGaXo63sl00Tdq+fZV6IRxVH/774skkcT/WBZvSOIwZgz8ZRhU1vmIwAgBq8lkMVy79
 r2PLFVBw6JdEk7hqHnEswdSOamcstErn3jhg49CMdfEWxUT9cyr4hdUQvNEm6VTzAf05sy9bJQd
 ju7KQbkVhEAZTYx56xSl/XIuqN5MLKUcR564oit2LY7v0Px5Sa8I1k+XxJGIChANocfw5u8Roi6
 SH9hmZMkczM+DFvJrgG29GKiSVwE0N3eHpXT/0vlfFQsvdsk72QPi33kEk4tUMSyJZEpz9zlFOz
 oskb7J9SJo5SVaA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b31180 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=Z2WWPTJv0FA8N6Tej9wA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-GUID: Xp_FCatUCC775keu7U1oBGTExJrz0_fq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfXy2pPnFekcMcn
 Nk9a6DiXbMuiTjleBqvFTmgF/xV2pf26RVjMktOC2F93ylcR5Hyo+Hqwnw31SjCubdgA93Kpjaa
 QBPXQZt/z3KNEsVlHijlcIFQcGm4WyWbWNBg54FSFhbipbYN9BqH9kGjQrqS/iKlSpOSUSfWv0S
 sA7WNzm3K8fgMNV0LSe7VbplRIVLkMYI+wqn7h1U1AY4UT0B936cuZHFZhydTlaXNWJLECeFgus
 +2F2Gyk/4TXZi5VUt5uSs2rwhB1g0GwafA+L6YP9L3Lk83MRl/Vjfr7WX3uFlGW7zV/C9Dvu50Z
 szmVdY54pwYQTnuWa/z5AAZyoWsC+Iv/vv6Zp374FDmqiR0/Z+r5fp0MpZWM5eVyOA3q9UxHz59
 ik8cbpDpWk93pD8+M6H/hoyjqAI5G2aKsK7BqphDbLc6RYpwnskAwpe2Ijr/JQTzpIxTf9BJR9q
 KeYifVLrmfUVg4MwC/Q==
X-Proofpoint-ORIG-GUID: Xp_FCatUCC775keu7U1oBGTExJrz0_fq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274775-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tq-group.com:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
X-Rspamd-Queue-Id: C40C6277F0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX8 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts    | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts   | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi            | 2 +-
 17 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
index ea1d5b9c6bae..5642139ebaec 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
@@ -301,7 +301,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 21 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk_gated>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
index 472c584fb3bd..6a874f3ec22a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts
@@ -919,7 +919,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 5 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcieclk 0>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 8be44eaf4e1e..31052ca1971e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -533,7 +533,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 21 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
index 299752aa8277..7eca9127bb9e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
@@ -209,7 +209,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
 	fsl,max-link-speed = <1>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>, <&clk IMX8MM_CLK_PCIE1_CTRL>;
 	assigned-clock-rates = <10000000>, <250000000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts b/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
index 370558a8ba46..e5b8415dbe0f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
@@ -137,7 +137,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
index 6043e7d16306..0165ae04c6ae 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
@@ -205,7 +205,7 @@ &pcie0 {
 	assigned-clock-rates = <10000000>, <250000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 9 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
index 2ecc8b3c67da..a5f3dfe06a4a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts
@@ -182,7 +182,7 @@ &pcie0 {
 	assigned-clock-rates = <10000000>, <100000000>, <250000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 22 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index 8dcc5cbcb8f6..ce785b103a57 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -90,7 +90,7 @@ &pcie_phy {
 
 /* PCIe slot on X36 */
 &pcie0 {
-	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&expander0 14 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcieclk 3>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
index 320806d3d073..bb441fd4aa23 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
@@ -122,7 +122,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
index 266038fbbef9..184fdfb26cd5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
@@ -147,7 +147,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
index 2aa6c1090fc7..1e84c365b2cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
@@ -167,7 +167,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
index 53004c4a13aa..e0982b4cb663 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx.dtsi
@@ -152,7 +152,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index 272c2b223d16..a31bd864c022 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -726,7 +726,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 468c7e993c52..4c839dfa3ce0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -626,7 +626,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 5 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 5 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
index 636daa3d6ca2..ea67654c9ded 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
@@ -559,7 +559,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 11 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
index 99572961d9e1..7028d028657a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
@@ -623,7 +623,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 11 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
index 1594ce9182a5..3b656f8a81b6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
@@ -672,7 +672,7 @@ &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
 	/* PCIE_1_RESET# (SODIMM 244) */
-	reset-gpio = <&gpio3 19 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 19 GPIO_ACTIVE_LOW>;
 };
 
 &pcie_phy {

-- 
2.51.0


