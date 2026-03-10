Return-Path: <devicetree+bounces-273520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBivEjInsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:14:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EDC2518E5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CFC432DF350
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA5F3B2FE2;
	Tue, 10 Mar 2026 13:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e17w+r+a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AUA5rnIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936CF3B2FCA
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147821; cv=none; b=EZos1vj18/EQ1vM+rvh8dJdq6GCF8113H1iIFAcJC7BZtdFuOTJPiofXBWsBsrK+IqJH+s9h65AlQfq8klZS8IWCNc4ALdlTuWisWAnxaY/+hPLeFRdPQ/JXdDSiS5P3VQXloHny3EGS6BZmluBG9eMc5ShhXf0A0WgHmnR69iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147821; c=relaxed/simple;
	bh=psq4kDef2EbVIEb96yYBTp8MoHhKgzHGJFRm0IFplqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ES+x6baaAg/ievpBuGD3rI0pLPUNXRRClSspH5OWNXNuv0URm9AeV5bdq+nEULndhb34tyI/OdX6EPg74vZTErNw2CeuUITwhTPCKLfF9EU/jlQH0uRQSQuoa2tFbQJqLbgL8CQa2ZUIIJz9RM6QyVH+z9Jiz9SOGzdWxvqq7H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e17w+r+a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AUA5rnIZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACnewS3893006
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kvqvf6zlL0yTK2bTnfgDCR6GYEBFrYymNikDUD8Q5JE=; b=e17w+r+a+OTwzD6M
	0gc81uCRRT9uBXceCk1RcFas3USXIP9LZfAS+S/19XL9D5Vq+PFCkxG1CShqvg4X
	qwLodBDhvDckqQLnF5n/jJrElruiJQyBHnDEdf9moZmlETpbQWCte14zb5fm8mh1
	uVC9LHdhFQAl5MtGUajHZ4Px8nxinQl45fW9NFKa7ZVRWdGYS1lKDhKJADbHYCy1
	uj7Mmrx/sUDeW05a0JeQtltWhiVRtsLzYe9+Y0HTQxN4StNtVdhZPQaYVoWijo+q
	5R8G1yTkeYvSABR6EO5Ef6YXlE0G0w+0rKXwtooPsodu+K9G+aiC9+D37gS45qjj
	+nnseA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyr1rk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:40 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-94ea8c27188so11993112241.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773147819; x=1773752619; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kvqvf6zlL0yTK2bTnfgDCR6GYEBFrYymNikDUD8Q5JE=;
        b=AUA5rnIZHWuV/mo7IfvfFOI3ct171827X+ArnKHY+fjZDeT2wZe4Ngs8ToEZ/h8Byi
         b+XcDF/wPTcTUCgpTtoU2uKROdGI5ePfB7x5Qao0uf30UPV21bxESiYDIvtHyqdokCit
         CEn4xkaL763R2RrJrGMltkLRBEJe8d5yNTx3ARI0bduREFlw1vwAChbF3GxWWAUleLnb
         3p5c3hhGOoFhzAzdFZOmpUiTmppgOJrO5Tg3NAMLnZcfHSuNw88pnKw8oL30j1NAlM+D
         2qdA5ohX/jMvEHCDoEAKFqnG8T6ndxUT2j65p3aYoM5R8cTRO7x2g6SlWlNHNceTN3pN
         r2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147819; x=1773752619;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kvqvf6zlL0yTK2bTnfgDCR6GYEBFrYymNikDUD8Q5JE=;
        b=Er0oQTC68Y80+kd+Hlmfc8IXCAY0Aui7Tuv5GWcg6uUlRkKBxcs932qoI64fLODUtp
         mY9AbfhQfE9Y7w0tErIY7SnNNQjUt79Ln0RD+SNzwWbCY1ZL7ds2NlNtvL/GbMvcVHZ9
         p/aLxBOI6Qqxyrl06ciakw4epXBVG8uIzw/WuUwbBj/7kA0JWobPA26NJL4I5IsRaMmN
         Y48rbb7tdt8/9zS9rqoo6RoF/7cRx99KOTQNF/cZ8Cqp2J2EzdUn7JyXQixWJINx7sxY
         Sm0JuB0Y1q6+fqAiElBGSYf8pcl0exLOXx/flGFgPV0/mnBmfoWRbgY228QmRbkMeK45
         gSng==
