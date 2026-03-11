Return-Path: <devicetree+bounces-274210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLZ4Jc2TsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E079726703C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F38133053DED
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814E92836BE;
	Wed, 11 Mar 2026 16:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sdvv4ZjF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ejNrPRUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E82B364038
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245304; cv=none; b=puN2k8pW52yvFZWpnZ1UUAZ3wbGcP47ML+VyAgOyWGUkMQGTUij8Qr5e6so/qxIs4W7dkQbkXvTHgi4KOvvLM1mAPPn2kZY/jDgwjqZWBWvlMdmBZiLh2eXO2U5NcP0YtPauLEg/FiVmc6rq7w/xFsKkSRWooecx/StimMO7NQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245304; c=relaxed/simple;
	bh=fvJPxiZJcDnoLtQ1cA0D6s3NXztANmKivfa8n0Cahy0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XUv5HlL1lYqrTdllIh6f36/IM21I73D0hAmuCIsh5ykEJ/aTnsxstrpZTue3NPLsEQM/KDt3q1Ga75zztS09YaADW3fpfPUBwH0S37/9/YBwG/qBAOeMlzmGesvq9P5hQEc4eUaCCEarK4UWLueO0YC9LfmBk8d3KD8EKTY62zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sdvv4ZjF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ejNrPRUp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA5d63294270
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gX/y4X/Q6QOSCv7k16aN0suGNLFd1YkVqOqHYVfLXTs=; b=Sdvv4ZjFZCL0yLms
	BgZ01xWzR2gWiedXQayJjxVU1EWp1b1kfUnVIQBu6bJT+fA3q9l9OFNpLDln/n1b
	N+52T0PpEg6ONh4yN/Zzs9bXwGejtpj/a/67hUkYb68+AFSc9kTODH8DlACjghAC
	nfFZXGi7lv/yPx8OJ2oVNcXLYvMp//nZUSWUDc6/BpacKZ4lnFbBU+E75EwJMzEK
	99JiAIHZqzGL8NzfHgc2WG5wd/aj9VTqODfytRNxl77ExgLzBlsMNi/rkiJI3DEH
	N41Ms6KBVAP0rGXle8La7m7/vk0HBTectUitrVupITN+JiW/wfmPP/QT9Grb/N8B
	vo+X6Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6bb9as7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:17 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ffc6cb5980so62942137.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245296; x=1773850096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gX/y4X/Q6QOSCv7k16aN0suGNLFd1YkVqOqHYVfLXTs=;
        b=ejNrPRUpiYSTcvvgxz3PbqlJmw2gFy+eAt+LqdnjfN6MKsxrdHIHsIl6o3+SN7mjAQ
         fZUYC0658AzbOHZjK140A5UpiUKln1j49mt6sDkapXhKnycfedzoUhwP7X72toGbbJbo
         FptZYCnpDIG50isbbrziaxkCUGaN5x6YvI6HK9QFPA6oXGZXdF0uBOe7aHBLG5h8FGHN
         tREaJKgY/WcpbjvEOjl4cq9+vxqFd0QtxrFjIRBK9qk9dvSn872e9jTQPD/4fZB8cQYF
         gyO62KDLu4iaJZBoth42h2xNWHUouNG4H0yg7yZahYl+px9qJX5rXuhNiXswWdKx8d7x
         2qXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245296; x=1773850096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gX/y4X/Q6QOSCv7k16aN0suGNLFd1YkVqOqHYVfLXTs=;
        b=LjPvL4PIGHo+u5DJPwT/IlKRVBjV0o/1lnLx7QzAu/NUO/xRI8CO4w4rdOqzidspFj
         Iy5m9RaYbbCheo/P2sSHIS4cR2V2z0iCi2/bU0igCXlmdj7Y0F2zxpM32cdt94Q7zWI8
         eogrmQYXciKi4/piM36k19H4FdYNrW1Lnvsym2ow6Wj0SY9EY3BTl+OsdAk9GcO11jvm
         GnLuY9/8kMWQjDrW9bsIwzXgfmkaxhVG2/IgApX51D6pNlPHoFDMbHic67yy91idFBx3
         ydvTYq7zZGbhrNEUVzJuVrVcGu12T0897Piy0ckAFctFUagy8tnaLTubg7LpFxLFrrgy
         SuNA==
X-Gm-Message-State: AOJu0YxV6G4fGqnGl1zWbmYF+9+D4CQBlrwXh8TC3CtILhkAlSi6tCvr
	nK8km8F6kUgf7C5JqOBdaLjlamQKNXqza3QPxdBo1LqxqnPbeS7if2Hrtxsxnc9/vb2r+Crdwqa
	d+5qv/sjTGJlewJ/8Db+b1t+if0TxzU//HT8hhVcIY2au6Juu2gNgASA3sopTSbZ+
X-Gm-Gg: ATEYQzx0MUfSAjyU5F2Ip6GugPCwzRQExxBDzlQl37ZyOh3YyVTq3aOc2vTJQKH8XK2
	VyXyKfkUrVtCjImobe9tUF680bVcUO1i21Ao+Ch+vQCnkkmhvRN38+p6fDtZg35ITRFInFoQyqj
	HC5rKJahdnNd3Gf9KHVwKbjHcB4dgCdXLK+ln50c3SrEpWLo5RafWny7lDOk7Cau7D0kQAXICbC
	oiHCjsFdWhTQswTxuseDRtlnAkGiD5iB//Iobn5fPBznGA4rv1aF39ntvwN/fG7cSFfsTCl0VGp
	S3k6g+rYfp+lhhMBMxujhICxE+edeSaFOYX8hvQooCVhPHfWn3fBIKART7ZxiVymzFivs+2rJ0b
	arqXLXxPEj59pCjHo0bQ4LTyMr8xxIhh94VFbmBNrv2WV
