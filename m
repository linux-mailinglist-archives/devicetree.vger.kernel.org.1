Return-Path: <devicetree+bounces-274213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN4vJKCTsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7AE26700A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15C553023066
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AAFB31E831;
	Wed, 11 Mar 2026 16:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fgzx9HBy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JtzKGTAo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B362A3E0C4D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245310; cv=none; b=XFffSYSO9z2lZoqd1ztsndnWZLMZSif1D7Ivpl/KjScG09aJ07QVjvuw1hZ7X/PCbC4rTK7RppyUy3V2M7J/iYVA0dP7hn4qbG06VR3UPctMxzdhYKjEW2pnildouH52qEJ8HDdwekmZQy1J+MkeavXoVeWNq+RP0Qtf/LDeiiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245310; c=relaxed/simple;
	bh=CbxUYYhcGr5bAijJBwqMSOgztEvk7KUeq6ljk3HDbJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ilvEczfAz2WqKQapVGtharVqcUx4VF6VREYFSjIrDl96hqin+52saGUBvV2W82YbnmtlzU+VIVmq6AyWYUt9PVBJ3DkthiuAcE6zXPdtJoxdmY/8okNzsR5RW7DKAu2HeK8s6sJAClcdAH+FVFRXaV9GmRQqQ3UpF1LsypquFbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fgzx9HBy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JtzKGTAo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BFuvBB914606
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mElEGJc/QiRCvz5IlwWov/EZdnYuY229D3PB+C8fVNE=; b=Fgzx9HByGfIdmAdp
	O6LwzAW5seEUYvidmrjvNhfmsNeTP+S3RlaQA+7AAuqz8WqqCjRt4xxDeb8wBY98
	gf9+npYgercvq+zI5Hlij799cXbMos6OyrBKyis9Y2wbtm1zPCxzIm9UaOXW0Uvo
	kumY/L6JT5/TReBD5etcMOoUsdlhQQRG3i2y5NibEsXeFKYUcVCbcRLGxOvb0hp8
	zn1taouTr37y6AnLk0VFu7XRBXEv44Wi37IUgaN7MOR2OFfJBpqSnSGC4fmlVlcK
	RMdBBLPtuhcsZ8Z2dH0XcQiLnfgeTq41JC1oAXMNRzEjzi8DduCbklWjrhfhNLxJ
	neSrsg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cubg201qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:08:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50925fed647so287081cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773245307; x=1773850107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mElEGJc/QiRCvz5IlwWov/EZdnYuY229D3PB+C8fVNE=;
        b=JtzKGTAoTSu1c6K8t+U0hBTwKQcg/lQUPtZZafxvreNgtZpI6F0iS6dYppijWfCqkJ
         Vd7RDOBUF/c1wAZaja5L/Mc6uc93VCSM/6+xFZmsakPfjrZscIZliBAhBvtzVC8Csw30
         lv0T2TgkFjtpKfDmS6j7dve69TmhOTV5DtCZI4JDj0c8nDzdRsxSTlAE8yO7wPoq4wrr
         1nSvtOjqCWqYVRkdzN26bfgg0IQEnF3RAhnIFuVvA3xkrw6iybu8SZDjosZnInfG/nxI
         jIMhfjVOaliSM2E20jti19QSoRks/Q4otgI4WWkvwSHiW9w15QO3Ys9eX2vHrsYVE6vU
         ORig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773245307; x=1773850107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mElEGJc/QiRCvz5IlwWov/EZdnYuY229D3PB+C8fVNE=;
        b=VWJ5pFCsjcN++m0NIJKtfkMdxvgNbp4NZcehbM3ktypeZ+dIgHLpnLtdZvU3muOp+9
         WGw+BnUw2NCdXUyiCCXJQUvU9erSzzwGskhnAWgC64M1KCdPabPYDm0vJaiIgPZv8wu7
         oSmbIMyiJ6Vd461oCiKxjBvNY+qq8Th1yznFPmS7RvKe8MuHTHnT5vaMumf8/IY753NI
         M75E+Yo9XECBYQuBuNCCEN0+TwldNeH3dp5WZfeV3K6EPTpIeS5c5VIv0sGP2XS2gr14
         UmxZmifTZFyLsJxkAuaWpTMhOvogSfh7uP49WJ/GTWA8r3kv48iw9b3pOBPKclq1gg6g
         FfLQ==
X-Gm-Message-State: AOJu0YyS+nP4qcuRAbXrs16EV+h+RZqgjF4KeRPlkPxXK5Lpg5lTpk7X
	5MjuNpg2lCcyXG8bo33FKg75ykzxkU7/NZfM5Apf0XkepF3t39KN5f3elREO6qfpFMxizAsSSQ8
	04fGh25iXgSa4xCG0TdCh8S7PJ52eQCF7LvWhxrALIyXwyEhIIJkVmmFyHSWOkxQb
