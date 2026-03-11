Return-Path: <devicetree+bounces-274221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKW/AUCUsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:11:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 621052670F6
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BD473020FCC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F242E7F0A;
	Wed, 11 Mar 2026 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hZ8zG5ce";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V5VcWeDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A063E122C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245332; cv=none; b=VcT9p5fVYeO8VRsH3dN/+odtwrQ4JevDH2DQuyuGFzOqCNcm1xUu7R1M5LmW0n+DQxQirgv1LZz2G46J6Fr94eyJbSBze307nC3JHblXaB/2fYAtXc9PN2myvCM4JNqsdmrmOqIM0gcfPvS679IFH+74/c/b2NVA0WTuaGFe4RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245332; c=relaxed/simple;
	bh=6vE0pftOAilYpmSPT9TJLYPIm07vk2MdgJnwhU6W/RE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VyMo0yyJWFC2i+A3tcp+dsWjUq7XYMGiZxkIOOsojxGiqHY7/UEBX6OwFPBAqIapsiwjIs3I3DhsNIyYxwUeWJTJFkBLeSumQUMU62/JlUsQhYMIdkWUJ8tmr5qvgs8UODe/SSAHFZLmw/8OZ5xkXUJHjMbeNhYNQgmenv8/Fh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hZ8zG5ce; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V5VcWeDU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BD7t7T4032609
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fNQFmnJFRgG+YdNb9/+Q8Of8vcXnleS1G05qCl47NCA=; b=hZ8zG5ceXl/VVh1G
	CPUNXJlBhqcIt7J+7T01WUK9O5eMatmYIZxdkWzdt0ZLnaHf5J221JkVS5FbWb9v
	PmbKzQA5/6aXpFXxaKQMlN7c61Pg0hMocaWo8QPM3gwtZYcreVnEdoDKSSp9fP7B
	5eZMGRjY1hAgCE3KxK0cwV7wJn/Scb5iv6v6GA2Cfs6eaBzdMjF3suT7XId4BlZW
	91UeK6cdL0O8thgwfSvJ6K3Sm2z4eb4prtJNuw0tSlU+EJn6n/uKi5n9aVIjiAV5
	JWFfnkmHT9XqDkIwwEew+xZQm1YcuPmSq6MOwSRAvA03s595nwgTwzOlLw/V6WpN
	ckaGtw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu90t8r0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd767c51efso568548885a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245326; x=1773850126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNQFmnJFRgG+YdNb9/+Q8Of8vcXnleS1G05qCl47NCA=;
        b=V5VcWeDUgxi16TYT4F1Y1wTfFYtcwPdTLKoU4AEyQaiY39Ib67RSIqYemj0+qhcAMy
         jODIOQyXfKV/HlY8vCV6qHnXrG27zSmVjZSCbIav+ZapnULbu+7xMGs/7LExdWGXa5dQ
         pSQNJmeeqn2aGZMnYTdiBkOZ0B5MAFT82fhgo1olYZQPMUFEGAr6Q330h+Ci4wYJjNgg
         DFkZQjeab4TRGSrDjJMF8+tzzG9MBiyguFeTzq9LK8MQp7v0OtQzDPjHoaERl/QLX6fP
         K4vsHfVrBYH0H/O82Y1/11u7V4sOcDhgMsRLNEc2LtpJ+ryZzvmkWTpv6ZuLxgVHIdJB
         kjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245326; x=1773850126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fNQFmnJFRgG+YdNb9/+Q8Of8vcXnleS1G05qCl47NCA=;
        b=cWmiybgUyfXNq3EB1A/PpoC8HYP+brHrRupQXqyG3djTyr3d1EtetrJunXkuzhYm+s
         BY4r2ZwvdppLwcK6yAkkZPUSIwgMUOwHU5ahknVm1tmSJOODNPhHEoiHU3c73UegSfp3
         LHGK4Qh8h19OX33OqkuBmo+TpuB36gsjac5t4vYtippc4iS3BfZ+sb/PGWGLxWiA0BM2
         iq5oga0tVTvcCGYALPD2hLgfIYNtxEryvAiHBfvymBhZPe19FmsaiZ55D31dTqBtlwID
         lc6ydljYxExVPfHtFlBfnNWPGO5p4cDPYo70aBNfQv2t2YEl7HavJeuxnQttxlUFQ/Y9
         w7UA==
