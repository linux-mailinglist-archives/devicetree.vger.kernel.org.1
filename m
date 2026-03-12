Return-Path: <devicetree+bounces-274776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAmxCGYSs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C85D4277C3F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D8FA3067B92
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F54A406267;
	Thu, 12 Mar 2026 19:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IfIkcg1m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AVCWGe4/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5553402B82
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343108; cv=none; b=gwSo6z6VPc7s+/9uD61u6UdptGBX7MWdX0R1pKo6fjq6k7tyVc/BIIFTrqFOz+Nr6WRQjrcrdlZs/ciWyaB8qP11ogkOlAgzNBKgIrB5APC/8wCvjfJDsK/Up3zUS/mxhm/fRNqiOm4cAMgN7CEftIDh/bSuGPyBUuuwlgDZf3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343108; c=relaxed/simple;
	bh=+OfYi35/mvFcBOT9a6DFCCxypeHl6K6c0paRCOWmHsQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PiqEpz3FRHEZZgINevfeaNfsUAel1HR3BcPNK4VvVOGwKOBE4AtvFofJdEjGwzcC5wDBt6lOoStCeoHCW/LjlA/3fRXIa0GRO0+vTmS0TsKSpng6sz2encCe3N2IwLfNkJcQ5mg3+0zW+8k0J90pJQhagM0w1JVMll2Ph1V9oKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IfIkcg1m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AVCWGe4/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CINNe34132664
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ccn/0QgAw+T2Kwh1hmiZq1U1PNoFAig87VYk0VegLCA=; b=IfIkcg1m68gKg+06
	3WZ5zEcwOKtIpmXyOGEL3TqKkQto1CBGecIQlzD1tZUHL2ew2x3GcGiadTPmdolH
	ic/qTzPGC4bYSx/zcmffwvyiTAy08QE65nqTsJY6fVZpcbnYKKOeLoOMeRoHl9ce
	T9LSdSTBTg10k1CO29XUlw9aoZ0UX5XjId56XCOm0wNCzIiSOFy68JqDlQ1cutsZ
	DUTobrVyoMeuDqnMjLgo2/KrsnysDXCyz+OGg2Ks0zZofKRyzi1U0GNhu0hwmu8s
	K6AixTRjIB7tUNTNybQlc8YPx8wKepXZAgTbK3dlOckA1ZesCp4dOwJjVjIQ7fyt
	LmBDmw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w3awv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd767c51efso187328885a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343105; x=1773947905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ccn/0QgAw+T2Kwh1hmiZq1U1PNoFAig87VYk0VegLCA=;
        b=AVCWGe4/LcWNTKiXokKye+D6fdSd4YC+6aFSv8iwxegq6fWyQXDEqZ/OLxUMxYKy5y
         QztyWCBtziM8co8DAZXdsFkIU+B1RPxQhW9kUpwklXMW7cRYTSKBr+kzrjAnQG60DwG6
         FfYNTw06t0JPDeNDU0RLUGB3xm4AKggkNaUV6BAZIgEDC1KgWX7AG94+AYrycGVemq6f
         vYNCoaI0d8bjZUpl5mhpKgJ3rVF6lwzYJjlZhXmNkdm+jMBMAWb2vCyaElJRr6TUMhOW
         skaQRnWwmhysIpFv3K7Areyuf6pdBY2GVBR8A57Xgh9zzsSkji1wPzGaeRSs4y9fItIM
         582Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343105; x=1773947905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ccn/0QgAw+T2Kwh1hmiZq1U1PNoFAig87VYk0VegLCA=;
        b=TqpZN5EAi30uoBJc4ymnaSYdrpkZ6rZlcY2We76PESrVWjx8y8v6q9MnpTl+XVFYVw
         TKfXRjKSY5f3HFUC3LWU3yk3alCbr5Mn0ZtuPjtbrwWLa1LBzP50oQOoM0743M6uvZqU
         7MR10vy7I5JrPVQLaUNC8ty1W2Xzha7rDYkkNg5EbVC4zYnVfMoBMBnDF06CgAFb1TLi
         fPLLw2K2PdrHWsljQkyjA18D47II6pIhLFijZU1/PIMx2xHcXxyPKzdEJyp0H8eB3QEc
         R45vpnR6pzNXdiKC7sbcXxoZF1BwJz/8ZXA4oJvR0JQtCFehmnhdk0lYdJfcyhLvwJig
         bbDQ==