X-Forwarded-Encrypted: i=1; AJvYcCX78CTyHMCr7quzU4SZZGFLSXi4RohrEGLBzhTPXSgB77hMM+/dvAUc9Xwf6EkkYpF6dpZBB+oMLoxL@vger.kernel.org
X-Gm-Message-State: AOJu0YwvxO0UAjLWMZsnMkaTcA1RDLpBvMXO5eBUflaJKGMNbIGjGcfV
	JVdNvf6ufZaqo28CMWbaYsUg94dMoV9JX+O7XIeAcCLS2wQOOVtMnzS7KPRT0JTaly2tYiQ2Dux
	e7TfAEbhyBUFOe7Fbp2N4wxpgY94i80ApBa4sVtwZF5KWjxt0x6SsS389HRVRQ0a7
X-Gm-Gg: ATEYQzy9iyVNqDOprueaOqwhi6TyYB3jTAZ7nRe8nVLsVy30azYzGqApJ0kAj3p9Gre
	8AKHp7ZPYtyb6K7YGJsN4I9WQ251rrjvhIjWxT9eSruFc8Y/FUz/pI/zbLjy/c8M7q6ulM9gXG5
	oDHvy0/hww4IhAZa/vdd8RYN4J0/VnFMk3WFP0YHL4DQGZbmWWF2JEGHRIRi1yPrZtAV7Ld2e6N
	XfmssB28LCJWAYpcBC0OWsFsyaxGZkUKeHgKC1NJ7OCqFm9RrDgPTlYnCRaUBCqoqOdvhVKVlTs
	ABnTU87Qf1dihYDg0CJQdhZrHy8z1SNrxHz1jlz7nOWkLPhxk5ymtVVtAiRs7mjcKHC4c/UWo+7
	cy4BagbreRPQCRaVn5j0DmjrSb8cj3iMQdME0EMuaGAvP
X-Received: by 2002:a05:6102:3f4b:b0:5ff:cc82:744b with SMTP id ada2fe7eead31-5ffe6120fa0mr6780458137.19.1773147818966;
        Tue, 10 Mar 2026 06:03:38 -0700 (PDT)
X-Received: by 2002:a05:6102:3f4b:b0:5ff:cc82:744b with SMTP id ada2fe7eead31-5ffe6120fa0mr6780402137.19.1773147818517;
        Tue, 10 Mar 2026 06:03:38 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ed174sm178732855e9.5.2026.03.10.06.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:03:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:03:19 +0100
Subject: [PATCH RESEND 1/5] arm64: dts: qcom: msm8996: Drop redundant VSYNC
 pin state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-redundant-pins-v1-1-98e2ef430717@oss.qualcomm.com>
References: <20260310-qcom-dts-redundant-pins-v1-0-98e2ef430717@oss.qualcomm.com>
In-Reply-To: <20260310-qcom-dts-redundant-pins-v1-0-98e2ef430717@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3390;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=psq4kDef2EbVIEb96yYBTp8MoHhKgzHGJFRm0IFplqI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBachw9SfbeQFXi+5Fsu89JYQNVHE1Iy/vHIt
 gU2uALA1ROJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAWnAAKCRDBN2bmhouD
 1039D/9K8crxdvVQXfPodhDtaSmptF9fJU2yjlDkL8fU3/vv5JhH0gSbLJtc/V6BBOL1Cm5ARfz
 qpKsEJoD+jWgFKmR9HZ6BhePsg9VQAKeJ1V0vjee33UYUxgMDp0m+vBu5+XQVoilHYcNG11FaMr
 souDB2EVLMyfFsRooDvP5lk7u0FZRqhlj6YdCNly+mvdGhRrMmsyIz7EUEa9D3aYvKbDioOpCUk
 Dsn+YiELN3Wnm3HubYWQluKCgNJhQBGIAW9DRsMA0i8RuKKSqvQhQZwO9EUhNPJqgT0j1df1MCM
 RUyy0SqcI/f1vgl32InfLh1AG8wDh6YlazM6GKy/flZKM0YF4vNmG5bVEFDsr3V2rfu9a1lpZHi
 wgaF+JS0dzyFrsQ3l5R4mOLw2K8vQzoAkPIVjaJL6ZoN2ISrLL/KuDKcHvQTSjAvWc7GzHEwIMO
 Iw2Dpr/BZbQ2Jf21vxwGg/3YttKS7BQunKj0wSrTUCe23n3oNu9/mblUlaZ1GSPZACqMi/WWyJt
 RjqUi6AHuuC6Lv0uTUt/ginyZALdHe3qzggHyCN9Rk/6FCco43pW77c99ng3eP/zcq8ymCN3fd9
 gPH5EeU2hHJgCErbW7oerk+wJ6VaPkenPD8X4Fg/jCgIDE7fsJ9kjZsSdd42xaUnoRQIhZ1shUI
 GiPBlsGw1vYdWnw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b016ac cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=vFSlWfVDKHwDXz86178A:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: zvFc45ikb5xcpRY7_jmt_SsKA62usjLg
