Return-Path: <devicetree+bounces-258741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGnbKIkgc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:17:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F527194F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2397B308BB93
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB1C36A00F;
	Fri, 23 Jan 2026 07:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kl7iLzcw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GtRMSXEv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBE3360733
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152387; cv=none; b=gVWZUZRFqCv4unlk+C0kRZyi2Ol126fgaLLIQ5S3nXIp01wnohkJytphGXsPzo/evo6xat/8sM/+wMiZDMfuuzOrH5Nf9Tf92S/LTINA9Q/1wsPLTHhRWI3/1XIdT7f/YQGHZebnjL5KZVv7Vhr3uG0BnycsGI1h1Fo8yURw51I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152387; c=relaxed/simple;
	bh=y5OhV5IZZ4cD3XJwqbL5xsBPAwLjd4WvI2VkiE2j1E8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JmuJBAt7/D8ZcnxkEwCpwrg/N6bemgLgyO7J9u6az+8jvLcEBNlr9BZoLJmdTqnnrby13WbacrTt/7IoFLlCKj4IkviMq6nrzXHK0bx3bdF9HnR4zV3qIurkLUsmsbmIuUyWWsf+mFKgmDLwjWkn+ocbFLbaC++MTd6/wGAvvzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kl7iLzcw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GtRMSXEv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N4eoT93677889
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NQjs1FmarwM5vchbBDR+me6FCHg5gu3uiOgQdYFOa/w=; b=kl7iLzcw3E/VPf1F
	VluIqBySLg20siFCPq7A6OUcl1/zrN/R2832mHVTUsc47/WQo1FnHiGjM6Vx0PDR
	RRArge2rliGlU3AfnJjuuM9/Mo5KBhxOsuqUeb8UVymNOvKqxTe8SGiuoPN69M0/
	diOAK6wpwaDd574Y/spj6jefZXw4VtLtTtUl0IF+9RjWbeM3dnG754bzt5cYBEvJ
	AI22WKe1yAAeXIBZ9lHnEx1wUWhtZms+tv0MjkQ24yYgG1nvYdbyz9xECXfxg1xz
	OLWC3qyjzsQDy535XVOnMFZXNEC+0Tz+/4JGeWoUdOFAAfDcZeLPOkY4ik868y+Z
	WFVkdg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buqyp2ene-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:12:52 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a377e15716so42850675ad.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152371; x=1769757171; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQjs1FmarwM5vchbBDR+me6FCHg5gu3uiOgQdYFOa/w=;
        b=GtRMSXEv8Lm0EE5EQRkCydNrLiH3r733qpaim6oTrv0T3EpevmkKv9UI9utZeqqh/d
         zuUx2z7N2i8IWx49gbKoW1fzZ+G/g/pxi4DhAEg5gIYDkue3CbYRwX6mbMDuoPEuh1YJ
         2JVuXUdd3najdcdM8uGwmJElGAEDoUsHQCIJErAJklQVd6bKXprPkVN2lGGIeA6S6mau
         HYPDn9eiQjkrojq88lyjhdWPi3uJT3nDGpny7ft/sMWRh7P6/G6fzsFfbWVn89PFDWji
         97tEEJEqTofE55AqfZdFRAyVq7ekbts79GKZMi65EkYFnh2H6bE7VOufcLaXmlCz4L1D
         kbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152371; x=1769757171;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NQjs1FmarwM5vchbBDR+me6FCHg5gu3uiOgQdYFOa/w=;
        b=GmcSn1yzj41+/eI6l+Ei92XBL63sRLXvQOnW98joZCn+fGpjyn1xnKAYQl3eolBa70
         mnXzfaB+2bGd6mCP78dZy1fTumJ7+dk+HlY93U1y5JS3dVpj6S2v4a6yfZMxVaIwbXU3
         Rv1jjTeTcMMtIjbR0VtdQROFyuJIYwT2+dSKqevv1CzNZnRUogKCt4woug11THCzXhsY
         HgMtFCa5TzGiOQd5KGM+Rg9iHlFHjKCoYN2W1GnIyJ6RY3qEWn7cLXHW2MNXtsqPu7Rr
         Z6xoa9O34uympQGrI8w37Q4zmNr9FnSV2qdODknIBPoO4T0eWdkldYAC0SlVwaQ5YsOb
         bNCg==
X-Forwarded-Encrypted: i=1; AJvYcCVNnhGPxSrGDJ/Hvm5ZaAv3nhTrEFL99Zr/Ur95AGClrt2hxDRWQl/Dycgcs52R2hfEzgFt1lOdh3kT@vger.kernel.org
X-Gm-Message-State: AOJu0YzsPlJ7pRIUjUGo/2nFj+i0HYxJoQrb698ewDzINXbVn6qftvbc
	5KLSdZZND0Vk2l+jCBmUZD0cTWIAJ/855pGd6BVH7VBubuSC+ARd0isWO+NDYyCZ8oxiIy6lk9+
	WbvstQYbA86EgMagXdp06xExKvzLov/DtFVpcNl2be1wp+KejkC8YOMPRt7m0vguOUEZ2s5N9
