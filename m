Return-Path: <devicetree+bounces-274214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNHwNkuUsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:11:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB2F267116
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D8933194B07
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D953E123F;
	Wed, 11 Mar 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Of30gtOD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TY6f85MJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A6B3DA5A5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245313; cv=none; b=iy+gsNoNvBYWtgefAr672P1WNl6Tx/GJ0tiLa/Gk/S5tKUFpLeafOlfjtDKsOqWNvchrUJh/RAvo27u3nT8jIIEKMn9QYZLwd/PfpuR2V2A80N6U++HbOsZzxzGkjnTU11BOwxCZwGjYeeYqI36YtBcwGPn1fHK03vGz/itnHS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245313; c=relaxed/simple;
	bh=OOkLDhK3JsTYE1V/32ZvYJef0A3NvUMo5Dy1LiBK+q8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jg/eyTY/bCaK58Q3VvBPttFGCdMpFwpe9bcNhRvdbgvSN/mLVBTlYXnY2C/T950A16godl+mzerAMCwe1l4OJ/RV3YakrvCQ4/L02885SIry/lqJpw38HJjfP5s6JmvLsxWRbULU5DOMiTxqOr9O2eGjm379Kvr+W/Mr+fqigp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Of30gtOD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TY6f85MJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BF4Sp5613997
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lICmcRczp7taqbCRzngMqOPWmAjXGILM5iRx7llg7dA=; b=Of30gtODIzQXCai3
	cHhcVRdvElDj7B4VL9w0q0gJHqvePhcP1ULP30unzFzgy6QxiMa+uQlQLGSssYLX
	OrYL0jhW994HYmjNdzpm3ZQZ8xfxG0WVtjQOB3Kgn8oFd9GaycWZnJbW3sDopFvJ
	roMX2V2Ubn2eWB3qqNhNU+KgT1aNmGScLv/DIYDeriBnWCzi/CcCZjoSl6h8Yemi
	7fKyDUCXP2mKtuv8eMOI915sQcDec1HwPxS9xIuZwxPzmMByAbtSZNwTFNr9J3Y1
	nVqThZrkAzNP4abnGLVMVuFS0sA+U1PdB9JjL00+FrjNLRJY3XTM621qJF3d9loF
	VQTSqA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu0jf2rbp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:31 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94d6c5433a0so151483507241.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245310; x=1773850110; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lICmcRczp7taqbCRzngMqOPWmAjXGILM5iRx7llg7dA=;
        b=TY6f85MJ7jYdbpZRSi17dfVHRjRKYQAQ0wBS4NwkL/ovU37s6l5fb6Grj0TMgHCWWM
         VSGJwNf2zhl/8SICrkZJCliNYyoS8mrKmLShX5y1GkRLi3WiFlVobAup6OEpDDkv6BQF
         z4mlqK+q0Hm7guSYM4zQE3I39HNmqLe6JGE4RkMhVUKf2rKP0Mgpr4FEyWXjjd0Fs/SL
         mNQO/DxJCS4JPhxs9Slsf+DrQQJdL+mT1F+AVeAhwTsWZpgVg3+0V3UUHwiEA2TJcy/p
         dKdAY8LSRtx6FSAoA5ArRoBrOv6GasSVCYP4iMEjsFUS2R7xTSA29b4RBp9jWbK7SbIB
         iHVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245310; x=1773850110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lICmcRczp7taqbCRzngMqOPWmAjXGILM5iRx7llg7dA=;
        b=n9EWOCEHqE15+B567FJ4uUTm0GRVaT4kG9mh6J75siLNy1BqaP9LpwIGnKindJy8my
         bS1UiZc/aL+pG7SvXk8du2oD5mL1EO4OjgWhr1O7wNkL4KgykemNZ6+oKzAKcXculmEi
         JtxCjg4NsXvSAZ5fU1ztupdieSZFUvfaX1EWEX3AgvVkJJjPJwurZ6whkXRaUe1ul4hl
         IUOKJACijF0Jp5761/y7BsAxTyls68op3wKxlq8nVk3U+oYQmGDfahrKoE9BtklTGlei
         HWo2NiBKg7CLlnPMkPWYs0VK8DZvVXoWusS0uT81L9dyX9v5b6jjO2SN5Bxz4LP3qUV0
         W4IA==
X-Gm-Message-State: AOJu0YwN72nr2ut8DkaBUk9xvEc3X/BSorBTSrCQNHAKMgQtUCy7pMWC
	Pu8hB1PlTiLXgrLw9vY6X9+fn5/ePj2SBNfm73ozoktiAk4AchNY5tvC8LPj9vHvZ6lY6Swgi9Q
	s3vJzWtOp5rHW+kQhOm7yKfGrJwfOy4VIiCWejqavfUq/SF5wPBu8Hk2Klc4dAFO1HmkUu11a
X-Gm-Gg: ATEYQzzB9lge8YcYUYiOx4+TWqyNdxFHGH30JdkOha4DLm4AB1t5LM5+jPpzVqx6JBo
	LJ8S/IYsbg7x2J92YqgX6SXl14adFfMOC6XlUEnS8U1vV+5MZAcI568AGPyxVAThYYwZJ2yXlAe
	fzzkUmaOrWl+suBlif4yLnIJbg5xhzQH8OfvlaHyKBSyIh7aCuUxIMxfOtXYknZTgMxbFRJYnKi
	0XcAUvBWz3FCRNPtZeu5NoLN4Y6pXCMU76xjMxSrwQHmmqjJn9tdla8hlID2eyhADNOvFLVoAJi
	BwkD9r2y/idFKGmoqwBzIAHwl2vy6pUStpPiSeXveQ/1vGDDk50pbviIrKCNnQpu5kmhrSOHtu1
	vJ8mVRy+zDVpGViwVUEV+n3QTCoYH7WfRHkboGatnLBLZ
