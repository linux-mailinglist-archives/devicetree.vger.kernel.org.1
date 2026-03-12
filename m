Return-Path: <devicetree+bounces-274779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFVmOo0Ss2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7975C277C9F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A2928304AAE9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D8B4070EA;
	Thu, 12 Mar 2026 19:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sigd0/Hw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hgZv6pz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE756406293
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343115; cv=none; b=FOyFsGQxsr8AO8QCFK71KRBNZQcLHUdu6/Hv4ZPMp2EnIRUX/rt8T34gL0Hu7QDwD6hg0TkFiS4cyEq9IU2QATMQxWosY6UQcGcgKIUrVfyZ2cUzGNXeyCH+E8Q+GivMs+mOsAHP/tzZ5zr9c9obaW1mPs4TwChdrCgNXQnGfXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343115; c=relaxed/simple;
	bh=mQhGzCxvs3S3GUmcWZM7b/t2cMqdUR1t3CGSawFbijg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l/KrsGN5dddlAkeRA9O/pjQO7DROC9ep9l1O8/ohQNOokng6/BW+6hTFnXCj6Rbo6SuRn0CFuuWK3oUkZktne/GE6oiGRe3jtqDs1N+NPlaFcg95nkutgjrHFUXHOkOuFgkZWh5iPSnBWMWmsFtE46sehHN2rwWFsm5DF/Wtf2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sigd0/Hw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hgZv6pz1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIMa8P4025754
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rSnYdF3yntUL3R56pQlGX4piuC29cFagEaWXPmDySlM=; b=Sigd0/Hwn4YpZphM
	y6JWCPs71IXZNOP0msv4dWcnkTfVqK8wBSJHbTJby31zvg4UUy6l6siVEp/iI0M0
	KerkldPRVI9F4gMU7wsTmy+d5RoxoqPhV6//W01SslJKXFRAc6cVszs3l550nOC1
	GXSj7vVWdaicUchVeDYSPnbCZ2VkcHPPJ7En0WFdbWQ02PJVNqr3ofq0l131qpS2
	E/46rBpGksEy6shAPv6RMz0ZbaMp3j3MMdoXyBH4IQD8rxGlyqqJ0tebVsB0GyVK
	+y4DPsrDq+MPkWlWQrIxqKGAPt5NMCXFuOydsddrtKuK7ini4KZGpwjJj7jr/7kx
	8sAcQQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50u8ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a178d7270so223313836d6.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343112; x=1773947912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rSnYdF3yntUL3R56pQlGX4piuC29cFagEaWXPmDySlM=;
        b=hgZv6pz1dYmvnUnvpNjelGEbONlu1R0vBMmKj7sEdVmK3h7C2ExAu/pRE11Vm7p2cD
         5dbbGzINP3qKOLzZbYaljo1sMKddjSw+/2RVWBXrfdKUp15Duyp2HyH77QN+k9wSDDZc
         icyDEKTOSnk493Q8cB88qpCj4xqq7QtWDGkoQrNd8OACeN4buN4ucmrioUZk18YbJT2G
         N6i3+ZI08f9nIi4DZitPExZmPULEp30QXydDm/8aJ1lIyof4os3qZYz5E4YCvC7tN/PO
         D5ceOpg2FlHv7w5DYeCb577NisnnQKXzNmdwz1Fh2iwqB76PHKnfkvwNdx2PCSUnZTHF
         6TOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343112; x=1773947912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rSnYdF3yntUL3R56pQlGX4piuC29cFagEaWXPmDySlM=;
        b=pCHd/bAIz1sOlyEEFuCqAV9Jod1LTkhTgGQCeYphm9ml1b88OH26HzmcUWqs5q8oNu
         w0I8LK3Dg13cqMKPPCTE8408gLtg5i5wV42hmwCSrq+7Q1Jx277EJ/13DLEiub2t/ZMR
         exBObeMFOGBFGLbBuJY4OhoZRUdrxYEUmuCYgJR0OZFX/Wh0OGYtS9h+NOV7SO0SABAg
         KEgDIADIAw0kzLYOfSxNkyLvNQavYavT40J46RBEEI5EvlAQ8pds3mbj0MZAZ1mQ+s0h
         cT9TcPP9t7+M3ws/V00IDtDpHcT0j7ZRO23sRE5EoT6xMVat66SIk09S9wyXzf3Ku610
         S1sg==
X-Gm-Message-State: AOJu0YxcDjQ3jdn7tDRteb+w1RVZNEFrh39G+JNmw+SnbO+M93/0eaNj
	sJJKWzUcSA5f7R2rFO0ZgPrPahrigoiV/qL469uIW9WXGIefyroKpBC6j+g+ZBnz+kuTqt4v+1G
	Bm4KoNuP6rSrUAtqcFZePcct1442b4ikTQe1wBLla/zV+gE0LIm6VgKcgYGVcW8V4
