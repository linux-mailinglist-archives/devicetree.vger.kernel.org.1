Return-Path: <devicetree+bounces-273325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IqiGuzRr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:10:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6824247020
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA54A3079E37
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EB53EB819;
	Tue, 10 Mar 2026 08:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YIremGOt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IMP70Kbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470A3D669B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130042; cv=none; b=Jk4m8m52NbVJQeHfV7OoZrFW75QZpU7tfuEXUj+T2ftpkK5fgPJHjiHN2YMWUrAXegBJ8UyClB3OZiIEc5rv5MI0BFh2P05XPFN+K0PVj5EUV3YtKncwhCym3KCsqfj91v0MamwC328spYZGljToxsv9lA49WXy0gvPgiXhp3hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130042; c=relaxed/simple;
	bh=X+9qvaez/wKuQJXXpN5o7PpR/bLl9AJdUe0o1Nd3CW4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ko914PoRD33++kMYKqBLj/TcJ3gSfBjAaZzVg0hK1m0Ss9bN0DKN14dCKS5ZeNHaOWbVB6GnUsiXwquSOmtMgFw2m6p9BJGFNEZDmAjZeLAgnxUq+IbHhxuGvhs4k/0JyW8YUyeEZCrnU2ZW9zSDC8NkFk3umR1GlWiahWoV0y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YIremGOt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IMP70Kbg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EQMg2460634
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+wy0NK7XwvpVIYG3doeXTDM2mVaJoSz3R0NLL5vkbXo=; b=YIremGOtkeXvixLu
	ObAPl5LCrsExRFkQBMGUF4jT4Ls7m9p7AY5leX67TZT8q2JKLmJav1YFMFeH9oQd
	NjoryobWuihM1IR1bHGH+DoW16OOSSJsq7LTwdw7OqTHiG3kV69iwBGvG9SZMpQD
	OFXn/CrOgjLBU7G6rrcjOwKELumDD6afDJeqnrLlr0tYetwRwKa36k1uLD47X2au
	zrLbaVlvqIs6LL6kqHRGpUnkVmWjhzDqNU/icaoOgtZ/lMkAWiiFGBMT4ta0odYf
	WfJZlHSDwYgD7MtaWI/l0XzZW2+H0qkLkI7G1Bj1NLHK9QA7hi8VZYifHukLjuuM
	b2lA+w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyv1b8ay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:07:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c7385e8fa73so3221413a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773130040; x=1773734840; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+wy0NK7XwvpVIYG3doeXTDM2mVaJoSz3R0NLL5vkbXo=;
        b=IMP70KbgOv5VSMF7IjlsNW6I5mmyX6eAeCpHQ4OwdE55Joc5HSbBg1bGr9EPKggr1+
         iwBus8P+vJeGoH37CJnVPw17WFoeWZQwWjQTj98iCqBTVn00Um6reENe4c0Zw/QOoSyU
         DFIRcY4ja70uRxI55Gcjve9KlZGF6QM25ncu1h+sVJpsNiOCTzQAufzPqNLgyaP8BSdG
         mnEKr19/E9a3Or5m+StyhDisszW2jeBdaLsQr7XQtnm1zzhR39ZcWnI0VYUjPSXKTEHV
         yaMNhGF3gXRPSxYFW5VXxhvI85kjjIpYsU0c8eZROVYTKkdWnjvCmXYgFeyZmIPX1Vwt
         NkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773130040; x=1773734840;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+wy0NK7XwvpVIYG3doeXTDM2mVaJoSz3R0NLL5vkbXo=;
        b=t91JEsoNQ1YuHPGICUR/+N6bt28+vutpUsjyuBdeaT4MmVCGoqg1vicw6GL9lvu/9G
         i293UypWx/Gg6mMWZDb2Vr+olICJ+UcQmeGG/n7blshjPrlUNc2RFqdYmN/o+CgjGWJQ
         o8gZa3TUxaFAF7qIF2FG+VVbexhhDQxa12R1vdlolWnvxIp+LmvTZom/pbXEbmpPbdtU
         D9+5DcdMh9opxHhEpKh8uo2Ex8p6hTB5HmGR/7MKXl+auYq8UZaTfmrMLyb5lzxzykKW
         LkPl0uOX7CVIDdB+KiSdOkqrYv8OlYhYFyw9T+31ODVqCIZaHUTInO7inC+kD5dPhro5
         iBrA==
X-Forwarded-Encrypted: i=1; AJvYcCV0M5RmvlKmJlPc4l2q6vvXdHTHEhbndIeVVIyVd3mnA66mnRkPGH7haM2T7TQs9OWFE8rddCcy5Du8@vger.kernel.org
X-Gm-Message-State: AOJu0YyufcxjZ5m2jcCzd8dODOJBrssQeQXH8WTJ1vjKr5yX+D7wMHM5
	b/6M7JAFlblgpypAXkzP5uFlMALc2yXxe/hu4LNLGtc9R2+Mgd9GPRxuNydTu/sQxwAU/Eu8+4J
	s9QaOsyVm6u3K9TGulmT5qoHrO7sRUoL0fHy3RvBwEpIVKGAiTenv1U/2e3Mo3sMC
