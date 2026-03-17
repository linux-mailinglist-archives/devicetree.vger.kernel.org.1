Return-Path: <devicetree+bounces-276565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NRyGQYguWmergEAu9opvQ
	(envelope-from <devicetree+bounces-276565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD07E2A6DC6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C67531DDD9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88964391E50;
	Tue, 17 Mar 2026 09:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fgXSH+vy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K5dw+4uL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EDC391511
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739328; cv=none; b=H4nh1+6wQtDF+/C2gL9BqHNLGhvw3l/PGgxSiefkY9OTGfyntRrR+l/J9rBbHUX0xmJ/dyvQWqThhsLSeChAibki0iMSFrsJVCBSaL2KRmSfh1CiuRV9qIW1hzOBL3+GYT20Ddneo8gmODK9Sl8s26B7NNxTsSTKzTqpb2XH150=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739328; c=relaxed/simple;
	bh=gNKhNyU8Oyr/Xdzey4+OBtMdjcQJNeOG7d2xyewrd14=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=os2yPZCZ1jkR4i768tJrpi64QVEHEMcMoJCp7tAEFblgHMAtWqEFKRm8//DhSeIPryJeYvvgtwGLRcQI0w/Peat1wS3HNpC/bJ2qmmIxZlAyqb5qCWzt2gXbfFOMlHqlQAAcsVqqkTb8e+geOFG0yFWfAMFX829BVEjpvGhCGVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fgXSH+vy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K5dw+4uL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7fanv1639183
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	arFztdI06DpQzbYjhOlyWZCRNNwQAGFQwZvfaHEejqM=; b=fgXSH+vyiLZ7lxbr
	avUOoTh4zVC+6whj3zVISxIIQ61H8ZxrP/0CU6pmelZwgIycMNwhhneqNbulVPCY
	3I6uZ9VtDP4Lxja7Zd73gzLZl+KYhWJk4R8qxdd9HgNtHWGRXP6GgpqzE3RFNYFJ
	Z5Dmm1NmvdR/KQE0j/JddrN+dFy1xJwMWfC10DiHe8mIku4VohikFUCCraEhiUwg
	sh5vmbmkI+T6Bv6ct179N19gOLdRZoTCQwjemUNWY3O07ayJw3wGNKEwwiL3TzbJ
	fXNbhoJ28Wjn9oeZkTCpXupCZ8+tYxDKJBhNclTy4YtWJs7YnBm6JLW1zN9DAPKG
	3TS3Vw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxke0bjyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:06 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c0234c1fso6315810a91.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739325; x=1774344125; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=arFztdI06DpQzbYjhOlyWZCRNNwQAGFQwZvfaHEejqM=;
        b=K5dw+4uL9n+36xZJeR0FIbi28ERBJVcic/0ddCTJ1mptfbNFV0FmDwdl/MIx3I+afI
         y/P+471bME9CN0KkDj2gdRuGNzKMC8wmYHLj/kx57QOqn+4YdrtgBXn85p2hmivjerT/
         GCQFVDwMsWlSR4u1rQfSAeGGabStYyt56kMfYWdvGcJ1T5qrKLTVA7O1ynpHtcXLlc47
         ZUmvT6T7WMIJ1R6B55kHQqSN8v3rRgmGolcUx8CTm8/nc4QVZ1GykC8VQdF3mH4Nv/i+
         1/ZGvt2dTKmu1ORGyFys1VDGKoD9jN8wAXvZgN6tMTsowNzVVTPYnrBCieyh6dizHTwu
         JRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739325; x=1774344125;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=arFztdI06DpQzbYjhOlyWZCRNNwQAGFQwZvfaHEejqM=;
        b=jtNREvAgUS5jTuOjBn9HVw3B+lFaKMjYQQJkP0PVeTnPH8QwK1TM/3nwvILYGQHLFs
         1CAFRCQTWimL60V5bvMqE1D8lGzyw0rE4xR5wsiwvHc2PIm6wpRbMR2W2lpC3hBp2t2U
         FQnH5qLjCDDWcQXhEwpn3CMLELmFVVn4AA3eC2bpCuQkMYGJI1D2fCP/FuSG5YA9ACjD
         YvtaRhwqA4dooK4k+dOrScmIRBiQt5p0jMW54icqah5UP4xcLxpSx83nA+8armvqW37D
         NHfyt+v60xrh430hI1ux2iw7rUfOauKsvzpUXx1iyJ+UfXEeoE10H4VvMkSdFLAtTKI1
         hu6g==
X-Forwarded-Encrypted: i=1; AJvYcCV4oVXuB9X6SrgRBl81o6cLoPoogEq2xjj65BpgTB24XEjngZKpYGb1Qw2kbl5fRwOirCfGeaiCY6gY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyp0i9JFfnnV5DF5rkvHP+qvJ2nBbiOCshfV8Gru6oEAEnE157
	ssrvxMOWlZ7F8FEq05P7zWyIR+Zwok5abfdweSAX7S8GB6XoTFyngpqNFjnsV+V6XrL7q4BNs8q
	O9xlW29XWJgPGIML4qW19UURNUtL27SskOGhNPBEp1mCTBhxFLSGgmAK9gpKXjQXh
X-Gm-Gg: ATEYQzyI7zu3YxndvsCVjLP4Nyx7piIPyk0YAXzryjMQcLhky96E2KGcRJ4txAnOsF2
	QIjf3V2xDBY6WePhD2d0dkpaHEfFlCMU6uZKD+IZ5Fe6JuLzsaTG0IEIaMTz76llPJ/gm8vM+Ov
	Y/q6dAmYNpH/zgzs9+QUwHOgLboWvLc/PSSRkbEuvMfa1/muuWUfFuJq6PGk9HlAiZ7OjkmHzF/
	m0T30llc0GDVLXSmCWxdKsaE/+ucr0mw1u6gfZYjIv7zkfRn86OVtinnS5RMyktszK5SUtFPnTU
	9jrxT11YrGDJwFmU96TXLX7xL53ixXEJVgPM9bpZsFmH9niL/KWW9Xt6L7BEW9R8s4w181AANlo
	FGsmD7O35cD288uYDi3bVaUG/sQLyfo8YZ4XSSr7N0DOftkw=
X-Received: by 2002:a17:90b:388c:b0:35b:96bb:47b9 with SMTP id 98e67ed59e1d1-35b96bb49c1mr6229835a91.19.1773739325299;
        Tue, 17 Mar 2026 02:22:05 -0700 (PDT)
X-Received: by 2002:a17:90b:388c:b0:35b:96bb:47b9 with SMTP id 98e67ed59e1d1-35b96bb49c1mr6229815a91.19.1773739324787;
        Tue, 17 Mar 2026 02:22:04 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdaa6sm2331968a91.15.2026.03.17.02.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 02:22:04 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:50:45 +0530
Subject: [PATCH v3 06/12] arm64: dts: qcom: sc7180: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-qcom_ice_power_and_clk_vote-v3-6-53371dbabd6a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739265; l=1411;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=gNKhNyU8Oyr/Xdzey4+OBtMdjcQJNeOG7d2xyewrd14=;
 b=9pKIgvcm//lW2L9A12Tw6qrcqejMTVkaU8/oO5Vfj+itPFa/MdFnXkxkFwzMU1HNV6GK2hYRw
 O29OtC/iUwPBCBQV44esx8o60bTwk9BGdGNxCPN2gIakMx4AboMBR4d
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-ORIG-GUID: MXT_v-jYibEgr40TfISM76btbnoMgK6M
X-Authority-Analysis: v=2.4 cv=aue/yCZV c=1 sm=1 tr=0 ts=69b91d3e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfX96PwehG9EhP5
 oSRXRpom8V7G9cVRlvoafR3EnZVtuNlIsiGIhCdVFjewkgvwYImKbN0DoYv/VtwqJf/vmiZ585e
 aXorZcB2MVjqKKFw5gMyOMYw3Wf+L1EKgTXWryJd5XIGmCnQB+XAuimnCD0LgWRhk6Pl7VeOfcZ
 oAW3kKxwj3rNRJAp/HBy6Wnoeer8/H31amqwNtSg+rTEARd72x3O+y5HMwNwDVXP5agqp9QsG9t
 zVe5rpAoQ3Cyxf/4fqJWXzWnoTe9rUtBlGiSFRy9zXJu5ogTAWBiHDIEeTYVc/IQVQsfJPcOHvH
 QICen+F/RsVg8PnVIhuEZGH9Iz1BIdb9q0NAf+xxo86c+EENWaUBs1sZyDbybYVTSuyD+P4k70U
 6gZQpAGxhvKXuREVjd5gGdOQoy7q3l3thGdEL5/txPXNxLx0FonCOdVxp4UkVJai30ws8fIrm41
 zVo6hjgfM4tKWa6jhHg==
X-Proofpoint-GUID: MXT_v-jYibEgr40TfISM76btbnoMgK6M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276565-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1d90000:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1e40000:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
X-Rspamd-Queue-Id: CD07E2A6DC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for its own resources. Before accessing ICE hardware during probe, to
avoid potential unclocked register access issues (when clk_ignore_unused
is not passed on the kernel command line), in addition to the 'core' clock
the 'iface' clock should also be turned on by the driver. This can only be
done if the UFS_PHY_GDSC power domain is enabled. Specify both the
UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sc7180.

Fixes: 858536d9dc946 ("arm64: dts: qcom: sc7180: Add UFS nodes")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 8d69225a4271..9eaee5dc824c 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1605,7 +1605,11 @@ ice: crypto@1d90000 {
 			compatible = "qcom,sc7180-inline-crypto-engine",
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d90000 0 0x8000>;
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "core",
+				      "iface";
+			power-domains = <&gcc UFS_PHY_GDSC>;
 		};
 
 		ipa: ipa@1e40000 {

-- 
2.34.1


