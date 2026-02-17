Return-Path: <devicetree+bounces-265966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLUpIw38k2n4+AEAu9opvQ
	(envelope-from <devicetree+bounces-265966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:26:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4D7148CC8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 224BF3031F3A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 05:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D0B296BD0;
	Tue, 17 Feb 2026 05:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Idccab01";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WO7M61Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC27829BDB1
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771305946; cv=none; b=P0+/tHbvq/MmKnmxpJEGg6Vu2uF1wqb6fClpXnxT0oiwJchFZPZblLTpz+NnkYpdrxLieqEEj9xDZdC6mpZOLqM2TLAR7jHy1atixrqb8BjEezbkkChgGjKD+PGg7DNAigpE1VrwDd/bc2V4FmPPMuD0AiSlhRsqpejxGzrjnOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771305946; c=relaxed/simple;
	bh=n4OspjWSZagJvM5sUsKFGeAfc/MvM9mYMg22T2KPfuc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bmvnCei0jQuUibyQEvqyf7fI9v8rO/xgv7fzS93V/qWIAUHv/1T28oTiXpncnUWxU9e+opqLvM7XzcyP+JgTPV0iKSLm+0KZwM3dc9s/8G+2stUJS26L11AxM1gFNzfLUv23MCK0GT12DH3/JWv2MqqpvboTclUiNk3huw1maPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Idccab01; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WO7M61Nj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H1lhwZ1441859
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6XSNpW0E5rM
	zc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=; b=Idccab01nJg7M17L357QDeY8kFA
	vHcRVBPYPVkdxCe1asaGFtkac7L8Vjh7APv+MJlbwuEWhTRxo3gHKwmnB03EcOg9
	fo2wn4Zo/bZy4saaQdyizNsJs+N/Widy1KEnZExf205KVLVv+m27mVpVryr+j95V
	KrnEXySLNFGVHLNRcBY1lQLyQ+PiAKHApDnmKeS8NgrICZNyQocjuBeicvO5jci7
	uWDoni5jAIjHxaIrnc38XIGsG575QAUE9kJgFDqYbrNiaGX5L0DIW0xLyYziXK3Q
	Xjyj+fgQK8tjhR32w+pK2Ldicv+SkqTxrfXMWRoNFHtQDh1VjIwaZB35a+Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6a9s9ny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:25:44 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35620e2faf0so3165917a91.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 21:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771305944; x=1771910744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6XSNpW0E5rMzc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=;
        b=WO7M61NjFxiQYFGtiogle+507VzNFLGc2MFIWflL1VQ+yL/mcW3KX0BsdOXpAswb4X
         SEfUM/myuR8dQ9w2gc6iYpLmlaflkbD28PdUhG+Z8uOG/BQsB7akepSuoeMM5xyuGPgo
         HQlXRZEMvmfh4GAhY3v8RU9v91Q12WQo8W/Jh778q4uT+wZ70pa/4VFygbO1FflExFiE
         +osdJNq6P9ROeVzIV96t2ymvDJbyh3NaNrSv5FS7/KpNajPiRvyDwA/xbj+YERjbDOar
         wTnuC8Ip0LDclEaNmRfGty+JqLtuouV9/nSWHQ3fc1bwZHb5VuFG0rriEtXyqQopjm3g
         v7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771305944; x=1771910744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6XSNpW0E5rMzc7aMxxDVhfPGX98lq9GTw7LghKYK+SA=;
        b=wlbZAIJMSCFvx3H2n1KQUu45smXnTu2Xvl6P8w4RwZtTGoTMx0yaE2h94pQk3FKX5Z
         JOp0iAxvbosDjfPc+dgd+x2QwAqmzHX+zk8MEd0w7p9O46uxHRTi6UO3WI4858nsW05/
         xy/n1lCqTLrVCtFiy8f+Ei8Yy9Eb1PpXBo63F5Zu7eQWnh/GMZS8i8Kdf4nYLSi3SS91
         8EdFJiYYPJu7YQ+LRsAPtY8Git0q+xoJHkUaxFApnyt20EiIKeBDuweoBA91gjFVFFXz
         L6uomseoHlgyM9z7iyBo2nrU2YZJqxLuchudL37jk/5BC3hOUv6Ll44Rl/RlxIJxxE6G
         ur4w==
X-Forwarded-Encrypted: i=1; AJvYcCUnAHRC5SPvKDEQE8WDdLkm8eAwWoxXQe0yNRK3MQk1jeOS1EQkVznQSy7rW/DQ62k1OhgMVsW7UpZ9@vger.kernel.org
X-Gm-Message-State: AOJu0YxQPLHFuXAuLLBX60QSGcbMIc1QIf/0W/hO+ZOs64DdryN6UrFS
	61mk0yZyqB9PkXVSww9WgdZgLCtlnBNqw4gcqD6R4B5wMEf0aV2g4Sic7BYNbmUCwgIf6hnm2wF
	R1nLamvK4nOWqKd2mWtLbE7o3om0sOXim9rkcC1UtF13V+U/cvph0UN6ihjjbdvfi
X-Gm-Gg: AZuq6aI5SMl8CCjOLQDobCwujmM2dsditfkvY45Rxv+yhz4dFVYIqnlYJjYhxC1i9/c
	OeFybD7OarLHxIOoG7c5lKo/KcqGSaXa/FhZlaOcakXJ5QHDWt0R8ajR+63GSBGRmPLYY8MxJgf
	ZIQZMwfSNBsJ9YpiuRd4mwHJF2/ZTR/i0oQaFuFLw0WSsLV8W+wp4bP4nVNjpECdUA8TQBYZeG0
	0EB4/Sn66YxSh3cKUsn2sKA7wVmUXR8umT6nm5kr118fAMJTplsVkmYSJ+5BRyp6xHNQURZ+0Cd
	8m5ZDKIkxV8y5NrUHeaw/g1Wh/2qETHgpnaOCc8DtRvsvlUKuLoTYfUHjwAhXXTm8Ro24MIGhLm
	lXyI5bFP/41CQRpzm1H+3Cni1Qr1tklaQQ8Ug/+omyXCXebuT3Tb4
X-Received: by 2002:a17:90b:5648:b0:356:1edc:b31 with SMTP id 98e67ed59e1d1-356aad5f600mr11599599a91.20.1771305943577;
        Mon, 16 Feb 2026 21:25:43 -0800 (PST)
X-Received: by 2002:a17:90b:5648:b0:356:1edc:b31 with SMTP id 98e67ed59e1d1-356aad5f600mr11599569a91.20.1771305943099;
        Mon, 16 Feb 2026 21:25:43 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-356a87f47f1sm6537685a91.8.2026.02.16.21.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 21:25:42 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v4 3/3] arm64: dts: qcom: monaco: enable the inline crypto engine for SDHC
