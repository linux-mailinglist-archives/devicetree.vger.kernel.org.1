Return-Path: <devicetree+bounces-274771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIuqJg4Ts2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:25:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4007277D42
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:25:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BA0932954B9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98B240149E;
	Thu, 12 Mar 2026 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DiA+XbxH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LB0RdlXP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96953AB276
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343096; cv=none; b=abgOQAsRul2Ytm3wnUonPt96Gm5Awj/bZ2lQbFcoWuV1jOIvur9zqx9IC2ZzuWyPxOjUlgwFlZD2RjpEwhayANK2zAov/Bt+PFsq7F9yBuhC927SyRntTkQgvCo2tXbps6Ua4VnUGIlp2Hv8/VwPNFN4UKMaUVFa+86934gAP8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343096; c=relaxed/simple;
	bh=RkwabGJCjPlvUcSADlW+8upK7wXRpaR8C/Q+cGbyZ7E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f/FjIr3UrwggtHA8zdj3p3He4WlON7f5NR1KVqUD0lkHh1cwIydaleCfmJJl3Uyc5WwKlpMxmpDJNPDAEEoISCW+IxJkX0/PsppfJfA/M8qNdxyrqHpQspkbyhcaQzyxJBZZtXnaMb0r+dWlHWsCAcynODJ97ZkXLLmpiaMAve0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DiA+XbxH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LB0RdlXP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CJ0KDO1922483
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AkqJ87roWrothlN2NS3JCZuXltxzTCyWD1dV5JP3jdU=; b=DiA+XbxHMvnqKvr0
	pnNn2LORVgBSnS+31cBRKv84uqP0klmf6MTlYZr8KnLdSq2PFBHIUzY7OGpaAIGh
	jIyuyfOh0nOi+Eowz9tDnxsAWgmoTK6wqCWC3cckj6zqgOD5tiGkc1A5juwkm9HL
	dB8RZm/0uFe55+w9XEwrFCKhDH3WUOFaNkW2jXU/IHiY99XKDNFckHVR4XmcPFud
	jsu39tiGPF1Ly5PCf3pNPR4Z6fqgWo3sbQ2EfhQYUQahAkM5F8ndL/iQjd50rsnz
	IbkWO9epnJFcv8T/TLbjTfLNEqPGtfarxrqQti3uCuJGsaXU1R7W0T36hEv85WIM
	I1nmBQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wuar7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7fec8d44so879944585a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343093; x=1773947893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AkqJ87roWrothlN2NS3JCZuXltxzTCyWD1dV5JP3jdU=;
        b=LB0RdlXPhxzkAnqC99tqw404i/tDKF8v5XW+VhnH8AZDRLUVTBC73ddRvp/QRbluYD
         UP8QRK5yFuIWfYNdmEBlYr719h72XlBlER2/Uj/cTd+PA08mldzY5388e5RbfGFrUicf
         Ci/4PNSL6+42CaKK3u4SJmvgTequQcM3Pu6Y2DjCLSxkfrdz2yVIMHCV6Pj5il/1xKmu
         OMoeS7VOoU5te5S+SMQFM8VxEZ+Z3No9GbiY49tPJsv373LHE8yzaZOhGTfQgdh6zSnB
         OkTqvcATsmU7oKkXeR9Rdf0wJ0WwKuxKIByFWpLzmTa/4uiVHF5SjkwWJXFHW0pkDfnK
         Rjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343093; x=1773947893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AkqJ87roWrothlN2NS3JCZuXltxzTCyWD1dV5JP3jdU=;
        b=l/sLHKR3PoQJf80hYPG3gqUZj4nZC2+uzXKxdoODDHS1xzp/JtvRSl0PCQcxJIPAYT
         Hs5BgJNG5S/XpOq2WDYEbvYXlqqlikc9pFep4c2VPWf0XJsPolGPO+dNObxW5rudKhF0
         l/mUiO6AmzGhYpJKjE6+JDa4p7p7ILnO6dTX/XHI1KffidZJF2qw9M/MeuFAdI02ONcn
         jbzesEFDDEDtxdoYAgIlopQg9R8KamcEBMVhTmKFMv2Bdcyb3V+sWSj2KIskIb4q7jbn
         kv0X2DgaMIZhy0A7MrMLSiWpjDeT3RcVaoFp5umnfcX3Zhrhv8zQWxB2/8n7XzTtu4V4
         F4Gw==
