Return-Path: <devicetree+bounces-276562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNFcCtsfuWmergEAu9opvQ
	(envelope-from <devicetree+bounces-276562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A172A6D56
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A372A30FB2E7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735D3364E81;
	Tue, 17 Mar 2026 09:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCpp14aP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QkHXRT8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4BA35DA70
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739302; cv=none; b=I7W1xYmGQrAXp8kSMSmfyllA40Dr0tz5EMsq/1b5NAiuoujxsMdZb3ADPqNOFSoLWLKpFnCTkhCkqGA1mbuWizstB1BbaSCk1Y3AzM72dkTdl7uY36fAVtx+YKlYnVihvQrBQcJMx5nHeE/XxcMFVZr6fJ6pwJG7Ka7ElFcYrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739302; c=relaxed/simple;
	bh=h4RpmgObOzRNkVSgccxhU+fMFg+bHom6DsbHl34Ky1E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EdVc4gaItHKHA9Slcyy6wDisCSx7rNYEPyr3ZcCVgg+BwQRCsnkealPTzuVvbRJdfE5RFwXStH1euo97BW0I/6nLFrJkuMutbiPC735gldr3W2mCyRnMwXfNBTL9hLQdKAgl1PssoMZY0LuGWxZTMJYQUbStr9LorjEIT9GPTOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCpp14aP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QkHXRT8p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H9AL1C3124551
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fOrKK9iw7hnO0EM5jUF4TlMhkVqT4sv/sqyiQLLaVeA=; b=WCpp14aPex3IvYtw
	aYSI/WlBmex7QIORRUHQsERmLspX2uDSDaS/7ylOK/uWXw0ftl24cR91z01HKXq3
	AXorl/TNgTV9dwVEAGsa/qaWAFPokX8BCIe38ImgwMNsU3qqWbBAsYGSXcXFkEfb
	9+EwpDNOiovjXraHXCCaClSJDKJsfF5q/4ehBgfg4+JZBHuLHGnYkZN5dFkHT++3
	AnCkNVlCgEVmReOCvsQw1chDQeN2wKZIa4WlHHoZfYJW6oBgy+7MUmXj2Zglu/LP
	ySqe8gpQ8LckZOHPuuOt34qCZAtgFZwh+N83ZqBlpJkM7Lcup72prl/DZnjxXOTX
	QJkcew==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmmfan-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:21:40 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35842aa350fso37723920a91.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773739300; x=1774344100; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fOrKK9iw7hnO0EM5jUF4TlMhkVqT4sv/sqyiQLLaVeA=;
        b=QkHXRT8p22nAJ0HleiZlcYBa9pPqVAXc/VXVgDLjSeCcfa1pOT+IEYx3q3qzOuTwnF
         BYW9loaLvcdkcYYBMPYHTdRlxFH+bVnUQdtPt/bucs8YjEd2l+OI7+gD0oklUNw6XEsa
         sPKgkPfdFglpMgfhkFDKlnsqke31AHSnqjawKrBoxn7QMD/IJWb1AiuThUOntXQyf7Wu
         wAObeC8ddPHTBYfjP4bS5NKKR9AJAitzw8Jbpt/WR4wKLtskdpftVIzzXEghxlqOLxDo
         dbUMmBG94x3k9JL4jSX326GlopyUy9qXA3OdQwOpCzZ/KChvHmBu647Y0dnzV9E68sna
         Dg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773739300; x=1774344100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fOrKK9iw7hnO0EM5jUF4TlMhkVqT4sv/sqyiQLLaVeA=;
        b=jsrPorbE86nLeLE12A/fS/VG3BeazOKogwDWtJ8HlawwCD2a8VgMixXZvTRztKiccr
         w7RurToaJ0kuFWBOjYne8iYEIQv6CM/hgSaQRnNdKr7HDijEZqsjZrO8KRFR0ytwq4jj
         5Pf6ANbyli0haLXsSDE/YA/FeVWtB4ooA4YpWqovGWDqD8sx86uoqhwswNU5zteWve9e
         pzHVs1Lpi8XmusAYxiAWX7dT2Xtx/uPV+Bxc00ahNCbwK8pb8VfpKWAi0dOxswBWEzPu
         BgIhWEKWP6QEbIx0WWARuK0p5vnKIslDJnLYPFt8B6QStuaS1+Or4zMJShpS2c6hg+ws
         dUTg==
X-Forwarded-Encrypted: i=1; AJvYcCUPQzUheXB9ydd9YGOKWC1c8Ol3t5exrKWIe/3W/Ca3Lh75sJoTO2DcQfcpQ2W85E5+alsxWCzH86iR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+EXGZJl2XvApA5KSE7lFbxzExWBqvW97kDvKLYHcDFhjUHnvA
	uyh4tgw1WGjvFYXWmpg0N51ie3DC906WIPeJIbE36cTnW6f4N503s8xpz4PB5mPfaBC2BaNPOpv
	5PJ8aAUS8S6GOWJplO6pjVws1aWXXNOA38F8HPRIMiVWqezWWaw6/uw3FYr1XDi9J
X-Gm-Gg: ATEYQzz1W/5B6NIxjH7tUenTXBh8lv15tyTbRboRRai0MhVc1Kxgpd8Xf5kq3dTclfJ
	GyF0pPrdRVzGfz018PRiqCVGsXwbBDEZk3bGXt5lnC82YKC//7EUBNzaHlvD29m2/HGc1Uf1Ttf
	OlPb5wAmazk2HOZxLvhYo6ZB2NDWDA/u+ZXMmMFlctSiBmOR/wfSxos5rchFd2qeaG6cM7zyKhe
	bBnFt0DO9E9NoZs9Kmzmgi9dFsuYEm1t0mDcmqcf0oKEMzmYetNSxfxOmCotduPdKQv+Momfa0h
	eJ0gxpi/ZHG3OqMe9WGQf4si+qLZOJNZ6BtoX3Gw8kxsVfn1/heb17dRp4FVsAFy0wSH4AGj/BL
	DCD/DkZgsvHXw9aFi3wgzOMPOT+JX2x8y/IhJZX7RrljgHHs=
X-Received: by 2002:a17:90a:d883:b0:356:1db4:8fe5 with SMTP id 98e67ed59e1d1-35a22081da2mr14820486a91.29.1773739299819;
        Tue, 17 Mar 2026 02:21:39 -0700 (PDT)
X-Received: by 2002:a17:90a:d883:b0:356:1db4:8fe5 with SMTP id 98e67ed59e1d1-35a22081da2mr14820446a91.29.1773739299228;
        Tue, 17 Mar 2026 02:21:39 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badbcdaa6sm2331968a91.15.2026.03.17.02.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 02:21:38 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:50:42 +0530
Subject: [PATCH v3 03/12] arm64: dts: qcom: kaanapali: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-qcom_ice_power_and_clk_vote-v3-3-53371dbabd6a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739265; l=1406;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=h4RpmgObOzRNkVSgccxhU+fMFg+bHom6DsbHl34Ky1E=;
 b=dtCs/OirE2kPvaV+8TmLiJczC0sVB5u789ja7Dp9pUVBiJTkcFAv3iUdaSbJCWBPdm2ielOlH
 Zp4PTiH6XPVBdftzBOPsDRT9uUnR7uRqfxlmNehVMJ8RPncljf2uf0Z
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4MiBTYWx0ZWRfX5ctVFHAOr+59
 L6eJmmcxwVJUkQE+hLGdbKB0uIbq5vI8lUVdw9dysfbI94dtEanOdCKp0lEK7GnxDokUJZKU6nO
 hSxTXxYHUuSFB592fK7b0E8bEXLMb3QzEMo/7EqHxgTGjd9vM+n1zS3hvxrS8QhW1YU1Xfj6Os7
 FMhycWxYPtWPdjD/edt+7Zppc3rRfYcjE+iRuSBV8FOJu+B68TQSD+lV6Xjtok1iATwqVlOQ3sJ
 tayzqVrVmC7+nqq5zgfHWwmbUAJv05Wxhnfitpx7r122J+PpZOIheJBvY4il7Cj/fAq5Tuj73TN
 qP7yF2asgzqvy/gP3hw9fdfVAq2rUsHYnEIgySb7mS0wybkvkU2dYZDwhqnb4Bj/dOl4MzwkUHH
 k4sEdfdm3lOI42p+NHI6qQdQPRtbQQqFcJhmn0L/p2BwS/oVSiNmkE9XRPXhr7O70UgnYteISqE
 zefXu5Ql/rujraoTnHw==
X-Proofpoint-GUID: P6YomTYKR75TZp-DbLfttPr9Co4zk2My
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b91d24 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: P6YomTYKR75TZp-DbLfttPr9Co4zk2My
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276562-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,1d88000:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
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
X-Rspamd-Queue-Id: 26A172A6D56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for its own resources. Before accessing ICE hardware during probe, to
avoid potential unclocked register access issues (when clk_ignore_unused
is not passed on the kernel command line), in addition to the 'core' clock
the 'iface' clock should also be turned on by the driver. This can only be
done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
kaanapali.

Fixes: 2eeb5767d53f4 ("arm64: dts: qcom: Introduce Kaanapali SoC")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 9ef57ad0ca71..52af56e09168 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -868,7 +868,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0x0 0x01d88000 0x0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "core",
+				      "iface";
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {

-- 
2.34.1


