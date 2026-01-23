Return-Path: <devicetree+bounces-258746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MbWGcEgc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:18:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7F71994
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4F0930C93E9
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9CB37416D;
	Fri, 23 Jan 2026 07:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gpIvgKb1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CsBRSL1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B2A36EAB3
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152408; cv=none; b=arApOQ5Ejm8pN6IFTT8B3Nl1Ms8R0UuA3zc0SyAfXcmTaiCXk/0NTUBqx5Z2ek3fbBH5Z2gkQfe56nMXjE0iOjHQA7sR4WpKmqyKvnYjcjbZ6gDWIH1/EMo0xn038oww/srjLRRYvWp2AbY7B/kvZvvr0ZkC8OAXk8CZUnGrhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152408; c=relaxed/simple;
	bh=8WPoiz6WeS7Iq/0SPTznPnFxvdhJ8gZ92GNK+mUE5jA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uYWdASggcusMDfjvzUYRIOX8rkzFxCP6UukdYjykHONN1HCn9DCc71p3jNBkXgzFRWgFHSa1eGpeT8qH+XNFjsYez1eXM7ogT8XDPHZr7AajFa8w/tNGHprc9OS+f6JvGeV7pmKGrVDiWjo0LUX6DccAkFzHNyt3SiI0+2n/OEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gpIvgKb1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CsBRSL1l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N6PB9x3677838
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+xifkoJxQcri5ptYGaeWZE8T0abAKKbAYRbss+Z8+Xw=; b=gpIvgKb1IlpgNzNp
	AAMiELRKBat6Kmm9O4+9zmqjQZMDWwCPIENA2SeRc/x/tmxTDNU1z08qghcZaJu8
	evprRDCS6EeyzcS0MFbXn5gT8vAzpgvrVnqqyjNoOSna7hQlFGtGITHSU9r60yVE
	RuPRKBzM8JrmDYQlAdJX1VSBQw+GQmOiXewzFecG90vEmUmQZWHkGqp+7kgOmhHt
	cgk6q1r2LrJ/YiAv/ZAI/GN5S8dCimYJzp15IU2ijVMFAJ7IA5VqzvgPLge8cOqI
	aqwi38DTHcwfMzLx/NkgOQMmq897GvFy7Z+CBcFvbX/Z5MgN8CkZIx+oOYG6DO8R
	JL3Q2g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buqyp2eqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:13:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7a98ba326so19983515ad.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152399; x=1769757199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+xifkoJxQcri5ptYGaeWZE8T0abAKKbAYRbss+Z8+Xw=;
        b=CsBRSL1ljdPHo6i2JJZVlWeXeBDB+r5CNiJY7JoV5aWKN+vTaCg+eg5OgJEKG3kXqH
         ++LbLnwbUTRrEYapFWJuCiDJSEPeU3lAy/RsNej4Q/hlaflTEPOMsZCR76JphhXZm/oo
         TITavQXxaIR6Kp5um8nTDDjCJWxJgoshp0m1QGCM5ChSqXf3/ElTdiGfHAHTMRYwl6RT
         nSi+qMh8FJyl2UY3MjsmLHbSUQLoU8YVaH9Ed7gSq5HZ65axkBtDgrfn4cPKWX4xXrQj
         vBpuGS5+jNg2QKmtZAgoGwVQqp4xSW3YRLt2y5RkzVwe34q0Jisl4jR02wauZYhK0a1O
         WTeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152399; x=1769757199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+xifkoJxQcri5ptYGaeWZE8T0abAKKbAYRbss+Z8+Xw=;
        b=DlJMwgDwH6UhXw21eq8W1ZtxUlSbc78zUWDye+izePAtnnRUuAg6sH4ZPloSZMRMzG
         wh3gblq5yAxz73jzPn9u63/L/Bz031InM/WTH7uP/eug6I/OUrCmaZtamBO2eT56i/4Y
         t2acZ6lipdxdTzpLslIhGjf+sqPePQcYSRzSuy6QIwgrOc7hhg2PRmh/Kc+dn9ADb2Wg
         ZOpov63AlvUBB+LMgIvV/G2ygLVxyN1ekbByFFKzz6afv3AX9yd4rgFwJ/3bWifkM2vo
         dOWp2QRC6yVRLwogiulMnreOMSyDAFjofBEcWZakcf+sFeOwx0BI6FzNGSNGKvdTM5tT
         9xLw==
X-Forwarded-Encrypted: i=1; AJvYcCV+ff0+CJPPJw/XohDozEc8zUIw3HvyKWSooi0BqChU37oKpZqwDOo26G8k7HEdHVYVoOnpd8Ri2QB9@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz/l5PTV1VBj7FQ/uhpR7rkKet2lCWmx6RCurCQRUMJzRjJMvF
	xfnRYxFT3+N/hWNKWq/sUiY0wTsM3/I4SHlZ1fP2b4A1P+n6yvcxWl9AV7PAdtHOjR290dfyH8g
	idjGJToIbkJYY4Xm7rsX/2R6QrSZ1JxdM8f6u5Cr4UppSEy6KpxxvT3gdFS3WRzgUW9S526N7
