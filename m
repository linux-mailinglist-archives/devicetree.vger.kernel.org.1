Return-Path: <devicetree+bounces-273330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOwKKnXSr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:12:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E17E247125
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33EE831D3EDC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6733EDADC;
	Tue, 10 Mar 2026 08:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WAqdac8H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hNwKjyDn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66833EDAA1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130086; cv=none; b=jFommPykNV0Zsf350n9Wp9brqu94+8gEEyzQ6XeAkleeg4yExne/N+2Gv/zOOF8G10RhAMlDyG9PDUyEYxGkrCGpr7+CZXfUTzgTbP1cYntMl0lT+DpeyNcaCfrz/sKEWjan62iw9Wz4b39HWHatURShanwtnG8XS5EyBVGCgk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130086; c=relaxed/simple;
	bh=uwfjpukTBy7HMP4EN6kRPVs9fRDUcOji4LjyoNR6I00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OmYV+3hLSM+Am4eiaNxDxzutSrrh/6RP3i0sF5jh5dGo9+L8o+ZeekjTp9+D27dZwX+9m/2eQwP+OEx+4WrBAyJnLO9b3epetteWDfHUxgKEJyztLjQhycGBE1sdBhEB0P+2K39A5q4ciFAEProsIXN5IFVCqpg9Tn/QxyQx6To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WAqdac8H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hNwKjyDn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EmWw1900340
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e25Tf1W193iJMpMiA9dqaSQlYyUKRAfK4mqQFSGiy3U=; b=WAqdac8HkD17Iuu9
	2E3Guz6+w/QDJTxEOilusgwARaEN2qxcwADmIT4nmlxtGkV6EUmxnG8X/D+6GKtG
	qcHkpNoyGYl2GBGlIihkL5vZJSCRo5U0yTHgFMREwIAeLsdwlpa4jem4ZmX++AOL
	QPqlMkfWONTdPPMbrS2u5wyxu81doKRS0FRSi72DVqZF4nTRM23xPSZ2++Y9JKuw
	VVWRnHFdAuZNgJ2Z8nnWg8hPqzTf7JjceoIsGlTPNX7rvnKHYHZPPJVqali86srr
	xNEUUcRAB9Humt4nsgbhtlxqHQzhtBY7pfWfx/ql6UhO5dCPVPkUnCGUlKvCZgMm
	hjfQhA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cstsacasp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:08:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c73c065dd15so573143a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773130082; x=1773734882; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e25Tf1W193iJMpMiA9dqaSQlYyUKRAfK4mqQFSGiy3U=;
        b=hNwKjyDnTfuZRSH5y8MZ0pV9d878bvglNkGfQIXbKJ45YIoOQRF6yMq/NM8GCHLCbd
         zExjt4JPw0S1eQMLpVab7Kuw0REo8S4PqBya3KR67O4VfribY4M+ehn5MFcY6TT8FTCr
         dgLsicsQNnYnh+lyky/98x9s/PFH3AaH6fIGUMT84J0fRc09ZaeFHOF52HKImKPUmDoY
         4NkYDNRDQQffHS6qrSAtLSbokEBg9/Ls0MNObm1cpbstSvVtypTva/5D9XIc4c8dT5GG
         zQpvFt8WxO1D9pjAn14tTlQyl1smdj++uVJUVCvd+YNphFJMrYQNX0uLzasztENy1LB0
         UpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773130082; x=1773734882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e25Tf1W193iJMpMiA9dqaSQlYyUKRAfK4mqQFSGiy3U=;
        b=Fh/MBwJgm9QKmKbrV6jqjzkdpMfc5NrwRrTxlxHkCEaKr0OUCpL/P/JktBKOmtXWmE
         09by2a6eFi/HN3dV+Lc8vo81boDyLDSlHo+x27Y/93QnKUUum2J9x6Y/rtCpJAcJuTAv
         LYH+3jFaLTF471nF/eflTs6Gm5Y43Ooj5wRzbgrzMwfYbDh0fR+JSN4I9dbH1RcUv4+o
         xELaHGopcGTUOVmXvbuPITUlUID37SGlBVo23iZPtrj9yiOHIzqZWVM5y/bGa0aMzUmD
         Y/0YxwHeO994+276QhbSQqMYkfmQoqA3oKxFw+4LPIeTv5My0P5DkUz/nKJ4A3rZ8Imj
         53+w==
X-Forwarded-Encrypted: i=1; AJvYcCXiKAW1ixfro6j/BzrKTXQVoPRLOr9umF//2Jrihv45xYBnhodYcBvMqK3UyO9bAUFUnSbk0HJlpwDg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi1bMsOEBtKHEZijpl+FTDrgjB8yX/AHZ3azjApq0/bKbqNNFl
	ek520WJkftqWsPSK1lWms3Zo0L0VVuTTGlFjSd8x1UK5BdzB/cgelHNC8wZhdq0dIauIAjY3Umw
	pGZAXACZ9xATFMXM8qpGFz9u9ZWd+NooDBmmTJvZuj273R28L6Yh81c1WvyFYElkB
