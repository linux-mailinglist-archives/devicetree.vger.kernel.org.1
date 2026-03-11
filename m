Return-Path: <devicetree+bounces-274220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HkSCsaUsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:13:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAC42671CB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 156BC321D09B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10EAB3E0C6E;
	Wed, 11 Mar 2026 16:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XNjjWnPB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e9/GajBp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853163DEAEF
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245326; cv=none; b=je+1I7cc+ooQZkv4ZRieYyZ8C504ZkqDrKhplZY60r6J/Nm+hm18HGfIiEklrGnsIjUNev+kEK9C4lz+lcCwxNAwABkRM+HsoDpUXWcMRIoPULAQstG4rOSHqGCGZ++8lYiOnOWts7Ry5TsA46HvR9kaUyISt4q7hdf1v0/XJ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245326; c=relaxed/simple;
	bh=A7AgCTNHOUuBG/1ldgBi4qaF6lQTEZbJE3fUOTYefj4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D7T9dkiGpGO8f6+9YLnm+kMjiq6NDzF/Sg23ROk4RSG0iaVWb7xdNs3yNdxvV21KvOzoWsaWlsJQ6fezVuEYJ8ZBWB9Xp7OY6WN0fqQ1zeQGWcDtAug4kJkdVa6Qb49sNpbzr70b1XUxP+z4Ap+cCnmxIljwOaZGSkPiG1654FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XNjjWnPB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e9/GajBp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BF57oD614148
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VqgqpLsdGTD2GkM4HPXhpFG+RergPXzIGdNet5/k1ZM=; b=XNjjWnPBbwbg4f/u
	fdJ8WIaP62Mb9MDNpPrbML8yLfg5pXq4CDRRlGh3iZwhuPUkFl0glVXLTQbvFmjy
	xsYlsA1/LRkIw3pDIP76VcrPCe1mSRd9VRXbTaq9cxhJrxxDW4UcjWRJLZdFN3so
	rZ6MtNtXWjesC+Am4eRSoJLZ6xzkdLrK+8//OsCK1c90iFAClxsO8RU/Ac1T6qEh
	28KpnKPYadl9Fl2LLIwfMn2FKla2MPuEl1v3MT6zY8FOmKmqR7js/GH/Pf6xrfby
	1jA4YL0jKufXgSiM5QR1W0Adw7uQsC/YOT1xaMfR2bRpq73g64vFZYGwsvoxS9id
	d82oPg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu0jf2rcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7d4cc049so3999665985a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245321; x=1773850121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VqgqpLsdGTD2GkM4HPXhpFG+RergPXzIGdNet5/k1ZM=;
        b=e9/GajBp4SCv17zUWUpbkB0q63zQnblFaPw04vITEIT8eD9pNczjlsT19vkIVnyYK1
         FlYxWPa83vnKbFiEkLCZGGb/eYn+mQxU+Div/Rs6jUqx6ubQA9+JK651OvKgY8PrpDjB
         7DVKPqDlNIBjVybokx0WKCmNym6H0yge2TM9sdq29riQniB953qXEXmmw09HgjOJNXYd
         z1fNdRL0fZjt+KGKO4/BM3JP0AcXG0Sp2bst/AUtR02mT6wvB58BXoMU/Vr1qSTCB6SR
         wKchCJfD6E0lZ0NrQTX8y3LHIBIPzH7m+FEvatimKN289D8o3yFscNGPZpliU4qAS4Wg
         T2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245321; x=1773850121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VqgqpLsdGTD2GkM4HPXhpFG+RergPXzIGdNet5/k1ZM=;
        b=vOIj/HWnB5TBHxXyNpLtQ68yIp0VbDusHaIApFeRIB6DByB8geQFTkhwCqcnEw9rSV
         eokfmva/6ovYUlW33M1mcV/Zl7gMmSPn0lko2natuwwHKXXnWHc6LGB56LjnBuozplmk
         8FUxhj1+QXogmqwfHn9RH1BNy23MrMT4JUzBeNeVO07MhdF3CG0O6xE+RRq37/c8fCvy
         01zNCLSsy/wgzFeb1tbhkdeIM5TWjbP/pM84BqdLI85g6XW6RvTUX7lmq2Ua8PRrt014
         FvYW1LDsEDPU14xifhnRMLqkBh3qvqqNeXmv2veAL4IIb1/G4ev13PztfLsn0l5td0q/
         IC6w==
X-Gm-Message-State: AOJu0Yz52+wj1lVw4f0bSVKeQjAYM9PIj//noXfgQzmM1wmi0oLYo3l9
	OiAjGL7BlQpEYakCgG0Vh2UHaNahGyaQqw8Dnr+BzR2vE8lxM0er+cN07R2A2Gp1B2dv22GrWkL
	3TzbtiZJTCbWeXmDUGRvNT0DQl83a1+fhpSQmr/d1uHi3M0aBkDhdCdlFxLqYkmID
X-Gm-Gg: ATEYQzzEaBMJ8EjFVkHDzwHwexfNKOrErktmHYgPjRlEw1M8Rheqy2PbunIQpjCwcZG
	cqz+20xdioMc0mX4u8tmI6cV1Rxu8BP+F9fOcePaBe3cM8gHlEU9sH26Ep9pNKLJQBDiuMfb3DG
	WsuessA2RjzdjFcKmw1PiTHBOOvdHGkqXLPU6uSsCA7iOBmeMuUZA6IiaqMvb34YiDEAKyovF3C
	2UGJqmA4t8jWQu9XzWDks4w1rzEHJYmepJvp55o9AumP/+B8E2U/XRIEO++drViUH3/nUaRqdo6
	MbSqZgOKDlJZb8AJK64CzabgfBN53pjNP45IS7lD/mU6Xvqxj+1T5rlEwLwDQUquErj3mxP0fYu
	911RujJJGWqyoeFBWpApDf+ihq/Ej0VLRWrk1r1ZAdZle
