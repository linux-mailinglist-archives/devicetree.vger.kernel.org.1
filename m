Return-Path: <devicetree+bounces-269177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLyzBDJ3oWnHtQQAu9opvQ
	(envelope-from <devicetree+bounces-269177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2331B6337
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A6E6300E68A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39C1C3D4111;
	Fri, 27 Feb 2026 10:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pL+8/s8L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GLjK3x2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022D4368947
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189485; cv=none; b=F2/DheO9xfJA6t0JBCs7uM9V6IDVJtqugT0diskEgNzBedPVqfau/ZcYhutJLC1viEGEXOcBixtX7kfa5F8pwGUCOoCFbk2I2UjNi3wsSnlv/rtMO814NC6uoNWdiSJlqf0w1R52KQoiqn5j/BYygZTrVnL28+tQMLB1Ud4D4xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189485; c=relaxed/simple;
	bh=NuQktRrQxerKBdlu7RUhFNtaU35xxW2kPiId913DKVQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BQ3MllHoSwMQoU8qaTXxxXGLCk12f7bG1RNoU1KbEBWkM3vuqo6lUzSzWnfEIlcKkq1M1uUZyN2YPIGjv2QmSFl+49MExwh9s1c8UVLHBmygYiCRe4y64kGeJwVbwAvxEhtpgDOs4pxbb7/YqdLwOpsUkP10MGCrR7yKG/7m75M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pL+8/s8L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GLjK3x2V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R7fWTE2309168
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=U1S+/z2TCLM
	j7vIv4Lq8YmFqlEAakUMQgROUghqQyE8=; b=pL+8/s8LD/WdkUm7zdYsKuk96I7
	bJLOhaA/wdYLgRG+d/hloBVq9WIRY7JbY3bPgID/IDL/fyZDBdU8KtCZ4gSthq0R
	gR5dc0IqonV3Rqz/gOIU5BWEpObBedIJGqPycgSpLVmLwF9/Y/Ub8J4rJKYFM0V6
	ZA8BUl18kAGWO3t8OfJRe5odlzSbGLW5deIVJF4v9uqK50evIFu2YLeXTulXdYg8
	N7Oaj5kr8ZP+dqCdEOlKH4ADsSTFuwXVDnZLF0WWaLZ0AMS318JYcBJ0HKKjg2h6
	nsejibka5UJzAMcSTHx8JT+n0nQ36zTQFw3oisllgYc4neez7DdlgEy0eGQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck73q0k13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2addefa321dso96840825ad.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772189482; x=1772794282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U1S+/z2TCLMj7vIv4Lq8YmFqlEAakUMQgROUghqQyE8=;
        b=GLjK3x2VgIR6WbvAaHN0GrodrsuTj0ztPbcThIwoltRBFtaFLgHSVYcWgXPzGexAv1
         rvYfg4a3mMrfzu6I4fk6OgSOX11u8n/bqDE5F/9USdiXurmh9JDuxSEIjU0VWPfbeSaP
         /D35S5PAKIaEctZB+vUuoYE8ZB01NGRTUoJkmOKf9t5RrZxQS8Htajto7DqU4K2itJ9m
         DOqdwPnjPiT1gtWptuEwjxN23A4HEZQTdvd0f3k5AGogv2BbR4fC4I6BcBDyVU+FxHoN
         c05ycPO8COumkHVCz3VaRIEchGo3glc0KgaeKM3xk3jzP5/KmNYcbV42tLtemnhL8giQ
         e/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772189482; x=1772794282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U1S+/z2TCLMj7vIv4Lq8YmFqlEAakUMQgROUghqQyE8=;
        b=CUd6Got+E1SdcxiCyOz2J62fbHJa/hLPU9MkcmTMnSs8QakeFkYn1dlNYEusg2aiTF
         Lo3TNf4Z6XnLaljaS9AnnFvpo+glSvxmma9oijqVojehwP0tsC7ewtBe+Az6R+NfIcBt
         bRLv86MRSavcd/A5pGRDyFfVmu2zxyiMt9N6V2KW0JZrSd/IGmdqHMq8rrauzHPWS9qq
         8S9bXp5YGywEbqYDGeim3jdFCfgMMZu3q877SCbwTh9ATx+ey3LXzAEES5wHirVp52TG
         8G9oQPCUHHvTlEO1nYnRz4ffLEhYW3BzyzsQBGvBw5y4vJ4nleGEIAspdUoJTMPg2YRg
         6XTA==
X-Forwarded-Encrypted: i=1; AJvYcCVJDhyjm5OCZfExt2hdoWGBGe7RQPbNe1PrUiLkYskfQuwdGF+5ekMNVKYAEo3VK5WBdzRtI7NTs/42@vger.kernel.org
X-Gm-Message-State: AOJu0Ywygr+KTkTlK+VUbAOrb6tOYyt1Yp3OTdFejxvBU2/owxhdTViL
	0K1J0abpD+3srpXoIsDm4q29Zvw902Sh/EElb0iX0OGhjQYrEVLTG6ctrDii8ZvICOdFa55dSdo
	6hUf0XNihg1CnJmEOUSh5WxtYtbFI3oQwKUyGB8M0mZoe547ahjTL0hJWTMukAMQ9
X-Gm-Gg: ATEYQzyCKNOugpkUIncdlnrec6n/h393sHYFGqkBqkE+m+ulNxGCB7rVNyjhPxmJZlw
	E0ns5JM2s+SBJy1qG7RknWLT60LCgjgkLYmgvMSeCZ+tz3bIEnWhX7JHQn1+8WbN/9p9+G7b7hJ
	s3ncmxcjxwzfybfsXPeIJ6YslL57wzvr1+TVvT79V5A5shA1X9VsVD6zy6c2EsKpspXgRGTwvYG
	wEkHPxbsJMB60O4G3V/y0kZNxfnYtkf6QEV9S805igtAMpqorrAkwbTPN+78HLiVKui1xGTybs7
	ooMaIGYorP7Q5+40BmCXq2mLjWL4j9fB1peMXE11ebLtTxO/7iVcjNN/06+AqvlzoD4mGgIOeh6
	EmvhwA6aw/WVBapWZM4KppPY/cHVtfBDVmvglMW3NtLzvX0yhefhRUtKD
X-Received: by 2002:a17:903:32c7:b0:2a0:cccf:9d24 with SMTP id d9443c01a7336-2ae2e40754emr20673265ad.16.1772189481899;
        Fri, 27 Feb 2026 02:51:21 -0800 (PST)
X-Received: by 2002:a17:903:32c7:b0:2a0:cccf:9d24 with SMTP id d9443c01a7336-2ae2e40754emr20673005ad.16.1772189481394;
        Fri, 27 Feb 2026 02:51:21 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb757a8dsm73721885ad.40.2026.02.27.02.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 02:51:21 -0800 (PST)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com,
        Monish Chunara <monish.chunara@oss.qualcomm.com>
Subject: [PATCH 1/3] arm64: dts: qcom: monaco: Move eMMC CQE support from SoC to board DT
Date: Fri, 27 Feb 2026 16:20:53 +0530
Message-Id: <20260227105055.2364348-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA5NCBTYWx0ZWRfXxyOGwMasRBYg
 oAL07znnE7dTqW+Qh5FFdX76XslWtHTIFAeEUr0pK0GmjXzsit8v0TXdkg+rAobpmj190mWuwPA
 vH08gUyNC9+sG/uqPAKvkoD3MSxzLz0AOKgZq9AEElUfPEcxMuQ3UAJ69IF2byAtXtUi2w2vlkW
 sHBeB+Otxb1YdF28+2lL9U/ui/C7wg5gQyb3F6f66WiOf+z1/07Mo3e5kQIwSyFMbML6iZLkm0o
 kitTkK5pkLjCdJ8Vd+6vc0PkkNUprriTNUPf0Mj974qeWsJQ7O9HAIE/hrhbcIbx2IzrkL7VX12
 2ECbbyoa+U7rHCFnsvsnzUtTdHQXGD/vbcRCBDJ6HeB7r71hOHSC1+KJXS9rySd18oOo9Y6BWhB
 mcIsFPPI/XM5NdUjGwWLuqPrGXA6qMV0ozDR1fdR+9Q9ccsZbgZhs+TyfXiQFk0HdRSy9jWxhsu
 g1AFVqNL3fSrfcDNJ4g==
X-Authority-Analysis: v=2.4 cv=KL9XzVFo c=1 sm=1 tr=0 ts=69a1772a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=c4nFiuB5qTS8t_IgZ2oA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: euGB4Q-y2k-XkkwcEvJCo7kBfDEUNEmD
X-Proofpoint-GUID: euGB4Q-y2k-XkkwcEvJCo7kBfDEUNEmD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269177-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1A2331B6337
X-Rspamd-Action: no action

The Monaco SoC SDHC controller supports both eMMC and SD cards. However,
the 'supports-cqe' property (Command Queue Engine) is specific to eMMC
and conflicts with SD card operation.

Remove 'supports-cqe' from the SoC device tree to ensure compatibility
with SD cards. Simultaneously, add the property explicitly to the
qcs8300-ride board device tree, as this board uses the controller in
eMMC mode.

This ensures the SoC definition remains generic while enabling features
correctly at the board level.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi      | 1 -
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c..680f0edf4356 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4742,7 +4742,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			qcom,dll-config = <0x000f64ee>;
 			qcom,ddr-config = <0x80040868>;
-			supports-cqe;
 			dma-coherent;
 
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index c04e0ad53eec..b0bec20eed34 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -428,6 +428,7 @@ &sdhc_1 {
 	vmmc-supply = <&vreg_l8a>;
 	vqmmc-supply = <&vreg_s4a>;
 
+	supports-cqe;
 	non-removable;
 	no-sd;
 	no-sdio;
-- 
2.34.1


