Return-Path: <devicetree+bounces-275377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DmhEucttGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB2A28608D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8209632A0D50
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF153B2FD7;
	Fri, 13 Mar 2026 15:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ba1uiMQ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YeGT+uqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8173B27C0
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415644; cv=none; b=nX15XojDoI8dJJvIEDfJlPnHk/DynNYsYjRynOykQgsIyOqlWvAqdU7So2tRBN8TWZQfexnxFcfG8i+wANY36HqgwmokPVKjEPfqdBfNusCnS3yXN0e51U41dK3eQ1DQe05KWbhmxYXOLMU2xFQuy8L2fCg4cWJl0QrZGQxbpJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415644; c=relaxed/simple;
	bh=iXhVRNLtsMcUhhJM5O/4QISYE4TmUzbh3YrZdivi5uw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nMcyFSywWmsPJ3dxBMb01tcH6NbaPei2SmrxHIuK/yDc5rY38SPTQDCuvtNwQEU68ozbnECcOpiR52XncfcIyOiDPTvT5I938UN4CpiTGtbvtyLhw0PbyQ743TVGjSXbMBz1MRXp4UP0ZaeJYk5BgP3Bj+hwf0G7dwAbdk4wjOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ba1uiMQ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YeGT+uqg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D8vBoN481522
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Fe9jMA0QX+t8dNtWEMMLLDPJbZvAZmZpLfP3ItPlgQ=; b=ba1uiMQ/uf+PXwO9
	f9TGSf9tjxkJ9CsjhJDbgasb5YTBRUnjIHnayp6pK0iUbXEBu1JzsHlBL39xYdnC
	wQoOqSwFliTpu94ZE9JlMjjZh7qgt6cWyt4zsrkCm/IZC7FX+pnGvY6ex3fZns0b
	gSx8ZAwIvremmbOg5RnQxD11Z9D6LCDQPQzGl/WfmcKl5vq4usZoB1QWF2un1CTp
	wlh0caoZKCg4TRLAxxqYUXBCbx6KTdm3vHTviELJB88ugg//R8KpviRsQK12XNOQ
	J46IIpu4KjYfsxu0kLTeVXbIRVn8wk/f+k9KDEDWyBiPgcsxR/zegNzrbXlGffTl
	1VxJYQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7sbam-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:21 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81c571a5so1357485485a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415641; x=1774020441; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Fe9jMA0QX+t8dNtWEMMLLDPJbZvAZmZpLfP3ItPlgQ=;
        b=YeGT+uqgj8KkTbtPcMXud4zu7RHIV01/1BR+0Dp51AMXHAdLHXXEiWdBEY2LFNq2Dc
         U67D8LFlTh00Xhe4rrv7cOxrKCUn3YxjOE9MSmjZedQiNkz3tFHG1SUtxfz4VhEFdDfP
         Mg6vIUUdwEcl4zVjjrmAZu6k4OHc+JUx7KCWB5zK6qiZzG3mgqP3AUf2L7HMcQL4xtrb
         mS4aR+tDj0UzxGpWaohMPST3Bo7p40yLDsoUPFb1nB3EUlK0AS5RfLQGdcJU6RWvczBq
         G/MlMhfXF3liAjyH0CP8rt8QJDIH1vdo0wQ443lI8fz/C3WZ6+7yfUHfGE1Ny37FsfHW
         t/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415641; x=1774020441;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Fe9jMA0QX+t8dNtWEMMLLDPJbZvAZmZpLfP3ItPlgQ=;
        b=GOfgipjJhRtOFVBds5QYBSUMow8Cfx+Kl8PSt9/TPw/s1/W9lM9MpMGWmarr5roMhQ
         ELg2qztxGdjTbsnMFUa0BqoKtfAuoVeZ+M/MZ6ASLV3aDI5CCyIZTnerb6Y6AhCUX50j
         FMMWz4dAaCoGdF8dP4YPVDOD/LD6aTuShKhZ7abRcq9XYph6+1cAEIy9PVOH88RHnDZR
         z/Br1136R5kRb3RYJlmTtSv5JckkMkoq2QjRaIVSN0LvYBeZ1gh/2iqx+RRZm7PA4/6w
         Y1zF+5X/F1eVCMoKipcuHyiMdQ3Gkq9Qrm32sGoLKMEauy792tOrvI/B1H5A5q4bp2/g
         mTJw==
X-Forwarded-Encrypted: i=1; AJvYcCXFN5N5lEtB04K77JuefxSuHRsK50KpslrODvaFe1Ck3Gze1+SUaSd3Q1GhNh7XCYmNQH0PAkjcXLZW@vger.kernel.org
X-Gm-Message-State: AOJu0YxWNQdyx4taaBmmgfs9xTo4bsK6lmKV7y0dwlMVjGtEsJ0xrqSb
	5Lmv4FClqwpUbstKt4wcHayYetwNzkK8z/GUsLlc1LY+GjVvTLwopm0wxHM2+FEktoIkSDNvBQq
	+lPf3NCAXUrMdg2TGqPRjmfnMApC3RIU+Xt5IwNlG4xvYoZ0LGbOcGji2C3/34lZG
