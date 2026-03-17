Return-Path: <devicetree+bounces-276569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DseMZYguWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:36:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CA03A2A6E97
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6CD3430CC787
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FB73A1A2D;
	Tue, 17 Mar 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fwJ1WhY2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bMgAF7aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DDE3559CF
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739353; cv=none; b=jk5K5AnXFaoN93JfMR7A6L+2qgeMLqbaMiMK89kpO3QYZLI5DBR1xhkbHFbKc387f6yQcfWxJdPojQoCv4DOwV6cxPwizwwkzIXBg3rpuvd7yMmDa2ienOyfU0ELvyTvUWMWY8zJYQwa6CTcVZ7Kq7Jv6kg/hnq+ZsavJ0GQRgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739353; c=relaxed/simple;
	bh=jNnS6vGH+4xi0XIVQONh6OWH1bIBeXmAWadZ36T98CA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0hO72ZcB4dSkfQClK22SBeGHlOWQrSTg9B9kvzwM6eYWmHFITmFmACySkQNnjR0ePIG5HWxJS0VnuIpSnso59UPzGifSIP0VhHNTMffJpaKd7ziDDG/6J+TNrZJJeVqxDMg/0YzqurFpiixRibH2dRWZ19FN5EUhxJx/gTeHO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fwJ1WhY2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bMgAF7aT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H66Pio1621383
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UQ+QjOHQmyJW0MDla5KzS+DLHnL+9knlYFjtShy+6P4=; b=fwJ1WhY2wbwJ1LzF
	gZ6k//13FDlX2U8X7N2L8n2YpGdyLybKfXvZTD7GXvFHCZXwrZuNR8R8yn2v3P6J
	u3eOYEwn5dLzMjGbgWt3VlFR2Nkopdo0V/9DqC2KESNEMgk1RxMLmmJ7cSKvClWp
	ijb6YYMVuTJ0iGaK8SHxlsUz/aWDD/0biAga9iykW9cAh1DG8Kf7R/nRHrQADrqi
	FfxYsTeG13u8lBXLyz4jCufA+8LGGUM0PCrYUu2IapuGmTietOyCrlCdmK/Ga5uY
	B8xSxu5Sy+I3OP9bJyVf+6voPn6vkHMP8iveJ7bn9TOkFsQq+jCri7uCOrWbdciJ
	SpQAuQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxhyekwkb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:22:31 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35b901d542bso20427056a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739350; x=1774344150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQ+QjOHQmyJW0MDla5KzS+DLHnL+9knlYFjtShy+6P4=;
        b=bMgAF7aTj84tPbsnucbrFzimt0MGJru7+hcqhw5UztP2XGLcI2IQkNAzjxRQP/uZlm
         NvTBroXG3MIi8KYUAOelUPPWNl3wsVUZyaEN1qh0qoNBkd/FFbtxouBgmAUbipjWhbiN
         Y5ZU0vL8oj3c5a1lCfwcGf3H9F95yNWhTRKJ7Sra6YELUB+m7JV+t6qcTlJvKK5RSv3S
         nNjQal9WEvTl4r5x7Kx1uNK5ZfwE/eP/b5KOqnIwxADG5lhG+FmReNxku2oE0IYQ6Sps
         Pxqr8Nt+aeTBfN3fQiBpwM/Jp+5d51UDw/8RGqnu/ilFTMdltG5QFY/trGoBlwoeOpe+
         v0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739350; x=1774344150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UQ+QjOHQmyJW0MDla5KzS+DLHnL+9knlYFjtShy+6P4=;
        b=GRXzST52W8uQ0nQkgqtllNS0nWwEEPion0BgwQr0v+da9wpTmQAneWntMSRTeHp1Cn
         jYSrHUVPOnYMQMjbyLeDz/+oWHKVtSLsv3jaYxYRwTuURkb4l6eBIxNM8kfkWrwM5afs
         RyuYERJdHsAoucajhMixOEz5UyqrLJ0I2mfaesNwDSTbLaPPRtC1pYcS3yk3p6Y9Y39K
         cZ8U5y/g/rjnNo12B+UA0NPnGPAwzQE+U8leeXQJUE/4Zq4x+WWM6qafTcz2C8dyfoIy
         Zld48I2IGdHtr8z19Wn+yG+kNgsYFygTJOEPofl/uRg/She/nBC5no5ghu3wpL13ufs1
         PMVw==