X-Received: by 2002:a05:6102:cc6:b0:5ff:befc:6769 with SMTP id ada2fe7eead31-601def32261mr1232106137.19.1773245309786;
        Wed, 11 Mar 2026 09:08:29 -0700 (PDT)
X-Received: by 2002:a05:6102:cc6:b0:5ff:befc:6769 with SMTP id ada2fe7eead31-601def32261mr1232095137.19.1773245309350;
        Wed, 11 Mar 2026 09:08:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:01 +0100
Subject: [PATCH 05/12] ARM: dts: imx6xp: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-5-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2223;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=OOkLDhK3JsTYE1V/32ZvYJef0A3NvUMo5Dy1LiBK+q8=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGmxk2PIVXuRC130iHSJs1+ZsAOV5nFu/np6qPXSB6xFzMWcj
 4kCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJpsZNjAAoJEME3ZuaGi4PXYPoP/2WY
 f1UHu6fqZtqhj/8R+2xjVUdLFhZGTG3kTBK8piqz/Sc9VgyLqaS8VtmzYizmNRXEBQSXjKI0Mlk
 1veVqdAbR2fSegGbQOd/7LmktLkg2IP/mGff9tyU/ZuM56WmoTt5RkMtYF2sSJ0uewAcFi3Kq1Y
 0Ya8y0pWqrIxaQsHJDIX2kZlaF++nVd1MlII/VEIiqcRSCJ1hneSfo7zuARbh60AsNbn64aLHJK
 V42TSePkcXBU4DhBLYHhV0vozubGARPtJuzIJSMpKa4r9+O05Blo534xglMGFjdbpccldV8oIIW
 gdJj7+4SXjaDg2sZVA+i6ClsjTsvQ5+0Lz5cXrxHNPeqfYCLg+M/RAIeeroTZJxT+H6pspe7syb
 2pqzvBdq7HhwVMxRo3cmThzFsuM2Dcg0cDy9+zr8RyyZUeXkaQPnE+Bzkkp8GAfuQujyYA9pFeC
 l7Scopjn9TIQ5bXtcPLElJ/0H+e9d2HxbBQGmYi6mlmFHl8+Tc9qaPh+99sSatMjlrnKotid0ch
 ZYJ3JaMcz+FrO2JguE7WDaitlOsu2GRosEA306IQbB1KF5fRYjmTxxrMSBPmlojaHVXP9vljuRF
 FaUbzL9BCah6I9Dx1TO9d1cR6vG81pjJ8Of8WZSATWXAY3YEQlh/g3Rhfn5kKMpdhjBUshgmPwg
 q7SZZ
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: TXbimrx_t1bcoXxz9PLO46Rus6n25K3E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX2Jg+SW6jYNGY
 rOVo7rkjEHnRl2LRa1EV3mfkqu+OnLpuKjcw+slvfxnRoE/72tMMOMrVJvIFvFlupLm6pn7LD5E
 yxgGCiFlkdLFEiUa8GWDn8GHzsoRMTWdRY/4o2GbbS75vAcecRSC+QVSx5SzIc8wHFrpge5gJar
 gIdc2d02LT/mPGrB99wuYqgldxQxbob/Hx8QD6Vi/EWjLIa363rlhnW8LbVNZzIRk6VD+wIXs9Z
 rqbvCdRRXcqDEqsZtmmQO4zFU1dM7Zf1AR8B4ep1SVFFRQpDvpJQDHHwDAPpyl2BEyM0sz51uKZ
 tfFtJ2/axWael8qJhdUXlGgcf1GWqOdGIx+3SONB6ITGJ0wWPjBgs7Gatd/V444z1/qN44y25Ot
 9tuJgBkT7vHIO+Xor2ra0zA/vWTyObhWbQV8xze3MMGJ4FcIs5mcacn+HHTyidnPW5qrOoeZym3
 86k7dZCOAAUUjIb++Pg==
X-Authority-Analysis: v=2.4 cv=FMMWBuos c=1 sm=1 tr=0 ts=69b1937f cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=8h7fRtSIOQ1pb8j5ki0A:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: TXbimrx_t1bcoXxz9PLO46Rus6n25K3E
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
	TAGGED_FROM(0.00)[bounces-274214-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1a:email];
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
X-Rspamd-Queue-Id: 5CB2F267116
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts         | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi                | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
index 1c1515a854c8..6dd382cffa3d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dts
@@ -224,7 +224,7 @@ &i2c3 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 10 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio4 10 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
index 3e238d8118fa..11e8efcc1fce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -282,7 +282,7 @@ codec: wm8962@1a {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio2 0 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie_gpio>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
index 2ffbe2df4776..6dd626f15a9e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-softing-vining-2000.dts
@@ -499,7 +499,7 @@ MX6SX_PAD_SD4_DATA7__USDHC4_DATA7	0x170f9
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio4 6 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>;
 	reset-gpio-active-high;
 	status = "okay";
 };

-- 
2.51.0


