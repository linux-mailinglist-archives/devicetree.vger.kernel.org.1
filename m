Return-Path: <devicetree+bounces-274755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAeHDdkJs2kMRwAAu9opvQ
	(envelope-from <devicetree+bounces-274755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A065277446
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9624330DBEDF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2874A3FFAB6;
	Thu, 12 Mar 2026 18:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TAoECN8A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MUP1/5a/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267263FF8B6
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773341035; cv=none; b=d3NF5w+jpYCjl/52XDwMJm+b83Qf5+xhCyzkXwRIyYS05jIcbHYdkUtkWQCdqNP9Ty7UxQLVFn5ANuvyMJO7zWc1YrjCLANhg6krjiukNIDSz4JyPV7PJ/2iSLNMIpxpn0aNvluQSMR9rFTe5ygb4XPxxuNJSZ4LMjeXMvTefRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773341035; c=relaxed/simple;
	bh=0tXOIBZpahIMNyxmlfBim1P4ONHHre0IuoNhHAjYNZ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FcHVqHHk8P7gPXqjyGSfECsaQ3WvYaQKlDV12kDBpP09xBUwqCB8SBbO1J2ye2bXOGPYT0T8NpjAFN+cclrLw265Wu2fSE1hjsYvTE5pCh3scipY7KvRa+I9Pnnz+bPO3gYb5UbtJ6fTYXwAHlGtmtL1T7Ar/l+3Ms24knPUv8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TAoECN8A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MUP1/5a/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CA6XbT3666482
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=+HkoqHNIcmwOZo+SK51MwxHYbRzqLjxvTjL
	ro1qNdYQ=; b=TAoECN8Aye7D4KBxiEOgktoqObJEg+36z5lQrQ/gtV/sVgoId21
	jXrRr5QbkEfwmcSPSrUeFPNEM6Uz6QAY8ISrrGuwDCGpvGZVrf9abwUV1KmWivc5
	AafdBTW6n2Tckf+oisYh4IQI7MPQmF1dGCWvchVFhQq1C0LO0GThZVkUb6R5zaEP
	yR2dMOC+G4fxbSZZJtiDFXQySjCiEZBHzUDIr69ImBeLSip+btXj++jybIOErTN9
	bDtHpYOgWaigHQ4MYDAexhx8FxqrKBgp3CdCtCaX+mKqUyzBJf6Pul5WnC7jdNMF
	oY4+l9BeLQJfVXvZ2IS6U4AxXsnSzW233XA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60k8ku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd722c1a69so785609485a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773341031; x=1773945831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+HkoqHNIcmwOZo+SK51MwxHYbRzqLjxvTjLro1qNdYQ=;
        b=MUP1/5a/5GifKN2Jyl2N4jK8kZ/fshNjGumuva32nrOYN11RPjZpj5uBWbHCPDsAIi
         6TDpnN3KaQW2xsCXE+kQSCXrH6Sj1qcKKuUZRwVDvZDuw/Mz0/PFW/gxTPb8A6QW9YQe
         lxpIY8jUPb+IkXJeU+xqUrXI2nAHo3CK6I6313DPqIVh4Sy5c7G3yD+dDIO/h5btSXYe
         PzbzCrFvB8wLE5PxZHU8gEVtEV/lLibGh6t5kMck4hdWZObPWOCDMKXhBOVY7qXYWqHS
         UDLOgNhP+dmeDWQtvWKNcsE6kJ/kWbN1EkZkvr/4vEjko74pqdpJMOaiCTC0+qpsKzZ2
         wc8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773341031; x=1773945831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HkoqHNIcmwOZo+SK51MwxHYbRzqLjxvTjLro1qNdYQ=;
        b=k43pKYBeLz3yyyDUG7jG8fk2GU75254fzTG19XFoNHppwrlf88XzxHntFNz799UbyC
         9agihqgeOERplgpq3GIceymGcP44HCM2JarHhFQ8eYD9kBE/D4rem6abynxDFu+mEdaG
         NHFTzLZRqdPhYUOes4ZKP/0mDFJNgce6EGlT6kE39BRiXNRxVGbfoqmKWK4wWZbkfNPE
         41iysQLl79SCLFwmgog7Kvi5Z2G8bPIWmCM0X9gCnkUqbD/n93B7psDFIcI2AYDbXj1t
         zviuc9K0XyAxqtcqHiHpXc2Gu/N6ZgrYh4u1Z3ZyDe5ePMvOmgbT7S5oOlVBVynXQF0H
         oi7A==
X-Forwarded-Encrypted: i=1; AJvYcCU2ctPV5iQ4xEP6TJfnh0iBoa+G3rAO0ADf+qTRTR3nl2ZFDdahiKNughX4D2d0st2Xgc5TKVxnFxEq@vger.kernel.org
X-Gm-Message-State: AOJu0YxaxrbmfjPloC/jY7wliWqmoADgURDDSnvaw53j+OG0KISy4l+H
	xXw1i79QPy+ItmiauH+HvPLRTN3Z62cjbdLG3brzbK+X1hphB5YWIdkWJZpi+hvDrd/B9JOzxL0
	PZc1nx9+/iO7YTStr1TdIBUV/GXx+FIkunSOCF6r6T7wWsR6iHJ401r0XvMetJMQ+
X-Gm-Gg: ATEYQzwayztaxhoR4iLiDqd28qztI04620Sec7PAt7cXnyouF0pz4kjb6dz7clbKBRP
	ohlU8PeLCqUHwFEae6sdL5apYdw2uOhVTAOH75j5R/kz/ITXLPKNNXhedbZcPzwZVYhnDmVpCMO
	KzLbmIn4iAs773TBeYiFhrF37OqT0qPR7GwjluBk4iTAi7N66USfYAObziMnOOgda7f28nEj7UF
	NEgGxRtFaur8goi2Dx7HZLbx7FMrLlgBox5/778CH8wBw2pPCFkkadFmX4lPuLzPWfIBYKT67S2
	8Vvcn1QwEyppZ47ZxOGjjKTzpnugbJDseclwulH6091lMIJ/HeLh+JyfNQfWMPMfIdzsYNJXtAk
	wgvKfKEThAS43isGOkhkusFitWTQKMHTfHhYi
X-Received: by 2002:a05:620a:1a0d:b0:8ca:41af:32cb with SMTP id af79cd13be357-8cdb5bb05f4mr106416485a.77.1773341031495;
        Thu, 12 Mar 2026 11:43:51 -0700 (PDT)
X-Received: by 2002:a05:620a:1a0d:b0:8ca:41af:32cb with SMTP id af79cd13be357-8cdb5bb05f4mr106412285a.77.1773341031010;
        Thu, 12 Mar 2026 11:43:51 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bbb2sm10005040f8f.22.2026.03.12.11.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 11:43:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Sherry Sun <sherry.sun@nxp.com>
Subject: [PATCH v2 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Explicitly deprecate reset-gpio
Date: Thu, 12 Mar 2026 19:43:45 +0100
Message-ID: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2298; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=0tXOIBZpahIMNyxmlfBim1P4ONHHre0IuoNhHAjYNZ8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpswlg93p8yhDunYSI8srtbq0lw5h4i/81CjyGK
 tJwNqZb776JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMJYAAKCRDBN2bmhouD
 1zKMD/0VbfX3p0sY7DPP9esiQ8ycSbh3PmD7F2UrbBSAiO0cHHO2LUKqcW6AMzVHx9p99uwQuaU
 ciaFreVVcuJbzwv9r6iJHIpI+IxMTC1C2DITt4tpLG9sFpyQmaFPGp7/l80/dUh0y1ZjTAn3ncL
 B+Iv9G6SMS1oBTcZdW2o9Nmn6aUDoSes84V6e1TERKgNY4L7wV/jfO4l5D3KJNaB7f0qEzQ3ukY
 u3iDqDzYEO2lgIO4PXY2tL5XFceLBFjiTClAbYkP49jeZccSinEgMPtaepHHalTrPRYjNfoQBFY
 Ut2/00fpWMV0Bu6IFOeKNkHbDknlzUFlyrQC0A0xNNHRFlD2z5e8v9RQQGwIcO0ttdL+UlRW4yZ
 STfuSi6mx/niBtDvS1g6v9otU36Z/qcB0sa0RoTvWU7VDsbzZVg3nTL4Qx3kmxBNMbS9JaOMe07
 1BbfxkKpqOlx/HiXM+0+4yZE5MzM9Q6WVPu9W01FKWI8qam8EXNYkw++HUURNSR5OpETp7rR9Of
 1OKo55KWHPpHtDBghA0+tmrkFavuNa1NxHMAR7f8dowIZcszilojKc9aGX0ERxwNEE1NocvNWg5
 A9/OB1TeWSrrQRQ4MuUzKMUwc762SE62NrxLCUkOPrzBrkyRfuZmXTlXkW2SbGy+Oe8fPq4AIRF i8K1ni69MwGq1tg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: F-iqO3kQjvedZasD0CV4eoQQEs0YBlah
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfX10msRZVRIdL5
 7a+61R6pBcPUISIPYF7C+IavYP6UGkWoaMnAAJ92wphGRoy1YS14PlCpiiT3T2A9Rf19VeQZRfT
 aoXJKHhBk3wkI2nm90iFh+r8+53zLuEst8B4zzF2rbqD4ZuniMoXqCcaeN/HbuHOtqkEP4Tm5xo
 1aFzKUiKc7zrJadgZfmO5RFCR8TvL76U7vCtjmwgDJx4vd/phtcjzZZi14sWB4INHLLTr+5e56v
 UY45RGp196OjXNsi0PYYix/FH3K72uMRLDAzPAxH9zTERK69wV4gSF1ptqg5YpL16ulv5DmXHQ5
 xtbhIENicGyH2d9LHl3JNQAXuWdm7w72fUgotTbcw6zx3jR0Et/qwEFf+UCmB4Ds/ImEJyuUceJ
 Aos6DGHt6BXOx9BtPkC9AxRAs8v2JQKlmNqcPjwn56j+EbHpECKPgLUB53KuhyfiPyoMieQMcPq
 NU5EtJeZ1DRt7KucePg==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b30968 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8 a=VNn6zrWwxK5-OcnvxvAA:9
 a=NFOGd7dJGGMPyQGDc5-O:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: F-iqO3kQjvedZasD0CV4eoQQEs0YBlah
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120151
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-274755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9A065277446
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The binding references snps,dw-pcie-common.yaml which already deprecates
"reset-gpio", however mentioning this property here lacks this mark thus
code is confusing and suggests property is not deprecated.

OTOH, the property cannot be removed from this schema, because it is an
ABI implemented by Linux kernel in gpiolib-of.c in backwards-compatible
map between compatibles, "reset-gpio" and "reset-gpio-active-high"
properties.

This creates code and binding which is not obvious to follow, so rewrite
it and be more explicit about:
1. Deprecation of "reset-gpio",
2. Relation that "reset-gpio-active-high" is used only for that property
   and not proper "reset-gpios".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Cc: Sherry Sun <sherry.sun@nxp.com>

Changes in v2:
1. Rewrite the commit completely after Sherry Sun comments - keep the
   property, but add "not" clause to forbid usavge of
   "reset-gpio-active-high" and "reset-gpios".
2. Because of above not adding Richard's ack.

v1:
https://lore.kernel.org/r/20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com
---
 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 12a01f7a5744..12cd1b9f78d0 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -62,6 +62,9 @@ properties:
     description: Should specify the GPIO for controlling the PCI bus device
       reset signal. It's not polarity aware and defaults to active-low reset
       sequence (L=reset state, H=operation state) (optional required).
+      Deprecated, use reset-gpios which respects the polarity expressed in
+      phandle argument.
+    deprecated: true
 
   reset-gpio-active-high:
     description: If present then the reset sequence using the GPIO
@@ -224,6 +227,11 @@ allOf:
             - const: ref
             - const: extref  # Optional
 
+  - not:
+      required:
+        - reset-gpios
+        - reset-gpio-active-high
+
 unevaluatedProperties: false
 
 examples:
-- 
2.51.0


