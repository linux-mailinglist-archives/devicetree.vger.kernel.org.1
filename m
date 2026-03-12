Return-Path: <devicetree+bounces-274777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMAxOjYTs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:25:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C33A277D97
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 987E23223DDE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CF4406273;
	Thu, 12 Mar 2026 19:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YS17obd6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FT9PNxrh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9274F40626E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773343111; cv=none; b=kyQRcg/j+cu0sD3QgJJwJVVenKAM/jrIClL0pMZ+uJU6tfCVBh3TYSUoDrqP+LrHn3yFTXX/jR6E7X9LxdpZwhgjYWAz070aQmanzDSlQ6PiZnwvyrOyoYZzzUOd8H+R76DBqADshZo4d2whbU6taKWFEypxZpX+VvKSHlFoqgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773343111; c=relaxed/simple;
	bh=ketqLeJvphOERTzcwSuzGEPndeI0EjSYQVG8iMUwDuk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=La3IYV92bx0SwtDM65eGPmL68vfNIfBeCblsAw4wqmNryWnXcjnTdX56LwpDouLi84ol1n+XmCAmXpFNcDTtJU47V9js7DoYpgwKL1bH43K39+wyIWFtLRGP5qUa/04sYGxY8TAxuy44WYf8zbPs0ZD5EpPoWFhFYvIXqER1dE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YS17obd6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FT9PNxrh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIX2Ej4132843
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tQF+bUvrjP6KDpXJchl5G1P5gPqcLe+6v4T2uhK4av0=; b=YS17obd6VrQm7rxW
	ijFUX6Pnwun4h7HgLMzk9LYLme4keBsX6kN3NTCUcp6YQN7YeJeULT5foWNpOowc
	Ae1BlxxuvfICMvRaXyVhFzahe5SUiC+c4oI1i83vPgIxjBuBMB6uegmYP1a+8coH
	WsxgszjwoLPRegzzeBXXjTqm094yoP8KOCDSC7F3DKosUOPFjS00DVjgR0kxAD1p
	m/2oKOD466jutLPTM6m9sRqBSA7MyoYw7Ad4QVwW52dnUqusBR8v1NjN8MTpHgJf
	O63QcRzACgggZZq6lsIod5TcMDpNYL9mVrt2+tYgSFzmVs6O1rvUBzMgSNCpxFC6
	q0vG+g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w3ax2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:18:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899bef1ea49so257075906d6.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773343108; x=1773947908; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQF+bUvrjP6KDpXJchl5G1P5gPqcLe+6v4T2uhK4av0=;
        b=FT9PNxrh9S7azrsPUdoRe1fdRLBLiKuKikSJhmp6rnFsq6uzmGl2YfwTbIppf1rxep
         4REOT7aclki/x7IxpkfVVUCDP84Tk+8AGSbwTsRRZHcpqT1SspyzEtuhx7tr6sVfQg1d
         Jy5fwPrbXQyAlpD+FGj39I7xZ4OeiX7qOm6anRo9S8vrVcDCxeEws+pqr+aXLF8i04U7
         F8fhEbIUAMKXlZvee+tj7YfqV8Xfinn5FGrjl2jy2RkGP7ff4eOu9kS2F43k5Uq3rFqp
         xL0ondgTzIWKzwW/7NoqHGvjWrZnV7hVHQ4CFTvxP/Aw8T9qroXDNt/KmBFQSdzY8m+8
         pKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773343108; x=1773947908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQF+bUvrjP6KDpXJchl5G1P5gPqcLe+6v4T2uhK4av0=;
        b=Q339Ap/Ez+CXyW5bzL+web5nEu5vPe9oldgmIGATnH529hQUlqCGZ8fV2JYMYv7gok
         jwaawU/gZclRxOk/QssvbRcGrJRSdO9mP/jLtG/FVVLCzrPYgAsWHJewi9mGQxe2kq59
         fA7brzS7IKvZTW/mfAHEHGgS4d2miANiwsQPcWA3bbfq1TKcUuAA4yKwXGJlc7fEJ0e7
         fC3etBqQR/VPH0cYIR/zX1mFD1SBukCiQz5kxPIBznfd50HDfdqFRHIht4qORMFWTbd5
         FMcwXqHSqay+tTlQzHrdpyx5XtatFkzx2I9/P49hlPBkJ/aE0Jz8FWeh+mLPtj7y57W1
         qDBw==