X-Gm-Gg: ATEYQzxUD2KNt3U/67ivz5cjmzy7CiaE5q/ws26gzk8s7SS5qCsYGsvwgZhA6a6rLEp
	6Qz/r7EeijPescD4speVFjy3o7ozy/vps/MOe8+vLdJ5P38TowV4iNUH3IiBqAvEGpiEM37qilk
	d1fKVV1wAijM38YmUsGYSkj61icobz2bOVHKCJWTthqsFE1AV0bX5IPjO/w73fNRoX1NuQpSFLX
	AKEhmJAvUCnyvRhl6QWV93kxJcjzXvNIM6rwIkKoCG32K0Yn5nOhQiStuDM/uDAwvkYVEv34D35
	0lcBnp1u6nGcmXUoCJjEpbJcGxS9G4mnmfZ3dimhZ4Ewj/qx9QcXDIMbVPHNkClYndPMYrS9eYx
	D697OnFcLH6VOcw1B/vM0r4NZQ6c0AOTv70VtTQq7x9pW710=
X-Received: by 2002:a05:6a21:104:b0:398:b499:44e9 with SMTP id adf61e73a8af0-398b49945demr699728637.64.1773130081550;
        Tue, 10 Mar 2026 01:08:01 -0700 (PDT)
X-Received: by 2002:a05:6a21:104:b0:398:b499:44e9 with SMTP id adf61e73a8af0-398b49945demr699674637.64.1773130080935;
        Tue, 10 Mar 2026 01:08:00 -0700 (PDT)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e195c40sm11121969a12.31.2026.03.10.01.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 01:08:00 -0700 (PDT)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:36:35 +0530
Subject: [PATCH v2 09/11] arm64: dts: qcom: sm8650: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom_ice_power_and_clk_vote-v2-9-b9c2a5471d9e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773129997; l=1416;
 i=harshal.dev@oss.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=uwfjpukTBy7HMP4EN6kRPVs9fRDUcOji4LjyoNR6I00=;
 b=SurLQKqOB74oMdxxqSFGMXA+XYrESMpfC2Br3d6hfne2/1y6Tikz/aBPsXj+A6o9V5Ws+c+R2
 +XyiZiI8xjcBrueZEku0JfeJuhzjWMrzUJ0wnqx61o4u3AVzmjkEey1
X-Developer-Key: i=harshal.dev@oss.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Proofpoint-GUID: Y9G9Y-NpWv6PC6fVaefhiY_rab28APyC
X-Authority-Analysis: v=2.4 cv=I+Vohdgg c=1 sm=1 tr=0 ts=69afd162 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=IPGZAGG64n0kybUxs1kA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA2OCBTYWx0ZWRfX82UZkIgsruY4
 yLQFvCLPjAgV8sFnHwrqFT8uC/zlq3GhHyDCCjas20qQbKI/qgqDJ5PD44bhqsmqRSp6mYwIEqk
 4OJKDwRBZGb+WtP+0Z/BQs4jr9xhNaxH7cXYOQWrVKqKvZQ4LxFPqkniiNQn02eMD3OX8JDQMPQ
 axDXUJEObgiejrNDyc9OFIp9p2EeW59DbyINNAg+G64reuqsFJ3or+30ReXeMxDfGhtlZdKtG68
 KaUGhdYtO7HYbZB0AvQfayzhW31Ur2JuvPopaZguxH+7obBY5wZckrBG39Agi4gxcQMFeTabg80
 k2wJbTIj4M30V80qjr3c3ljo0VtFdJemx18gPM6l11gYMXJ40NjJm4H0c38J7AGsk9Szu6PdlGh
 qnLvoxcasn2ehcyPUE9LTKEY3YXLlLC0RtH+tx9xzKbHELwR7jLei2BRMJTMsRk87nIaaQnSk5Q
 vlAHaKz3etx9Y5IkSPQ==
X-Proofpoint-ORIG-GUID: Y9G9Y-NpWv6PC6fVaefhiY_rab28APyC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100068
X-Rspamd-Queue-Id: 2E17E247125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273330-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1d88000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,1dc4000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
done if the UFS_PHY_GDSC power domain is enabled. Specify both the
UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sm8650.

Fixes: 10e0246712951 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 357e43b90740..c32a817efdb4 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4081,7 +4081,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0 0x01d88000 0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc UFS_PHY_GDSC>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {

-- 
2.34.1