X-Gm-Message-State: AOJu0YyUbXSrgyWlZ5AetRsBkoBsYETHmR4iwPWcYG0TxmVYq1Lp4oru
	Y43VGtocwVhaCRknEqAZ4Xm9SsPUU4QbOHTHHHRu+ezPZbaMPY/jxs7/SOIch4PiD4PHm0FE1WE
	yyKk6Q/htRcRN5BsdcMp1pQgFo4DcLYfE91HE9SekMwn51jeeh/3zXhlrP/pdLdW5
X-Gm-Gg: ATEYQzw383SkwAKKCY8hwaxtAEt+EGz1p+s19iGjNak1uM5ciW7Qq8/RAI/GqiTt0NU
	vKl5KRnFu0iEpJFuBhorq90yiX/nnG1pfAmxx8osKlJwll9JNFmFu5w0sYZih2XN9BzKY6WkJcd
	VZ6KylMXtSYc31K8XxSjkeLOKpgPEeGrQX1zi4FzntzQQ0mImFNWLbcPCQe5tBQTb7m+vJYArov
	GBJOfIQM+Yxvg0r06JamdLDz2s9MG6zaPgOwHURUwZggq/kaq3IzN/yKHHqOtWdiHCNm4vKLuXn
	tbdmhR5gHLVcdVzpgeNZ4szZPwFVkWI32q6lcM3F7z9L5OTc2uOrexslOoYj0Ack1CjjZD4Zcwg
	QxvuFdelRU60JpZYS0fFh5s2jscSi5Y8crPIIYv9xCrVw
X-Received: by 2002:a05:620a:29cc:b0:8ca:4288:b179 with SMTP id af79cd13be357-8cdb5a05dc9mr128366585a.5.1773343093024;
        Thu, 12 Mar 2026 12:18:13 -0700 (PDT)
X-Received: by 2002:a05:620a:29cc:b0:8ca:4288:b179 with SMTP id af79cd13be357-8cdb5a05dc9mr128362185a.5.1773343092488;
        Thu, 12 Mar 2026 12:18:12 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:49 +0100