X-Gm-Gg: ATEYQzzKhWAdD0JAGgEZWT3SGb/Pjg8FiT7sF1CT05vT4Pv/mmGY00hkSV4jQCD2/qa
	8yj7O+o+BcYZqeXONzECqs1fXlyNlBhU0tlN0AQTTWgygH7lXflksWOGFU32g8cCw3AJ2PEyR//
	aAKX8AqavtdXfQpPWxPsDCkypj8rhTirsiTVhe9nhP69/ZEpLTwWHfiHktpE4LVEhaLaqNGRjnW
	rZuA90MCcmQSSuav2PSqX723vVw+rpclyz67Pyhhe4u3JEEAEzNnGV0GRHCsc5/92rXsSB+m12p
	pc5xLE/gBG0rMNILHnWl+KybiR5BEim2rGa6YLGDmQRdSJH7+U3mO0awtfwQwsqvWsLl5GSQfUP
	PY/MtxecP3l4Y5qSqMZw5L4bjVsVOsIa2th3h40BchvCz5Ho=
X-Received: by 2002:a05:6a21:35c9:b0:398:6461:6872 with SMTP id adf61e73a8af0-3986461cbbdmr10167485637.61.1773130039744;
        Tue, 10 Mar 2026 01:07:19 -0700 (PDT)
X-Received: by 2002:a05:6a21:35c9:b0:398:6461:6872 with SMTP id adf61e73a8af0-3986461cbbdmr10167425637.61.1773130039270;
        Tue, 10 Mar 2026 01:07:19 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e195c40sm11121969a12.31.2026.03.10.01.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 01:07:18 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:36:30 +0530
Subject: [PATCH v2 04/11] arm64: dts: qcom: monaco: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom_ice_power_and_clk_vote-v2-4-b9c2a5471d9e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773129997; l=1467;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=X+9qvaez/wKuQJXXpN5o7PpR/bLl9AJdUe0o1Nd3CW4=;
 b=3RZvw+FuTUzKWHTutZFpoLgdeE4niluTBpLlRRbKcE+KRA/LMtUu7QuT5YidI5nNS2nVfsl9p
 ZeQjwoTuBs7AwfO2R4RFaY8HaiBp7XwHQokDP/c3LeFH/rbjGv6L0Xk
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-GUID: TZ5zaolrW8VEW5k0LMKnkXmDuXRcD4l8
X-Proofpoint-ORIG-GUID: TZ5zaolrW8VEW5k0LMKnkXmDuXRcD4l8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA2NyBTYWx0ZWRfX2v5jhs/us3qC
 3aQEioQGsf4KWWZV/Oequ+VpibCqpQWM1Q7FePi+icKRj+0ahQN3kVp4Xpfq1bPc1hs7l0/igGZ
 SWT9NXMPXrS4ajguW+EncrHU6Z1awENvKyJf16MumExExTLrAV/npXzeiMCLuc+1uCyoOE8GyB1
 /27Y1ud/JPMk+FKEm3FTMTsX9n/2RW3pPn7VZDbEoF8/HFWZqukOIKZOGWXyvmvQz5RPUAYUAxT
 TMSvwXd2vn+wWsCIEiXfuFKJbu9R4A4Pz85m5u1zTaUSUTIDDRPw/UnTeji9fChLkgKZMp1TbrY
 AQsocLN10mpI3YibOMR1ASTY4F3smJIMRagasJcF5VaNalUC/xRblVzrEDP1Bo0BOqvAwAMdP0R
 1p/pzBbslgAdzKnQCYyYqp2/UyIUiKBC5lfiyw7LE77Vn3s7r79nwuBmM68puIO4VDNpyXNqmsu
 GwnHfcRodhrXY5H214A==
X-Authority-Analysis: v=2.4 cv=Cuays34D c=1 sm=1 tr=0 ts=69afd138 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100067
X-Rspamd-Queue-Id: D6824247020
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273325-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,1d88000:email];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
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
X-Rspamd-Action: no action

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for its own resources. Before accessing ICE hardware during probe, to
avoid potential unclocked register access issues (when clk_ignore_unused
is not passed on the kernel command line), in addition to the 'core' clock
the 'iface' clock should also be turned on by the driver. This can only be
done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
monaco.

Fixes: cc9d29aad876d ("arm64: dts: qcom: qcs8300: enable the inline crypto engine")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 83780cd3dc8a..b97a35ef7d6d 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -2725,7 +2725,11 @@ ice: crypto@1d88000 {
 			compatible = "qcom,qcs8300-inline-crypto-engine",
 				     "qcom,inline-crypto-engine";
 			reg = <0x0 0x01d88000 0x0 0x18000>;
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
 		};
 
 		crypto: crypto@1dfa000 {

-- 
2.34.1