X-Gm-Message-State: AOJu0Yyx0I24z/lk75iPPz1wP31/uuqkvHF51eYMNwjG71QS2JdsxfAw
	O4G4+QpLyz43ncKDrfrDzMnMXu9jCfocJ8KYczCLYkWDCum+emPo3Of7R0815+OM6LRs/74w/l/
	mfEvYsZZSRE/5PMN7ZOLEjB47f1NuTL3JBNBKB5oKIBuyS/PHmYHrNtLgbQBdoSM3
X-Gm-Gg: ATEYQzyDJS8uA+6iI07Jl3v38SfjMGUWdCSs6RAuba/GOB8vk1QxXqLuhJJlQhePDDP
	8EFQnUgsc4H5Xhs34GKPa9z/HtSlb4k+Jm2pYehwZRW8UZYbtEw+/JldjF32RpxzTHJ9u3eQYg9
	9yJ67Uu2IIiOEMb3uuZVlTMZlZhY5SnU19EDUsYhkk5OwlzwhMAhoztX/otuMwgV+XhmVnDfYxb
	R34Ny1RtOPtW76WWQfIaaneQjh5JBJLl/xS1Kmk3Rkl6yW/VpUSn7/BD1KzoMwv7ACxpRWaWGfZ
	+5plxjzNAcq/nT01HCmK46/xHIDVXfVCzM958A/iabfcm3VrS5B3Ag4kNQ119s0v2KwLqRlIhzX
	WJPPU7aYyrO31Bb+gZoY/e2Y5SQ2ED26nm8sORoLfkLu+
X-Received: by 2002:a05:620a:2943:b0:8cd:99de:6b61 with SMTP id af79cd13be357-8cdb5bfdb69mr127768585a.80.1773343107956;
        Thu, 12 Mar 2026 12:18:27 -0700 (PDT)
X-Received: by 2002:a05:620a:2943:b0:8cd:99de:6b61 with SMTP id af79cd13be357-8cdb5bfdb69mr127762785a.80.1773343107527;
        Thu, 12 Mar 2026 12:18:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485577835ebsm1874935e9.7.2026.03.12.12.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 12:18:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 20:17:55 +0100
