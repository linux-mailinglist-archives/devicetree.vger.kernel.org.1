Return-Path: <devicetree+bounces-268240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJViCq3CnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:36:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B624019519B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8AA7D3051711
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FF1938F229;
	Wed, 25 Feb 2026 09:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ODDKQZ/q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FsYR6vTv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F385238E5CD
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011931; cv=none; b=R0V5EXOJ//kC+bkqtKAasa/tIkgKtmA5FIPRKwJHOhllHAKzqaEpo9l9v2tqbKlUf/wkzQBo/lLRY3K5oicfALl9+GOg/EBmIWSwCsBNZ31wRytlq0B6VfXk/L7NiBMsPucaPdAJBE9xjdJUtZaP0SlLXmRCmvvNOYRrm5M2Nx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011931; c=relaxed/simple;
	bh=lLBpDts1o38Za+LSN6KfO5EWJQisSld6C6DUE9yG/AI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RI7FMS8tIF00oxC923GTorjTShualel/6FDQGvgxPLAtTbBoXfuCU/CWIoV4vhWemOdOfXccjERMRlzH9pMmq8wRmAP4Ls+uAqAYVSc0VxYmlaMpuUU9ICrlIWDc18pFqA7Kg5cWnnZcIquH6v4lmL3a59GBRcHXuiI1dpQFy+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ODDKQZ/q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FsYR6vTv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TP7G583514
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=W0DGi1Ef3do
	KA/ATdIJD6kErxzUZmo1VjU50a8dVxNo=; b=ODDKQZ/qskofdPO3W8WCu/xQXmK
	ayqzfU9fDTajOt+VWTrwXO0kDZ49JpAsTEB8FxfWZsudoP0XDcw72i702cyRh2/S
	ybuqOUUq5zIUTaLEcmiHkJUNJRFJk4Qf90RSWsySKincuUQqEOa3fb5gsZ56Ixb+
	sB7FZgl1hxRK5BN0X7tc8IZ/rC8jRE9olNbm/4gWr4/2Wl6chwsfeqISHxN7hugf
	xWlw8lRSuN0+xY8Pu8RYKYrP7NgjkOFBDXXkZkEqeoN+sWX60rQz8SqggJ3vIeTd
	7tcfRvHqCTaHjtU/0keiT1mW8G3ZAfgat+x4vOKVQlM71pz1zmmzhz3n6xw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chekjb53h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:32:09 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6fd07933aaso3828648a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772011928; x=1772616728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W0DGi1Ef3doKA/ATdIJD6kErxzUZmo1VjU50a8dVxNo=;
        b=FsYR6vTvJovpJ+9Z/Tn3f6HhMRN8C+5Upx7rrqcyGXvgdvGrS0kqGpbN9Lyiphg1G6
         kQIk+yzzHf+grKbTbU0zKfbHTUakaZAClU5OJY8R6pgsi9GQUlnDTpXv5pRPotZAitvs
         0TnA/Ke7Fpn/4TKncMyYb8SiBsoEHc+HfjS88TTkuGBAk1U0ZcpU5NWxJeZu4gyRwH9x
         TuBL46EUag5eCnVvJDW4ByQTZWtYd/YS7/GdnNiQOhT2VPJ0Vnu2Mejc+nASbxm89aRb
         FLifePg1q5fMFwr7eLoR6htig6mZyDp8YJjLugCXCB1f7cLwDbw3EI4Dpp7/UV37DZtQ
         llVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011928; x=1772616728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W0DGi1Ef3doKA/ATdIJD6kErxzUZmo1VjU50a8dVxNo=;
        b=LbroFVBxELghrY65hVzbzXgl75Qnofk3nbEk/h/hwencjf4ji4bltfHJwt1acSuYJo
         YGCW6cTzEfTVT0FQj2VTs7kayTWeNrtr0OL4XWfV0EbAxBs7c/vIDQCcjLsC4XjK6fiW
         UUA+/ZeDDIW+Vl7Rp06oxLi5YTAYwrc8uSKwtccyGajH0AzuGQTJKcf1Dwq2TfkSNKTM
         u5EyjY8fhdoTV2CoHV/R8pWyj5B/KtEfSaSSsx7hbk7CJ3XeIN5jfvmuWBYs1DMZk3YF
         hlNlRIisbSeujNGFXYpWv7OzKdDU23Z+64VBY6FcvTss27yNNrUbk2y+4xwCEh9pZFz6
         rr7w==
X-Forwarded-Encrypted: i=1; AJvYcCWSALbpd02kKlPSOMDsQfiTmlxHZj9WIaWbYUerUGfY+RabtxAZuq/K28W68CUApN+QDP1Lm8lpKeMu@vger.kernel.org
X-Gm-Message-State: AOJu0YwieTdb9agEW4sC9IphbfEV9exvdeoQPq+ovRi05f/dXqfnIdpX
	3yz4/H8sN0e+D2V2cf/Sc8cPLxRAJq5zJRucdoz6XL/aatB2rSlxbqmWbNFqt/+SrbTa2tiJ7VA
	+RR24j1uotjCLtzCYNiWn0ActJe0At3sfxp0oY9cNKirEy/KRGc/TbdMaJq3rMluz
