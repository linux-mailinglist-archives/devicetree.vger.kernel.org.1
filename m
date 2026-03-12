Return-Path: <devicetree+bounces-274770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AmLCZgTs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:27:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D5277E2E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E436308C4A7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0B53A8749;
	Thu, 12 Mar 2026 19:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bBCyza6G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jv7Ostz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1E63242A4
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343092; cv=none; b=GRTRRPoXv24JqgsqHthmcMYi08uEUUIEKlN4lIyBm/Ev222bx18sRyoS+OHxyGX6h71W7I4f5dytfvN6y8PTwwvC3EJFOEboUMUXsaA1gf3qzYJNLOa17/0GMf+wrJ5aoeZMBcOfdxXBvpi46pMWkyZXkyrkkcw0/fI3zxsoJ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343092; c=relaxed/simple;
	bh=SsPV7daT9HJwMyMrg3BL/XIk1NTdhqQYvT/+ymScgaE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FabAZF1maMJDSf5ChzZVJ9jon7VWiXrhfuULDLrOzFgecpt6/NdmC0Zm6/WnmuLtS+ytRLBy3zMPWYHNkV1NokhndS43Tjh77rrX+AyFAIsYA3S1ZQtsN21CnwkPJnyuGna+mSO1/nJshHCcrp6VctzYEcggRbdbZ+3qykuA3bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bBCyza6G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jv7Ostz7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIK2TB1922768
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hn0Jom/dKDg9V+FpEaAQ2uZCrmd2rK7NdsFUGXTcB+A=; b=bBCyza6G/BGhXPG3
	g/oNxp9/ZwyCeqLuCUHehfT9e+yeDmz2+ki5gJq3zK0hPHMStxtnTGEX2Rh5vjlB
	ycFAt8CTTxGWQ+vHfO9dXXthVH7PLHYm4WJyoa6thkdPFy1IDOShTumbbiLsSwIp
	r661KrjbyCVJZkmLFcq+iRAkpRVLm6cvvUlHXfgTu1KNK0hLBr5nr95UFlkZkOt7
	qwrcPjh4xHj/CHhPx+oD7kg/MjzDp6etf6CNnI9Q459QdAoDGAIFcIjZOdKWxcMh
	Y+yptfqf0m9s8ajSFKFWz6Ayc9A/XNngZtJ7+jRUUcOAcnPJU0+W5SWtCDIvDm+1
	HLJ2Sw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wuaqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81506677so764239785a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343089; x=1773947889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hn0Jom/dKDg9V+FpEaAQ2uZCrmd2rK7NdsFUGXTcB+A=;
        b=jv7Ostz76Z1Sn6Il3a/OHKGmw+512Gd8ijhU2aveIoZLdfjQ7CGFzEJvxfTGLSxyC9
         B7bUFYIeFoHX1Rxv3ZPpurzwwRfmqRK/Z2oEZiJavUOFSMoia6CCHrdkpLRLKO71QUlt
         T8u7el0kCjtM3QWMDfGyFBp5QtZhn70wwadtA7IGWgT5kRgB21IIH6xHYmByYMFWjCtV
         o7vIM/rWhpYZzu7JOPa65Vy2OoX+MypFnkA1zErghlUsfhjWnAuAtknAUUNcOXItMEqN
         cUVGNEQxNBT/qHLwnx2VHFMhhx+1gbxiMO4wL1229+e+7NfJYypFmVbUa4J5ASu1SFdx
         xLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343089; x=1773947889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hn0Jom/dKDg9V+FpEaAQ2uZCrmd2rK7NdsFUGXTcB+A=;
        b=JTQiwlUzurU8dZKB8XjM42a1KDDTKVFv60HQATFIWaXzMgI6rh+gRGHr+7H+VomYnj
         rXxCartPRA4ykRNlf/KTxrNwVuB4h5EriuatMcIK1oydKNM7nnQDhjj+r28tPjF2Cpy4
         QkANwt28RKWbkS3PE8/bdWJbpm1DmoPWN7BLKFykqXOlb4rfE8kCm8xk76O7iIidceB8
         iOplTBVSpJxAufHZxeMV6LsmIOm4FLDv2PSEtIDrHfEn0rFoRzW8yOI72zvd61+PpVOw
         jteeEmu922R1b2XQnaLIEwtcy0LIKhPJtDFOkkVrbUc6L+18YCLTNseei74O2fGXu3pU
         4YCg==
X-Gm-Message-State: AOJu0YyY8pBXPNE4jXBdZ8lU26o1da+slZAvAMTw3PGqosgskQPSSXE8
	GKip9aWoV1lsrYFzb42Fvu8nO+kjKgN9X7wn6B4E9zKUDn1Be4wKxTG+lDC/VE3Y4MY5lsvuNjV
	BtlVXeQo3MORewZdTIQLhNEC587nFox5yLKXctTUKTyOa4rkvQXOdBFvppuYvz9Tp