X-Gm-Gg: ATEYQzwsP5F7i+esXStwehJXja3N4vfYkFA8faMdmVyBFg/cn/34p+2oIOfsV0LkkOt
	BEpMLXkqKYQLXkx5pA+zcIF8E/M9ttG+G9oMz1lkK+0Pee9o+DjJMSfb8AkO4H31KJJP31GwvCx
	cTWhPdZWcT/QdJUcvwB/tVGttgBESKc0yeHwc79SAvrDxIPi9TA4boHcr/l2KpCuCKFVM8gdrl5
	uzqTu0NmMl9cHS9Uw1tqoifJ17Xwto0ZihReWcV1hY9Ug7odzDQ5vQ9BLda6L1MRN2S/0HaN8NP
	Pkq5HbgBRH4fHJG8ay2+2Lvg064ykdRlaUDd4rK+nn2ll24CEJfP6eJvpQr+Opn9qibCXkgtWEc
	nceJVnxyUKiXwIFzlHWqvcfC8k/B+auMteHv66uFqTB8p
X-Received: by 2002:a05:620a:4081:b0:8cd:79f2:dc48 with SMTP id af79cd13be357-8cdb5a9751bmr131726385a.28.1773343111772;
        Thu, 12 Mar 2026 12:18:31 -0700 (PDT)
X-Received: by 2002:a05:620a:4081:b0:8cd:79f2:dc48 with SMTP id af79cd13be357-8cdb5a9751bmr131721785a.28.1773343111273;
        Thu, 12 Mar 2026 12:18:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:57 +0100
Subject: [PATCH v2 10/12] arm64: dts: imx95: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-10-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4317;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=mQhGzCxvs3S3GUmcWZM7b/t2cMqdUR1t3CGSawFbijg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFpECtLe4fmQO3jsGZ5daSUkWr9nLat9a3vr
 ylRqvkBJlqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRaQAKCRDBN2bmhouD
 1/pqD/4zt45RTWOxkdx6kNYSDqz1Ilg6uzpxgtNeflvTp8ahw7W3nw+qZO/ShDEK1kN8J+0aTcl
 YODqsk/KHnKG9bLXoIWKiiTXTKhU9uyeQYywBX26E+bjndpq52wPUyKsJB7Jj1ZXtn2h7NJPndj
 DA4YzYS6qbhK+yBeKiHrcO9STLNVT6P47QYWjqfZwPiQRiZhTTS/MOJy6RW1Z4a0Zaxa5L2hLL1
 33S5XKErzbmIUT6H0xAUQUx/CWzWETPR8eJbqaWRz+YaEmoVHH3t90tVIWKcKz6R1qrF3B0pwVn
 QUi/Z8/MeShwVyHyw0uRiuUtNdp1yPpdIrH3Yn5USmIhJguzlgdWfv62lDlNZqztejqmVv+2Zoa
 mIUTAktIhCJEmcqEbHtU6NkepgsK875dXG2DEAhQcyoCJCL+r3tU8Z4+fRjod/Ds6LoT0Tn+Maf
 3Sfs6hWqQ+ahQuiFAGIOk9ZDtp3yuHOXKTItxcwD4wa1kqpMf9sLc7ihandIsUNUJVQjBBmH2/J
 /2yQlCN64SQXL4Q7L0IJWRHXihxXLOpcNeQogzmwJPPZP6ybv3GtONQaWBAsw91nvMThA050AbJ
 GTrfl4A9BJyj0DVxShb/+w9gx9g7p1m/Bbl3DW2TH9JmIOldZZjmRE4itUDVY78o+iVB4gXZgRg
 qfYn5jbDD5wpm6A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: ZVBcrQNBY0ymFpMPxYooZVNYtHHrFQud
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b31189 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=jGA75YajJU-kK98SflYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: ZVBcrQNBY0ymFpMPxYooZVNYtHHrFQud
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX8EA94NbDyfGr
 7U3rDwHiCOo1AUL3S/4o7Iot+5jrrw3wR2V2y17c8XsijeRadCG2eKap5cBtbLmYehVhNVcqemD
 XgqAsV4q8z7dfx/ku5xMWHKoZMtbL0yZYZ6lbbtouO7aoR5ZWxR5Ejc36fd+nCL/+BfbFAsSzvR
 NZ44DIkgnDXkqWUOne2ks0N45yILHknMwr9iG+BkIZ/EJCgs4F/kGJ4WMgRn4rJtXQOILrAkGII
 1mRDfGeGwUhnurujsw2LcSJC7f2+iD0bZyqxFQL5N7oeLgBiSKznIKrStl8+lmN1/YLAI0Sq9Ls
 agC0k2re/UehKQReLUCB3heXvcT4JqNKVK88yWawPwh6a8wAjgP4yPAfj3IXXB4dnq54yD9ZmwL
 P3dBP5Wv5ETwbDazeWvoRZcAht9g9R5T8kHV6R5FSPqCi8yg97IVE5Bjh4xfgcD22hDgvXzBlwm
 olvoMzrvQQxcaCIDnDw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.8:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7975C277C9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX95 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

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