X-Gm-Gg: ATEYQzwDTlLE12cGO+xxFX9zY2ZLg5Tcr1zDLFCPb02ZnDOvT7orMKWCfVRIPOKGWvX
	y55DaaYqOkpJ0E5vB8Xn2hn6h93r0WHT14/SOGG6x7Co+BKgBJxImE7GqfLPfBXEfRlVkTmWjLs
	j6WPllSRiMGFwha02kYwXy2qldk1PWxkIHtjaaM3HxqEkrB0JyGTVFVHw05Isf5uk+EDRGGegQH
	JOc7fBFcKHqDuyfdrJi5vnGyPa8ZMinLocQB70CJayNNXwXgnhGbchLSI+bNMfkVs6M3jRaLqSk
	YTIfQoPMe6xRHTFghpZC1c5zginwHs+hi6oEcBfUSlC7FoJGlarV5VUurEr03ZbGvI+QWxWQ0xG
	WfwdiaytBKMWqkpnBxIJBlF3v1+7ph8H/+LkzlSBJ/Yx5R+ajaVgVNJ2S0DrCA+Ue0RYc2kPbQ+
	0zB0ntjTMZ0B4MttWZAv5Ase7QiUKDalpSLZg=
X-Received: by 2002:a05:620a:4629:b0:8c6:a5bb:f464 with SMTP id af79cd13be357-8cdb5ba1b99mr525274285a.66.1773415641033;
        Fri, 13 Mar 2026 08:27:21 -0700 (PDT)
X-Received: by 2002:a05:620a:4629:b0:8c6:a5bb:f464 with SMTP id af79cd13be357-8cdb5ba1b99mr525267685a.66.1773415640440;
        Fri, 13 Mar 2026 08:27:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1603328e87.18.2026.03.13.08.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:27:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:27:11 +0200
Subject: [PATCH 4/6] arm64: dts: qcom: sm8550: correct Iris corners for the
 MXC rail
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-iris-fix-corners-v1-4-32a393c25dda@oss.qualcomm.com>
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1290;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=iXhVRNLtsMcUhhJM5O/4QISYE4TmUzbh3YrZdivi5uw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptCzQcGpMrRVFO8ScpG9qIbxaR0Kgxxdex18I3
 B4MdIkyeb2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabQs0AAKCRCLPIo+Aiko
 1RGXCACKtMm2YpfbC712fndgiYmJcaWdUAq8ey6siMFF/tX/qJLC7DqmAx7O+xu/eMXCIOcjpTL
 fmOT+65+Xo9T5yY8zKCND4tqidufcMf1exoLLIIQOAUvIZnU+AIs2vmv0mtHNfO1tuySI77saKM
 Boe1ZHl8fjFPLhOodyaF2rXSWTPGFxE0aOMX6wcwApqPQtkU2yPp66M4+gvXfl0gJFCYn59ADZl
 xEHiOpXDeCobckijLAeeIVnlFDylFYmqfyj41y9JSTQyttlGL4svJBH26SZ6LzfR/ToeL00w0xz
 jvV2bb4VbTAr5CivGolgjwjXEI/WvVgLzhVHInD4ZOjz4nES
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: Jkafq_MSaMEuIOKx8cxAEQyJnwpuQvAs
X-Proofpoint-GUID: Jkafq_MSaMEuIOKx8cxAEQyJnwpuQvAs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMiBTYWx0ZWRfX1ZIaOxdKaoSz
 ZtLxtNv0kxz79OKwy4m/THrYYcZbVV2V4RMzIv8FKF8Qb0CFIbHfxHxmw9I9g1CXimhjSQeP/EF
 FWFrXv2RGlt/nephcQbM7mLDp5FTgdS8iT5LjP+zyXrJ9zQAZ//VCTWpPS0f44iLl4PS4NWJ6eV
 SX0mF8rkRfsL5knWMam3U+J9+MpR8gK42N6JzKDd4Zs9E3yPfv6FbM05dmpQEHeN/ELRYuLP5lq
 JAixdTvI/BzKuZIDz0zeGEJydG33lnfaIdWtc/R1oZMu73i6n9Y2yqX017BR37VsgQW59KWUky2
 bHfyWMvhaF9JpFSOjpb+TitI/L+rrNls+XBiHUmN40odc4s12/REkrcX4GbPnHVD8vvSF44GcAz
 g5+qpUc4QCGZ2uSqiGyGuheuU03d5ME4ilb/dcpwV/SoUk2EVzRfeVc1c6tH4AAm8Cgn7AdYO6o
 yBKODhNAWqVRxYSSgpQ==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b42cd9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=UouAheEfswbHdU7NjTAA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130122
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-275377-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9DB2A28608D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
match the PLL corners on the MXC rail. Correct the performance corners
for the MXC rail following the PLL documentation.

Fixes: 41661853ae8e ("arm64: dts: qcom: sm8550: add iris DT node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index e3f93f4f412d..6a338c522ee9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3320,19 +3320,19 @@ opp-338000000 {
 
 				opp-366000000 {
 					opp-hz = /bits/ 64 <366000000>;
-					required-opps = <&rpmhpd_opp_svs_l1>,
+					required-opps = <&rpmhpd_opp_svs>,
 							<&rpmhpd_opp_svs_l1>;
 				};
 
 				opp-444000000 {
 					opp-hz = /bits/ 64 <444000000>;
-					required-opps = <&rpmhpd_opp_nom>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_nom>;
 				};
 
 				opp-533333334 {
 					opp-hz = /bits/ 64 <533333334>;
-					required-opps = <&rpmhpd_opp_turbo>,
+					required-opps = <&rpmhpd_opp_nom>,
 							<&rpmhpd_opp_turbo>;
 				};
 			};

-- 
2.47.3