X-Gm-Gg: AZuq6aJk28r0NHKPGxPThyNgheFjdGDkcnjGjiSG4K5gbsdqCnmXyjr6P8imQhZdQe/
	5bgSUKlpcycYs9pAXDVyAM1eS4izY55vPwfjd9wRQ9IiAaNQdi8Owh9RC/1mQz/3D0xPL3y9nv/
	gWkBPUmskoPHQnq7m/M/pqtkUhP6qSqWXXjVuK+0RmrBIUkYmB5jatFw25nr1LBuP8GTdnLWPFW
	/QXYIm8dWhynxKbX8UOh1nzlIUg3GS+Xehi7B125Qy9e+PPypOPHXNBfQd9MVrqN3sixjpsvEga
	20cw8sgELwejbU/qt2OjnfShLm/Q3F18OjUHhYQNPo7vWekLw1+mWdgzT47dY2PKNy99CjD96Hd
	/9MBnFzfECM7N/jttCTqi0s4onslBzQaGGWo=
X-Received: by 2002:a17:902:e784:b0:2a7:9592:210a with SMTP id d9443c01a7336-2a7fe61a635mr18596315ad.33.1769152371050;
        Thu, 22 Jan 2026 23:12:51 -0800 (PST)
X-Received: by 2002:a17:902:e784:b0:2a7:9592:210a with SMTP id d9443c01a7336-2a7fe61a635mr18596085ad.33.1769152370561;
        Thu, 22 Jan 2026 23:12:50 -0800 (PST)
Received: from hu-hdev-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f978b8sm10979795ad.46.2026.01.22.23.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:12:50 -0800 (PST)
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 12:41:26 +0530
Subject: [PATCH 02/11] arm64: dts: qcom: kaanpali: Add power-domain and
 iface clk for ice node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-qcom_ice_power_and_clk_vote-v1-2-e9059776f85c@qti.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152356; l=1198;
 i=hdev@qti.qualcomm.com; s=20251124; h=from:subject:message-id;
 bh=y5OhV5IZZ4cD3XJwqbL5xsBPAwLjd4WvI2VkiE2j1E8=;
 b=ZpGsig9EG/I6gxF+u/H78n7MpylmybmMXBSXtcZAYrl1aJj7A1j9flgX5DV0tXJY1pIZ89kbY
 QxpdF1C18gSDwOFlCmHDGNtZHsziliqw/rOS/POfkpTvQEKmL6nCgqd
X-Developer-Key: i=hdev@qti.qualcomm.com; a=ed25519;
 pk=SHJ8K4SglF5t7KmfMKXl6Mby40WczSeLs4Qus7yFO7c=
X-Authority-Analysis: v=2.4 cv=RMy+3oi+ c=1 sm=1 tr=0 ts=69731f74 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=n08Rq-YSkjsL-2sbs4UA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: ivUokZqQ7PS8Uk6SuPhck45cNpPYHNI0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfX6Px2ZFzyMtbT
 fVgLgZhHPkzYUebPdCbu5zzoGNTsjtMQdQ0YUcamghOcQrbBmEs8vqh3+l/5vMvIzlpjG8flWs+
 uJTbtMlMU4roxcsqjB0jpI1fRDzSskJQF2HDzQKInERPuuql70TXl2cMZfwa9dlseqRwmK2gKTT
 tV2G+Mk6gpAgYLjadpCvKQOYuQYf+AwG+AOBZjMBVoHBUL/dv1JyRup6wDlTbBOGbTDR8K9DdN/
 SPiWrBCGhQG7n4O4VeiZNeCml/CwTTfyPA5ZWj61d/5eaL4oXeN61GTxDELBbxUDsNdOpIZSF81
 5UJ8tmjL6wrNdS92KmYUrTIN7QNeLgW9IFupIHe5tT5MAMrNKFWgCept01s/UQuEpwFZ0G31Iq5
 62B6PJ+P5MpNL6iPXRU+pRFCDPGntIJb/B6qktFm6QKiN/6f0+E8lVwYIElqrbpCmkkSuMOpjR6
 8EMIUWWLWwyHzQnw/Rg==
X-Proofpoint-GUID: ivUokZqQ7PS8Uk6SuPhck45cNpPYHNI0
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
	TAGGED_FROM(0.00)[bounces-258741-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,1f40000:email,oss.qualcomm.com:dkim,1d88000:email,qti.qualcomm.com:mid];
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
X-Rspamd-Queue-Id: 27F527194F
X-Rspamd-Action: no action

Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
for it's own resources. Before accessing ICE hardware, the 'core' and
'iface' clocks must be turned on by the driver. This can only be done if
the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
GCC_UFS_PHY_GDSC power domain and 'core' and 'iface' clocks in the ICE node
for kaanapali.

Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 9ef57ad0ca71..7dea93d80636 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -868,7 +868,11 @@ ice: crypto@1d88000 {
 				     "qcom,inline-crypto-engine";
 			reg = <0x0 0x01d88000 0x0 0x18000>;
 
-			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>;
+			clock-names = "ice_core_clk",
+				      "iface_clk";
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {

-- 
2.34.1


