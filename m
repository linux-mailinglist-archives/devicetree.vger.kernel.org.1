Return-Path: <devicetree+bounces-274778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMKFIHkSs2maSAAAu9opvQ
	(envelope-from <devicetree+bounces-274778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 262BE277C73
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:22:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 016C8306989B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52BF40628A;
	Thu, 12 Mar 2026 19:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iq7XI1dQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZFtxkHWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70021406278
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343112; cv=none; b=QrojHgdu2OCf9gRmiKjCSY6VSRJta1iE8Etc2qI6EgrUKGGQLFrm7aRGbVBrd2jNJebhnMrg+tJAVuSSnCzXPpxkXdC90Zn7oW3u8hofZU7EeUkctVrvvmvhvo5r6DiJXEXixvtYFL1r1tBq+WiFA6tQ8S40m1Y6cdrzEKoQHuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343112; c=relaxed/simple;
	bh=rimSKUgKUB8M7kBDvMqD/j3DAOlWykchI/HohrWjDBQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u9J+REXlVegRDgTxvyamdB8Kpj29zw4Bhdo7uNPoNQJ5Du5QRQrlwsH2Blcy37eF/E1h26bTL+R2aWuMjR/TWtb5+oiVmH9J8FXlf6VZTanQfXGUd2Hw2ezkajz1uDVa+d/iSP1ixnCrybIEGN44yUto3H1SNWCBmiAgI6KsxEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iq7XI1dQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZFtxkHWZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9paC93136561
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JAqWXgBZaItjZFLcpaHSGp9QjO1XDfG0WWjivaOVvog=; b=Iq7XI1dQfCqeDGhx
	MqodbWVBYaiRaZ1GNmPRT2Z8cdwGMFN8txB4dHKtdgMUgM+eyC5nreuaOKArF1gI
	LWXydwLszlrUGQMSHenTs7WexDy7n5pX9WXqh8T+bkNuCyI9FHr9A1wSoi/s4H6g
	4iD5ZqTCOJL1a8OCGaLG1EKxzcIw0e7tsRoKS8ADR7TFvIPUiAPYkmTe8RFpifxr
	YJgxXRfEdHEXMVe/i45nbvmw4Zsy9z9t8fX7oOhxXlMIouXTMsEYE3IQQ8LMT2mf
	NMbKJpaurEwNes86yLujIIKl7fVu0//dfDZtv7INGfZvHA9jwbA1tjn1X532qGd6
	JBZ5/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wba15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd84943c76so1680876285a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343110; x=1773947910; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAqWXgBZaItjZFLcpaHSGp9QjO1XDfG0WWjivaOVvog=;
        b=ZFtxkHWZ44nE9V9npbL4qhfZHWX3Ze+bXjHKbvpkTcNCPT9FaEtY0iOfmLtD9Uoagn
         sFBwMCVfJoLfdfukuaVhU745mcESPQbQbbfsDxrhBtDDkAyZVuk8QFkCR6yCYndxRZI3
         JhhV0ApDPu4B4tTic7pzG50FUe/NhozRw3I3RtRBGQKkA+JChiggnQo7l8GcLqTuL2SS
         T7Ovbbq+9uAJHf61254s/Koxlwg421Mv4oimopFs/WHQmL0Yn0C+Vqg4iP+uAwXEleNq
         ugISNA7Nk29Qgehc/P9hKeEaubDz4xRHRr5bPkNLQFvIA27u38pWP8h0VRzzdeCt7BUr
         TVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343110; x=1773947910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JAqWXgBZaItjZFLcpaHSGp9QjO1XDfG0WWjivaOVvog=;
        b=xCOPvw2sU01rnXhmPLygafVV2Eds/6LJeywrpH7JlxXOX3uxU3EcNdcyZyfetHiWOT
         9vnwCPOUZif9XI/varVwWJ/6g2tM8CbEPS94THeb2Veow+uJ4rYpSvo9b+pDTj62HjIh
         nBvGrIQvEIfKVAY/anSPTgAf5YRQo0Hjzl3GNt1IGOJg0iN4PTsMrK/u7ty8gxvzQzzB
         cnGSduLxnqlqjOvxMtHlxlfYX8mC2zuuz1HyrmXVVrpDGDxGcAInIK51EJvq0/ismnMO
         2xXnJULc/JB0IB+PnKGnHbVseOIT564IgBR3RmjqczVZYcgxy5kCd421eQwzzPqMJJib
         iL1A==
X-Gm-Message-State: AOJu0YwSKV6jXkKx2w0KYZ1oGc686dlkepWYcVD84qu8Yj1PxHk5I0RI
	Hqqtp9WqLpfcKTSCC+QMVEKBHppg1AjalLL7yEWoxpD4nPs/noAvwJ5mTk2lIqPyNu4Ebh8/N2F
	tBsIqYJkhoLu8PbKdUjmziDIbeG5EOCKxonY5pVjWBydSs3UwRinG0FzcVaXn8bV8
X-Gm-Gg: ATEYQzzxBV8CjCDeKjm0AEK6giFusFDDOQpK+4+UD7V3QI7E7NLhwkW2xxyLCgQzMn6
	UrRVycqZw1Q3xsY++4SPtUzK0uig9S72+0d7xo8eZIbNxOFpwq29mSEVPSjT7AsDiE/Ro1divJj
	CvvmTBy/YgFEeWN8KU4rBi+fPNr2EB6dIiex8qFOV4MH+2HwwQhhF9HrycknDeUSpjSFSLLzvWt
	I3XZDj+jIiLoKUsKvGLp8RPZVRHTtuG8/fuhZPDQ99UWNfMYV5hs46lQh8dmfUn8deLTGbyyScT
	Ks3oIynD0MySOc3gcz2yFar0zULHk+MrUwcjZiYRSGi9hlG/1yNpvkj+M4WDEJCz5nRUAIp08Js
	x683TeBe/WKkQrKrgDOGKOnleG4YWmNrwZ+uMxQI2K9vl
X-Received: by 2002:a05:620a:1a06:b0:8cd:8bfb:a48 with SMTP id af79cd13be357-8cdaa84bfa8mr588750485a.28.1773343109887;
        Thu, 12 Mar 2026 12:18:29 -0700 (PDT)
X-Received: by 2002:a05:620a:1a06:b0:8cd:8bfb:a48 with SMTP id af79cd13be357-8cdaa84bfa8mr588746685a.28.1773343109433;
        Thu, 12 Mar 2026 12:18:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:56 +0100
Subject: [PATCH v2 09/12] arm64: dts: imx8qm-mek: Use undeprecated
 reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-9-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1339;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=rimSKUgKUB8M7kBDvMqD/j3DAOlWykchI/HohrWjDBQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFoZ2/9OulzA+k10fMju5/S5LkYZG/qGMou6
 K1Z3jdZ1puJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRaAAKCRDBN2bmhouD
 1/BoEACRIp3lO5mFFb+28o+83UC92NjUKR5da1brtzO5tE4+bkBdnKCnsuVtHdJyKvCeM17ECx5
 z/yz/qf3dP2nknIr6Zw+8MuY0U7uPpzXL7+xxncAdRTGgIe476VSqG1Qi4mtHFnKZsviG3QRu0Z
 Tgs+ygsAW7Vefp6q+IpyUL5TrmxjmJH896MOe96HvedEzzV+pbHfXbHk3vau72VHdajSS7+dl7m
 rx8qajCxLxXNFHJQp7PiNFzzBcfBTPJwHw1jarOm5BFzEQa5QXXeNsjyK8dvSL3o0A/9kYspWVd
 r/ByaCnWsAADG/DkVnVRBRGVtbLnjXroA3McMA6Oo0J6hsmWDV3R2Qswod6/f2kRvs2/mK2bpoD
 hkfArOshfpam8UXAgCLIgP/abNojEANuRrhXxBMjNVb9cr3KOwqZzML3AtyZOi8IwsavIlHUDmm
 R8cz2gCiNCOjbu5ytE5nOZHFp8SpyjNnJ4uG1n/3a4Jf27UJAqlkXLxGYfaBJgBLwrlJucOotvU
 CZKHuA9Oa7wBTFKHsZxD8ju3bz/4M7efzPUnEW2Z07MVb3IFeI8rk20Jwjey3ORy6/Q8uKIXLVA
 c4x8uCww0y0HLkyZcZeiXuuDdhOrD9ah7QQMmw/MXGMknQo/MVVQq8qp/r/z5ZOoUE73qiq6kkR
 LlAzD3cdLik40Vw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: tKkVbC08g7zyeyH7EShImUvWOXbpiq32
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX8owOCNrUJbRE
 ef10mUA+sYn3D9lNt1BjGZW7k7vxOM8mb+34Sd6FrDRosAcTIUZ9SF3Or1MuZjgVuaAlw9uJY9f
 AS+C2LwMZiXEv3P1O+7AMnYEyJ8C7GCgW85vPm9oB2re9xB2ElfcHgfcaxqkMFjuqJFx1FgacNs
 zeFaouPu251i0wlQGnNfiJM4IgPv+qB6Q9e1WM/+fbAQQ+w1pA898lLzIuT9dgNGOM7nGYD/0i7
 1nq+fMHSS5SOQSXGQN7zkBGfAE6w7VjV7d1coZQnmh8LCxDRSTjh/DPqGpyMtEOoVtVxV0wzECf
 Z/HO0HRtABFGgORGtRZzAL4pdeQXMTupoTuelPSnM6O/J3D9o69/HEra0uhfqNltVbsVaXOhNdY
 zZExGcWMWcEdFWzyLdIp+5U7e64nnJSAAfpT10RUXOEuHY8ivd9MqDG/0N6mw9VoDn7LgG4Mm62
 KOjSce7puS+4prsjL7A==
X-Authority-Analysis: v=2.4 cv=YucChoYX c=1 sm=1 tr=0 ts=69b31186 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=rBNLUka9-jj59pslBkYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: tKkVbC08g7zyeyH7EShImUvWOXbpiq32
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274778-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
X-Rspamd-Queue-Id: 262BE277C73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX8 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

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


