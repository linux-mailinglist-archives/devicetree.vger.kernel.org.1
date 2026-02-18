Return-Path: <devicetree+bounces-266483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEMQL1H2lWkmXgIAu9opvQ
	(envelope-from <devicetree+bounces-266483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:26:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3F4158488
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF15A30620D2
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E03345758;
	Wed, 18 Feb 2026 17:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pa5XyaV/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TxsJFj84"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6142D34405E
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435483; cv=none; b=lxRa5vtTCVWEKf9IvTjItCX5fcBUP3ySbk6jSaT/xCGj/OrK5fqJi1FEinfY99HuxyX4eBU3TZDUdqLKSKI0C06LdM7Z0BqBAwoTGT1uCZyD3cLmIRX7jn8XNz49FSeTMUmCWtwxVdg5TobHlOCUlZq+KzdPa/S9jA1SHcdLFFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435483; c=relaxed/simple;
	bh=3L8k3eMn3XrWWztMmzJ2j16nB3XeopCqYWwz8mdTlow=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tS3gFuLSTc5qHwwtz7b+J402CvbXgI1MGAAI14rIGMMXfJ446oaAZX7ZvqvgV0kMslO/r1a83lS/cElv1amzUOqtzm8PuoJf49pccG5UCcpsePtQbFQikoYz0ydp+ZkgLiZ8jT5frb74xcot+PhJtJSc52i1obNq+yr22zgHo9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pa5XyaV/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TxsJFj84; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IF2hbN421595
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lVZN7JZSRhJRjuK5pCIaVcsizkvHO8AAsWLJIf+DiEg=; b=pa5XyaV/veZUeo4R
	G5Z4QRemuoH71ViQpGqUXezGLOjLRAsh3mty6kDUm8If2EwKzxm3XsZMBFJUcPZJ
	0yvTtvyuYdziaDmLd7Hx6yMbF7Gdv2EbXgHGF++Fyh+zWAppZD/s9Xfyd5wa6j0m
	pZ/p3kZzpoGKZQOf4frdFGUdIeAQ59ge97cyb2K0EeccldbzM0pgPQ8ffbadlKqS
	G34ZtPek2dT3RlnTwkRxVQjvVwF+752PX8vWKz6/1sYclwpicggSDG24xA6P1KR7
	Rxf8vNSjB/kq10ZuxCcCpKzIPs+zNk7ZhNEWxH+UKIbF8E0JqeaBPwOuX30t//VV
	yfL/+g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd76e1v72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb52a9c0eeso35717085a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771435478; x=1772040278; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVZN7JZSRhJRjuK5pCIaVcsizkvHO8AAsWLJIf+DiEg=;
        b=TxsJFj84XAoL9PD0Gy/fgfHC2hY0zL4Yy8Sp65aRmuBVWFlZnYZ2wV2GhRxYH9uzE2
         BvQPigcmWkpu8UkohhpK9tEzPBlHFEayy90ieXHo74NyhmbkEAZy4ZjhFa54oCOFMOe0
         jsQdF4Frd49Lv0+syirCSlCHaOP2+bQqbXxyKAWu+NoXwKI2iWoprX1HaDfaVQ+pyZ53
         RfumL0batGdU96MgYWfNZjSWPwhoD+LUDEZjpmhFW3shxEH0xWzgHh6gI+YNbl17kv+D
         HSU1IqS3IeDMpY/3/7T+tpOpfXw3mht5AlqrTkPexrZGhkf8Rb1wjIOJmg/wIt1Wyxhr
         NrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435478; x=1772040278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lVZN7JZSRhJRjuK5pCIaVcsizkvHO8AAsWLJIf+DiEg=;
        b=HPxSRdhbXoR2s1NeYBkvlDyPuK5z1ZlWxKWGCPhbgenEXpT5XNGqQUVO7de5Pw0mBl
         lV0pEmTceMW9fZxlQS6Ubv7e8N46TOr3fgwHjCmGRM+RmjtROsdbrj3aBlYlYLYIYCYh
         fEPsh1yHV4k61HWT3HMuEXjZgAN9Zp9NcdsXXnIo7RNzWxYPKMGXD9r1qzuAEBNN1Kmn
         kyy005wUPCXfnXWB3ev0akPNgJJb8Bu5ZIiDjLb/0vymrZ6bARV8lcsmtNa5FCPsPOIL
         98EK63gnmwXmlm7pji8fMVhpsc9LEPPiNUksncn2w6uKKfIp3b+EWEebfomo9gr23Jaa
         lI6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWOgsVDDuob15sYROPNLrxTgcELHx2SFzzTwWo/e3Fhr57839lpBzukiTufJrgnojJOgny/KI8BLcfW@vger.kernel.org
X-Gm-Message-State: AOJu0YxYWyzVQVdAP04F+mQ0w1Rh3KFg7MAzzIXCW0gPMgXOCSLl3BMq
	v/fyTSDduvWVNQEuAum6fu9OfX6L3JdWfpf4fptmZFMjGSGBT8hOkKTzOgl9n0xoDLfT++OdoBU
	66hnEL6dEkSxr2+DmSxSzDyVpvq3BMjuFSO5r/RJCGLTljufN53u80eKtoZKCbydGiP85MfUT
X-Gm-Gg: AZuq6aLIouKWSjBIHpN/xZz7KBhW6fVo5+3oJlZGpJ6WlTrp15fLZ8ewHDk4+HJ4UfO
	+R/drUDthOirMPhAX0erVYfQWn9/3ZKTr3enhHRweQxwAiJTVx9qNztCTAylj33xh3MDBXZjd6i
	pbw0Df/DGbbOucAjcDb6omOOpsQy9gxqFmKNV2OLWqmbN+ugRMjdDpGBZbyTzRVsv01V7357/q2
	eJtJOZl7cKUVJRXacDW1YdsGyARv31Loq5FU1mooWbnNP0JvzX+FpS6GrG5gCaeX1P5LcpEsiZE
	P6KTy86Wel97VYogTBtno96+LZbJdmmYF+CFAFNNfbfoOGgxif567xyTXk7Lw5pH4HgWs4X4eFh
	E/Y8wgWfnFGdR2C/vIsvqvzMnFfi1bzVYBb+gP1Mv+Q6GDQ==
X-Received: by 2002:a05:620a:408f:b0:8ca:2e37:ad08 with SMTP id af79cd13be357-8cb4bf98c7emr1814645185a.34.1771435478378;
        Wed, 18 Feb 2026 09:24:38 -0800 (PST)
X-Received: by 2002:a05:620a:408f:b0:8ca:2e37:ad08 with SMTP id af79cd13be357-8cb4bf98c7emr1814641385a.34.1771435477968;
        Wed, 18 Feb 2026 09:24:37 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8d46sm44181368f8f.32.2026.02.18.09.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:24:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:24:26 +0100
Subject: [PATCH 4/5] arm64: dts: qcom: sm8550: Drop redundant VSYNC pin
 state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-qcom-dts-redundant-pins-v1-4-2799b8a4184e@oss.qualcomm.com>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2329;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=3L8k3eMn3XrWWztMmzJ2j16nB3XeopCqYWwz8mdTlow=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfXLrO8sYj2avHyf4wuz39VOYGgLmSdLEZUwS
 6vusrHIpRaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZX1ywAKCRDBN2bmhouD
 178zD/9c/vUhuvpULxZpbQv/0jK3Fd7wEva6LY/XH53GL64TCdqavlt7cycBVd8zuiNzD7rgq47
 m7tBIHduMQj7yYoCvuCSToEDK6HqPn5Ep3iN+SuL0dne4XiMzMa+CiGp73xUhY6p20PZk4OvwJW
 HNp/v1mYCo4OVxjHXXOKsOgN2v77/wpaKKFq7gv3FoWeTDUki1Su8s0rBi1BQH7W3Q3rXjgrCtI
 Tu7AKpEqFUvJVH68z1nNKp4O3uYtfdgQVFKIZKawYyMsuN+LiFRNVlnp0ZAGMqT+GRnM1O/gVfs
 h4jWfKMrnwh+j5VNdBppUxpD55nPwzhr6P0RjjgTMM5vHxMi1D3tUWYOl8hYjxoZ0JKO6ph4VTI
 ztqcnRqOXxvzvnfzHZ5+jPrwFTg/0wmcEGbGfc/rjn3W93nv/nxpZ5oroVLXl1Extcs25U9Wdui
 J9OEpALvoj1dGj6XTzaG+u0I46IWUmJAUSln3wkCGoVmXDpIRTzhO8nEMJ006EexB+JyMMPCV7j
 YhYwQbmXLgFF1qECc1aKA0dDwJ3m2fu+E7kznODLRCt07nCkfUvNcPPK66tJjIGFbjf2IDFjX8V
 6ZMnKwsK7p/c97SWtcO4lmycWAVOOeHjP3qQN5BzQjmcIPGsFBVsIr9Jcwonkl+PNPrcQy/W86n
 5wy+Lm9+1AwwgaQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=OKsqHCaB c=1 sm=1 tr=0 ts=6995f5d7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=kV-nSK4kQYlWBrUG9uwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0OCBTYWx0ZWRfXwiraU9KL/6GS
 OVhsOQX+4qHxMhqepNNhommXqd5bkw+qXKNAsp4L5b3EWsKev7YaS0pMl+JYKXN/O1308XO573D
 dXsqiq/fnJVfRqvRsvT2MNHkNVCSZAp9gSPRFcp4pQCKJSVk+umfsVZiF8uCw1sRKM909knt6za
 Ct40Wdlu/47m0bCv3n7mc5/wQCuXQXECS5bUHKYxItxqeAY+Wq71xRLOFHCrFGnUuJsyHPQGX5j
 ewGiQc9f50OnNy0PMV52fTg4rJ5032qOHB6F64NI/ypqQJV6UERjlQLhQgts2AVrC1Hr5vF6OBI
 1yEyXcc4RShoTg/VfF+VudrYi8Ag00hohWWlv2QGdaTxzG33BDB7vlGogwaaAYOaNAGG/BNKccF
 /zmLxBa6BNIiJznaKI+hdDAJReg2N9J8CdwSfzt6dzEeSHUBXbFplXU9owUib9yBpDX/tuAMIWi
 0fedp5omwIrhY3Nn+0g==
X-Proofpoint-GUID: rfGTGMNiV0oKXYcf9HLUf1kjcZAgTyYN
X-Proofpoint-ORIG-GUID: rfGTGMNiV0oKXYcf9HLUf1kjcZAgTyYN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266483-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1E3F4158488
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 13 +++----------
 2 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 94ed1c221856..5769be83cfbd 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -707,8 +707,8 @@ panel@0 {
 		reg = <0>;
 
 		pinctrl-names = "default", "sleep";
-		pinctrl-0 = <&sde_dsi_active>, <&sde_te_active>;
-		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te_suspend>;
+		pinctrl-0 = <&sde_dsi_active>, <&sde_te>;
+		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te>;
 
 		vddio-supply = <&vreg_l12b_1p8>;
 		vci-supply = <&vreg_l13b_3p0>;
@@ -915,14 +915,7 @@ sde_dsi_suspend: sde-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	sde_te_active: sde-te-active-state {
-		pins = "gpio86";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	sde_te_suspend: sde-te-suspend-state {
+	sde_te: sde-te-state {
 		pins = "gpio86";
 		function = "mdp_vsync";
 		drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index c35d4737a412..2fb2e0be5e4c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -870,8 +870,8 @@ panel@0 {
 		compatible = "visionox,vtdr6130";
 		reg = <0>;
 
-		pinctrl-0 = <&sde_dsi_active>, <&sde_te_active>;
-		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te_suspend>;
+		pinctrl-0 = <&sde_dsi_active>, <&sde_te>;
+		pinctrl-1 = <&sde_dsi_suspend>, <&sde_te>;
 		pinctrl-names = "default", "sleep";
 
 		vci-supply = <&vreg_l13b_3p0>;
@@ -1179,14 +1179,7 @@ sde_dsi_suspend: sde-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	sde_te_active: sde-te-active-state {
-		pins = "gpio86";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	sde_te_suspend: sde-te-suspend-state {
+	sde_te: sde-te-state {
 		pins = "gpio86";
 		function = "mdp_vsync";
 		drive-strength = <2>;

-- 
2.51.0