X-Gm-Message-State: AOJu0YwQzwHgt9As9WqJcauQ47Ue6hcMEu/UPTdzDNmZL8EX1uA8QuQA
	Y9C02VdiVF3ngewITQDDvXXnWC+GhfS4PDZTt5dYn3CBn2IWZ3IhZaT/l9oYpmJpoDGXOJek15C
	qJtnsTxw/XDs0wY1+/Im267VQftWpi34NNu60jgd8AX5P4VqgU+ZJwPvqqupr3d82
X-Gm-Gg: ATEYQzygPcoyZX6147UTWsfAOKuvjb+XMsOBEbkSMB42wcSxhiPjvk03mDMTd5q+dN5
	wEW1fxXff+xzb446CD2aqNvcMtRr0irBsWbP1NkykMiFDqILvlT28LWfQT+YUvqGl8IrmbwyF2q
	s9MTEl6fOC/n4EgIyTNVgcPj4YWy9WXYp9P9AUfvUSdi9Kpy6U2r+iJp27N3lEvUJe4EiPVEkoY
	LvBiy7v8mPIsrLckKBWcSlGM74HILYk6lRPvJ1w1dg4AYmmBcEI/uNfBfjXWiAJVAtNPar0sLOO
	pUXnqtewsf/ToY6Tzfvay6eFRIkgKOYQ853IQ6WHd7/kcWYEkZpAZr7GP58SDH4D3+Iv+L5VAZC
	Dd586xSjoIuDznLl9/ubfTT8TjJvWKi0w6jmteXbWQfhb
X-Received: by 2002:a05:620a:6cc5:b0:8cb:4ba9:ccec with SMTP id af79cd13be357-8cda1a7ceb0mr372426185a.72.1773245325472;
        Wed, 11 Mar 2026 09:08:45 -0700 (PDT)
X-Received: by 2002:a05:620a:6cc5:b0:8cb:4ba9:ccec with SMTP id af79cd13be357-8cda1a7ceb0mr372420485a.72.1773245324790;
        Wed, 11 Mar 2026 09:08:44 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:08 +0100
Subject: [PATCH 12/12] arm64: dts: imx95: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-12-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4305;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6vE0pftOAilYpmSPT9TJLYPIm07vk2MdgJnwhU6W/RE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNptbaqelLdHazTMlTA+tfAvDcbeiYdkVhlp
 PL0hIgCCH6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTaQAKCRDBN2bmhouD
 15B4D/4/yILQphVlInojP5P99PiGVOzSDHrGO4wXjrY0vQFr3DDNLAvMlZbUpqA2urIVhFA2oOR
 8WJjQND30mywAvxXsBEqVaGwPoYECIJAUY//BRxrT+HnppN/P4NxBL1Xe1EaCMCn+mJF9oI2ra2
 WFYOrwY99EIjoVB6gjlQLhWAAIDyGYBmA7commxD/ei/0AVrGUfPGtGHrPCfJHz7JVMwZ9nfaXt
 D3QO7QiJMss+zTLPpqo2fqe94NyxtYx2vWBELs6aUHPuY5Kqov6YoB0Fzyonl5ak1J9CPnNBdmE
 2iBy52gAmAmCw8IzF/6nA18nrMEOQSfRGAzpusX/XwLHHnrwbKzpfUcWM89F7R7ApX+q0+BVqpf
 6VvgpkmgkbiNnWKEtlPt2mEU4xosd06o7PWc6fTBqmm8ExBKHqb9LAfmNkTtLOmu3P/6HhHAjcZ
 rFs9lrhLvO9nLWPovrZz8RtXiPuKyOgTesUg9uALtKjx5MtDtXjGOCl3pSt+HDfdOWOOFqRSwuT
 qlLKRlbn6bnolVEhmWxCzmm0zQrXN+R7WGFa3ubnEv7EU7/rPafRyFzXmuEpY0mTEBHQvhpzG9k
 XvPybV+47lv1qODyvogFVgMl2f4bnArvoFyKErSNJBSeuF6LEUyhzLdKNaXKgDUDTv3moQF2b45
 onkIvvVH8Oj/sbg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: ni8jRhnb2OWgqZ93hzne9fvdArc1VPsc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfXz582G6q+LjiY
 qfS2lE1persZ9KzfAtMEFJJcqPYyLWdKQbX55H1qsCYOjnlo598K1exgCzvi6t4eeQzXSKPDOmY
 3S259UwT79tuk92vKEYgmyuv/zaQ2WAU+GAHdGlF8w+P2SVbAFNJKdOuWNbpQ7Zu+O9PBCDJJ/j
 QYdSZiyeGPFCdLT/aJjA0W2RjfNed9PgVoLoOuzCy+4nRiIzrT9hoID8wzGEZ3OSwzhYT0osbY4
 Ji9to2IiNouEq09PrcCZkNkZa9fsbS6BeICwtVhnQqFeSGW77tXCZONAhJD1njkjbdYDJeqoKDd
 55P27z9Amxxtw+q+kr8HXnD6+oLx584YFWu1UyyHPN3U0/16yXDk9Nfa3INct0dr9M5RxLUT6zd
 Ia3LcL48KpOkXxPeV6/CFlEfokVMPAXnHQgBWhDMwdMoc1/WmTSnd/WENHRH67zLvvSX9MaGPvW
 T/Rg0TkJvxW3BBKTsag==