X-Gm-Gg: ATEYQzwYGrTN9Iod99E0srXkQ/QwciVGjGg2MGUvkcDXYsYxpzo91Ppq4/YgZSjjF8h
	UQ47tdnxdlho+OlA2UxrJ8wYvcQ4LCXRPUeuEdBhscHsaJRiWvdgrZ8/zedBrNUqb4bWB4hj1y1
	DJFvqhfOqae7qg5XchnwaYM7guSI6tZQZETNpML9fiB5hjIGBoB6+y74Tymrf7eDLIq35DKHdGb
	i2sLDv8m/2l7W5kqoiBa4GBWD9PGozvrRDMamlf2fK/KRwHTe93DUQ/QIz6TlKI+JtnMl6FyuFh
	TBGjKHR0hCYl2gi6v02yX+rcy8wTZ8sXZ1sNwCsuGbqRak3H6W3EYsz7OWSisWohXo6Y8D+R/rH
	1TDmgrbSJh7+mhXKVHBX6LzC4XLDYpQ5MHWNANQa2uf1CN/La22IYsfo=
X-Received: by 2002:a05:6a00:94c6:b0:81f:3c5b:f437 with SMTP id d2e1a72fcca58-826daa0ce9amr16109883b3a.35.1772011927935;
        Wed, 25 Feb 2026 01:32:07 -0800 (PST)
X-Received: by 2002:a05:6a00:94c6:b0:81f:3c5b:f437 with SMTP id d2e1a72fcca58-826daa0ce9amr16109858b3a.35.1772011927437;
        Wed, 25 Feb 2026 01:32:07 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd688aa7sm13628098b3a.14.2026.02.25.01.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:32:07 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 1/3] arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for Lemans EVK
Date: Wed, 25 Feb 2026 15:01:53 +0530
Message-Id: <20260225093155.4162177-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RNe+3oi+ c=1 sm=1 tr=0 ts=699ec199 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=0TxLVs8cyrv-jLPu79IA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: guQzIy-Em9HZMst9FS5HOefnx42fNrBc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5MiBTYWx0ZWRfX7zEJs1WVOscx
 VvOptCCvZmQtTUl9iP3IgoDMfSqBBFyO3FYLP1yZ4VWdWcx8Ov9o+zbi34iV/b2Q5qevpk+OQ0n
 wujw0MpuEdTT3NIkxXZIGgH1HW2DZ4UENib7DSViFP8/uVJJ35HqrD9MJM0PiVi58TItCVxbsqk
 zYPbGPDe50RXS0/TnPo8iNRChf1HlGoBVqz+ru0cjrGlEV1SdWeM0zIVSMnshz42WEimMutsZKQ
 4w8yhR2KEHz7PevZpmNfuBXKn9+8QxfqQAXwOV2iFLAZNS/TM4vmwQLeGWOu5h8nnn0VVV0Hj8n
 aSB6TDZOTHBMN5kDPFDzxuUb7huaAdWcl1Zx3c47y1gD7tfdNYu0NMQiiIXzZ+R2cN9JMo5iXW5
 a2KY9r+MbnrGNtL51Nfm/W25UgAkIAD8EZfFTIQVa56HbsHpulfUpqGpKjZw08KjftT1vqxXEL0
 rAqEh4BnDpAbQ2N6cKw==
X-Proofpoint-GUID: guQzIy-Em9HZMst9FS5HOefnx42fNrBc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268240-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.38:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.50:email,0.0.0.39:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B624019519B
X-Rspamd-Action: no action

Enable PCA9538 expander as interrupt controller on Lemans EVK and configure
the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
internal pull-ups.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 44 +++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 90fce947ca7e..397052394930 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -546,6 +546,11 @@ expander0: gpio@38 {
 		reg = <0x38>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 138 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander0_int>;
+		pinctrl-names = "default";
 	};
 
 	expander1: gpio@39 {
@@ -553,6 +558,11 @@ expander1: gpio@39 {
 		reg = <0x39>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 19 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander1_int>;
+		pinctrl-names = "default";
 	};
 
 	expander2: gpio@3a {
@@ -560,6 +570,11 @@ expander2: gpio@3a {
 		reg = <0x3a>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 139 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander2_int>;
+		pinctrl-names = "default";
 	};
 
 	expander3: gpio@3b {
@@ -567,6 +582,11 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 39 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander3_int>;
+		pinctrl-names = "default";
 	};
 
 	eeprom@50 {
@@ -804,6 +824,30 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	expander0_int: expander0-int-state {
+		pins = "gpio138";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander1_int: expander1-int-state {
+		pins = "gpio19";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander2_int: expander2-int-state {
+		pins = "gpio139";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander3_int: expander3-int-state {
+		pins = "gpio39";
+		function = "gpio";
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		clkreq-pins {
 			pins = "gpio1";
-- 
2.34.1