Subject: [PATCH v2 02/12] ARM: dts: imx6qdl: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-2-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=17434;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=RkwabGJCjPlvUcSADlW+8upK7wXRpaR8C/Q+cGbyZ7E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFizcnIf9TZgx9miL4js29zEPeRNXM1MCFq+
 B9kh9beOeCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRYgAKCRDBN2bmhouD
 12BlD/9N19AsYw8whNKLFksff0YqEIzszTAu29m5t5j2Av2KFTOyYxfmXJikIQtstV85KrCqY1C
 fUzvOfVr+KgoonNZnhjVnFRgAQnucQpQvn/seJ0OUz4nqYF5tXgQ5nOhaHaQLodTq51EWADaFO8
 /C8s9U37QYF/D3AXdgVr8/NsnN9trHaiZ7HFbVB0mDR35pukURGPP8mfbjnsln+Y+33xViS+WCs
 oXYj5qaxX/QThUcdAYQ155KPDzpEoMVQNuPTXFnQDsz8g1agbhQd9opP8bAf+ylYKrI42nuuSn0
 vvzr6fvbwCaYcJaphrBV3zoh+/nhvVhFTbMO8szto1vyiElDZx+ZUAfBRfwTFCVbOk666AAWJai
 6KU0irWdPEq6H+Umbkhzz8DT+psgl/qEXTvqVMqIIdym51wUF+GLIzCQ2NXJKAkrVibxSSNKwb3
 RgJH02gigTjFNl4Kv0FEW2X1tR7wLu32izYrstHoPtlwDSG8pTW/z+lzm12s6674I3u0JLbqQkh
 JxxNeA4HL1JSoQRRe7lKew2nRd/ZGZJ/WCrxXvY3nUXn/x9MEe/LgsiTa6I54BKfZrNEypZRU5w
 bZM6JBgN5eWy2/gXFQRqG+pAzl8ne3t/g4rhLbEXdTW9/WrDl3Srq9HgHfEQlFXzhKnacE6poU5
 RRwaVYr9QPRY28w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b31176 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=50GlOtY98KW9GriB_zcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-GUID: 7WVXh3xrmDhnYMNDhRROuPl4a8ttD6BJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX0L5j+oRULB0x
 1qEayXTNnxLT571ZpahBTLsQk5fvwjfXOeou2R6YloyS6LF+qN7/W/49ycYMAUTN3sTK2OcAUtG
 2yvAt+8DHVb/REp9reET9O7nPUvGPwOuVh6TeGeSczNPCyfSZS1Kev6XzOuwZA8wxaRL/1eX0TO
 KhjYe7CrHfwnUoqwBIgnBwR9yJzh3zmcFlVGW6t8WRnQWYWmd+nr8QXousWhjx2fY6Jgu2I/Rdt
 uSUrOnVhKKEO7Bf65lG8SgNZ3xXXFRKSvnqvWMgPt9sOr3+hWaYP/NYyFrSPXhid5ARvt2QzVhX
 JQvkl28B1B4k66jOKXPPDT9m3VJJS1tHrL+cE2HpXV8E9PbL/NBLbrcBaYhB1ZDT5CpyGjiIqnd
 1KmjL6daG0uDFuNCPAYSowFZdygx+b/xHKh7vagUkjYWGonzc2AzA+/HPkR26YsbYDp8Y9H79MT
 JH+5KanJQbJ5pc6m36g==
X-Proofpoint-ORIG-GUID: 7WVXh3xrmDhnYMNDhRROuPl4a8ttD6BJ
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274771-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,a:email,0.0.0.19:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.6:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C4007277D42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi        | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi     | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi          | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi   | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi           | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi        | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi       | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi       | 2 +-
 30 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