Date: Tue, 17 Feb 2026 10:55:26 +0530
Message-Id: <20260217052526.2335759-4-neeraj.soni@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA0MiBTYWx0ZWRfX514zfbpkI97o
 GaXd4Z8fqZZM48vYgAi5XSzskBeUjHrBl7JYDXU/Ini0Q5ZV25ydPqh7DkIczEjhEZCGXfYpdcO
 Si2xUlf5uvAQ+6q4PjwfYsqICHXbksDQ2oKh86lkBsc19TkyxWo/MFdzAfF4mw2W1gBBzkmA/y0
 03WGATJxI2rnoYAvCpwJQNCr3NZmdKLeBoVulh4HxQP4qdNlZtYJs23OtdJtzZZP6n86WsZDKer
 nGXR/BfLdcs8NQ3X24+r44lT++vsW+uZwtew7lodofpnkE64Iq5J/XPZ8LW0gyRs/rAwUW5MYRa
 okVmdLeY3ESY+dOKuppMHUO+d/pDGcF9ZtWGaa00kwkgIL4KyM1FpK0HCdQhP7cCx9vvaHGCs0a
 vV/9chh2SzackaH1LHOa+3l6wLSZEQperVs3AGeYHjCNc3TPcnFRYZ3EsUkvva5Ottlig0o96RI
 gCrY6tKCgKnBIkf+hwQ==
X-Proofpoint-GUID: 6tWax744iz6KoL4vz749puRxjXLWp4Pr
X-Proofpoint-ORIG-GUID: 6tWax744iz6KoL4vz749puRxjXLWp4Pr
X-Authority-Analysis: v=2.4 cv=TPNIilla c=1 sm=1 tr=0 ts=6993fbd8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=X7TbQ3M2BclZft3SHBIA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_08,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265966-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.135.221.64:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1C4D7148CC8
X-Rspamd-Action: no action

Add an ICE node to monaco SoC description and enable it by adding a
phandle to the SDHC node.
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 816fa2af8a9a..365af78b01ae 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -4202,6 +4202,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			supports-cqe;
 			dma-coherent;
 
+			qcom,ice = <&sdhc_ice>;
+
 			status = "disabled";
 
 			sdhc1_opp_table: opp-table {
@@ -4229,6 +4231,13 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_ice: crypto@87c8000 {
+			compatible = "qcom,qcs8300-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0x0 0x087c8000 0x0 0x18000>;
+			clocks = <&gcc GCC_SDCC1_ICE_CORE_CLK>;
+		};
+
 		usb_1_hsphy: phy@8904000 {
 			compatible = "qcom,qcs8300-usb-hs-phy",
 				     "qcom,usb-snps-hs-7nm-phy";
-- 
2.34.1