Subject: [PATCH v2 08/12] arm64: dts: imx8mq: Use undeprecated reset-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-dts-snps-reset-gpios-v2-8-0d5040eb4a1e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4367;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ketqLeJvphOERTzcwSuzGEPndeI0EjSYQVG8iMUwDuk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsxFnXSgcn3d011T7YS07Ob2bLGT6L/wEitz+h
 //phXY1q7uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabMRZwAKCRDBN2bmhouD
 11gmD/43J8iGdLsLnSAVQKjH1u5zpsQ/oIeg2wpSCHGwactwtUTBJH7dSoIxfufErPykpi7Yb8R
 LH+Y0pUjbxQst2H6TdTHNMsKQn0eRnbTMEzHLg3OzHHG4HtPiqeE4iCtE8s4/Aq5bc0mFQaq6BO
 z1p34Hh50P6+SRoFMQ2fgVkR92cDpSXZJwMuWxBEjvj1l0nDkR7/UeYVcxdus711FdVDdpLJHHA
 X43cuWrogOLL8DT5QVcRSiQo6GcnoKB02/X2D4R2SlyQhABpirgkjgFV9CgTqyaq1sOqk9DQxI2
 fWBwuG5AQsg8oQ52NXXdizlsmF9K50cNibIQVpMfPPGAHdbRDrtbWDjm4798cH8Gny5NqZK+vXU
 3bS2+mJr7LXgLxZUN0LaHNMDrb/wlAij8T6zzNDt6lcbazscyTVfb9O3IuwxYceC175NZb1CZBS
 ZMcpjiKQ/D+zVvVoMj2wHe26reJzVzeFG9qBO8YtdZRnvVF92dSocmhmQ1d3nFc477EqMdhNOIc
 js1Cf5pcSxnbfATEXMuVJndiyp54cO3X0PJjK/dg5tsWQRw9E+3Y+YONzCwHryR9oe+gxPU1fCy
 d/gvALrUZA4EBtdhicl8oiViy/IfepFNtBvbv47eI5LgwqfP1mHLg+kUkqVi5mAOMnM3O1eTPVk
 VNQlLzs5PwixteA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: MgWcHJjar5cXtsvz-geFkaDvHqNEJq5m
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b31184 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=nTlmypLvTDh5NzCj0PYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-ORIG-GUID: MgWcHJjar5cXtsvz-geFkaDvHqNEJq5m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1NiBTYWx0ZWRfXyBGjSesxUR3S
 x8muBcQVaFj3EREGiwWRaynnRf5C4iaXC1JmvbhVC831D/QDOkZknHkqBznmkh8hyTmb8BMUwnl
 AFcPZ+rkkGc9kuvubtrqbk7kMfTD+5zZ8X/mQTG+HqbJqqHJMgT355eNfAVE0i7QtDfX5lO7jNA
 r1QDkTovf8ZrcuRHzKvEp224qTyzvzeYkpSDcEIyGtqpNMoJ0u7TFaaa4ryfkSL7amWLy54KNxJ
 tD1cjOcQnNgeWKCyR1zZYGI8vW8pGxxoOuweGKFyBlcZYgXWzh0dt0Lp3XeTXJ8NT31UO0ffdJC
 0DVkbddwxg7SZkqO2VYr8tw57qXD9tQK7KqQHiyrBOY+qweSCuLzIR22frimnHDcDqQQdL/d4e+
 BQZikRzlVNj2CVJipRxsvg12s/c2Z6px0ATjQqBzrItUXZkUyFjKKEMOsbhl9snvNcFfOXmGV8n
 Okl49fP1/fIwqnsPzfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120156
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274777-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tq-group.com:email];
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
X-Rspamd-Queue-Id: 8C33A277D97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Freescale i.MX8 PCIe host controller bindings, through referenced
snps,dw-pcie-common.yaml schema, already document "reset-gpios", just
like Linux kernel did for a long time.  Use the preferred form over
"reset-gpio" which is deprecated since commit 42694f9f6407
("dt-bindings: PCI: add snps,dw-pcie.yaml") in 2021.

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts                | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts     | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi         | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index d48f901487d4..54826420740c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -369,7 +369,7 @@ mipi_dsi_out: endpoint {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 28 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
@@ -392,7 +392,7 @@ &pcie0_ep {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio5 12 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
index d8cf1f27c3ec..2296ff065467 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-kontron-pitx-imx8m.dts
@@ -243,7 +243,7 @@ &i2c3 {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcie0_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
index 3ae3824be027..09f2fb1ad57b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -195,7 +195,7 @@ mipi_dsi_out: endpoint {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 		 <&pcie1_refclk>,
 		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index 0165f3a25985..aa54182def4f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -93,7 +93,7 @@ &led2 {
 
 /* PCIe slot on X36 */
 &pcie0 {
-	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&expander0 14 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 		 <&pcieclk 3>,
 		 <&pcieclk 2>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index c7bbba45f368..f3d0ebe98d5e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -547,7 +547,7 @@ &usb_dwc3_1 {
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 3 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
 	         <&pcie0_refclk>,
 	         <&clk IMX8MQ_CLK_PCIE1_PHY>,
@@ -559,7 +559,7 @@ &pcie0 {
 &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
 	         <&pcie1_refclk>,
 	         <&clk IMX8MQ_CLK_PCIE2_PHY>,

-- 
2.51.0


