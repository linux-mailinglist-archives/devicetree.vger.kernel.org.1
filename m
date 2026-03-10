Return-Path: <devicetree+bounces-273327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Yw2CKLHSr2kccwIAu9opvQ
	(envelope-from <devicetree+bounces-273327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:13:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17350247167
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD45331B4754
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1FFC3ED11A;
	Tue, 10 Mar 2026 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gt9FqRRU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NUCtLvHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47F13644BE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130059; cv=none; b=ulmk88DlC4ollJ347BGpyom06JwAxsBLQ8crH3Ktsi3zV06S3VTEIX/yb8bAvGVdzdn8zEcqi5mF+P+QTuA9gutoRPfsk6MYlMywAh6Ety32/xbKynlVSv9UP7SsVqDfV/e4LYeF5meQZ0ypD1x/khddqtNGjDwM+wo6LVnIQ38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130059; c=relaxed/simple;
	bh=/WRo6DTYnhZj2QRCpHK+TJkXMcLRJ6f4fUiA76JshP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gg66L7t8jTkEkPzjl26sCIQGprswzhVWkA33R0X5Fy8OkIqhwNHAY9C+cKNgxkkQjhWPXxVfZmDnpQMNpcRXX17vUn8MNhR2Q2oY8HX3VhMkgt5zxNmGJuijC64xoQSgt1W5vyUfV3hQV16+ryyowT/XvnuNch/fO+np2a1LSj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gt9FqRRU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NUCtLvHW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A7wROS3124648
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SEd+HHr4h6KqnF7zSg6nnkeThUZF8EBgI0BFcLMtQI8=; b=Gt9FqRRUUkcXWWGE
	hazFXpAC+p+clXZbRUQWjQumkcmEyyM+okrU81Xq8gpDNkwSO0tlnPjfE3Ws3HkS
	MCecCQAfuFzEdwc4AIH6Lf0RFxs8B1z0RUerHrrdrvQmD9N7VShXx3IEb3Xvtb85
	rs2y0h2qBKsLMT6Ccz7igaf89nOyEC2aVxzzHKZvkQ1mHFnv0ISaWkRRK/fqeb48
	WeyEJCMKWzmTm37VBbLMdFwrMGTb3IWtRwGu6MPCLQAYcGmdrjb7ZWctvaGs4w2H
	pdDn3WGbhSS7XHoDpyyfd6gw1BiWTvLdyBMlgM6O1rnwxMFtut/G2vgM2aEknfq1
	X1xbpw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctfcj01ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:37 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c0234c1fso10777185a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773130057; x=1773734857; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SEd+HHr4h6KqnF7zSg6nnkeThUZF8EBgI0BFcLMtQI8=;
        b=NUCtLvHWW5KLLA6Seik41fuDnr5y0ux+Ekp5ltQKr6mZ+ShlqwZogcAriIOltM4VCl
         TSGz8wkYBF+2XzYY7Z6l4nGlINkVf1igLeiHvHF5FVxs3mp05AMmxt6oI7qiJFSZIPC2
         INyC6qhtXjJs4PjVYZvUezIm7y4YGyzrE6tFQR+b6+O0+TQywIuEPVP9Jffv7fRHlWfQ
         3SJHmOW/WB0lxD2G/OhjdVqjLBbIgshUX7PxTb1Zhu+HIUapCg7F2vIkOwrWW+1f98QX
         Cwg3QVwiGFbNy3snpUkrB30ukHa9QQhCSElxxsR9WojpnJrz9nM/nDnJfNLnefA87TWG
         byBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773130057; x=1773734857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SEd+HHr4h6KqnF7zSg6nnkeThUZF8EBgI0BFcLMtQI8=;
        b=wKNJPIkP/VhIgQc/dgssDPqtEmvF90Fq6VvKZfEHgHLYquI2mlBHu8CzwWewWxzaaM
         rv5TnSv506NS6vTCUhz/L7ltBgRsZxiuAwfiQIL6DAlJnsxyPcXU/WvNVCNvFP1dTntP
         UVLvSGIXO+HstjrS7TEu1N2yjp6vVIoLCZbNo3H54MWxhGiDJWoxb9fsF8ifXY4FapiD
         HhTHCPSqtSMGggQXk8PEwG56fN4XSRSZ8m/cTA6MF+qev9tLGhbL0VQSKGG1+nqX3JZ4
         YMgUsKeuYJBjZCv18Is422OaexD083IYBx6aRIbC713UYgsjOSHwoEISgpKX7rvKnTUe
         L9BA==
X-Forwarded-Encrypted: i=1; AJvYcCXV4JSDCe/9ejcvOgiOzBft7iJl4Ez6gSKMt8/AkBf3tQBA/3IamNWmBFt1d2PmGSTL+maN2pbnAlfn@vger.kernel.org
X-Gm-Message-State: AOJu0YzY4cRm0ArgxCU3ZQntyjh5uRDHJeEgGw+LFCYdXIeLEyEwlrrv
	Ll0oOypGfdj8KqKjfY90ZH1gardDNAkQJAQcaI3K5/Pc3mFP6RLB9zWFAUd9o/JdH/9Flc7yesI
	yK+m1O5ZWHuYiVmFAjP5CRkyF4wmzYzV+8P6BtKV2ygtV12gjvgbQESRFCTg61S7j
X-Gm-Gg: ATEYQzyhIMbniAflbgGFKqwNuqckdsmOI/5BNsucEkktiwnV61McmDKIJP62zsfaa3i
	cjl0qeo4f87ySNdukbPMjWouO3+dtuOerKD3z2jbz7qfe+BWVxMmztU//muUln18fTJDUOD9lrK
	CywNOArU6cH145+Wh+ytBA/qjzs4pfxywKtIQs+qJ52TXFFRa0PpV4cDSRZkRRdpw0laQ6bvpCY
	gPTvWt/T/lKYDKc6U57nSTl6m4DHk4/VOIX102Qc3y5PO1+sbbTaIK4RUQIk7q9TT/9wG4cBOOb
	7pZIGjJwCwoKd0waI/ZKMJnNeXu30+NW1A2P/ESEO9H3RRGObKQbzgByhALtq0jieXESQzZem3q
	qJJa/JjG5tbal3C3KzfCItfhxqu8XbM5003RUkM5wpeECwMU=
X-Received: by 2002:a17:90b:4c50:b0:340:be44:dd0b with SMTP id 98e67ed59e1d1-359be3b9d00mr12413547a91.34.1773130056489;
        Tue, 10 Mar 2026 01:07:36 -0700 (PDT)
X-Received: by 2002:a17:90b:4c50:b0:340:be44:dd0b with SMTP id 98e67ed59e1d1-359be3b9d00mr12413522a91.34.1773130055963;
        Tue, 10 Mar 2026 01:07:35 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e195c40sm11121969a12.31.2026.03.10.01.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 01:07:35 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:36:32 +0530
Subject: [PATCH v2 06/11] arm64: dts: qcom: kodiak: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom_ice_power_and_clk_vote-v2-6-b9c2a5471d9e@oss.qualcomm.com>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773129997; l=1464;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=/WRo6DTYnhZj2QRCpHK+TJkXMcLRJ6f4fUiA76JshP4=;
 b=e8NOCiLqM8hZd0MIqtImw+zFS7P9C96NDIDVyGZ3C/Z9SIlAr+GERZwd6+IkySZen3sV0sAM3
 V922DYl4WEfDjia3c9tP4bNbhIlfHUi/zOmOkMD11BD0GGtDhsnk2Jg
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=H7fWAuYi c=1 sm=1 tr=0 ts=69afd149 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: EaxV0rFuTUrQIV6JntD5-cWjFwWY6tSO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA2OCBTYWx0ZWRfX1+bcFcfYyyPY
 MBjtoNggnbc64XiEMScE86NXxyPGOY1jKhgxL3By0ODR/y61i98kR615G/4bPgxI/7+ZqbgjTWy
 Mhton5xILttkHdN0ZqWcx+IrlIBVXghzgNda6389MaFSX60GGlu65SQ9jsVtpi4KKUX9b7/uxLk
 nmMtzaB+Y4oPugKAnJOFvjLFYpZLFqp4ceOCmqrMoqwp09pa+iAgiSVnmLtdkgs9bdW4xeVPXJI
 MCi6zwAKmHmT1cPvmYtnmLOiOpX+yEh3AJc33VvzFijBsISwh+wW+MfL/1JTrOPAHshLIaiaIc0
 JHObrSfaZfJGxMq3tsjy7MMIrhrGPzptf7YpMs4MPg8wTW68XWT/eJJebV+LK1mPNbG3/5HVYmm
 7WOdprjqXgsMG+NAMf9bQXFtUiMDYVBu8VAH+bAMj6oKA4nmCw+49rfnx3rBLHCRhXoVoyMUxS0
 37g9IrviDaeB1/2tkAQ==
X-Proofpoint-ORIG-GUID: EaxV0rFuTUrQIV6JntD5-cWjFwWY6tSO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100068
X-Rspamd-Queue-Id: 17350247167
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273327-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1d88000:email,1dc4000:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for its own resources. Before accessing ICE hardware during probe, to
avoid potential unclocked register access issues (when clk_ignore_unused
is not passed on the kernel command line), in addition to the 'core' clock
the 'iface' clock should also be turned on by the driver. This can only be
done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
kodiak.

Fixes: dfd5ee7b34bb7 ("arm64: dts: qcom: sc7280: Add inline crypto engine")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index f478c5e1d2d5..8f2bda7af74c 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -2574,7 +2574,11 @@ ice: crypto@1d88000 {
 			compatible = "qcom,sc7280-inline-crypto-engine",
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x8000>;
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {

-- 
2.34.1


