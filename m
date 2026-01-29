Return-Path: <devicetree+bounces-260744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GoJMjD+emmHAQIAu9opvQ
	(envelope-from <devicetree+bounces-260744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:29:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77720AC371
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:29:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 851B8302A2D9
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A833793B5;
	Thu, 29 Jan 2026 06:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m3Uz0yjq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gxoeWhwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13643793C1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769668121; cv=none; b=guvUWPT2s50b0AlNHsWIV0jha31j30QXP5ufejH3FaAAHcksFHYZdrC9yUhimCafz+jCCTaOC+qPw3eJj6++9DpC+0H8ScDK/IScw2PIw9MhaiusXmlVl2NFHAKNWV5k3et4SMDiiFC6abEnpb6CEH740I1usQkWZE64ie1Gkg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769668121; c=relaxed/simple;
	bh=aLJjSUbH0Z5d3XeAtoxuuuZB8VU98Cz3pGYlO9Duy0s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ePB1nf9XPYKbNHWNMUg/JwibaknD47ulv/6iM+Ycu0l3Ji3XjzCCeLEAWvJZYXC64wl+Z/i8wpFh58gJbgJ/LuBGXaR4ApWq8E96b70CT0SqsvUlkXvKjDdOfh5v0ggfhUqF0fH2ZiPezZ5usGfrUu3cNNjSXoHDNCUmZNKDqsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m3Uz0yjq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gxoeWhwq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60T2oj6s2033226
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UdiCLGNGfy8
	TJ+qlMFeorIAspGGS3PemGaukF9zDOf8=; b=m3Uz0yjqeeVA+L5mpUVxdGVHPKU
	EZgZvnpAalWBuSAwp8luipChVQtj99nG3CAn5wyVbqIeh9oOPMS1ECpkEfxyexnB
	Gjcsb9FKpBijKURAz2V91Vi2o/PTCOPpMFikeSwc/IRFINvc7KAg80NrZ1CauwkT
	rhAz6/+ECw5CXWGYsfHh4Fap2Qg45zAKa9WlHLcPfuJfby8RsoGALD6XF0Xcrej6
	7UG4+NMrp8beWthzazpVt1XyflHYdDphiMxRMgCweGYZpQkJ/EWQQ+0SBYuNN+hE
	w5FiijjqcygRNbDHOpqyiQxWZIne8wYcYr3P9jSWc9DDM9k6TvKLQ3sivBg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy1a9b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 06:28:38 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34ac819b2f2so854925a91.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769668117; x=1770272917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdiCLGNGfy8TJ+qlMFeorIAspGGS3PemGaukF9zDOf8=;
        b=gxoeWhwq8cVKBXklPwzTus6bIgyDrgvd/eG2V91XqXHtO77kRP+frfcIxjWZL1YywQ
         bS4AHyhYStwTojOE3pejBxWZdR51HJkH3er6y8e+vw6isW8Rc8KSTSrS5d5YSxh0hgo4
         lMS2nwBhbilJNUNCfsWEID1thRx1lcCEO5sSAxFp5TvfWNOrt13/pGvEU1Ha/jwhdBH2
         3Y1G3gVO76pOPGs1sit4Mzyb6y+Wj8UGyjF/LF4cpmonVLMOjl8GrdHDzUiGN1l2uOel
         R8BrenqDWMWUcOcOgcBbYKQlRg8oovosHcX9GN+1TMQ5Djk6zfK87ECj35seRyQIiJrp
         g8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769668117; x=1770272917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdiCLGNGfy8TJ+qlMFeorIAspGGS3PemGaukF9zDOf8=;
        b=rvbNXcV0eF6dtpTRWBl7e2WYBpPgQK9SrBRVECzKAmgIULkR6Jyl/AkaV11Xn2WGd2
         jux9Uke9Z7/btU5S3jBwtT9Kd0gvG2xa6vsok008gllswTpcySkwRlipUtMIteaLZaR4
         PoydJDmnyS5c+x5X/Tc7johVgCfjo4FDR+Kp4X0l/0rIrU+4LI+hrUeeqlxT54lsItO2
         RMoQHFTV/Ld2+amI9S31scL82sMz3+D38oOe41hyA149ykWcaUdLxrEGijPnMqwY/W7P
         78nruBWG6JP0pftf4WXMLJVjqKqtpZvy2CsMtgmAZIvRBzacxanCWjvgOX7OPsRfa7Mc
         qjOQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+ymN9WuE3omUcQScux6DAaVPPnOvJmnyByQBSqeKP5fMctf4JR0d52vSOiLDgt0rb4SYESd+LZxQ3@vger.kernel.org
X-Gm-Message-State: AOJu0Yws9HBRVfXwstV11DFEb2jlpH3nY7CdMwUxqHqlgraSD30+KHyT
	eaYmfiajYGUCR2xbCATevY6Zge5rTSQjKiuG2jKfjp1cj1hdnqnIZHtP80M/5+jNxcPc5H9q2dA
	g73glJlLy+nPYkhUOnKMBKCGW/Rg/Dz3E12QpSUmrPHj9wcIqdqZnHG2csdckYfv+EduIfH/a
X-Gm-Gg: AZuq6aIGAcXgFPMcyEnb9zMSSo+gPPUvGiaYWyiy7EqWIhxEYJTWeK2X0S1GfgPlHpc
	HDujDzHqN/eKlIKQJv1w2fxxHLxoLqIT8TCCSMdBiQzcAd4b/Bd+4bPYb1Go2lVfuVCdATbmNi/
	UVEY2pNjWTykBKKafFHrVgM31ha7tscIMBbtdiLg/xcGuH2pLGsz0fZ0gIxbUIq1NYh9C6kJPV1
	p5APQgp5YPBrLR83dt7r5vhd9TXVB2eLcRyDBKNfYInaDDiFo5xq4ebXQQe7nJOd7yynmyBBDaq
	Ak8SziPgoT/GFfsgCaMpY0+UKtg1oJvByZLvUh9v0BwV4Me52lFV5uspgy/inNom8goOsVK3sgT
	ib7J/RBoVDWDI6/bA80+2mMNF89GLnWXtqceSubnNbR5mlybYUBDFLAqwO0+gVOr5SwVjwBg3gx
	Vr+EmhoMXLGDkUtMxxCnZHCx7T+TB3BE7SqdBoNMg=
X-Received: by 2002:a17:90b:3c88:b0:349:3fe6:ab8b with SMTP id 98e67ed59e1d1-353feda35abmr6966760a91.36.1769668117513;
        Wed, 28 Jan 2026 22:28:37 -0800 (PST)
X-Received: by 2002:a17:90b:3c88:b0:349:3fe6:ab8b with SMTP id 98e67ed59e1d1-353feda35abmr6966739a91.36.1769668117049;
        Wed, 28 Jan 2026 22:28:37 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f612917csm7215943a91.8.2026.01.28.22.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 22:28:36 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 1/4] arm64: dts: qcom: ipq9574: Add gpio details for eMMC
