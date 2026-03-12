Return-Path: <devicetree+bounces-274772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFDmHEMSs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:21:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 191E1277BBD
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:21:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E1578304FF41
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACCA401A23;
	Thu, 12 Mar 2026 19:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9REE5/i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QrsnH5EI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B721401A08
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343100; cv=none; b=Fgi62SGTvwbtwX6rdTBmXu/EJ0QFTwB8XRZPL2E26BfqWIs7k+Zh/YdI1BPPl3sz4D7yThPv7TEFrOth9zbD8lMMwH+o7oa4KcQ62XdYv9G67YX7icaA65Tjil+S2q3aAQMdzHj+le+jae4LhNm56+6+DSpKUe5yxvC66oPxcYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343100; c=relaxed/simple;
	bh=FSagZpYeoU5OgfV3chNg7NHZFc9RhUFrhY0mXE5gWa4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SXeQFItO5VogzuGrcu5Ku67St41b11K/3Xy6YTrsUQO8y1pOPTwfL3TrzFvSKQ3QIMr/rim3e/3ve7Ef3yfiRpxKiLCiyn6sFzu3y2NNLb95J9xgJhUe7CwlqY3uMTMKeNLUVu3zLmtnPf6X2WHvwd9ZNcoeF+WcUABSj0WPg7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9REE5/i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QrsnH5EI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIkdUw1922719
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KqyayV7Gg2halaaZ+cLaY6eAuvoXnGLGXG1qkIwL1Hk=; b=Z9REE5/i3eJdBmbI
	NwjL2mFHLiRboIcapwNYLOa0x5RwSrnqekPjC321oeeqEc0ojCeNGXzFt83GQSkf
	scTsgUK/wzA1jbojuY1U6nuF2WfANvxLsx+O4Zuff0960TZ8veZIG4r1jRmm53bc
	SOTp+4KoP/kQWV6DPxNdPFvyxThJikJe0lvQ/W3QipjAN6bfUZMt2OZvPabxSYIu
	TgpOYfHgjR3V4WAbsQ47V0NtOU8xQaOURfZRShJoYKClz3O1e+KcETefJnmUEKBj
	OY8J11XmrWS7Z4z/jT//GbYfu4A6wbwn+XdSTJTxJ9HQ+do1aXSrWfqLRAYUPZbK
	NiEMmw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wuarc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd80bea54dso775864285a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343096; x=1773947896; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KqyayV7Gg2halaaZ+cLaY6eAuvoXnGLGXG1qkIwL1Hk=;
        b=QrsnH5EIsD774be0bF/JacDc35YzD40HNsTZl1lvKD4MEchmz4cQX97TEq96dkBb2z
         DeCRegIuLCXAD3wOJnSeY1renvT0gOBZ3oNEGly0Jg1gikuoISgo02+LW7qMHcqh22FV
         7ENL1o87lainK+Y/W3hdkKy6iZCNHPp5p/zOEhgtAWWUD6fLQ656xch1QwHMhz9tKU1r
         UpHzj0zmhsxLkyCNVKEgimXxplptU8NXcGsIK+X2W+eEcDzki6bBFEjKXnEDJW6Rl9XB
         RNOarY4t9cuEX/qVrz2/Xy+w/FZcZ7aE1wpQd8gA5ixQc0S+adMjyxaZBQ+zSvmr2gUk
         9YTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343096; x=1773947896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KqyayV7Gg2halaaZ+cLaY6eAuvoXnGLGXG1qkIwL1Hk=;
        b=wliFRrlK+25Rcb03XV4iEdECT36DmQj0dGB4XDxAT3Ue3UQVbsch1f7JQD5FDAbavG
         QH1k8W1PeXSc/+5HmbJ5DE7+4ZFeQP+EvkPN4NB9FR6xODpDQfBDdnHxL8teYoZiGHbo
         sLig1/ItzFom6q1BrQmCA2orwo01T6JMSYMVVJPo6jXM3RyrH9z7YAAMAn6mA0EUo6Z4
         HcclI7YD3aBIjCl84j3ZvaRpgsIlP+e6JNaIznD2VlSIA4ZgAZuamVD8Vx9weobggJI9
         3mE+qatxQbPm8aQOL1MGhLpudf8Vc2Hycvh/Uf3qhRh5Ba2LGIs+RSGb2avlcQEu274Z
         BZ0g==
X-Gm-Message-State: AOJu0YzCqqJCGPzMAoLYMzRtEwJbdmbeo/ByliD8++H/IsE4owYGF5JV
	VpqDyusLq0gms+vIV1v7rG3ILYQYZ4mBOeTF1gabbYFdR0eXiocnzyHbaF86J8mmzoun1jwcNPo
	CSto2zrokOGwtJut7F1iB2zps6z+Z8lrLBqMgCLCkIZzy02Th6ZoL5db+8ck5Vs1D
