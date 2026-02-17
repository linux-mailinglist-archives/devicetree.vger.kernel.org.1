Return-Path: <devicetree+bounces-265965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J8qFfr7k2n4+AEAu9opvQ
	(envelope-from <devicetree+bounces-265965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:26:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C40148CB2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 166CB302D94F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 05:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0604328C87C;
	Tue, 17 Feb 2026 05:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EJ/YsHSH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A1yxBOPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AFC299A8F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305942; cv=none; b=mAxKAWKZOlX8C4eJOFB8mvi9MuZQivscFQ5vTmX1ZZtfpm/3n2+cLrsZhZh4f4QvJRBn/NJ9h8VWf94vFNFXWSScVoqg6dyoJptIuc+er8eOdwRyJHCEbH3XvB/eb9HSQc+lo1X2n8GhWkeZGh9r+1IOMSrqReOM2UAN1kGNcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305942; c=relaxed/simple;
	bh=8ebMs7i13WqPF0zC4w+oVAIdgnjTx2rCxck2UIJoxuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=skbU1Hg52QvJz8XkgLt5NukQs68ve5rp1nRHnLm9wyoLFVfftHeDZ2p+Uc8YjlJ/R0hwBuJnRSOAXsod/8VI63ZdDFKJcoVIMm9rbQxgoo6zpTJ2RcrbS2Ym+LtK8yCaeStjT/1u8sm4Fy9vBVtyRcxFVwvaout4wvC5CCeYKRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EJ/YsHSH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A1yxBOPi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GGUDDT1601139
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=prNokE296Cy
	f7UgIGcapomuvXdqfCedaVm3IT2o8IjI=; b=EJ/YsHSHpkZ0c0FOmJlPVWDIQFf
	LJvBzW7eEv48Ba3mD5rQ63ndipmShdjClfZ8NwiwEQzbqMWcWwMXBi11Gh7hjseu
	IsLxCm1z1G9Q48LqimN7jfWl77Cpkc2mgyUOsJ0/RQx3jThyshDnIlfBgff21zLD
	wDVhGD+YSEUnaTXKTAkGu4lL0THeSnG8Tij4QxUhZLLAXhd2eqO5FB7+z8LQjFn5
	7X4AsWflv5C6DT0M0jPLqavsewLwvNqiylxetTvKufWBUUcTcbPvjBqzgth/wpwv
	awqOUHnuU+PuWkPCmachjYfllAGkP2YZRIGE0cIKgw0Rk62noEQnPfdMCFA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tm96f0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:40 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35842aa350fso11490949a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771305940; x=1771910740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=A1yxBOPi4QPt6E3ph77Tm3nwwz5qk1GAOC1WNM7xUNTvZKbtkEXKa0HP0/EWMGzM4n
         PBC1VLyVYcbbiqYuvNYSUs1MLooZ6dx/cIoXA42MQS/JF5ErC6AgRMH5fi3fp52kw5Gv
         ujPH2TRki4sn4eClUXVLZPUgP7GZCxyBRZ/X8J2BnWbxOuPAnGTE3Hnmdgb1X7acQMdo
         RguvYv9BZV5gdZJp8hOZTeCVY8VUOoVNapBA3CjPYgGPLO6UMc9z0UgwFZWEaLlwLqsf
         HehFPdZBxcCdue4zUBVa2Y4k/pTH6sJ+yOSLFHt9NoWN/AOCDCL/o1/BFXpqfNS7zYMT
         XHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771305940; x=1771910740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=prNokE296Cyf7UgIGcapomuvXdqfCedaVm3IT2o8IjI=;
        b=O/limOTbwLGTUAuVJ8tIxVgMQeHDjXBMUlM7PsMmt+oAiQdX9IPDAUimW6QJSvQBWR
         JFvV9Xr0oECc6e4u7pLaC5/XkkBN4cmVIrbSK8msxc2Bkxd0HVk7ZtElzLzvx8PpURhH
         /OQcdus+unfRhv9Lkez+3cR34R5+sJ8Oq69HtIk1cM6B0V+mG/TysLqkbzaLu6gbUnks
         +xumxM1g7yDBvzQ4+PMn6l5dDx8AfANbl5teU6jL1iBcKekf4NzfVZXvPtPqz9vzMt5c
         hpAwqS2D1MpyqUJ9TKP5olWGixhexa8O6ZtxLwyDvE8VMQkNR7SjxHrUxz4AveaYlsKE
         oe4g==
X-Forwarded-Encrypted: i=1; AJvYcCVzn8/L/J9LS/Y3TFWf49Eh5hRre4lMp2YWbFe1TjPqs+VYVstYE+89mhf/QPy0WubL/KT3ir+dTbjX@vger.kernel.org
X-Gm-Message-State: AOJu0YzA9Q8ujnjkND28D9PSMrlYcQQPT8skiVW1kzPkO25x2++pcvCv
	dPCFr3+LwPi4oySLH4t4vYdSfKI96g42cWJhVjWfdUpvaI/HZ5QYD+DEy91Ibp2JObxSYbRHMjU
	VQIYP08074tOU1MwneIA3Fmd6TnZdmZ7sO/6x2W9Rwz4LM6fYbgdoAgOhlJHHlRsv
X-Gm-Gg: AZuq6aIQTABqMor8Nc8fNdg+iY9e4Rch7qxul9YuLTMGlFpbHjnsjXadFh/h8mTvSxk
	aCK+SWgJQMVQzH2NObku2/5dXNg69BKjVpwJ4P5soZgghdYh34Zd6P8srZAjXA4RcpYR492DTzv
	/zdSQouQo/Xn9Z6cVLMSiDRvBvcU4bB6FHjS/VWMkv43ey4KZtrF6ZAjkk37V9jDVXx7ZGFrgok
	SoUzelNFgytuTtiyNPSt9plcR1d4DGatpkikH47CB9vjUOuE/Ixgb4IouEAgj+PVnl2mV2NVIHb
	ItitwO42E7XWCf64RmVSMIYNdIE1XQYyq5qD3aVJfGjHRxnHBzAJuAbuGcBK/5V5o+Vg5QnXo1n
	YkNDvEJmHcmxHJ9X3glATPxH9W8LhppJCF20aeKa/YXYAVkrJvTRk
X-Received: by 2002:a17:90b:5384:b0:356:268e:ffa7 with SMTP id 98e67ed59e1d1-356a7660a64mr11950296a91.7.1771305939979;
        Mon, 16 Feb 2026 21:25:39 -0800 (PST)
X-Received: by 2002:a17:90b:5384:b0:356:268e:ffa7 with SMTP id 98e67ed59e1d1-356a7660a64mr11950282a91.7.1771305939552;
        Mon, 16 Feb 2026 21:25:39 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-356a87f47f1sm6537685a91.8.2026.02.16.21.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 21:25:39 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v4 2/3] arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
