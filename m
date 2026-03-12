Return-Path: <devicetree+bounces-274773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIz3AygUs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:29:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 778D9277F07
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49CB03216279
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22DE40242C;
	Thu, 12 Mar 2026 19:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iriMTp0s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cS4yuBfw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074F401A20
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343102; cv=none; b=sQ3fe1leZ34RgCzH0cOLAfeGQx2P+XxXja4Tttr9h5uD148I580xg0a45/iTSZuvicZO11cHd6RPvK/1MmvsWBY1y1VY1/HlITd8yBvOkN9O3U0YMs57p2vtYQzUTYbWzdJnc0MEgyBqZmaayXUY8ZjQQHLtqU5iNsjKkr/IGuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343102; c=relaxed/simple;
	bh=1JhUw/+k2HghIFw2rLURIxN1E0BaOLd/s4QvkRP9/jo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZmjZzLqa9VW6pwsb2DO0ihLIdvUogfJ9iuqhBp2MNtiu5BDyer0o1pSrBLRZadCvwkrB/y90dM0pGYMvu0MbHeusSilYM/PVtAWm4YrTVjPoWkdd6TGGgUmOhi6nigWzUeXIowpEmPK3Eqv4BCYBT3U7BRNWt6y9Y74IzzvpNLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iriMTp0s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cS4yuBfw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CJCYSt4025761
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NoYJ8smrLE12hDZjhZ28ISQ4B1LbfLzlcdD/Jf3yZlY=; b=iriMTp0sjX2QxC4s
	mHKwN/iOBmEGRlInxaVTSsMZYe1X+CybqlnilwmvTUVBbsPya2kdNJ4JN+W388Dd
	XgOgvoH5D+J5peqOC3LRXJFSfSZsP4PUwsiFPMAxajsWTPTec43qkdMTxxzvK7Ms
	8ptqNO+m0a1t+ls/W7xbvNXnSOxme7gRycp/8RTohossOgOp1Ac4WEBgxYxS3e60
	rqdyedpNPI+Dpregb1ZSqtw57OaWuihaY0JODGvg9P8nfoOEgz4Y86dd4nzYBwcM
	HfSK36FN4EjET750bRIl2XBy94Y6ky8DxCnLpUTSM2Qw4t6EZxfT+XAosUUgKiRc
	4wgcsA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50u8y4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd77502295so833150185a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343098; x=1773947898; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NoYJ8smrLE12hDZjhZ28ISQ4B1LbfLzlcdD/Jf3yZlY=;
        b=cS4yuBfw30T/e9fkLe7XHQ2mCt3zrGvrppOFBJe6Q5TmKDrTOdL1QWNRDw6h3On5QR
         PEonfOi/1tE16bAzGMjRuZjTrfGBUa1J3fLOl4QqJstTdooQmRkOfxcWWrw+ojnMsXVF
         PhG95lWgNYJrz0/OEO6ZORNksimoNywCJSo66UGBNBe65BcnEKm1oRaegkAcXZ5+e49v
         q3NMHEsdn+PmOQy0n+qOlQvnwpIx9XnVWUoN9fsoSd+h4PpQ3ccbTMPFOG512LjlX/BV
         kYugX52aE9y2WTz5xqyLWv4ZUoLExThjjwLpX+gKCySh0pCkNQhIZl/mCoOQ3aqA5qvG
         /6pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343098; x=1773947898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NoYJ8smrLE12hDZjhZ28ISQ4B1LbfLzlcdD/Jf3yZlY=;
        b=kTCc2CO/ra1AZsAJhZcXJSW5p6daa/9JlPHpN+r9t7qaUe97wc/87+nzLyKyv0SSz0
         JhzruQ6rP3D/JC1TafICfUZdc1m5z091wJSJiN7ZC5kcMJJszQXIgPbNf6iYv69UF1WV
         P0KEigCDrb9Y1FTeESPBY6yip8U+9Y9caWhQ0mOyQCNHV8QUHz/qX6IWOq74XZklHgDG
         33I1oTLeBavty1CDxKjfBhJg8F7+SPBjiUhP2CxULQu7kFVpjHiFiMxlg7G2ZVHj7Q5v
         aB9D94UxQSx3gX7FsZhFfPnL8iT2h80gsnjNmReYKLpa6E2/0kCwh3/XoRM79fYF5vVp
         RQnA==
X-Gm-Message-State: AOJu0Yyf5HVCj0szXvCY/JghmXtLtL+1SGDS4Z/Nn5Cf2WcocgUU3aEu
	KrM1hKIqA2gm26JHFKzH50L/5k3+Lh5GZSlY6gDtCZ5SWhWYh8pi+sztKgtpYIG4irh/+m2YWYT
	Lm3eJ07Ve3FPvOrLyBWmHMyU0k1ZgviGSlPQ/ZLxukvm9klY+e4B8RYry/SjBseDZ