X-Gm-Gg: AZuq6aKS3+8Ft7Mb3Dt2osNfCn9BauQF8ENPs2zRmGQbbSshsPR+GCMEBK0/xVC8nXQ
	KXQ8u9B0RhRPUxcN5mpoqvUNK1+el6HMXGREpgyKBHk+ye0emfo+0MrNrIL3QnNWlXGW64oRq4/
	NspRrksBnLI+DLhKRAkawgGFTKJ9dCX6UsHT3jvp34v+NYvh2srC/YM+Z1zVcEbTgZbTxStDAfu
	JwUBfE+DjeM3LbKAgvMLzsHNutDlTKHx2BTMM/5wtesvBrFrEERQW8qCyTZjF7jtKkCATHQOZq7
	iWycM9VoiitkqyOwadsRRn72KY6GA5NktN7lvM4im3F0FMhF5UMFOi1ZwSZy5h9VubOwAh8s48D
	y+RFVUyS79okdNtUfhB8i6DJHBDiYe8+fo+E=
X-Received: by 2002:a17:902:d585:b0:2a7:9e34:f463 with SMTP id d9443c01a7336-2a7d2f180d9mr57846945ad.11.1769152398717;
        Thu, 22 Jan 2026 23:13:18 -0800 (PST)
X-Received: by 2002:a17:902:d585:b0:2a7:9e34:f463 with SMTP id d9443c01a7336-2a7d2f180d9mr57846745ad.11.1769152398234;
        Thu, 22 Jan 2026 23:13:18 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978b8sm10979795ad.46.2026.01.22.23.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:13:17 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 12:41:32 +0530
Subject: [PATCH 08/11] arm64: dts: qcom: sm8550: Add power-domain and iface
 clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-qcom_ice_power_and_clk_vote-v1-8-e9059776f85c@qti.qualcomm.com>
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
In-Reply-To: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152357; l=1165;
 i=hdev@qti.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=8WPoiz6WeS7Iq/0SPTznPnFxvdhJ8gZ92GNK+mUE5jA=;
 b=kCxf9LcPx1MyPM979mLfZ/jYDtGX/zqFe46nnMLwEXEsqsKVMzY/owKrkPnsn/Igy4ya/UG1e
 qdimX/quk8qDQu0432Rt6Ew37f6EyJTpous3eggYWaz/cjuh9Yav6YI
X-Developer-Key: i=hdev@qti.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=RMy+3oi+ c=1 sm=1 tr=0 ts=69731f8f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=n08Rq-YSkjsL-2sbs4UA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: Z2ydwr_29m0XfstgBZWI40X6drgwpUKL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfXxENEc3Qy0aGT
 9JtXmvVLyEzykIuU0JtXASwFILXGZVwGVv3/e2W860SJ5XV44Y1bO8s5hQYe6KZVxuXOQquXh+A
 M5Fd3A1AMvpmIRM/6w+9N4pfLbpn1GjFOdwC9juDNGBQAdM7VpxkWDVGgMsEor1tVj/cqypYXC7
 m72NBXPMjSEs/sXwOOiTQZvsrH+nMeZ1dBN+mO/8vqrdrkFEyKPUt3pHaTFMSTnNVsUaMG/HeD4
 +qhBd3BF2lvU3sDpTviBm5hiaMa1W17OOwEJmceZw7HFkscR82XapkcKwJMOLnokpWt67sWeFHj
 pDQO85WB3BrIR3kuiY1krOWuZ4wzUNYZNpy+EGY0WybT7CmtnrHMb7si/4jcLUhc6yZR8pBFmCY
 s8omtXGClDcYQfZoSPRU0uXw+y0TBTJZwL4tJ/HIg/UT/6/4KO++LPISum9WtCmIHZCauRxq1Yr
 6A+PiNsYbxCmj3gUyQA==
X-Proofpoint-GUID: Z2ydwr_29m0XfstgBZWI40X6drgwpUKL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258746-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,qti.qualcomm.com:mid,1f40000:email,oss.qualcomm.com:dkim,1d88000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BAF7F71994
X-Rspamd-Action: no action

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for it's own resources. Before accessing ICE hardware, the 'core' and
'iface' clocks must be turned on by the driver. This can only be done if
the UFS_PHY_GDSC power domain is enabled. Specify both the UFS_PHY_GDSC
power domain and 'core' and 'iface' clocks in the ICE node for sm8550.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index e3f93f4f412d..b6c8c76429ba 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2449,7 +2449,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc UFS_PHY_GDSC>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {

-- 
2.34.1


