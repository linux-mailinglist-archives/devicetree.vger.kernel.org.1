Return-Path: <devicetree+bounces-275375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDG6NsAttGlnigAAu9opvQ
	(envelope-from <devicetree+bounces-275375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCF286070
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BF54327BDF8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE0E53B0AFD;
	Fri, 13 Mar 2026 15:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FI4tEk7S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iKPM5awW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550583A873B
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415641; cv=none; b=XOww95UgkDVyjDry3z6iQz/84pFo9AveQwzhU/X7VI3Tt88NFc6FbUjJRDn/GrDGdFzWe0lkl9hNI229bi3Zpao5ANPp+XiloXDqnh5D4nPg2yxwtIoXzaQQtOpzPAXSWhePIrgngC7AFXmx8g+wtXyhvTc/wvmUVdBJ00eMaDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415641; c=relaxed/simple;
	bh=rpU4GTT/yBv8WRdeSweR2UfeIRJFBnS+/2XaROjOKIk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ILVWTrOFk+aulD5UCE2m/YRmDZCkLkh8dLSFzmbSd6DJgPwcWaO9INLKpko050UJNmRZhZsICOhP4Ah0SB2ZZDNKCrUn9tdby3I+OFazYg/5XgBE4+xGa/ZkUVmWyZn8zkXjmPZNy5n24SpL814pSTtkc7yaRtx4TS+Tndl76j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FI4tEk7S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iKPM5awW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DCAPHh4140701
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eT4b4ow80B2jlEgHujhNxN0zcBznhlyhVd1QSqClQSE=; b=FI4tEk7SxxPm7Rma
	YWwm26hDsGthdCPbKfHVNk31bb0wIjNF35PuyfNZ8sTDZGeGKAMjHfPbMvkQiFB5
	mH1RJ+THmwF2ec6FIEra/SCcQ2BMFkyho6ijjbRR37VTI28Ft4UH3jcqvAvNgA20
	jSvC6m8SiOS5ABZQgx913koo9KiBfw61cUAS+hbQWtCAmFBdebfd2jwG6cLnT14b
	xwLxyFEobxta/GxVcAqwv2mzWH3yg81F4aDLFvd+LJw3wuZ1ZqrQs8OGdgCpt+dE
	AcOsbuS+ybit0dZqj5iUCipqUGJrtVuZC4NxWb73XqpEYJFxMRAnVASaE5zS+xfS
	Tjw3AQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvbn2a5wt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7c4ab845so984878785a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415639; x=1774020439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eT4b4ow80B2jlEgHujhNxN0zcBznhlyhVd1QSqClQSE=;
        b=iKPM5awWVFMFoUtNcQIp0WC9XVP1el24lu5dUfK7WbuXUENVQnIm1QydZ47PYbnQDe
         2CFc9XF2claQfPgEIMAC1tmYXOJbXPoNPMPdU5G7NJWMPRiZT5XOb0T57QZjOZ86BpfE
         PZvIs5TSoqMC3rDOE9LThVq9amdgLJ69erxdUOum9joIYtZWrujrbAeDtPOPgRU41hCL
         iyh/pri23lEDNbiARuFO2p2jxgP7IiIza2NOZB2pXCJyVLbPlpVAEl94/6KvJx2yDNEO
         13m/2A6wxEoVsYhtdRP8sK+yXvSgn/ZY6d8Td/H63t2frePS4+lqFgSavzR8tiGSsMVa
         FgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415639; x=1774020439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eT4b4ow80B2jlEgHujhNxN0zcBznhlyhVd1QSqClQSE=;
        b=VWSDzry3oUBA3gFFn6kH0MxTk3PJUC1SwM84PQYqK/k9uqfPJ0KsPnc4+9bOGuUlIJ
         F5gkcDDQjUhSHdxRxl6RBE/v0n3D9q/xiMYILdRXVdU3U540pqmZwBUWZjaPkG0EPnFR
         3fRqV2DKEQf39EcITOQl3KpMO1PA2HSxHBz0/vFdJe08iOGepSfkASYoEtQPURxi0e8j
         DLpERWhWfNpXdgqdBkxWX1LblJkzSt1k/VeD9JGK8XFRhEY9dHHR2gAeArSS19z9Gv6d
         xJj+HkgTVfQ4PwcdxzqH2TPzR77V78TZVsNMurIkPtsdUdAnBLVYoqfsjnT27U8m2L+H
         YryA==
X-Forwarded-Encrypted: i=1; AJvYcCUjPq16A3s6zmVEAM52sGFxe+e2YLYZggTXbelIuVsWJF9mP1PHgXEShIR3y7ZzdkLkQa3fy1VHgQUK@vger.kernel.org
X-Gm-Message-State: AOJu0YyFGg1idyHH1V6rrPDhQYD2hq+pebhz/3SLm1Z1b1hH+2L4ma9N
	y5R2NbDeTlrJwm+VGf14KoNH+wmDPnsyyiWXvKVyJvqApc8NutAM3Y8yfcuSinwAfi8Cby0w5VZ
	TGhS7RWlFfIZQ7ZYmKAGDYVkel5ZvE+pqf11ZOULwHpaUdw4PM1wTZLnRqSLZHbkY
X-Gm-Gg: ATEYQzzbzaGoQe4XTEQFUsCmg7/sZgENTVkJH3053+vSk4Xs4w3S1f18ykjs0a9do76
	wNti4SZxGJoKAt9oal6ygylSB7nPxIgvyuhPQoKX3I3QLuyyZm66dMAsLfs66Kr6Id+A2tiIq3V
	HPHxXjq2zkLaHTTCKqzUcNY0W/b1wUJ1WzXSoVItb7q53AGGlKWsOFLDGIkns/qDH3wYUvf+0x0
	u4gJVUU3bwHkzV13Jv9O8CaCArMMy5bk9BLZHzCmwX61kKU22Xc8o+XpUPjKmZsQ/0yM81G7VKh
	8Gd5Ksp2wOn8U0KIha0UciVFvXX9ShSYi0quy1CjyQ2JT3+kdSpgc0zEcrRwT6QuLUaYwQkp6lY
	+L3M0lJGIgQ5cJLTbPtQlhgWWW2+GsCcGUkJFkYhjD+t4tYdf+PWOZAONEqBEJuHJUplWMNoZv8
	9i/iMOAYr4DRoecpeQ9yGioZfjaA5Cs3PTg2U=
X-Received: by 2002:a05:620a:1a0f:b0:8cd:b317:a0b3 with SMTP id af79cd13be357-8cdb5a8cc4cmr506914185a.24.1773415638161;
        Fri, 13 Mar 2026 08:27:18 -0700 (PDT)
X-Received: by 2002:a05:620a:1a0f:b0:8cd:b317:a0b3 with SMTP id af79cd13be357-8cdb5a8cc4cmr506904285a.24.1773415637224;
        Fri, 13 Mar 2026 08:27:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1603328e87.18.2026.03.13.08.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:27:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:27:09 +0200
Subject: [PATCH 2/6] arm64: dts: qcom: lemans: correct Iris corners for the
 MXC rail
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-iris-fix-corners-v1-2-32a393c25dda@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1305;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rpU4GTT/yBv8WRdeSweR2UfeIRJFBnS+/2XaROjOKIk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptCzPbDVGubFAdB83fs7quYhRt4vbH924062aQ
 JbpmW0WV3uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabQszwAKCRCLPIo+Aiko
 1S+TB/9ijxzpDxgoqv9lI77I3MBQE1lHdKI3R9X4vzxWdqQ9o3Q7vVMy3RWX5Bdlq/Swm7sql+T
 ID+F3jbvCe4Y6NOOtU3thB0RFeA2/mf77ZVwry9wMQYC+DY3w+h6Pz0oiZyQPtvuJXhOUxVSLAW
 S5KjLH68AMWfNjVqfj5pkMnB4F3Zd7+27q199N3vTQ/Q49svcdmjg4ZfYaLSvfoDCtKk0qqVYE4
 f3vaTQdR7sMMQVUIT9BMReRzVrfvMEVch8HD59Dyup5/qph3BZW67eCZFXEmeFRvSoLsXqQYwXv
 A7Y9nQxVmCp+sUa51tw1apvNLuJwRrp2cuuG8paOOaQJXEyI
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: o8La_JHRUB1KDR5Cz1O831dU5OEenkdP
X-Proofpoint-GUID: o8La_JHRUB1KDR5Cz1O831dU5OEenkdP
X-Authority-Analysis: v=2.4 cv=ZKfaWH7b c=1 sm=1 tr=0 ts=69b42cd7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=UouAheEfswbHdU7NjTAA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMiBTYWx0ZWRfX5cTsCAzhx3sI
 A/R6nL6Luigde3ACjXWVwMmRCMPx2U+UvYN8zEociNNkKF3WzTrND/jTQFGI2b2aaHL+VKn1GKM
 oZdHb980PoNup44uOlloaDqmJS0Irc5tKsazgShLVFPfDXq44rWS1Ibl8hURiiCiUhFlYaav6nM
 POFrD5v9A5/jhmY5GaDJ4ovuVSwMXWPgIG+yNnI0Ga7mPI7Cv45JeeNSgxEDphNhESLiZPfzWUy
 2YFHfR+7xNRVeeLucT4hZLcT0NA92wsxAVRH5BxXWyLQVmdEIdObtbX0NTfGpP6g/jDHRez5y+1
 ME/La5r8oLJj36YNbSqREaLBzsR5u/VAMip4FtQTzQLmmquYXXfYS5+mlDXedBc4DhJh/8JpQHO
 bMhyHDu/GUXx/fI4IfrOQ+0Z/QYNIXfkYb5cl0uINJc0RPccWHjPRFP6GsH4N80mLi1hebW+qEc
 N/PuULB6LGwRtGrA/Ww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
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
	TAGGED_FROM(0.00)[bounces-275375-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 40CCF286070
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
match the PLL corners on the MXC rail. Correct the performance corners
for the MXC rail following the PLL documentation.

Fixes: 7bc95052c64f ("arm64: dts: qcom: sa8775p: add support for video node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 67b2c7e819ad..147ebf9b1ac6 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4625,19 +4625,19 @@ opp-366000000 {
 
 				opp-444000000 {
 					opp-hz = /bits/ 64 <444000000>;
-					required-opps = <&rpmhpd_opp_nom>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_nom>;
 				};
 
 				opp-533000000 {
 					opp-hz = /bits/ 64 <533000000>;
-					required-opps = <&rpmhpd_opp_turbo>,
+					required-opps = <&rpmhpd_opp_nom>,
 							<&rpmhpd_opp_turbo>;
 				};
 
 				opp-560000000 {
 					opp-hz = /bits/ 64 <560000000>;
-					required-opps = <&rpmhpd_opp_turbo_l1>,
+					required-opps = <&rpmhpd_opp_nom>,
 							<&rpmhpd_opp_turbo_l1>;
 				};
 			};

-- 
2.47.3


