Return-Path: <devicetree+bounces-267484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HlpBzZqnGlnGAQAu9opvQ
	(envelope-from <devicetree+bounces-267484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:54:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D5F178490
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F40D3058EE1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427E4258EDE;
	Mon, 23 Feb 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NxBWEb5j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dXBNg1Dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0813A2566E9
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771858473; cv=none; b=t6ipxZsn01bgX0HQ/RSv0KFUQ0l3SXuQwxXKvfQFZ3x4/gxSDCPzjgD5+51hkxHxOvWkE0X6iqlvEvsFEN/p+H5FVxcFebplmxUamIjeT8AU5ONWur/VON0mgMEegs4f7CPy6RWAK/pbNYQdHa5UmJTi+V7RF53cEBgcG/mAubo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771858473; c=relaxed/simple;
	bh=5IjJY41jrJn8WXxooVN6FciKbwsGy+4ZZ6/D+Zxslak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p0tIn1XsmeAI0n+4+QEfsX8NBLrN9yjINVJR5Mm6XJ+s4divmr+IrYZv63R4r8Rfl2Ob5+qBtnFT9oTi/Np3b0V8iXwmdy4FpgIfcDV3qkzAT03L4hNVoxL4i05dR2PTTfygP/OXigyHmIWYj0oeVD5EfXmODaAlphveHmmVIEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NxBWEb5j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dXBNg1Dc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NDsGSX184939
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fNApJBa2znS9PTp2E9XpBWmk69Vl+yubH0GKVm/vM2A=; b=NxBWEb5jyt3r/Qag
	JkE2gmrfdbYATdSZ0TubQAOplwpt9T1W02iKc122ELOLAebuLBrzjnzj86BtyUIa
	A7pb3S9IN9xNhtFyTTysNdpkwI3bZ9nnqYbESG399DmGP1hsYCrjsTLphKIfBwCR
	GkvIqVoAfcZm02UM5iHStR8zklywM5fwlnZBzhayuXta9MiNDGam9b+rARPcaeWU
	5nXj6n3enpSY4VdsBVlRXO1Exxv3XDWlaT92DVizw9BY116oeQsa9k2R9u+Pk0RN
	Ndd4noykZ3iSvGtrYhaeGOwdS6uqOiJIWkZxo2rMXNSYRNvPSJI0qQPE7h/5XAFi
	azOhYw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69g5r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:54:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ef98116so4821084085a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771858468; x=1772463268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNApJBa2znS9PTp2E9XpBWmk69Vl+yubH0GKVm/vM2A=;
        b=dXBNg1DcEDdsIwLcoI1v2KXVns1K/4sElGxnJ2kcRf8x4Dtgx457Ai5NdxiNC1HCPb
         GJTzZfOSX21TohVdijxR7kx9UKSJRPHKIbmNGUDkSXI4pkVlnGPlUy2fnwxNPyKNJRE0
         b2b1suzFxJmiL3tBqfSqxWXRL3WSRHLrbx0fDygeLy7KStTs+WBc41mLCN9D0cIeR7WO
         mmQ0CgY9ZSRmwWj8oq5IYUGlYM64oUebQ2ZfkiKNVvBPyO2q/qXQocwTH5jL2AorvoXp
         dfs8O46I8jRFcmFum23ksQow0SgrLS3fVcl2HPI5BXIe8OomTU4KZA56r7htkTOSMuic
         v1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771858468; x=1772463268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fNApJBa2znS9PTp2E9XpBWmk69Vl+yubH0GKVm/vM2A=;
        b=e75u5nIcL1/cbfZyZ7bkf5LdXTZApigJbsbaeWCvzLSC2PQj1svuz+ygrCh57PXd8V
         HZ8fCp16Coq/cHxneZB+jmkcUs5e00MXehmn7NKDi5utl19X8ZOGbWY16m3xdwZ6/E1C
         Mlhi7kJvGvz2LmqzhSmWjQ7Bm3dH+TIs63GQKgUdsfwCe9b030wpxjMDPVMWdDcuWDOj
         +3U2UedzBMjsCtjWrOdtG6Htv3AJ4na+2GKKFMjdKP3JqjF6tdnUN5D9Jmy6gYO36IJP
         e/tdhpODfY30rfIdikMyl37KKI/i/WAPngtxBLOwh/gKWFzaQ+mDYxlmrjPX9iP4/jOl
         wy2g==
X-Forwarded-Encrypted: i=1; AJvYcCW7ffoqpXhizS3lQwuv54vnQwFYHvbD4jsW+Yqd8ZzOuRtuvRcnn3uaLO8xVVvQ8Z8X/dTfSMGTgML+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3/BHAZZB5aa9tGtnAI9gM8XG+Fg0ikvXcSwggM+Qytyj8bMGO
	UEKWcApZpMrX5rvfV/xtvkwviM0Sx1h6UMKKETZ2W6aM+5NLJie0TeAIfSun0zeJ+SaJQ+hnRpI
	8MQHRQ2q7FfozBnRVDjkLoj43umDUuYHIFBvUFLzvECfLWjpTK9opze9Vo/tyaP89
X-Gm-Gg: AZuq6aJ+0Hk6+ZKmt2eTf5mTK54O/UgP1EpQmYxcwLPAx3j3VI3hfMkRBnkS7hhiYSV
	YiSZshrn6+asaAYY5InIyGXVzuK4qcPEXGtO0kZX6Bsj8jXHyHrj30b7AieY19hQc8a8nm094qv
	50vcwoxuUS2Z66F+jkXbXUM1wzJtv3edr5VGWeaVEBbC+nkraPIj6MojY9S8VBUieb/jHDeB4Is
	MyipIqLP4J6W6iu2wwU1PPg+paITSoFyXl3kS4f4yRCFUzqqVasUK9+9gXAPllirqLkN4ill7fx
	c3RtXs129SLoqExrMvl+xRe1VLFSqVNDIQn9YAMGwjvFZGgX7KNX9eKP+mu84x50R6FfN+OElRr
	GEsCn3Ug+nBmQ8hLIm4kcheaO5Z7zm0kevtQLp8RjWGc8Ew==
X-Received: by 2002:a05:620a:7086:b0:8c5:391f:1db7 with SMTP id af79cd13be357-8cb8ca83840mr1039066485a.64.1771858468214;
        Mon, 23 Feb 2026 06:54:28 -0800 (PST)
X-Received: by 2002:a05:620a:7086:b0:8c5:391f:1db7 with SMTP id af79cd13be357-8cb8ca83840mr1039062985a.64.1771858467712;
        Mon, 23 Feb 2026 06:54:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b88esm1646629e87.8.2026.02.23.06.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:54:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 15:54:17 +0100
Subject: [PATCH 1/5] arm64: dts: qcom: lemans-ride: Drop redundant
 non-controllable supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-qcom-dts-supplies-v1-1-f90ac885b3fd@oss.qualcomm.com>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
In-Reply-To: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2011;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=5IjJY41jrJn8WXxooVN6FciKbwsGy+4ZZ6/D+Zxslak=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpnGocqB1Qf6ws7i764U1gxloIEm68e4hh5/URb
 xsAnErKK1qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZxqHAAKCRDBN2bmhouD
 147wD/48jJRe3DSSCc7eh4muSgrsF382b33P7F6P9h/T6430v5aSTbaPs0JiLjS9iKSEAIUKo/B
 gH+srgO+YlSt9yOQIpElSjEFWaZBSipLwqfWGwrLeo05JaqgJq/qzOC6Nn1ZKNUAO6lEzJ7uCt/
 rPF9t7Ryn7XnSLXvJpHvtbkNanpNVYLakrQaNVbJErsVsrGBb0WFs5BETrlN/Ubm3rhQtcBXlUu
 b7T5Zr0HKmvrfabkvjC8U5QDfPt6oBv4Jf0IDq+HNdOtS+NiLPznflzwHlCWkYdn9gl0gvIigaa
 +ua4F083h+NdfLw1Jy8W/WBEuLX2L+DQjfkRlW9E2UeCosfob1KCeEYyb+uZOvqkVyQ6a2F+HX9
 B9u0fLd9RQWwzxxELbYMzA6j44atabxmEIx1S3uU78gNB7wProwoVCIjDNSDfqescFHGfz2iAD4
 6WJnsTZ61YDNgqqRIjWw+eSAuozSqGPvzDPRJJ2LAVEGyjdRTgjV6xKXYyfx6d9hYnL4L9HpR2k
 D0u3OBvK0GCsJfQMVvZEfHg56v86S3/4C1JUIiraJvkkNh2do5VEJIMQYBOueBUf7vvFgCuVilO
 touGFA6jA5YR+GVzMGPpLEdrYOTCMKKsLxNK03pOj1u+RFGWN1RyrL9GyOwgUouybW7jVyqbWx3
 o1ZYKFydvOJ2wDg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699c6a25 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=-3cLnZj8YNrZoULhp2sA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: krNJvMtqZNsAcZ_O1NeYDaiGEDEALFJn
X-Proofpoint-GUID: krNJvMtqZNsAcZ_O1NeYDaiGEDEALFJn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEyNyBTYWx0ZWRfX8sEO+xEKtNLD
 l36p61fy8mbZ9/poz1GBeEfg9dKClLiFAaVdff/b/6wI4M4aQmVG8PI0c9txsFOkmXwmEyQFHxj
 vkYfAV1+xb+s7bRTigROkZkfI0J+u7Fc4tbEguAsmCcm4gWjSfbBqWl30xP2VxN2S49DBd3dayO
 rGiBdz8IuGPtzTxKAVmCJrdgPuP7DY/Vkv9ZBvhySWCqV7UB2REpjlUctnBwIaQwngKIRxbisoo
 VHsquPGWnooTHSTbfoRGAddm41ckLUdCnTzWj+bScuQG0d2QD/9dGqMVsmKhTdHPiFAWclhkc1O
 WnVbhoNvp73p8QT4pnMVdSgShuzw9cj5AcbRojZGzkAopnFw43xC8Yrhgpa4+zmDq8FVLFx5clo
 NEeHc09OXdvr/h8U1HHkr4XqU5txhumbT31y94OSSGJDZ1EC7gj7lVcLTzbXKfazv1ec6EzxEfC
 +udm9NmBm5sjBzWm9Ow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_03,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267484-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: A4D5F178490
X-Rspamd-Action: no action

Drop completely redundant non-controllable chain of "regulator-fixed"
supplies, which serve no purpose except growing DTS and kernel boot
time.  They represent no added value and because of being completely
transparent for any users of DTS (except the bloat), they should not be
represented in DTS, just like we do not represent every transistor
there.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 26 ------------------------
 1 file changed, 26 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index 8fb7d1fc6d56..31bd00546d55 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -21,28 +21,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	vreg_12p0: vreg-12p0-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VREG_12P0";
-
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	vreg_5p0: vreg-5p0-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "VREG_5P0";
-
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-
-		vin-supply = <&vreg_12p0>;
-	};
-
 	vreg_1p8: vreg-1p8-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_1P8";
@@ -51,8 +29,6 @@ vreg_1p8: vreg-1p8-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
-
-		vin-supply = <&vreg_5p0>;
 	};
 
 	vreg_1p0: vreg-1p0-regulator {
@@ -75,8 +51,6 @@ vreg_3p0: vreg-3p0-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <3000000>;
 		regulator-max-microvolt = <3000000>;
-
-		vin-supply = <&vreg_12p0>;
 	};
 
 	vreg_conn_1p8: vreg_conn_1p8 {

-- 
2.51.0