X-Gm-Gg: ATEYQzzHeHmglZqMKOjei7LVTNNXJmgYrRavC6X8D6aQoy8g4s7fVV0bEoSqDMciLKn
	+0eAAtLjapsSLjES259tpZ3slRzNk7Yakw4HMWJf0VzhS1TyPa+bMVPyAI6EcPHr+oF3i/qJ2kb
	3xCT4P+hu5NlRUAyTlJ1yy1tLWb2z5Re1YUKQnu1rThDhashVOzCItY5YLOblMWR1eLSLiWyBfq
	MGMmA+G3EN7pmFpgTUrJQT9GsMx4MAdXhiHh5LuDMVpzbt6kGLoefB/CyQbKO2BvWh3dkfw0xs5
	xQ8kjYHTmqmqkQcNtX2eQZ6PcKvZu0Vev1fasio4MmVjLS8jZjFjFxS0mmGkZ8L6/slR7SZUhNo
	urZpgApXQm9hpMNXikABM9OrAtOwm8PLAH/CgT3G0Cle7
X-Received: by 2002:a05:620a:4041:b0:8cd:8e07:46a7 with SMTP id af79cd13be357-8cdb5a6b403mr120168885a.23.1773343098541;
        Thu, 12 Mar 2026 12:18:18 -0700 (PDT)
X-Received: by 2002:a05:620a:4041:b0:8cd:8e07:46a7 with SMTP id af79cd13be357-8cdb5a6b403mr120164285a.23.1773343097995;
        Thu, 12 Mar 2026 12:18:17 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:51 +0100
Subject: [PATCH v2 04/12] ARM: dts: imx7d: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-4-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1562;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1JhUw/+k2HghIFw2rLURIxN1E0BaOLd/s4QvkRP9/jo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFkqcWLZ7eeKfW52uQ191tN4KQHtZS5AFTNA
 RUVL379c0yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRZAAKCRDBN2bmhouD
 1zLQD/0e5Y6Cn547ZI034CLSim+/I/VP95hWXYBnHBC5t1ov+7ttLaUZDLarzpaKB8ge5Qf8iIC
 EnncVAyKnmCkC68qMWArmeG2yRG1S6qDC0E7UNLV8Y7zox8OCPv+y7XXkZqnZXqO6bHSCJLOZcE
 glabsRRCGIREYUBRH1asYvekrklBIaKSsxezsHivW0nO6n7ky54bmoCOeDZASCSNp3uzkJMxDQ6
 MBypzNDhm17ZYaUU5+DaCRgXqaOW4TtofARj/iBmtgva7BXObzK21aAONA0E8vvdhGl8c8qAzae
 3Xnu9/9KfAAJzrjZ/rtP1adak1BCte6gRaWpXF2dYLDEi05yecMyYXQp3I9KGj+inbklh7VTyW5
 RY03vwySvbNFEbED8hr9vRy/mzzBzB+ECoyGCfpWApREXy1ugGbB5REqzXl3mI2M/yl4fJbpFlr
 lUcN1ly24ogZGOhqu3yfvM7QOxa8rQr8/vroOUq2EAAuESsrgqSdG0y/r1PtkZuRaeaiFoSCNPN
 n8kPQfb4YrqVIrY7S/M6dWhU01YCQYoyti2u215IFvTgiVGepyaCzxkXK/z4XYUfdU5oDkdK+MS
 nOZ6qKkwBKtzSO6GSbg3B6gyOK0OaJv+75JXkVj0gwYvTzX1DOKTLCD8dFaMKj+maHGFJ5tlJgZ
 6rnCbKptUC7Ml8g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: rbHaoN_QbDPEX2kXp8V51wNEDcjgKpqs
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b3117b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=ZEd_D3wCKC4SqcO1QeYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: rbHaoN_QbDPEX2kXp8V51wNEDcjgKpqs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX0b8IgR/buGhU
 22ffP6zZ6Ajjsfh06HjjVYBZuCcf63gBRgHCZ3TLxdkbIJOQxePZ4C7LoPtmPytSaVHSJwvD8vT
 u+lwEjZgPrSNnJPuHVM89VXvvqpC5/wPglMYoVXTBTb3HOWjrz7Fa+J7fohMWVKpfPgCMv1ChKw
 OQXBH41ugSH3BRULmoV63hCuTHKSiKe8Mz4tAn6E40xuKwjKFuWNd30qN3zpVlGjQ8HMDKp00kx
 QcPL25IYE0gs0SKQ3HQsuTjU+e7regERfL2SwO9j4ZGerTu1wV4oXZgn907XDzjHBy3TRTweI9M
 6eVkzjgFlv5FaNPlN70rkvjn+rY9qTiogexchT7YNL+5lN1/3rnOwUS2jvL4O1lJrIfVOqQuyQx
 fy+kFz5/5SBCJpQ/lfwvmrYdplFS9Dr0vji6JFdtS0afGweynXGYGai6C0bqeV9e7kdZazmm2Y6
 o87cD6Jac7aZhryn3LA==
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
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274773-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
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
X-Rspamd-Queue-Id: 778D9277F07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX7 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index e3ee16f1aaa9..a5fc7f80f651 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -122,7 +122,7 @@ &pcie {
 	/* 1.5V logically from 3.3V */
 	/* probe deferral not supported */
 	/* pcie-bus-supply = <&reg_mpcie_1v5>; */
-	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
index a370e868cafe..ab7cabe5552d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
@@ -456,7 +456,7 @@ display_out: endpoint {
 };
 
 &pcie {
-	reset-gpio = <&extended_io 1 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&extended_io 1 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 

-- 
2.51.0