Date: Thu, 29 Jan 2026 11:58:22 +0530
Message-Id: <20260129062825.666457-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAzOCBTYWx0ZWRfX7JufzBGNkv13
 a4S0OSizelOPsLmrDWT4fVoXWjR/nm6nBOW7WLWBtziwgec490Swi9Kkg166LKxdYo6Gc2Gnbh/
 CrLCtVJlHm/AcTMmQEmQljhpFmFvtgdLSDSY/7fLzXmMkot+4xtNkAa/o+gDgUQx7nmiy5fbV4Y
 LE56E1vBN/CceLjclNn0HSevnSKodiS6M2Gx1FgLJlLKQlrCdrzgJayW/ohzTbR/FsV3AqbZ5//
 Ym7W4Rc4lcl/CA+rDvx6gAdfKZJPMD/nNeuAlWInElQXAQaBeRdXaJvY32zWkB5CCvfZBLVJbgT
 9AuvQQ67jUxrMwZUOm1KW/YgFrP9TOXhGtcNdOmikYUr27GgJHSyeVbL9YcCxY5HHtye7Nc3DY3
 dUdNL8mZf7h9//P/iV2Wu1xTXoA+S2lJDMRUYk3Rx6BQEcBQE6dmMpFjpBqyZDqYcJLAvbe2gUk
 nCqmRfpC++URxMTMdOQ==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697afe16 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=T3t2raMPkK00w3a9w_wA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: RY_V5WEb13_M_BlRqJrg9wDK8J6WtOCf
X-Proofpoint-GUID: RY_V5WEb13_M_BlRqJrg9wDK8J6WtOCf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290038
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260744-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 77720AC371
X-Rspamd-Action: no action

The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
supported. To enable support for eMMC variant, add the relevant GPIO
related information.

Do not enable NAND by default here. Enable it in board specific DTS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v3: Disable nand in ipq9574-rdp-common.dtsi and enable it where required.
    Add 'Reviewed-by: Konrad Dybcio'
---
 .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 34 ++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index bdb396afb992..c0d575562d39 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -169,6 +169,38 @@ data-pins {
 			bias-disable;
 		};
 	};
+
+	sdc_default_state: sdc-default-state {
+		clk-pins {
+			pins = "gpio5";
+			function = "sdc_clk";
+			drive-strength = <8>;
+			bias-disable;
+		};
+
+		cmd-pins {
+			pins = "gpio4";
+			function = "sdc_cmd";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		data-pins {
+			pins = "gpio0", "gpio1", "gpio2",
+			       "gpio3", "gpio6", "gpio7",
+			       "gpio8", "gpio9";
+			function = "sdc_data";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		rclk-pins {
+			pins = "gpio10";
+			function = "sdc_rclk";
+			drive-strength = <8>;
+			bias-pull-down;
+		};
+	};
 };
 
 &qpic_bam {
@@ -179,7 +211,7 @@ &qpic_nand {
 	pinctrl-0 = <&qpic_snand_default_state>;
 	pinctrl-names = "default";
 
-	status = "okay";
+	status = "disabled";
 
 	flash@0 {
 		compatible = "spi-nand";
-- 
2.34.1


