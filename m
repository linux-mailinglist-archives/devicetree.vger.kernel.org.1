Return-Path: <devicetree+bounces-273494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMMXKFQCsGnOeQIAu9opvQ
	(envelope-from <devicetree+bounces-273494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:36:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F27F024B1BD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1927F309DC49
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E253859CF;
	Tue, 10 Mar 2026 11:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Decthg3V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BkcNjDIb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC09B3859C7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142572; cv=none; b=WegLZ4ohGAqPY9vhKUdJ4Ar7XEX2ii0sYXRWUDL2mYLlhBk4juUaT45LBGrOEA89kcpLCR1pidmqd1Kf+4OLVz9bYex+cCrB3jMynukYC4k4uUJQAhm/0kJzrlFnma1BnOI1tRMxh0P0kVVeDMX4orZeofTVO3xjiR2drH1lrO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142572; c=relaxed/simple;
	bh=8ebMs7i13WqPF0zC4w+oVAIdgnjTx2rCxck2UIJoxuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jk5HzocrogoftgREt1qUEthBAPswsoBhfqrix8uZqM05zOGMBFRt7qURPYUQM0WbcNuZZv6J4TTFt8sXdHBvqN3SQunLlwauMfSMaM2T/D19rTIgvnyFq/RfyUNJNphGLqSgefRZw3W1vUFZvK3lpK+IzHIZmeTBVVKw3CTD5N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Decthg3V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BkcNjDIb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AARFlv4188602
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=prNokE296Cy
	f7UgIGcapomuvXdqfCedaVm3IT2o8IjI=; b=Decthg3VTvS4p/rnPJkdAkRXGKT
	hYKf6EHC2x2NfBlbF95h9huxB/SbRqIjeYeJMF5GC4H0us8Tae3Ea0N3k2IQLq+p
	cPdWWkmop17OcNOOfPx8VAaihV3KWnBtNPNEuLYpGw4lKIAL6KYdVBLjpduhFvwa
	nSEwP5l7fiQzImjSA+I/WpfC2EtxeOS1hX26i0+Pk7RRj8lo44XWaAzBIg22MGHQ
	Se7mfbtG/WAf5h0FKCpsS1PCcSdtAuxULm2rYFFYawX7UATMi++Xws0an6+K0Z6I
	UheYF+vmQvE6XNuNfWy0Ff5peFoFnM0/ppcefjTH1fzooAAVkbiEikxMzpw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf09hx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:36:10 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-829ba0e63e8so1082214b3a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773142570; x=1773747370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=BkcNjDIbxUXQ8VxCWUKDUDclPxEYQC10yI3vbkar5zLAhYhuGmkzRE1IYvMi9FuNFx
         yzorpZpefo2W7DJUNMVqxzn9jWnX3FkzinbPfo+8L2gOiTC/6xDmVTHsfClCbRDwJJfu
         5uADi4BELSCBOHOd9+ALR5yzA9vK6T8iIkcJ3ncrUwVaMM8U50hVcZbIbBybyK17eN3Y
         A6jcBsJnSSVmhRa+96PvxG1VjdFBizuRMuesD0EbMq4yC2PJNOgl0RuS4kJ0oG9FHzzg
         9Lre4RSpfTAWgbwQB6MiFFxcws/BNMI71JHYa/MTXdWK81Ke4Ay8dNnqgy+hAafrVvM+
         2Srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773142570; x=1773747370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=g7S0Rm9/dLIYMxs8fEVtYQYkbtB0MiPEPA0FBFQKFz/zMHclkZHXANQiRokDlD9EYg
         ERmxaBHIC9/8uwyBmag7KawUcF0jFWkBMpeBfUdzWiLS/doPFMnPrWMTAO1YLDez2v/c
         RjTVXId7+y8knFHJvSXmBHbL+2QdFP78wLI5JyZ9MSGHQ38HMUQufJ1bRg96AdXalY/x
         lAxg0nqZOQk5ba664v2Cha1ED+J0aatn5reTQv34TeVp+qT9AUU4RuVYKS8pwFZgOyoE
         qJ2YHrTipLG0V7BrE9M17YFmiXOc1XaQAwdSwGR3ptJlM/GoXVg4mHzkehUoTvGeBhCc
         DmYg==
X-Forwarded-Encrypted: i=1; AJvYcCWKX0kP1Py8DUEWLor6YoZLsTUmZpundxLQ2Wo0nYPza3a2EZDqmBRZa590og6ousRzmSoDVDmzAGHK@vger.kernel.org
X-Gm-Message-State: AOJu0YwriCj+vmSR2vZWHyHq8C68CEBKW91yWZa7RsIq8rnZQVduX+ep
	ZnzEaUfUUfbAoyx2Wu2NZHM1cI7a5cBrG3SHVIi2pXjgnD1nXSQRLFvIb0U8qZCkWrPNLwMBhxs
	PqJfSx4O8cFlrazgH2DXiDMudtcc49SX0GcTVjDdcLB6p3U9J82nGe/39EaqON9Hr
X-Gm-Gg: ATEYQzyiVNhhxkXd7qfn/EXfXJnrmQTEc1q4qU0vZeuzW5+zXdIkZlJcMFeC7uAk13a
	JlzVfkC2rksHSm10MXGlcjyToMfqpznhARntc9qFDo1aGtj8GtsU9qmBo1uFHwn9CFyJ5xbZ6+F
	SXBDXX4BzENbxl6+zsfpLwKoSx0FMhtk0EMWjPoSs8GsLSiiY2EEQCavzfaCq4x1gMJcpoWrcUm
	Y/xUwSj9swo6wQqkTzfR83xyg1qhMy/oEwqnguufHUsc6Fj99Phn12va44JZ3wp8Rbx8pxqQnjM
	Aa+ymmipmYBwJwoOVEMB9YG8c/7cs2N54fXC5QIq3Sjz4ehmbN90V982RfL4wp/i48K5cKgp1QV
	YnSBoT7MV4Fjwf7xphZNjQUZimvlSJ/cEa04yJLtCs1U7pnDJyap6
X-Received: by 2002:a05:6a00:889:b0:824:afd8:5e91 with SMTP id d2e1a72fcca58-829a2dc16eemr13169813b3a.10.1773142570243;
        Tue, 10 Mar 2026 04:36:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:889:b0:824:afd8:5e91 with SMTP id d2e1a72fcca58-829a2dc16eemr13169782b3a.10.1773142569796;
        Tue, 10 Mar 2026 04:36:09 -0700 (PDT)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a4637bb1sm12364659b3a.10.2026.03.10.04.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 04:36:09 -0700 (PDT)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v6 2/3] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Tue, 10 Mar 2026 17:05:56 +0530