X-Received: by 2002:a05:6102:3e82:b0:5ff:de16:3697 with SMTP id ada2fe7eead31-601def03b2fmr997406137.19.1773245295929;
        Wed, 11 Mar 2026 09:08:15 -0700 (PDT)
X-Received: by 2002:a05:6102:3e82:b0:5ff:de16:3697 with SMTP id ada2fe7eead31-601def03b2fmr997393137.19.1773245295485;
        Wed, 11 Mar 2026 09:08:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:07:57 +0100
Subject: [PATCH 01/12] ARM: dts: imx6dl: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-1-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2702;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=fvJPxiZJcDnoLtQ1cA0D6s3NXztANmKivfa8n0Cahy0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNfTn6qzffTPfY0KbNFgDxWfK7fwOPHPTt2+
 I6kAcYyRwqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTXwAKCRDBN2bmhouD
 1y7sD/4m3uYhaIFFi2AxPmLW6Zen8VvbRunfGikywBQxGCskhxH9LFYaPjaWvzOU1n7OV35JuQr
 SmwlIJHmhWVx8mweQL+ibp4UkdkpDgoYmx6Amwe9RPQ1gugK+UGDSxCRlcZjq1JbQWNCECk8LfH
 7pG2m6uAyn/WtNqCd9UkfVU1ZFsxgUq2WYx1ssucO7WMsHYeNDXkK5KCUx4YO8784IE/QmARuiL
 A2BiA8HmLGtEQYFOStotK9BA3js+cLobJud4Xq4yPr4//Aq6MF+3mSmph7US6teMwgDIi0p6K+O
 YYn59VubXnYGkk6NZVBm1p++vMt7bn3WuUbbqOzycWDJITB4puqzQIZjCfeZjwX1qOzBpAqWrr2
 pL3lPrCory7jYvSMCatwbPmwJm/f8gqwse4Fl2sLI1Ip0GZwQTmGNp32Py44IqdhNHCCUFn3GtC
 9VWKESvOa3t/ggqzfMaZhYnAlpaSlINf5mfkMq42wlh1UVJ1hWfot7K2M5oWUXwU4tDDJ73W6mQ
 neYYzwjKd+Yd/npbL07IL44x3SpuStruginHkBAcJSxn30eSjBPstTX8AjGk67PqBEoAQxw1MDw
 WXBWUoqkrOIlPgHuadiphhQFjlNYU9GpW1gJE4rsjeeF4U8knOMpUOzaNeV+hJeFj+X1dwag6d9
 KswsjuUyLZbWwgQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: YSXY_WOyzJVzsQRNFGrErVJJdy-q3AFP
X-Proofpoint-GUID: YSXY_WOyzJVzsQRNFGrErVJJdy-q3AFP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX4zBCt8BFyoX4
 8tFrJZDFLKkJw1h2jKKahfl6En77bW3VKX9u6hzAV188SG3tsloxCYYcYQ2VvDXmu6I+qE/cQwV
 XCIGtbRJfL//7j0GiPTuppYtIiiSOsY52Sm7G8VAI0vID6a4WusIrwSbWq1Cl4aajdQOvsn8lQQ
 QAth3DHXjrdBT4quQCrkMPsz9J009bXJvKmGLuRaUQaFR06aooWGYSas20g9Tind/wjShv6UMab
 o7uKKaEvZabJ6d21PGun2dYaDfSd5v8S6qjl49g3+8SOXN1d5stGKpLWPG8SzLx4P4O3IGpqaiY
 KuJNODo2MXSkowlFbYhTjVKzw5UIcEd/FaH2KiHN6Rg/cR8LD+n7dQuyM4d6HOWGIRmovDS2Eci
 dB1tMNsyKMU8IaPG1u2EioSrMjYskR1+90IVzmc7UVTVMWiBFLcmWKo6/p87LJ0GfbaxkJk6OcC
 SelyQRBMMa4/QwNmi+A==
X-Authority-Analysis: v=2.4 cv=CKwnnBrD c=1 sm=1 tr=0 ts=69b19371 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=J5n0A9H0bXRu_Ym2jYcA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 spamscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
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
	TAGGED_FROM(0.00)[bounces-274210-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email];
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
X-Rspamd-Queue-Id: E079726703C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi            | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi    | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi
index 1e0a588b2a15..a4e2fbdc0d0b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-baseboard.dtsi
@@ -318,7 +318,7 @@ mipi_csi2_in: endpoint {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts b/arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts
index 5ed55f74b398..7b4c16e3fd5e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-eckelmann-ci4x10.dts
@@ -321,7 +321,7 @@ phy: ethernet-phy@1 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio1 20 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi
index d5baec5e7a78..de6473a0d262 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-qmx6.dtsi
@@ -271,7 +271,7 @@ vgen6_reg: vgen6 {
 };
 
 &pcie {
-	reset-gpio = <&gpio1 20 0>;
+	reset-gpios = <&gpio1 20 0>;
 };
 
 &pwm4 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi
index 4a5736526927..d4911fad1d79 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6dl-yapp4-common.dtsi
@@ -571,7 +571,7 @@ &ipu1_di0_disp0 {
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-	reset-gpio = <&gpio7 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	vpcie-supply = <&reg_pcie>;
 	status = "disabled";
 };

-- 
2.51.0