X-Gm-Message-State: AOJu0YxCYf5NuNsKAeWkBJZb0dL60phMgnGpHG52LfV5+1fRp8baNh87
	3mE/VaTsa11u1avCViFdNTvU9vz7TLhJvjcF2CKDvjKmqmAjbvyIOQHl9lnzu79380cWAZVM7je
	tQ5mEoTCIDzjp4F+ceti7aVnpBXd4RIxOjJrZWMOxtMVPKU5EVGRdJVBxSGqv8xiv
X-Gm-Gg: ATEYQzwRfZ/8lFSd7ftzR9AoRqBu4ZyDBp4oothAo6c6FE7XysEO1HTh/jHfCZK7oTJ
	VsT23n0o0pRwSauEvSWRWsB0vHjWrUWvzzgj4CGUU1G+4e48ysYIei6tAUIf1onIJDXAidebhFT
	2jnBsY8hqUSQPZyjq9LRR2PZWTfDI3wO+/vDDYpuwTEMdTsWqMSgROxT9hCDkrBrVGX8IUZLCXB
	b3lLN/Fd/5BO1IfVcQP1rPmyd6iUNrwhAqownzViS8FAJT/fmXSewtLL1VF87mZ2c92bodPysIU
	PxrRvIhhdqv2ZcG+a3IzRMjVLoHm5wXzJA6ShMZrVPP1685ldCfSwfX62jdBFlSdbaQnfsIy8JB
	xTO5a1KYtX2WF8AZmELaMv2SBm5TEnSHrfD252ox+PcEh
X-Received: by 2002:a05:620a:6910:b0:8cd:b2d8:ec7 with SMTP id af79cd13be357-8cdb5a4c3e1mr127702585a.23.1773343105100;
        Thu, 12 Mar 2026 12:18:25 -0700 (PDT)
X-Received: by 2002:a05:620a:6910:b0:8cd:b2d8:ec7 with SMTP id af79cd13be357-8cdb5a4c3e1mr127699285a.23.1773343104574;
        Thu, 12 Mar 2026 12:18:24 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:54 +0100
Subject: [PATCH v2 07/12] arm64: dts: imx8mp: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-7-0d5040eb4a1e@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=12006;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+OfYi35/mvFcBOT9a6DFCCxypeHl6K6c0paRCOWmHsQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFmnlATEtl+m1zswUSr6NuxTbAzYAaIffIEP
 LNS5mSU8w+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRZgAKCRDBN2bmhouD
 1+vFEACXIMP19bDRtaUqZN/msQld2xxWGze2xcEHHTR6Iiw0IJXNVSlvWGUzboTZ6MUNzjEE/mn
 7NH0bl5j9Ffy8ZlX4f1VM1+w0d/E4gRgiquRwmm+eUPPA/oZBddfzRYjw9EZPr1A0ngXT8j4dPH
 THdj/Y8RYLZdZNOxTroIP273q/EBo3+gNx9NNvI/d39e3MA3ITfGCSnmXNMGvFc9JzwHDF2pxdy
 lc3UFgQ8VCYBSpk6KTyzCLH96WO5gTuWClJMT0MeXhrgMGq/dm8DjzkmW/rijLc9dojfIJcpYDF
 ryCBvxkean/bPGfRJ2Q1MSmZ1+MTYbJmXDKm4TcIlAp3FmiV0OlyWrZvpdU2zy4EaTgfkReOmsp
 NXB8kDmEzvIjnRUEqVPm/tRfUrZjGxG+b+P2+xDwJFl4lR71lUU5I3lbRC3FczJQuE93d28Mkgy
 bQMHMSO+aXwdMJm4euVo2tFEP14J1QKtsdyM9pAWE84FUcG5RPtntMkC4NYBkEZEo5U4LXbt3DZ
 MHWQwr2q15LQBbkK8bVaVc4jD8FBiZ7Cvy8FX9DFD06SQ6Q5pFEcDxz/brUGn/VdkjJa2uZvM1G
 ZYmdOqEOBSsAtVpuxIVYfglcZFrTU4Ye2gdhfpkvQMhnovk6TaF50H4cUF/tC2F5WCTKjvRw3Fw
 z030qKVG9FOBHdQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: FyBJLDX0ao8mPQue9cnyF8AKnCVrGpeS
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b31182 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=cw-Pq11FuC5Uhxb-6mwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: FyBJLDX0ao8mPQue9cnyF8AKnCVrGpeS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX9yBsEt+Wq3QF
 H5kT4DOl//enJDXxbEN/x6qC3T1+H2glEgFA/JbjL6cKWshyd3EAbXo260BjrGBcFgWPl+FddyZ
 4/UmcbalYyP7qixVPj6YM/s2Eu8FgY8V9H/7DexvFRuJbfpFvgyISVFTrtQwb8WwU4r+Tu8jCcA
 f3lWKwpKHDthXOie2uFQDvDjUpZKD8htC9j6VecYRPXm2ONaDR/lxflHSlD9BQ9zGRjJ721gBSG
 eOMhRkbdfpRiDHQW1WbbilLYBZGVtxRzvxiorw0Mojq4v0mwONHjLqLo3QhbMmfTVHnoNiFTBUb
 mlgyKb5jwJUXJtMNqFW8nboF8CexiRkvi/eHnMRGf1/ExTsCShankXkrkT3ZkU6hSptm+BXSDyr
 DuSl0JzISd/a2VrSLKYFNMlQVGqTioc5iuRTkjiG6mIa0OBdQ7PaL5dYQt9T55pm65hD5FgbVhr
 Vx8X9Wuzr76fmq4CXpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274776-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: C85D4277C3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX8 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts                 | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi                     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts                        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts              | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi                    | 2 +-
 19 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