X-Received: by 2002:a05:620a:1907:b0:8cd:8889:227 with SMTP id af79cd13be357-8cda1ac6ea0mr369651885a.73.1773245320757;
        Wed, 11 Mar 2026 09:08:40 -0700 (PDT)
X-Received: by 2002:a05:620a:1907:b0:8cd:8889:227 with SMTP id af79cd13be357-8cda1ac6ea0mr369646485a.73.1773245320228;
        Wed, 11 Mar 2026 09:08:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:06 +0100
Subject: [PATCH 10/12] arm64: dts: imx8mq: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-10-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4292;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=A7AgCTNHOUuBG/1ldgBi4qaF6lQTEZbJE3fUOTYefj4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNnT/X5v8kltDvli+cG+fd8bBen4PJ5f9XLm
 kl7ClPP+yKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTZwAKCRDBN2bmhouD
 1+NTEACAM+QkMfiupfxi6WJwvjz5n9xYJWtCXl7A7ZDl9c7S698OfGyVJW6ywapcUUGsiOppPGm
 Vi37CUBrKO6VYQ+h4a1CKbrVtZUNsbAzRNcVFmRy+Wcp6T61gplJley4SEgBoapd8dtHuTHVFVE
 MvYDDm2RrSNQwn0MWE7fw+7M/5rCQnVIzfgzB4LFONiMy10I3pq2ppL/m0rVarJ7z47Q7tloNnC
 NHtVKOG37G9YVJLXdGvON8hde9c6u5bawVBtte24QPWrVzv7iycIvUjC0uqtCt+f0Y8bHBx7w0s
 RdJ/H6R0z2YkV7PlJRTuX10ggA297RttVjt2UXA9XnpPavepvIdGkKrgqffGXUi8uGFytjutmys
 03nAUoLs7u4DJefH5kERSUaG63PBylP96JzqSrhWXXdKux3ZDxT6tqEulT+229WclE0KnIcouWQ
 QS4Sjngxtn54uO7gRmQtEKk/5Ql9thONXQVfAMxpqVuHr1hm5s501UlHreT48qLjY9UJZhp//X2
 7aXgjslHqSD3/uQ3e2+bpGvll29eu5MqIU3Ht4M5nhK+JUCPlmxT0Wjdut9XNwq55xz1GqhaOKp
 J2weGMt7yjR27p3aBJpgZh286lHDdVCQGXZld1f9y9P0WYecBWfyz9HRe1zWextvob7BDAJIP78
 yIrAb/Xs9BRc8qg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: 1RxcG7nvVP4fwu-sE2BhD848IF9vCZwl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfXy1Oz61lS+TZ0
 neDeX7xJKnVWGQXnkT550N9c9hjMT6dCoZUd97gfHRYdnx7ZqxKM4YZ0NxYhjb+3/QItgSY9mU+
 xuE9QQ89kO8IZZe1rcJam+3O0kXdG5ZTP1cO9V7Sp1+pfZL95rS2d9Tq9j/5gO00zhH2eo6d4XC
 tvorMCkjsfUKqwEqvO3LrDOJLaK3zayu2qbdxlu70GrTjPG2Wn7OrJaX7iIj4/vA5J/fmBeWrLj
 r1A1/1Y6ig+2h8P6cyPSFDL2/95HRC9ZTLbETB+AgT7d1o0CNpb0s9M7Yr0i6w03zvwDTeBKvzR
 ej4yje0l1fi4pNYOSaU1/UsL3UBOmHfwB7rH2GNn+ayhq//96a8mW1Ewh/tzZOHkJc1v9m8Gtxe
 Zh9aqg00R3crw9nZiDZ+lpI3zkWPtrWfixP96+xl5XDhe5X/vCZyCDXUuEJprJpF7EpmHAQsbAw
 DSQOP1lacfahgf/ibPA==
X-Authority-Analysis: v=2.4 cv=FMMWBuos c=1 sm=1 tr=0 ts=69b19389 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=nTlmypLvTDh5NzCj0PYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 1RxcG7nvVP4fwu-sE2BhD848IF9vCZwl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
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
	TAGGED_FROM(0.00)[bounces-274220-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: BAAC42671CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts                | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi         | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index d48f901487d4..54826420740c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -369,7 +369,7 @@ mipi_dsi_out: endpoint {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 28 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
@@ -392,7 +392,7 @@ &pcie0_ep {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
index d8cf1f27c3ec..2296ff065467 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
@@ -243,7 +243,7 @@ &i2c3 {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
index 3ae3824be027..09f2fb1ad57b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -195,7 +195,7 @@ mipi_dsi_out: endpoint {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 		 <&pcie1_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index 0165f3a25985..aa54182def4f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -93,7 +93,7 @@ &led2 {
 
 /* PCIe slot on X36 */
 &pcie0 {
-	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&expander0 14 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcieclk 3>,
 		 <&pcieclk 2>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index c7bbba45f368..f3d0ebe98d5e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -547,7 +547,7 @@ &usb_dwc3_1 {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 3 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 	         <&pcie0_refclk>,
 	         <&clk IMX8MQ_CLK_PCIE1_PHY>,
@@ -559,7 +559,7 @@ &pcie0 {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 	         <&pcie1_refclk>,
 	         <&clk IMX8MQ_CLK_PCIE2_PHY>,

-- 
2.51.0