Date: Tue, 17 Feb 2026 10:55:25 +0530
Message-Id: <20260217052526.2335759-3-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tksqUvQJPhPm8xjXgViQ3IauGDus621s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA0MiBTYWx0ZWRfXzidr5VTZBLBF
 8FE7IP99VIAiDMf6e68rWKqentQ/3SBdTH6DyqziKl3kGF57kjZRLeBi121sRBVpATXC2vNvH1o
 3lU+hkb5IrPsBTV34CPyyJOSmi/cdwU+3rM4fkFb4I6Kua0Z940lMaZWccNesLbR+dUol6m1MVU
 hyC1BYxkZmB/QH7CTb3aaZx7y/Q/c7n8o1rg/4s5DI/spJPDrmYV08hkyFwoV5rhzuyTmoavkyp
 8FRUtppF1vrK+lggeV0/nQTf1WhBDtm4emsmnjngep6dlKK98Ic0xDn83GFF5eKbrarPbSKKUhy
 1Zr6MT4nNIUwzlbaQcrZEAkw+YYG0by7HdcgbcyGKwcadlwjhyP2pbTBQkl2EnEaDPbg0eofLPi
 QQJKHYWK3mBQP66o/m8JbH4+TZSdzv1mHVcstvwcx3WjLFK8ajjAIjo6HLVX1WIRfMfiXg2DUmP
 aNPiaaSMfjnZ1dhdq6Q==
X-Proofpoint-ORIG-GUID: tksqUvQJPhPm8xjXgViQ3IauGDus621s
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=6993fbd4 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=w5lGHQi5D-TRKhmXJ3sA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_08,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265965-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[7c8000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,7c4000:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	DBL_PROHIBIT(0.00)[0.13.187.160:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 09C40148CB2
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


