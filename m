Return-Path: <devicetree+bounces-276567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB6DBRkguWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:34:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D692A6DDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A399D320D7BB
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4905339FCA9;
	Tue, 17 Mar 2026 09:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U63Og3Gl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EjQDyWQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6DD39EF3F
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739336; cv=none; b=rKKdOpv/EubjHs2Br8RGc1PjC76cLtYmSwCL4y1WqvZplYXA2Q7ZBICJFAN/M6UzHnfwDGbrmJ25PD/XshtKR8/F6+Szj7xpGuHWpdKAiFuq6D4z/mJSsYGMC3COl7gJxK8UpMFsfZ6ZjSquCz2jcwC9s8KEhwxNkHJdRpc0ITM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739336; c=relaxed/simple;
	bh=zUfKGirFr7TG0U6cUb0RW8kjlwT7PUFFAQGpnGGIbZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ec0FiR2K3ZADhbkq0BFOAaj2x43hPGvsk34xpdMu7WNrvmpeAi34oYjYcbnTWZdw6suEsKN7hRxRt40LLPPJghXu7EPUrqnOrlSWas+crP8q5JDErCmBLelUhvhfalM4s8XxKzeM8/hjUgS5oUnzJkwkofvnzYcefnYFMffoWD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U63Og3Gl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EjQDyWQl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H95dkM3102446
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/6lBKgDxYlBHzWej2pbhNBWHqhnNs9qiOdlqR4udlsM=; b=U63Og3Gl0khFP3dr
	/U6PVywHZet3B4xhgI1Ao1G3qDME3QfMlO2d2CwukPR/CP1AOh2ySdNT0DObpBpp
	FG1C0w8QBFGRX56Nc3yY6+yt+nDJu0b4Mo5LFj7RCVvF0x03IDsbHgz1jhsPr7f5
	t0kAGMxsppGUQmfKDc7lGkVGIg9KbLtS3sga0Hw2DVSvsi8DACMzDFvs2p4v5HaD
	sT2CVaxn/D/cdkoEvsAdOOO3dre3WZPIoS4S6HHuEH/jeoUMoB+cKofILnG5ly1T
	JuSvkI5WNa8XRGx+DT/Da6rr31DjEebdnqSurvLuC923TVw6ZCYkwP7mQbZPfMlK
	CzT+ug==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb7b4j2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:14 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35b901d542bso20425571a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739334; x=1774344134; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/6lBKgDxYlBHzWej2pbhNBWHqhnNs9qiOdlqR4udlsM=;
        b=EjQDyWQl7ISxME+dS46slOhY3McPNNXx9Azd7N2ZsxSk4c/+jVOX/CmCuI7vpiwxKU
         2pHyz2kCEbIRMQU9EjdYGkt7jM78TZDO3rkxDSLDJEPfwlS5kk/PTk+aiwfpfUS/bgxY
         HLNV/fo5jnlPmCXsJgPxImpntWpmwNCrtuuAOsO4FJcyWfDpJPw/8vtsI8eTdbfpAfKT
         uxQVP58uamCcXi6UW76lIKj5lbTx7mLOKaonvKYbJqDAcDelyj3ivqhfaokJjzRuU/el
         dyOI+gKyXFd1bXYChPKBNL0U8d/tWPAWHVWV/ahCmHZPcUVrHmQMIfZ7DuQ0nhscd6Ip
         m4kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739334; x=1774344134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/6lBKgDxYlBHzWej2pbhNBWHqhnNs9qiOdlqR4udlsM=;
        b=rKkH3UnVTpv/8yz3y6lu4hPMI40yWReQkhcSTlVFAi6xaPHGH95Azq6gDjwLnzGRUW
         EPnY9uT9ECDGrXCSRET6pdbtU2umE3ZH72uPZL7CaX7qYzFPWz/C1+X3mUmqmscRPeyh
         RFmhdqUAZlEi/gnOYLzDfHN3tgqDpQAWUKlBQBrScHKHpmBefvReDsgBeCoUpSQXgzhF
         /SI9kuku59KC/jtxjFOM+JH+68Gh9cG8sgG7PKd62daV28nGzB9eHiwmhkUuKbFPoHPz
         GubM5NucsO4VxneCWeK00rQ9Eib22it1Fw30CjcncFSMHwT3895DBe0TUDhGAWMtmw8F
         e/kg==
