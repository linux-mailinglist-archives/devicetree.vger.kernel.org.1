Return-Path: <devicetree+bounces-263326-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mA8aKtrOhWn0GgQAu9opvQ
	(envelope-from <devicetree+bounces-263326-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:22:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB45FD291
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AAC7530142A0
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5F8395D85;
	Fri,  6 Feb 2026 11:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NDDu/gZj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZwmYPTst"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5ED394481
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376868; cv=none; b=DKXeTi9CCKi6KhMvjNpCdO/dcdEkapxrp7zuprF+ABaC3lXQkm/ksPiaPYwWmcI+xo4evV3GXG/tybwcRdmx2BknFf9AkLGbzyD38GqIZdx6syWhf9XwJ8cwp01zJS44y4/YhkRQNZOmx5a6Laht6fmMME9x1WdM9i3VeGdrSdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376868; c=relaxed/simple;
	bh=8ebMs7i13WqPF0zC4w+oVAIdgnjTx2rCxck2UIJoxuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PV5GXfChnaqAbaYNblfaGZo+DzOLSB6/HwxRrCjLg6HUBl8EukqfXxmtRrAZkLznb680fmbQ2jir3kzHXjR60OEbfG2lchK9x1CHrJy4mmJhPHDxm4nKpvL2QLex5aUtFtpolERKYFI3li0aLoojIPCHtPn/LzUNY1YUzE2fm+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NDDu/gZj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZwmYPTst; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616B4XXJ3764807
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 11:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=prNokE296Cy
	f7UgIGcapomuvXdqfCedaVm3IT2o8IjI=; b=NDDu/gZj9wRT/fBO8hk5DwZZ0Ix
	wxrVs8+dFnmbmFKlQNcxj56JbzUu/q4nL7JYBWuHXP4TM+PsecDcE+PJXek5wP+J
	WsIBsXX3X881gnmMN4gQhqU1WXRY2hfNTl6zH8cf4NQLMQ31jYq0O705wSYey8ma
	4W0GTivWfY32+h26IzU+QtOAmOHDgnRpGfJYser3bCBhPV1IQqG9Voaoyi3mvo7f
	PQoGqqDjoVdahIBJRf73P2SpJ91UpcuVtCqGII/27VkvrHih2jbx0Oaotr4/60k1
	x2CG2+sia1S5m1fHcj4bP++s5HLF8836PTNsIpkdozF2DHLCJkzCQogM0Ag==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5f3wg1e0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 11:21:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7a98ba326so23482215ad.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770376866; x=1770981666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=ZwmYPTsttuoyHp26aGZsp6wwaBPQT9A/3needSu2XTdDaDX1CIQAx0UH7oSZfa2CpH
         0pANU4fpsEIZwwqIlbKwl6rhFeTK1eVxZnHv5JshRGupGaQ/uvKrCAnKoW1mbLIJ+f4C
         ZsOi5sCugoxyD5vlpbCPix/0JU0HXkhDHEaFMZuivpGQw3tkHCLdS8kBot4a0NdKE2TN
         71aCPcqhAzjqdST/Pr/T4w8Qk42CFmIs/wWlT9fvdEprqJPfkF4dgMHrS8P3nkoSgC7W
         BRovYONevAN2ZeRzLtYcZRBYjreQvVOHFkbVYUCRhtEEPmxVMsZ1S9iFVcZMlH8s1df5
         Icig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770376866; x=1770981666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=MGMcOFeAwLmq/9fFSnGl5TubTxDv7A36csiTPEMMViCtp7Wt9g4n8capcezu10FM5E
         MyMpRsSJi3c2wbyZTSbY2/ePFPWECaVpiZ2eJ0v7SJCVR2B5ppBP5J82iOqOyOVLXhp2
         6+P+w3wZOqTIdGj08Eb+3bESwvD0zRB+d63+g3lFg8qgbTx45KIB9y8WFl767hK7EtC1
         h79fm0kasgILH+br7jrmydyP0MrIcIYWl2w66DDVD15KGRbIrMzNGe0fWWhw1pH0UPKl
         yovxJ3Y6T5RZ3KgC/08r6gdmbCi/xPAg9S3cUdFP75nbfEXMWWGTYZGn39XvEXQEYFH0
         DStg==
X-Forwarded-Encrypted: i=1; AJvYcCXFQPXAuoAVD4zF5068QdDlY7PZlwuAtKZiahG4UQJ3ngwW9kEt+l9jstZb/k59Xi5M1t7kobzVj3HD@vger.kernel.org
X-Gm-Message-State: AOJu0YwAzbRNGQZHSDAO1ngVpElfB7UZnc1izspfhPkUOfV6mZqHklQZ
	hWr5KY+0UAMtHDKI5Ormll40peDvp0wICR1WZ7HkXS7cdlNjijWluSjtD0mrmEEYauW+t5DmW/d
	RL4DH4NKShkoZiW/UywSZorUnn2S170Dp7cEXwZanfq/FKrDcBPFemQ5a83PIhstC
X-Gm-Gg: AZuq6aITL0HB5DQ0FUoSCp7RhDyA+55maLSBeQ2AecMaWLaA/Qv3F1/NAilTm2sHSbT
	ImAyOl89MHepIjZvjy+RsGbCxqGCp0MuRT0rKdCGtNPLrk/zlq8L8vvv6IWbOhqsbcaGA8Ou++1
	YL5nW47Sr3I+Xxn1L62h83v35nrqp9r459PQDW1kB3Z8HK+iP7bE02BqtevLgbf2oua7HB+tmJK
	fGXGVZIeKFkvvge1CEqD7zG3qyduONFtdd4s+Duc7NnJZf5jGIkJBaRa6zWiw/lBpaG7fkHgN/m
	uw6hn+wjFhJfjIqFAU8PXb6SmireYR/DjvhuJTl0SFkxEMLXdDk2CrBhawEW0swKNi9muhpLPbP
	EsstWTeNvB1AiZJRKfNk97fyaQbQSjlfYjacdAmdy
X-Received: by 2002:a17:903:41c2:b0:298:639b:a64f with SMTP id d9443c01a7336-2a9516a9e79mr26890385ad.6.1770376866495;
        Fri, 06 Feb 2026 03:21:06 -0800 (PST)
X-Received: by 2002:a17:903:41c2:b0:298:639b:a64f with SMTP id d9443c01a7336-2a9516a9e79mr26890235ad.6.1770376866024;
        Fri, 06 Feb 2026 03:21:06 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c50211sm21675905ad.5.2026.02.06.03.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 03:21:05 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v3 2/2] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Fri,  6 Feb 2026 16:50:53 +0530