X-Gm-Gg: ATEYQzzgs3KFy40hJyuqebvL/udxFUPo8uhi16pC9FhoMSePzL9Dc9e6aE1VtomFovm
	GDnT07TnRhHX1b+0xBQ+Tg3FHRMMkBREWa4NG755fJjZoLjqC/cHlvv767W2tfgczY3yFY8LUyL
	6cKCVcjYGEWq8kvsKFrPp5FjPFc/KyZhyESAoCfCXWSUtrfN/mHerZLs61gYD7PjT31yZzCAZYG
	ZUmGLFgA3WDKSgI1C6UvUS3nlwU4Y4splISOiDibeHM55xykrgt7i9jl2y0EYppKyrePpwwGcYs
	Q2UpO/zK9n+yBghtXIdFStHk9wubN0lroOsFhzq6u82b10s4NfWCHciVuzPNzXAXbLnuTgbjtPo
	c2Bw7pg3O6mq/DUZ9l4u3NtRe4F3gDaXnvT8lV1i0/QV8
X-Received: by 2002:a05:620a:29d5:b0:8cd:8f18:d1d5 with SMTP id af79cd13be357-8cdb5a8416dmr124947985a.23.1773343088869;
        Thu, 12 Mar 2026 12:18:08 -0700 (PDT)
X-Received: by 2002:a05:620a:29d5:b0:8cd:8f18:d1d5 with SMTP id af79cd13be357-8cdb5a8416dmr124943585a.23.1773343088396;
        Thu, 12 Mar 2026 12:18:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:48 +0100
Subject: [PATCH v2 01/12] ARM: dts: imx6dl: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-1-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2713;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=SsPV7daT9HJwMyMrg3BL/XIk1NTdhqQYvT/+ymScgaE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFh3kr7vFwIZ6KFp22omprbRLHlu3whIPYnE
 2e/tE/iGDaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRYQAKCRDBN2bmhouD
 1/EdD/4xJwYh+ss3JAxD30YMdqX+iEMjvJ6b4lHXGuwjFRcEWUE0FT3AxGj9VWxpqFG+RdyfZLx
 PAphf1jtpUUNBCaFyQxYSJTDYMrKzoSnawew5PInETgqiJ5rxYEMTt3pEnGd9+Wj9t5xcauvUE9
 kfMxKaJNaw39zgSB/Vw96Msdv3aRV4je2cCKzwMTq3TLCcr1hv2U9Bjol/M+Ti0KotLWrSFHQd3
 b3PorS44XD+h+T6Bx2LPDZAFsbmp/itwBqsze8aKylTj/+Ky4uSH1eGDkMjSEARcz25ONWqI2yM
 YTmbYgGOsqKUe6pJKCpplh/u91ndgHa+g4Zi6M4QxrP3QhVvOtz3+PrNMCrlnCdL0ATme5krgap
 hzRl/XtE+eWI4or2XtwNf4WA9lYDmXSBPky1x5NKza3P2tTMTV0Q+yVa4WxA8UIs3/ArsmCAkFO
 a10dixxtLcD74eeBx86KiMJiCN864471Tsine1oR/v7gBIpqa/8S+Pc/eqZw8YQx8aQSwnAmsFb
 v4FnwJYN7GJZhZAb2yVremuyAbQaJzHX8DGfP2eRYOg673o16X2CIUQEPJXDz8tPlRvUbfV2gzI
 D+3SYhVgCa5oHpR10aacxgSKXOwa6jOg6z2POza+3r+/8GFBW3oAxizm90b1c/5el/JUxRob+Os
 SQxRaHIdA+djXCg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b31172 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=lgRk19EvD0hfQEPH5KAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: FLihGJhHOlmFshBv1xruW5WmOU9fEYH8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX72kgtfL/Zuj0
 DZ2KVRLun5KvUzo0E8JM2Zuwnwzq95fWrfAVLlk/SSAsXKjMnu71YulxG4JpUyOXRvNOzoIUvvx
 BhsOVrXljj+PGw9PfygmQFQjIK4gkILUXsBi4AKRVw4bpFQq/VMO2i0LUoB+zK01uv1UVYM3ESl
 1NPvMt+W4sKZ2+CHHcmElt96hKsKDC8wmKJlK5IpHwvATHQvg7Vn88DdczfETRPPJzPRXbGwr4D
 RnMRrF6Hvpjbw4kE3PUs0QfiLxGbOkLoSznVd6fd899F5Rzx7BSjGCTE9lHHz+V7H8M3SyUAyFN
 hqiZoZFmiBE/75AF0WFe0jAg5ZJB4/SgLWR7q1pqCyEzqZMiYyPPIYtgMVM+05TA6Iwx6/Uy3Jt
 hqntfaNKul/w2ZG//wlRNSoMYJ8giMXf/CmuUxxnw6GUNQC0mUh2lIS6gd/CJ8ownRgOessZMCY
 Mh5MqERA0GWb8Mnf6/A==
X-Proofpoint-ORIG-GUID: FLihGJhHOlmFshBv1xruW5WmOU9fEYH8
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274770-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.1:email];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
X-Rspamd-Queue-Id: 283D5277E2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

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