X-Authority-Analysis: v=2.4 cv=DfEaa/tW c=1 sm=1 tr=0 ts=69b19390 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=jGA75YajJU-kK98SflYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: ni8jRhnb2OWgqZ93hzne9fvdArc1VPsc
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274221-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.8:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 621052670F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts       | 2 +-
 arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts        | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts   | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
index d4184fb8b28c..d0f2d3beb72b 100644
--- a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
@@ -554,7 +554,7 @@ &netcmix_blk_ctrl {
 &pcie0 {
 	pinctrl-0 = <&pinctrl_pcie0>;
 	pinctrl-names = "default";
-	reset-gpio = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_m2_pwr>;
 	vpcie3v3aux-supply = <&reg_m2_pwr>;
 	supports-clkreq;
diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
index 0f43e3be7058..7a615b1f6199 100644
--- a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
@@ -549,7 +549,7 @@ &netcmix_blk_ctrl {
 &pcie0 {
 	pinctrl-0 = <&pinctrl_pcie0>;
 	pinctrl-names = "default";
-	reset-gpio = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
 	supports-clkreq;
 	vpcie-supply = <&reg_m2_mkey_pwr>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
index 041fd838fabb..4439658681f0 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
@@ -540,7 +540,7 @@ &netc_timer {
 &pcie0 {
 	pinctrl-0 = <&pinctrl_pcie0>;
 	pinctrl-names = "default";
-	reset-gpio = <&i2c7_pcal6524 5 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&i2c7_pcal6524 5 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie0>;
 	vpcie3v3aux-supply = <&reg_pcie0>;
 	supports-clkreq;
@@ -557,7 +557,7 @@ &pcie0_ep {
 &pcie1 {
 	pinctrl-0 = <&pinctrl_pcie1>;
 	pinctrl-names = "default";
-	reset-gpio = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_slot_pwr>;
 	vpcie3v3aux-supply = <&reg_slot_pwr>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts
index 2b0ff232f680..1f2240bd21f8 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-verdin-evk.dts
@@ -305,7 +305,7 @@ ethphy0: ethernet-phy@1 {
 &pcie0 {
 	pinctrl-0 = <&pinctrl_pcie0>;
 	pinctrl-names = "default";
-	reset-gpio = <&i2c7_pcal6524 17 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&i2c7_pcal6524 17 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie0>;
 	status = "okay";
 };
@@ -313,7 +313,7 @@ &pcie0 {
 &pcie1 {
 	pinctrl-0 = <&pinctrl_pcie1>;
 	pinctrl-names = "default";
-	reset-gpio = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts b/arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts
index 26c2df9b1b60..99ce38df4538 100644
--- a/arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-libra-rdk-fpsc.dts
@@ -243,13 +243,13 @@ ethphy2: ethernet-phy@8 {
 };
 
 &pcie0 {
-	reset-gpio = <&gpio1 10 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_vdd_3v3>;
 	status = "okay";
 };
 
 &pcie1 {
-	reset-gpio = <&gpio1 14 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_vdd_3v3>;
 	status = "okay";
 };

-- 
2.51.0