Message-Id: <20260206112053.3287756-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
References: <20260206112053.3287756-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3OSBTYWx0ZWRfX1CUQZevjPmMg
 VBlc647d3jKAMMk6ukoyGFHBqAAUG55bF8JL7/c/0fQFf5dmIqF6EQAd8y1Behd93hJODZ0RLd1
 69YTFRsVJ2bpkALqetUZ8sRqd2/NrjAuqfKLL3VYRZLcSuxTxschbRE17qepG+zDnu6Nr0AXan5
 OqT/z41+ETnDvK/d3+mWPPUkM7636ODtCdDYz1NGQdOcmuOzbdWAZhHmTMejgA5Dyl5Td8cIeRq
 G27x+RQO0WXmb+tLvrAnn89VHwUP4aPMhroeTuayQtkF7XhMaH6OFOrHpfFtirNqoBry77Vje7W
 zRYaPB9lbqzc0FpjutuQrHKxBlyRWLJ26z5l9Mys6jygSGNkyuBtBWjtajE4F7LA/yhWr67UaNz
 7j0sklh0GdaOyccZ+ZV0TYB9fHCNOS7F2gCMbtcEoS/x/f0Xnrkmo05N6QCtX5fKj4Nt8+vwld7
 nn+Dem/uWTd3bYacrtA==
X-Proofpoint-ORIG-GUID: tpz6Mp_GWA1AZjiG9KtcdMYp4LXpQQqO
X-Authority-Analysis: v=2.4 cv=NajrFmD4 c=1 sm=1 tr=0 ts=6985cea3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=w5lGHQi5D-TRKhmXJ3sA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: tpz6Mp_GWA1AZjiG9KtcdMYp4LXpQQqO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,7c8000:email,7c4000:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263326-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.990];
	DBL_PROHIBIT(0.00)[0.13.187.160:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BEB45FD291
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