Message-Id: <20260310113557.348502-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
References: <20260310113557.348502-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AKgnxSuGcyK3nuk6A0yQB1lJ-HhAd385
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEwMCBTYWx0ZWRfX4U/sTEbmjL7k
 ETooqJIBf6et6U9RY/WTKI4XONSECEO0wWVcf/oa2ARXS6naB6mzmm3xlQ1cFHNMVtu2S+23Jyo
 oAdmeOx2c2HJAOGiPPVjmpm8+m6S+LWQfv1r0HGSfJvuOYHf063hthmcB/o4Pb24BD4XHsWFSuS
 r8q4KsD/wp1bh6/wXCCU4mARPQBO0w0wAKNA+rvSpEaAz05okYSHPMcjRhgxcfOJFtuKUl6TE9E
 ucyID2xRniXMlsWQ2VAAZpFPw0cDkg9bmMJNG8U92uxu+kAdp+GDnCMPIVHtMoSDYareuCLOHcP
 H6m90znGhEX5Xas9oqlHPqnO6MCS4JGLeBFrh+kntqn/8U7cv+djyaFaPlm9xItymQ+drfzdDv2
 hzbQaAw2RUfjvs1/OspRpqz9RFI3GHxYS9mUyF2u0vlZfUMn1X7oPnLM/UahI33b4p5F7yibnqR
 FpoVSlwpb65pdJRq7ZA==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69b0022a cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=w5lGHQi5D-TRKhmXJ3sA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: AKgnxSuGcyK3nuk6A0yQB1lJ-HhAd385
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100100
X-Rspamd-Queue-Id: F27F024B1BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273494-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,7c8000:email,0.13.187.160:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add an ICE node to kodiak SoC description and enable it by adding a
phandle to the SDHC node.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index c2ccbb67f800..de01a6669522 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -1045,6 +1045,8 @@ sdhc_1: mmc@7c4000 {
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040868>;
 
+			qcom,ice = <&sdhc_ice>;
+
 			mmc-ddr-1_8v;
 			mmc-hs200-1_8v;
 			mmc-hs400-1_8v;
@@ -1071,6 +1073,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@7c8000 {
+			compatible = "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x007c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		gpi_dma0: dma-controller@900000 {
 			#dma-cells = <3>;
 			compatible = "qcom,sc7280-gpi-dma", "qcom,sm6350-gpi-dma";
-- 
2.34.1