X-Forwarded-Encrypted: i=1; AJvYcCWkY9w6qnWUrKD4JQ2aV99v4A/koeWt/HDcI2tAgozAgonH+nj//nVDVRcIKTmsrm4I6t5e7HWF8IVi@vger.kernel.org
X-Gm-Message-State: AOJu0YwROo8J/0QL14VA1nPubZhf57pREYRT2T9z34Cz7zt/IV9L7mX9
	MKZC9CWsBg4n2jyBCdcDhtEcG8I5PxWA7QEafBILOEl4UJ6oAzpnJ2l7AqVT5BOb++P488J9ZIv
	jwrt8+qLOrEApyoIHLnafHTXOo7QI3nFXf5v6vWRQpJA+rYb7JUnIvkdvkucUscoT
X-Gm-Gg: ATEYQzzpVO+ztw7m8IxCnQ52OvCNG8IK/U5xdOKlNkeL6pL9myYdmEuMoBDJAMcK7Zp
	4lU1GI7yTv+7GyhAq9MBLYJiyhdLWFX1saApDybGOtoZuTTTD4e7cISznz5PAr5dyoCGyxo8/1L
	3Cb9UBXgAzae+CMo4oQW4yLyQB1Kqcn0joiYU0a6Ms2ddXC+igjWQiD/f/b0Rta1Wv2fnNh6Jlt
	nbj07ZrQZ4BVrpZgmxnCOxg+rLAvJfblwPXEC3wVjKQSTAcTpwdHu0EJ7hsISdPfaGWCtvOBDJm
	GqYUCV9RDA/eT/GbZYDW0sN9VHnvompIJyTmbvMuqnVpv57w+NmW+bqe9egGCXnpUFFHZ4DI8Gz
	UfYjI0i6uoMQFVDcyRmtCjeVUhy0m+QGlqQhdCgTFaWwYufI=
X-Received: by 2002:a17:90b:2885:b0:35b:9b77:d7c with SMTP id 98e67ed59e1d1-35b9b771ab8mr6839250a91.14.1773739333719;
        Tue, 17 Mar 2026 02:22:13 -0700 (PDT)
X-Received: by 2002:a17:90b:2885:b0:35b:9b77:d7c with SMTP id 98e67ed59e1d1-35b9b771ab8mr6839236a91.14.1773739333291;
        Tue, 17 Mar 2026 02:22:13 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdaa6sm2331968a91.15.2026.03.17.02.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 02:22:12 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:50:46 +0530
Subject: [PATCH v3 07/12] arm64: dts: qcom: kodiak: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-qcom_ice_power_and_clk_vote-v3-7-53371dbabd6a@oss.qualcomm.com>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
In-Reply-To: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
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
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>,
        Harshal Dev <harshal.dev@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739265; l=1452;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=zUfKGirFr7TG0U6cUb0RW8kjlwT7PUFFAQGpnGGIbZg=;
 b=a4Xrxp7svox3j68gZ8iMgDE0wafE/EN/A4Y4REKcjmI9XTvfAAYBSDZavKD5clFCNbBZR2tjF
 UC4/2a5keA6D5ArDP6r217QHRLfk3EG14Pa2bldvz30ZyTVCDpLNL1Z
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfX1ou2/MJtWHQH
 bCDoLbHO8J0zshmrT2Hi+fXG1vO0WqeYCLpagNnuGxdKXoxTGgw8byN+caLT9vwyjYIKmLNZaEQ
 GEiLKBeWPU5TB5nQcPMIrWOBJnsKAjLPbd8kXwmIT3z1C1GJPLv1bvaaQ4YxQVK6LATfj9ER+Fd
 MUVWCpC4jwHrwZekhBHNYHh5rEi8w5ovHoVpjBWOnujxMPo6oYflInXT1YMF42AHQzYmmOgXP1c
 344/FmyK/q1A/8tm8dH9DkefAKre2fLw87wx9euyvA6NESyDWlYw+8qCE7QpvuIUer5/1Fbi7Ab
 vWQgPh1cIe0FQac3y13YjetcTwXJxwhYgX2q4ssNXf0DVbBzlsPtEI2QfxXrfvUhJwwS9GROeCT
 t/gj5rmTmpC1fHGkSWYvo8uRQxQaamt0CO7JrwTT9kEhO762WsrltPRCJ9Tyj3UvwSD2P2uP15i
 tWdHCUAhQIzGsw+rKwQ==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b91d46 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: ZZTQ30TE4MTKFd0EVO_X1ca4GfDBFwFh
X-Proofpoint-GUID: ZZTQ30TE4MTKFd0EVO_X1ca4GfDBFwFh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276567-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1dc4000:email,1d88000:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: A1D692A6DDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 149954a3eb7c..9765bf361db4 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -2579,7 +2579,11 @@ ice: crypto@1d88000 {
 			compatible = "qcom,sc7280-inline-crypto-engine",
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x8000>;
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "core",
+				      "iface";
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {

-- 
2.34.1