X-Forwarded-Encrypted: i=1; AJvYcCW5DxFouy23n1BbBp6SMlPThl/7DpIGve53ZJtZbQNEeUpdvoie3WzicGxz0TEM6ocVi3ZehF9RH1mM@vger.kernel.org
X-Gm-Message-State: AOJu0YwnejcBuhfB/+UkglXQdxx2mZNt9oKgpOnuw7fCbVAyNFmYSv5E
	4TfLPsR8LrsVj5oykGsJlNEB4YQIwWfhY5VXRK/VVYwHrOgbXXe1BS6+caL8bBXwDy0LuTVY/Pg
	mZ4zlh1GICLxjEdcZMhjHw+YdaNPsa1vG9WShMYVn7F5YXRB3hwr0fNdLQNHrupVC
X-Gm-Gg: ATEYQzyF3adKfqG61noHR2AUwR6QSk+uLWJYc/2Uj8m76/nBQ/oTs+hxQD7gAwKyQSV
	H44/GIzM2x2wekVxzPHUXuy/0+9b7l3+Y+ta1T2jskV3N39TrLsutW0g81COBv9Hhg+BPeXMKfD
	7E0sc0oQZ6KWa7RAQzk3oqo9qALxyXemXjdk8Z7B/pM5Ob60C5q8dqtPd6EwvyuCXOJ+U/kkGRv
	YcTvkn7wIbGRkKJUp8DDbbn3VLb+wCYUKqKs9IXvefMXRoOoDWyfxHkP2s9AWlq3eiCvvEILKJ6
	VFQQl9wHC2eNF1P0FEfMRU7jJDAzloZCfkpsmAmPxOcocXJBJzm4vHOVPUV42xgp/WoN742R0Ax
	gcoKmyJnFxQM1Y6Qm5Tob1lU+LoJdHrr9eUqoHYLG3FgfoDs=
X-Received: by 2002:a17:90b:5292:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-35a21fdd40cmr13749989a91.20.1773739350506;
        Tue, 17 Mar 2026 02:22:30 -0700 (PDT)
X-Received: by 2002:a17:90b:5292:b0:34c:fe57:2793 with SMTP id 98e67ed59e1d1-35a21fdd40cmr13749969a91.20.1773739350086;
        Tue, 17 Mar 2026 02:22:30 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdaa6sm2331968a91.15.2026.03.17.02.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 02:22:29 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:50:48 +0530
Subject: [PATCH v3 09/12] arm64: dts: qcom: sm8550: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-qcom_ice_power_and_clk_vote-v3-9-53371dbabd6a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739265; l=1391;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=jNnS6vGH+4xi0XIVQONh6OWH1bIBeXmAWadZ36T98CA=;
 b=vbNo5npV05uEkkrqWTggqoxF8bz7B5m5CsrowYg9qOdDLAE560Z/12CZZAz8+WrSotUThYCbR
 9yQrRYwteMuB+oVbxVzk0Z9CRwWO3hSPjP/Ux83tT3zpUYU3A77bDyE
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-GUID: 5AO7XZDr19TPpQUB8MTxONYvcs3jBp2M
X-Proofpoint-ORIG-GUID: 5AO7XZDr19TPpQUB8MTxONYvcs3jBp2M
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69b91d57 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfX1VSxy/cboy12
 D5XwUHUu6nu/rAm1Sbx9S6o8452k9WfTCc6oZ7025f6qXybFyIqlpB4ipBN278hL984f2kQcW5E
 acG1BO4lR7EBUSYKg6j/d+TsyuxOOo2+bNNTujLgnduoNZ9XmE/i7hFN9H8eDFkx4lqxIvfArz6
 ICsNBFtMcaL1WKv7HE8Nj1TrjjM5E77iwqCJl7A1avuplNGbu87k857Rqx5yXfsli6DDWwDtTnI
 hgcH6bqs0ov5BQgImkN/P9ckv7fGeiSuOC3gBDS6AU7rSo5QgLcXaqHgMLmzeTTX+EZaght0ls2
 hInINsRIheQfl1Mj3erw7a58PUNSPcH88vGottj13BwibM72G068UOHrveTxKVaFWGuN9tcywnO
 u/7o9pR76vh9QaoHf8NHy8jYs1mRxyfLfk43lobUATpt0/nnvEbo8rSfSMXiX2BFbuzzZq22R9m
 VNEZbOoXs8QRsTadOjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276569-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,1d88000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
X-Rspamd-Queue-Id: CA03A2A6E97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for its own resources. Before accessing ICE hardware during probe, to
avoid potential unclocked register access issues (when clk_ignore_unused
is not passed on the kernel command line), in addition to the 'core' clock
the 'iface' clock should also be turned on by the driver. This can only be
done if the UFS_PHY_GDSC power domain is enabled. Specify both the
UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sm8550.

Fixes: b8630c48b43fc ("arm64: dts: qcom: sm8550: Add the Inline Crypto Engine node")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index e3f93f4f412d..473fb4748036 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2449,7 +2449,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "core",
+				      "iface";
+			power-domains = <&gcc UFS_PHY_GDSC>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {

-- 
2.34.1