index 9e97ef5e43f2..5e33164e5005 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
@@ -212,7 +212,7 @@ &ipu1_di0_disp0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio6 2 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio6 2 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi
index 01d4ea20b13d..4faa7b9c50ff 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi
@@ -308,7 +308,7 @@ &gpmi {
 };
 
 &pcie {
-	reset-gpio = <&gpio2 16 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 16 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi
index d7c2b30aecfd..1dc4732bd3fe 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-dhcom-pdk2.dtsi
@@ -270,7 +270,7 @@ &ipu1_di0_disp0 {
 
 &pcie {
 	pinctrl-0 = <&pinctrl_pcie &pinctrl_dhcom_j>;
-	reset-gpio = <&gpio6 14 GPIO_ACTIVE_LOW>; /* GPIO J */
+	reset-gpios = <&gpio6 14 GPIO_ACTIVE_LOW>; /* GPIO J */
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi
index 9f4e746beb2d..511b3b6dc5e3 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-emcon.dtsi
@@ -732,7 +732,7 @@ &ipu1_di0_disp0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie_ctrl>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	disable-gpio = <&gpio2 22 GPIO_ACTIVE_LOW>;
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi
index beff5a0f58ab..1d4899f8aec4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw51xx.dtsi
@@ -400,7 +400,7 @@ &ipu1_csi0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi
index 9d3ba4083216..46e3b2b18aee 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi
@@ -504,7 +504,7 @@ timing0: timing-hsd100pxn1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
index 7e84e0a52ef3..dd1201b628f5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi
@@ -501,7 +501,7 @@ timing0: timing-hsd100pxn1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
index 81394d47dd68..b8a1e47d1d3b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi
@@ -547,7 +547,7 @@ timing0: timing-hsd100pxn1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi
index 6136a95b9259..57b0d635bdab 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw551x.dtsi
@@ -456,7 +456,7 @@ &ipu1_csi0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi
index 9c822ca23130..b29c26b729fa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw552x.dtsi
@@ -359,7 +359,7 @@ &i2c3 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi
index 552114a69f5b..198af79b5490 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi
@@ -413,7 +413,7 @@ &ipu1_csi0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi
index e9d5bbb43145..4dafd225a34e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi
@@ -560,7 +560,7 @@ timing0: timing-hsd100pxn1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 31 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 31 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
index 3df4d345da98..a03f422d9a8d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi
@@ -528,7 +528,7 @@ timing0: timing-hsd100pxn1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi
index 87fdc9e2a727..862f44967c71 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5907.dtsi
@@ -326,7 +326,7 @@ channel@6 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi
index 099ed2f94d61..8564eb8e7cc0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi
@@ -333,7 +333,7 @@ accel@19 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi
index cbca5e58e812..0a2a9b9db1fa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi
@@ -313,7 +313,7 @@ accel@19 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi
index 4e4dce5adc15..37f7e15d65ae 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-gw5913.dtsi
@@ -292,7 +292,7 @@ &i2c3 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
index 6b737360a532..4755bf2bc65e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
@@ -321,7 +321,7 @@ MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30 0x1b0b0
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hummingboard_pcie_reset>;
-	reset-gpio = <&gpio3 4 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi
index 3069e1738ba2..d113130c1770 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard2.dtsi
@@ -517,7 +517,7 @@ MX6QDL_PAD_EIM_D24__UART3_RX_DATA	0x40013000
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hummingboard2_pcie_reset>;
-	reset-gpio = <&gpio2 11 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 11 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi
index dff184a119f3..396b621487ce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi
@@ -220,7 +220,7 @@ sgtl5000: codec@a {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 29 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 29 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi
index c771f87b10df..bdc8dc6731e0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-kontron-samx6i.dtsi
@@ -743,7 +743,7 @@ &mipi_csi {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 13 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 13 GPIO_ACTIVE_LOW>;
 };
 
 /* LCD_BKLT_PWM */
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
index ee2c6bec92e8..a492bf4f49d9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
@@ -240,7 +240,7 @@ &i2c2 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio6 7 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio6 7 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi
index ef0c26688446..bbdb77e6fec8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_max.dtsi
@@ -731,7 +731,7 @@ lvds1_out: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio6 31 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio6 31 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi
index 03fe053880ca..25e6cc3e9ff5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-nitrogen6_som2.dtsi
@@ -639,7 +639,7 @@ lvds1_out: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio3 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi
index a3c2811e9c6f..661f96fa3990 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-mira.dtsi
@@ -218,7 +218,7 @@ lvds0_out: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio2 25 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 25 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "disabled";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
index 6f3becd33a5b..33ebb9320395 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
@@ -399,7 +399,7 @@ MX6QDL_PAD_DISP0_DAT19__AUD5_RXD	0x130b0
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 17 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 17 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi
index c39a9ebdaba1..f18652b2f6ca 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-pico.dtsi
@@ -277,7 +277,7 @@ mipi_csi2_in: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie_reset>;
-	reset-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
 };
 
 &pwm1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
index ba29720e3f72..5d379b98d74f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabresd.dtsi
@@ -754,7 +754,7 @@ lvds0_out: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi
index 7749074e438d..13d092cb9961 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi
@@ -394,7 +394,7 @@ MX6QDL_PAD_SD3_DAT3__SD3_DATA3	0x17059
 &pcie {
 	fsl,tx-swing-full = <103>;
 	fsl,tx-swing-low = <103>;
-	reset-gpio = <&gpio4 11 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi
index 9ff183e4e069..1860e5a525ee 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-zii-rdu2.dtsi
@@ -651,7 +651,7 @@ &ipu1_di0_disp0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	host@0 {

-- 
2.51.0