index f654d866e58c..7d7d96f0642a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-aristainetos3a-som-v1.dtsi
@@ -568,7 +568,7 @@ &mipi_dsi {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 20 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 20 GPIO_ACTIVE_LOW>;
 	fsl,tx-deemph-gen1 = <0x1f>;
 	fsl,max-link-speed = <3>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
index 31c33acb560c..001430130e01 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
@@ -530,7 +530,7 @@ dsi_out: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 21 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
index 7e46537a22a0..bf6c53700057 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
@@ -614,7 +614,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
 	fsl,max-link-speed = <3>;
-	reset-gpio = <&gpio1 5 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie0>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index 3d18c964a22c..68a481965cf0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -237,7 +237,7 @@ &pcie_phy {
 
 &pcie {
 	fsl,max-link-speed = <1>;
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;	/* GPIO J */
+	reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;	/* GPIO J */
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index ef012e8365b1..78f0ba14ea5b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -296,7 +296,7 @@ &pcie_phy {
 
 &pcie {
 	fsl,max-link-speed = <3>;
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi
index 3f1e0837f349..1c8a380dc01b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-edm-g.dtsi
@@ -310,7 +310,7 @@ &i2c5 {
 &pcie {
 	pinctrl-0 = <&pinctrl_pcie>;
 	pinctrl-names = "default";
-	reset-gpio = <&gpio1 1 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
 };
 
 &pwm1 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index aedc09937716..fcfe89cb76cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -769,7 +769,7 @@ &pcie_phy {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio2 7 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie0>;
 	vpcie3v3aux-supply = <&reg_pcie0>;
 	supports-clkreq;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts b/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts
index 36cd452f1583..a09b2dc34429 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pro.dts
@@ -34,7 +34,7 @@ &iomuxc {
 &pcie {
 	pinctrl-0 = <&m2_reset_pins>;
 	pinctrl-names = "default";
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts
index d32844c3af05..8e87a9543382 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-hummingboard-pulse.dts
@@ -57,7 +57,7 @@ MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x0
 &pcie {
 	pinctrl-0 = <&pcie_eth_pins>;
 	pinctrl-names = "default";
-	reset-gpio = <&gpio4 28 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 28 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	root@0,0 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
index 2173a36ff691..393cca39a0d0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-smarc-eval-carrier.dts
@@ -187,7 +187,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 2 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 2 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts
index 86b8c5af4153..254d6930eca1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc.dts
@@ -243,7 +243,7 @@ ldb_lvds_ch0: endpoint {
 
 /* Mini PCIe */
 &pcie {
-	reset-gpio = <&gpio1 8 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_vdd_3v3>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
index 0fe52c73fc8f..7a4681578b24 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
@@ -264,7 +264,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 8 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_vcc_3v3_sw>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi
index 9317e62304e3..1c2e5be5ed9a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx.dtsi
@@ -123,7 +123,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi
index 76020ef89bf3..89681b21ed36 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx.dtsi
@@ -154,7 +154,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	pcie@0,0 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
index 5eb114d2360a..90d15340f935 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
@@ -166,7 +166,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	pcie@0,0 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index 7662663ff5da..e37f580fa90e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -680,7 +680,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio2 17 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 17 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi
index f90b293c85fc..efdd4b0231af 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx.dtsi
@@ -140,7 +140,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi
index 2b86cc62a41a..fb12bfaa9b77 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw82xx.dtsi
@@ -237,7 +237,7 @@ &pcie_phy {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio4 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	pcie@0,0 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index d31f8082394f..0f5f924b6a6d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -801,7 +801,7 @@ &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
 	/* PCIE_1_RESET# (SODIMM 244) */
-	reset-gpio = <&gpio4 19 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
 };
 
 &pcie_phy {

-- 
2.51.0