X-Gm-Gg: ATEYQzxxTQuIgGYm9BV6RHOguPOKbNTRWxOIyzoJ/aszt6+wMSTIgMWxEy2I+F/iTGI
	khZaDJ8tynVcsZ31TgycBSwO2H0CijlErF+xaFesMFgMFunvsiCRmNnUe+BbHMLx6A2uVou/Qh8
	A5fQF6jPnjPd+zbYeo7gbyKIww6vA9YdtVIOvI1ILuyHWi90bPPpdJAHdQ0Sswab7hkTbLAC5EF
	yOlW6dVYc4FfZ4fkvLYPxfRjDGXe1j7d1gGfQ9u1QXiBcGyzUiHSuNuqyuQwjtzoupttvaFY67d
	A5fTuQfHhoc6h0qyps0CDIM33VnE+2gQZbxI9Y7zk5FqF5z7ALoZ0paQqS7/8nStpxPzsIB9jSO
	NNhxTjsOH+9lwKgA1kdrp9cSqKGw/SbfjE2NjxVKSZKw0
X-Received: by 2002:a05:620a:7085:b0:8cd:af31:b416 with SMTP id af79cd13be357-8cdb5a75623mr117968685a.34.1773343096454;
        Thu, 12 Mar 2026 12:18:16 -0700 (PDT)
X-Received: by 2002:a05:620a:7085:b0:8cd:af31:b416 with SMTP id af79cd13be357-8cdb5a75623mr117964585a.34.1773343095965;
        Thu, 12 Mar 2026 12:18:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:50 +0100
Subject: [PATCH v2 03/12] ARM: dts: imx6qp: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-3-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=982;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=FSagZpYeoU5OgfV3chNg7NHZFc9RhUFrhY0mXE5gWa4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFjEgkzNjNpQE+L8JaKg45sCAUdwXfblhUwb
 vIBC6xW9DKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRYwAKCRDBN2bmhouD
 134eD/9q/OOzdFfoEz2Oryw39dQ0nJxRBAuXHBSl4fQLO1RiEHYLWdoql7X8N8T/nVWrMSrK7DV
 vJuyUP+3aIKnYD/u/xPHJOhox7AsJ8t9yhcrzXgdtfAiFddQ87bh2+uyjut8zB7cnB/K9VLgYz2
 qkdNJoABJticjlV9njxiSrmNX26/1ibs9nARqx1Dvk6knhncXJjQcXUtvDtCyyYlLflDvCYKSCN
 GMj10bL9SSu5sQVSeGpUqN60TF0tiUJ5mbJSjm+wQCUrI3+KJjpp2yeKsi7s8YnJxgZjcJ1gl3q
 WV3bKqrXkVXPDn/pmzUc195aChLg7qJGmS0dyVJSmENhroqHDNe9MTWAtXMnzUSouTi0Lzr5FpA
 5rLpfHBP/5O2n7CiE72DtAYtm5M+IpvSbZO+DZ+DTgBD+8u2d7iDbtWNMJjFe2QusVNl3bSKYjg
 GoaipT89gqWyrHCVQCdiFug+Ha/W1i3PrVyS3qU1fNFuDWdMamjtsjvC1W/rMJ+7JDRtJDeKqCS
 LW/tbKw30xDHkyDXt3o0oMmmTfJKc9atkn6Yu61DSs8ZnX4tBj10UFhZQLe6+nzVRg7k7GG9NLc
 +qPlvUs8SLcvaekZT8TXjimALzVOZt+xyTnM9l8K1GbYF9g3nfvGwSL+KPcYUt7n9fYwevGc4Ym
 Y6xrS/HHXJjq2NA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b31179 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=ujzWiR-heZmsqz2C2nEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: vf282c6lQHlRfK8-WDVkeRkH4LtHaH7f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfX9zcvoCrd+tFg
 MC8rdeU0ofa8lzdymEMxN6ajm2NmGdc4LhpFlJOMVQ9zcqr2xZqSIrdGPD4m0tXcd0Z+PBWlV/o
 XcLnIwwFft3CI0tzLeiu24ofDTzOkOkKjMcsiRcMJWe/GBazqdHFi+EtFENbRPmQX1jQ0ZRVpnr
 CSiicgAEpEg6VtagqPC5Xg6ORL0EZ283i11pSAapgpfjcX6zInqYW/EHbNsJ0LtVDtJ/LjGv+BP
 oKIlDD+a71XglFwi/mIsqtGkSn+zF6hePwVbm85mr7PzsutxSppOAHbsPP+NoTRxBiJ4Pbn5wjh
 MVBld1gBws9F1e98MNRaaO50ke5Pzk6pbgJpg8SzxfouZTdOT6aRay7nukNZVsBBqkBE5g2Oh/q
 jRkOEDzHL7iLArvRbHvnZvMIga9jpFNDbgWJnkZtIgIZqJE3hVvPpP+ZPDSiQrx/SOeSK79MNZl
 EY2/3uiYX+WsU0uWDew==
X-Proofpoint-ORIG-GUID: vf282c6lQHlRfK8-WDVkeRkH4LtHaH7f
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274772-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: 191E1277BBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX6 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

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


