Return-Path: <devicetree+bounces-321773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o3bgG/unTGrengEAu9opvQ
	(envelope-from <devicetree+bounces-321773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:17:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4237185D8
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 09:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=LN1TpSZu;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=GFikHY0i;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321773-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321773-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DE43308C057
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 07:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11623D4129;
	Tue,  7 Jul 2026 07:11:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673463D093F
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 07:11:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783408295; cv=none; b=RzGBog5MOOZb0NGRnF6NeiCT3RzdDsP1b5Ybrh50H6WW2OdAhe9LZSos8Na+epIVlF9cVAPLRu5MvfxXajdhBdEzPCmXu4eJiobtbcznKLED+dqHQYWCkaIkYqvs3SSspEDNx7clhqyJqKzJ1worss4fKn31wLJZPFQXJsARwWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783408295; c=relaxed/simple;
	bh=J4TrGqeN44TOb4ec4wQtPvf8uyhMxTqfZYt3hDJtfo4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ouC2fVJMHLfI3O1ZS3soLmqn7mv1eLOKSvDyB+UB/taFN+JO6hQasWVCs7/sfK3vM13vD7Bowq3c0llUAREcS7BnbsSQPpSdO8jk1rqiqnBT7IoGbbfonaLYSuXrx+TxZ+JdSUAjf52PDuyKZa9r6YQaxymVfH2P1jwAhmc7BkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LN1TpSZu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GFikHY0i; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6677BKLP2935721
	for <devicetree@vger.kernel.org>; Tue, 7 Jul 2026 07:11:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3SRvVAg5G318Eu1Z/2eyFR+WqD+YWxRCLw0aTtlvTYY=; b=LN1TpSZuh62dfOI8
	tifID6jkrQxbt0qK04QmzxuapbZtm6TAZBamWcNeS2u8sQC9F3/HbWeuh5dVNexX
	SdOfW0gujO+bfrbrzBrZYE/bSQ/ZVZk4XAntEXw9ItfnDN5cu+JmNuS8oaaytxtY
	T+g3Z7E4Wf85dGvfM3CenBer94lGyNrt9LSQtMlmEpQPF+0kbuP8DW8MJ9Wii7wk
	Mde9fz8/2my1VPgARycNDPPysVj/T088g3zGq9xghGFKNn3tVrINT4ykgurR2ZND
	xM4Ax6EGhT4A+gu3ERv8YfdGfLdnLyuGceyD6400EYJ2NP+C5dmfrhgXTf2ZTT4/
	mirx4w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8vun001h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 07:11:33 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-380a638fb5bso4177544a91.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 00:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783408293; x=1784013093; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3SRvVAg5G318Eu1Z/2eyFR+WqD+YWxRCLw0aTtlvTYY=;
        b=GFikHY0irDq7JnvUJo3aaGSHZWorHcBOdnSmcsFTRZPlrIT611/wGs8WHIieq9+UDK
         qkdv6WKv0yynMyP+3XBuwk36ySKAKh2X3zHSM353xOk4HkEDRWxOwNBiBC8eiKFJKpXf
         r7MiyMSJpGRHcPE9Ok8aQ6ru/HVM85oQktm0zw98cZ7plq1UPDIwiDR4xY6XWQSdCpji
         A9QU56ac3Qw3+DPB6frOELnuWlT4e1/vCrGnsyWqJdT1H9uAe0jpY8KSVTScbMPyldrL
         zu7PP6UOVkgqKrvQNpqPaoNPd8v7QFsWvWqhvm2G3wWdPUYp7efZ7QOuS8K+Z9M3ZxKd
         QjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783408293; x=1784013093;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3SRvVAg5G318Eu1Z/2eyFR+WqD+YWxRCLw0aTtlvTYY=;
        b=D1e9xF2qA0Lbeb9pND4H9UyB4Y/0Pu2bUQhS1NUBP+sLx+yj3UJI4Ttbjr17+tyO/W
         UlnYy5m6Gqwc2mrZyAtdgQJkVraLjWIPVxDPtWC5ANbXBmVCLvpccXbw1w2pJ811on6w
         6KH0HKA356PufSEFusbJSkFy2xX/zkk8SnUtJESElVdbKGeFYKxn7HVtSp8vZ0FEd8yf
         /D+ms+vZb8XUseH5yEYUGCllgosTXPwDatFrpyczFV2FaVe689gN2KzEYNR2WODL5UNA
         ZjhCh1QRTIPuNJAt76RADiZAvHufNIGlPolr+mfe2jmcE4Qd/b51a9/s7wGkMA6RJCCa
         1lRg==
X-Forwarded-Encrypted: i=1; AHgh+RoHDgMzNdi/lJirbMXEyecxpCaTEunt8UWcJ8PvebpPOzfGSM5mEbE/TZN6lLxEXOdAc0XGfMl+Y+Xd@vger.kernel.org
X-Gm-Message-State: AOJu0YwPR7vxPJ1GpwhcRQtyC/4tbubEWEOHkQk/BT9nnfCwgQ5MGzb/
	gNMfxRjlRml6vfXCGfLLRoKWMtVJ5RoFvtj8LN2peyZNTbLZUdB46+s8Nt0QHK12fZUFcZmRIaS
	KKlzTUjo//WPF1vO8zKLwOiqlPk7eOofWcrD0v3nkw7WZmIDR057v9PB/+hvpefdN
X-Gm-Gg: AfdE7cmz8eQIHM1eTh9RzFzV6g+MsQesPC7KXvOhD7ZNe+JndGGt+tNz+rUu7Cx90TE
	T1f82rUqBD/knNLhtCIpee2G1ByjgxCs81jkStf0FMoGa9qmOow1WOpmb71VfNPPJXUAUDRtwQ5
	pGDJvds18dYvskm1XuXGlPFd/gn6tC/It/ckyHvOiGLyY5yXN9guzZlLou3gLvRhF7WxM3RfDaK
	5ALNjBaCC7pqf/hZyNM6fHYLi/t5eFMKdo3i1JzQSmfGkpDPTMbCJVlzUD/fT7wTga953S/DZLs
	g4ej+YEih/B7ftYwNIz1XXKi6P/1iiTBHw3lK9JZ8Bd81nxfof1MhoY6BJasStEMFPvecNnvw0h
	4IW2N9uP4F5Nly6ulPjOGL+XYwoUaJiXI+pppxU9ODd7x
X-Received: by 2002:a17:90b:58ec:b0:381:25ce:bcc2 with SMTP id 98e67ed59e1d1-387551915e0mr4090894a91.6.1783408292933;
        Tue, 07 Jul 2026 00:11:32 -0700 (PDT)
X-Received: by 2002:a17:90b:58ec:b0:381:25ce:bcc2 with SMTP id 98e67ed59e1d1-387551915e0mr4090862a91.6.1783408292445;
        Tue, 07 Jul 2026 00:11:32 -0700 (PDT)
Received: from hu-kuldsing-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d13fd7bfsm587326a91.6.2026.07.07.00.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 00:11:32 -0700 (PDT)
From: Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
Date: Tue, 07 Jul 2026 12:41:13 +0530
Subject: [PATCH v9 2/2] arm64: dts: qcom: monaco: enable inline crypto
 engine for SDHC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260707-ice_emmc_support-v9-2-701c86f3c25b@oss.qualcomm.com>
References: <20260707-ice_emmc_support-v9-0-701c86f3c25b@oss.qualcomm.com>
In-Reply-To: <20260707-ice_emmc_support-v9-0-701c86f3c25b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA2NyBTYWx0ZWRfX/MT9xFriSXek
 U2lQD4+8sfGnCHTOMqY8CUl44QQ4yepUws16aiQUMnjdM2GzOgg7wvUseUgQlyZ4P0z6PyJewf9
 NMLsvvA8JKPNoTpL5u+9xlK1W5RYUCQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA2NyBTYWx0ZWRfXznhMiLUc7+TL
 uOYRMT35vFZiyGK9UrwXaq5FBRaUfoczZBkxEPkb4sW7y9+TqfnP89JXoFEOEHjUTB6x2aaSZLW
 adK7pUUctfKFX0hCTXOl3Gp6QtPL1/sUMJmJuuSRUW6Mivxu6UhmyEKFtHzQZXApDxaMN0WAM2p
 kP3FGr7gmTqImzrKzVVtimcYbhB9g4LVJnH6HpbTF2Tmu4xd9sldpqeuQVfQ7QCYqtfxxX1qPa7
 kuwiKlyFPqQs5CrVNoLa+kUj9gNplq7FJ8rX/SnBDJ/GCTsX35aQ/hX1MgPrycHgJbHkGkQzs/H
 2EqlpvIC6eUlHA5Nf/xpyIboycwN7mEtZh5VxaZRogU6BBKdMJ9+D2MsE0noFBc8MK1ccRO4oBW
 Ytz3vcPkpflZ4aVKj8XEAct8bPfmxzqgsR3jPW/FgR9di6yeMUcRaB6ww6BLGpiCDB8SGTRWfuk
 8LiPwEObb8MRiTYNuyA==
X-Proofpoint-GUID: T1hp2lnaydTCigCrcNAJ549J_ZTAlKn5
X-Authority-Analysis: v=2.4 cv=N+IZ0W9B c=1 sm=1 tr=0 ts=6a4ca6a5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=rb0cE9Z9KU8QXvGDuC8A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: T1hp2lnaydTCigCrcNAJ549J_ZTAlKn5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070067
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321773-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kuldeep.singh@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kuldeep.singh@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:neeraj.soni@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuldeep.singh@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA4237185D8

From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>

Add the dedicated ICE node for monaco and reference it from the SDHC
controller via qcom,ice.

Also, define power-domains and clocks properties similar to the UFS
node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Co-developed-by: Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
Signed-off-by: Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 400c75437978..ffb13d61ee36 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4864,6 +4864,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			supports-cqe;
 			dma-coherent;
 
+			qcom,ice = <&sdhc_ice>;
+
 			mmc-ddr-1_8v;
 			mmc-hs200-1_8v;
 			mmc-hs400-1_8v;
@@ -4896,6 +4898,17 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@87c8000 {
+			compatible = "qcom,qcs8300-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x087c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>,
+				 <&gcc GCC_SDCC1_AHB_CLK>;
+			clock-names = "core",
+				      "iface";
+			power-domains = <&rpmhpd RPMHPD_CX>;
+		};
+
 		usb_1_hsphy: phy@8904000 {
 			compatible = "qcom,qcs8300-usb-hs-phy",
 				     "qcom,usb-snps-hs-7nm-phy";

-- 
2.34.1


