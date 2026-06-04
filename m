Return-Path: <devicetree+bounces-306595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VSt+LaUOIWoA+wAAu9opvQ
	(envelope-from <devicetree+bounces-306595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 07:35:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5214463D07D
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 07:35:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WYNjxrI0;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HJKcdeyG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306595-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306595-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73C1E30465D6
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 05:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057F13C3789;
	Thu,  4 Jun 2026 05:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B018C3BFE33
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 05:27:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780550858; cv=none; b=dUMRk4jx7kCLC6IhIgq3WzpMPKjfisTA4ShXCoxTHdkybdNSkAHyFMWtrocfDqBSl8ryhskH8VatBEszqtaT9tCwO5STUbL+Tqn+1yebhtyAQRF6E68RiC0a0dnfaQc/POLCIZGZYHRVi6j8wRR6t3gVJyGPOvzccxn7tQLADCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780550858; c=relaxed/simple;
	bh=3XPM5GTfEWus5e7nz7aKCY0rPQs4qFX+m9ud6edOuUo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ebzrlt4GEzRw0szTa2IHwKph4mr+pKRE2KPldomJpT2bH904Zc+ff0djQjni098TRmQ3anKgucn3A8EKOLm5Kg5TGYDn/RXteWYGgZOT0iCGF9v6VXX6s5SaowUbDN8hB6MnE4T2Dp8aZIKfboRyXxze6fIv7KtLUVM6ZDxL4b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WYNjxrI0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HJKcdeyG; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653LeiP23240572
	for <devicetree@vger.kernel.org>; Thu, 4 Jun 2026 05:27:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L/xsy2u+YlnkV58dJ2Zzap4FwbISqgE32SWxOXPVdM4=; b=WYNjxrI0Gc+ekDf/
	gdHC6iiEP14XnhLrkytRon7paS7BsuziPxkkjLVG+3k3JWomdDHM+0CJDBit7Sjd
	Uc5sbn3PjpOyyfxX84XmdBvqqlKv2VeXQ+oPPGjaVIe5OpAMlow+vrSVkdrcr+ea
	7VL/MVbl6sxhhme/bATSZpv5lRDXFFSTezxSmvIDJ1FZ6huKjkf/YvpxoXzrgUyZ
	L6KlGbIrfHXVntTpwB4ppwlGWJaht5uGPtamglhkSGlsoYAPuYeRKdSPDxvJGaTd
	hOfF1Vfcn4U+URMycvHAVfXBA1H93H4Uz6FPMgJlfuplUK55U7FvLSCfCbpIVcxi
	JRGG9g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejvd09a8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:27:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-84235f9b91fso244957b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 22:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780550856; x=1781155656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/xsy2u+YlnkV58dJ2Zzap4FwbISqgE32SWxOXPVdM4=;
        b=HJKcdeyGJlXvu5pRKb/OAp5zqmQPVVBSykw+X/0W2nsuwvfz3J/3scBPukjjxxOaCr
         2p9cXHiUNDD9LEABuRvs8P4BgpWaS/m90yW56EflzvHRMtK2fKoDF1CqwSig8nHHUSdi
         Pm6pnbshVvLQqYF+fHHzl9xYTHkF5P65dpjLfZrKI+dC12TTFHepb9tN56Do8UZXVclE
         8RyIQmpcn3y2sRebA0io6EhwwCMCA/dEnJjxYRcafFCpmNMEk8+S8efbdNZCpif7A4rU
         AUgTOkJslkSODsGnuWLIaDOvJIVMVrtLPnk4H7WPbylfKruH+efZ0HvgkbeYFVIQhoNt
         LfZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780550856; x=1781155656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L/xsy2u+YlnkV58dJ2Zzap4FwbISqgE32SWxOXPVdM4=;
        b=fvaU25RGN9hu1dFwaHeK5Nvp/FGABq4FMoRiJ+MvVe0nZibw/0tWDl9zXT9ExmxGN4
         N3xWGQztT//nQohxLbr36TGGYCYCN+OmPAIOdgcd4yvrNIuJ/GhE5R1awUgBPGho1fLg
         hKLG6N9fP9q33oEfYbgaStmBSunkKDK+Pehjf+ubXyqR8AozzR3SMp9yHSgl0Mlo3USW
         5/YYzNnnAtL2MA10zLXp8kWchiah1WtXyI3BgMWtOxrvLNwDAcqkfCEKhnUcF9n1hD3J
         wU1/cUol/MgSCbJkllcosfG3AjsluTtmp+nKVXlu/PmJmYfGsQDRdxeQLCPqCnEyxeMD
         2Zgg==
X-Forwarded-Encrypted: i=1; AFNElJ86leOWIgyERUlVUTiQq9kTPrznHNiiOxNlwKxeuVvCV1YhZgzP65If+L4Z+u+qkps6cghP9utNP848@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwc1WePBF6S5wpGRIggYanOy5WbknPeTmBMrXF3CE3RMrMSJPe
	9L4tAsuAcCrBQNqyD6n2kcFysHHwzayjTAN0gE7ZnxV1jkxb1O2twgAgUoQMe+hnIKcdtHWbmjV
	3B/LXtsoBAj6xxLs1t9rc1lSNjZNV0Cu0nSr7pHb+hrX3cSpSGjxdu4bYL0+d4ua6
X-Gm-Gg: Acq92OFfUDI4N/Gso+8uKYj5Vpy/z3f7HGienSZ+5HkFFcMd7sC8YZkkwGpiB6a9vQK
	cPYaNlMNu5hjXJXtYqbFjYV+pT0QivhZTNaXEOPHiV5UqCZjcjhsvZWwY0opnwIieZiEy7uR9IY
	T0ADkbDEC44PP7SOE1lBWElnaK7xul80I4IJGZhFeV1V4m9D95eSzPyEHsktxGL0wTMTxegxnXX
	Z8o3XiRAwX+8VERP+t1B2Ejzz/057vM5l5KYCXckF/Iz3Q5dLzHaBCflNUZ9Pfow9HPxk+W2wrl
	ubG8r1QV53fhZZEpNWsVLTw2xgtd1whJVJsjgCoDDMZt/3qEJRo18oZKFrzTHfLSpzBpoW/BlBW
	LRnqHr5TpliaT+BEiMkeA8dQf8ir8f1dGjSro5tOCfn0ETVNvTQuEbL3J4oQ70zo=
X-Received: by 2002:a05:6a00:ad09:b0:835:3f51:730e with SMTP id d2e1a72fcca58-84284e6ddb6mr6505536b3a.13.1780550855804;
        Wed, 03 Jun 2026 22:27:35 -0700 (PDT)
X-Received: by 2002:a05:6a00:ad09:b0:835:3f51:730e with SMTP id d2e1a72fcca58-84284e6ddb6mr6505515b3a.13.1780550855371;
        Wed, 03 Jun 2026 22:27:35 -0700 (PDT)
Received: from hu-imrashai-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842820e8e6asm4493678b3a.0.2026.06.03.22.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 22:27:35 -0700 (PDT)
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 10:56:19 +0530
Subject: [PATCH v4 13/13] arm64: dts: qcom: shikra: Add support for
 DISPCC/GPUCC nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-shikra-dispcc-gpucc-v4-13-8204f1029311@oss.qualcomm.com>
References: <20260604-shikra-dispcc-gpucc-v4-0-8204f1029311@oss.qualcomm.com>
In-Reply-To: <20260604-shikra-dispcc-gpucc-v4-0-8204f1029311@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Brian Masney <bmasney@redhat.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Imran Shaik <imran.shaik@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: b1ajiV8u-o5KGSccVMOvraSFKu31w8dq
X-Authority-Analysis: v=2.4 cv=M8h97Sws c=1 sm=1 tr=0 ts=6a210cc8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=KUIDwAxYdJFQKfevFyUA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: b1ajiV8u-o5KGSccVMOvraSFKu31w8dq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDA1MCBTYWx0ZWRfX+XXKmWwCHNwW
 FidIY3iZYzarn4qmka1yiLZICfRLNE0tGXCbj1kw5D3eQliy06B4vvTuPbAWFakext3nISJGwuJ
 KmE6pHzqcln33I2qHg3arUTJBv15lkyhOgDQ/5He7h3GhsXgjFPO9hfx+JGnb6AjyPEVoMFUGW5
 4aVZ7WYVdufc6GVIpin3wjFBZtneoqgHD/syLJYzhNn2LmtDWpcLv/1kT8ZkcE/XaYxww8NYn3w
 LkmgfILaKc8xA3MTxlyfOMWULY3o8tnA80L1S9S1jxo4tvLtncxsuruxkq+0PXdikNV1vEQBVAj
 C4h6tYEgQ0h3YtRhY75yw/ko5XHHhKNO7k/PIe3PWeF5Nd7B8TAQ3d+9zW7VIa7XfBUDeqbQyeL
 6NG38lm4WGub2WJ41xARF6kf5arnoZOCrD4xx/xMgukmXRN8xijGATIVp8FgjUjXdzYO6kj/xFT
 gf76+yGkoz69Vp5PDvw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040050
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306595-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:loic.poulain@oss.qualcomm.com,m:bmasney@redhat.com,m:ajit.pandey@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imran.shaik@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5214463D07D

Add support for Display clock controller and GPU clock controller nodes
on Qualcomm Shikra SoCs.

Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 41 ++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index a4334d99c1f35ee851ca8266ec37d4a200a07ee5..1ccb0f1419aaa34d32f3c3eaabdb8727a497b501 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+#include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
+#include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/clock/qcom,shikra-gcc.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
@@ -640,6 +642,45 @@ &clk_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 			};
 		};
 
+		gpucc: clock-controller@5990000 {
+			compatible = "qcom,shikra-gpucc";
+			reg = <0x0 0x05990000 0x0 0x9000>;
+			clocks = <&gcc GCC_GPU_CFG_AHB_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		dispcc: clock-controller@5f00000 {
+			compatible = "qcom,shikra-dispcc", "qcom,qcm2290-dispcc";
+			reg = <0x0 0x05f00000 0x0 0x20000>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
+				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
+				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <&sleep_clk>;
+			clock-names = "bi_tcxo",
+				      "bi_tcxo_ao",
+				      "gcc_disp_gpll0_clk_src",
+				      "gcc_disp_gpll0_div_clk_src",
+				      "dsi0_phy_pll_out_byteclk",
+				      "dsi0_phy_pll_out_dsiclk",
+				      "dsi1_phy_pll_out_byteclk",
+				      "dsi1_phy_pll_out_dsiclk",
+				      "sleep_clk";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		sram@c11e000 {
 			compatible = "qcom,shikra-imem", "mmio-sram";
 			reg = <0x0 0x0c11e000 0x0 0x1000>;

-- 
2.34.1