X-Proofpoint-ORIG-GUID: zvFc45ikb5xcpRY7_jmt_SsKA62usjLg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX49wpOFc+9TCZ
 cI+mDpaXfZNxK5jrLBhYMcbXlYhzb7T3ios4yiSt9+NdzcuvasMHL/MUf3Dq1SkfHAM5YKWfqRG
 iaQxabUsGqbfOfiBdGc9I+TV+f1WagJY2GoH1W6LxM28UVqvBYBL797VcvCOh9WNkzZpgvT9aJe
 IWJzYHfTBIfAtH/wtuu1IVPi26v9VDb1gR7XrpFprAjwyW1+d5dQRUxDTVHUnSrsyTJKH4dhaNL
 o+qH1OiV6MQ3/Yig9Dj7obLwId6NCvKs8Dyr2KQE49OEi4uWM71OmxyutcERGVv6H6d+RMvVA/n
 d1ihHdJBMPjAtMRMEz/hu+V4hwZITPeCbPjvQFsD8WQo5QaQZHFK5ze/K9XWG9RmTY+aou0CeQN
 oW0yeKqXJJKv7292uMfh9CBuKJyEyv5xe3RFK9utN9fnL2e2qWW/I30GzFHy+NiBnF7TwcGLWMQ
 JoUBGR+EhF2f1jM0lYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: 72EDC2518E5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273520-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi   |  9 +--------
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi    | 11 ++---------
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts     |  2 +-
 arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts |  2 +-
 4 files changed, 5 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
index 63ab564655bc..a4dcc88bb01f 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
@@ -745,14 +745,7 @@ mdss_dsi_suspend: mdss-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	mdss_te_active: mdss-te-active-state {
-		pins = "gpio10";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdss_te_suspend: mdss-te-suspend-state {
+	mdss_te: mdss-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync";
 		drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index 0386636a29f0..77ad613590a3 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -247,7 +247,7 @@ &mdss_dsi0 {
 
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&mdss_dsi_default &mdss_te_default>;
-	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_sleep>;
+	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_default>;
 };
 
 &mdss_dsi0_out {
@@ -730,14 +730,7 @@ mdss_dsi_sleep: mdss-dsi-sleep-state {
 		bias-pull-down;
 	};
 
-	mdss_te_default: mdss-te-default-state {
-		pins = "gpio10";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdss_te_sleep: mdss-te-sleep-state {
+	mdss_te_default: mdss-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync";
 		drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
index 3c6a40212a8d..fd3a2121465b 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
@@ -104,7 +104,7 @@ &mdss_dsi0 {
 
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&mdss_dsi_default &mdss_te_default>;
-	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_sleep>;
+	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_default>;
 
 	panel: panel@0 {
 		compatible = "jdi,fhd-r63452";
diff --git a/arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts b/arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts
index f8ab03f106a1..7e2ee9a4e9f0 100644
--- a/arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts
@@ -51,7 +51,7 @@ &mdss_dsi0 {
 
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&mdss_dsi_default &mdss_te_default>;
-	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_sleep>;
+	pinctrl-1 = <&mdss_dsi_sleep &mdss_te_default>;
 
 	panel: panel@0 {
 		compatible = "jdi,fhd-r63452";

-- 
2.51.0