X-Gm-Gg: ATEYQzwQ50EdvX2i6gNImkTWCHVDyZk3NzCezRnuTGMpHnn9cw8I6AqxGKk/5JhIZBi
	OjDbYR7G/sS7M7IiR4kEmwJVROBfEtMv3CPu2lM7B8Odu9VZ1EA7FCROjrFO46K2tbhMlBRbofF
	0FnXMgojL+mF7KSBWfahhpKYv2zMJayVz0JXbdRqVVu9SqlIJhC3WNlAQFmF3k5ajPNJiihETwH
	LpAQzT87OmxKTkFczEVN+7KL9FzUff5wnZv7DDVZNGmdKr4T801YFz3S9NmRsAUpdQXvLBuPA6Q
	vGrukZtot97HSNGSb4Gx9O2PHNGbIevQm0f+aoM0bR8gj+gHzaOfbsL70VA567WOhtMoKhVSsmg
	9yHQUV1/6/VroxI0EX/iknN4JDebFfiGJB8IWq12NVidv
X-Received: by 2002:ac8:580b:0:b0:509:cbc:1277 with SMTP id d75a77b69052e-5093a16af68mr40237151cf.41.1773245306982;
        Wed, 11 Mar 2026 09:08:26 -0700 (PDT)
X-Received: by 2002:ac8:580b:0:b0:509:cbc:1277 with SMTP id d75a77b69052e-5093a16af68mr40236581cf.41.1773245306490;
        Wed, 11 Mar 2026 09:08:26 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1aa2c3sm184711f8f.13.2026.03.11.09.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 09:08:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 17:08:00 +0100
Subject: [PATCH 04/12] ARM: dts: imx6qp: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-dts-snps-reset-gpios-v1-4-ea1cc09fba84@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=971;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=CbxUYYhcGr5bAijJBwqMSOgztEvk7KUeq6ljk3HDbJo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsZNiu8NEgmuXR+CahaN5WfJ3wczpP0TVQ9YuS
 igvpG3jCT2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGTYgAKCRDBN2bmhouD
 1wRuD/9lbnGnZakL3WnrxuZFyn6eVTWDihodOeuH6JYoKFuJJppPZkn3YPc5C5E/2l9yt6mPD+r
 QizQ9iKXrCBCdyzTHbM1rwzJudPL8dMvyvLeFdD3pablT5aItj7fWsM02y76bqnnXNNAf8twDgn
 Xh8Kr8RuKN4tegOd6c1DNmU2HYJqns0yCP3ZW1ZpDF8sycGxbgBz3fMIz14rENv9tpLRZ/qeCTn
 bZap+dQQV/u1fFjudn5reRYtdfO4oqIz74vQeLgcKAOlXig9jlh3tBW7ek0UBNMS+1cp53FV39A
 T0LZPQc826ZNsbfISYXE7LRb3NTTHy1uS0lD/5b2xnniyfJdWJiRdLj6uMDkQwxjGHUg8N3fmUe
 8Q6ZrPLRkYfPOzEl1U7QbN6dZt3FwUiRpWJ7lgwT5xTUzS+jJhUMpqZWqr+6iUiMlnVPAXC83TY
 0l2+9udTaJZtwldg8c1F0JQvTTjcGhQqU9grMGHRs0f59jQidXRse9TRBJ0bY7ApfCwYSpSGQBN
 AGPwDVwzvIviA8jpmMfQiYsphmuJ+OOcKc7beTmIdHBNUuAJAks/QFTrXWEmF3JJLN71uaYQhvU
 LXvBHSn1LgCLjTisURJzZX8yplxAES0M0QiiWXmInsQr4g4JXRgwNiFK1CS4R0RcgohaqclTol2
 cGkH+XfX91wJgOA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=Htl72kTS c=1 sm=1 tr=0 ts=69b1937b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=gppIO-ZMk2ssqBZJiK0A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNiBTYWx0ZWRfX96wlcjqdbwg3
 iB2EbzO1QjvheJobenGgDm6jEJ1CpVznWRK//OCdKYeZZzb1bkoHLquvRb7MjqEy0c+y9A35SmL
 Yd1JQTPKM5i/wL4GvrdrItZuQ7DG701z6ujKyyVrPIL1Nefto2jl6kM9wDSan3aXRjN5xXIEmwd
 rqcSZKctgxgNN3ge8j5D7cf3fNR0SVv0k3ewWfZqE9m+8Wh86dw9Ca1tV0VZE023ClrDgsJyeQt
 Lt/Su6YhoGQ/abICMOomp+FlVEUhnToK7hokVojxJFnbv1wfVFc/54gCEUhbSGy/ohU+m4lYjnH
 BDSgOiuZUzBDo0bqgOLs2/fS7MXMUcmvI6R0021ZLx0VDXeotc1UNwN9hcs1RS8HO7NG1YIkFta
 IBEkjDIJZArRAH01Z1+5Py94xu+YvFTmB6tkeOqQ7F5VtgSXErNGSoZe1GuoqjipKRS+jF/+L3J
 eoLjxFto4XrjQngvQjg==
X-Proofpoint-ORIG-GUID: LnIBYNzpC-QLIpKoFyw_IfhEcB6l12rg
X-Proofpoint-GUID: LnIBYNzpC-QLIpKoFyw_IfhEcB6l12rg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 adultscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110136
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274213-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 0D7AE26700A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings through referenced
snps,dw-pcie-common.yaml schema already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
add snps,dw-pcie.yaml") in 2021.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts b/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
index c5b220aeaefd..2eb84308f9ae 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6qp-sabreauto.dts
@@ -45,7 +45,7 @@ MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
 };
 
 &pcie {
-	reset-gpio = <&max7310_c 5 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&max7310_c 5 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 

-- 
2.51.0


