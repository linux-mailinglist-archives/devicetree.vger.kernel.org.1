Return-Path: <devicetree+bounces-272646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBuXJWgIrmkN/AEAu9opvQ
	(envelope-from <devicetree+bounces-272646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:38:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C32232BCD
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 00:38:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA75D303C605
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 23:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C328535BDCE;
	Sun,  8 Mar 2026 23:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kdA6mJFf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h4M3sQKM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADF6359A9B
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 23:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773013032; cv=none; b=FA+RATordb4cVxEFkSEqMYQYp5qT8VWmsCOqlHp593DaAxhGcMScA8/vxdAYmw+6er3meead7uu+kRVZTFlMp8SQomjFh8JYM5nCdJPtxyQd8T1+b5lQ15+pf7AdysqEVZUt8zt0NFmbK3HQvREl4sEGUCqz/w7YpHuWICcVAT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773013032; c=relaxed/simple;
	bh=GWftoszj7bbn3ImxQVyW+DYVQAbOtHpmtrjaSzfje6Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=X6HcbzX2+7V6jZsbKP4QbZA6cs+M2MIfEHpUDcrjV4oLWHWAvzZdeQV3YPqaXEteHgOOXvlFVtIzyYZUXOGwlnQJa+R4AwiDGtRSMjd3MjrzvWjCHXTNz4TWPFVt2Ud2G52IFJa60wIKdNty1KzuGHCmu7RdMQn7Ass1kdvJmns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kdA6mJFf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h4M3sQKM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628Iv4Bn400010
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 23:37:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=t4G1XLE6zkU
	yEgv+up47Gk/kIHuZ/MbxKPZHfvipbfg=; b=kdA6mJFfimqWaBk3RzEsdbWSLY8
	VffyiPNdQTAGKoKxdNj6UHW02Iiyu8ycyjI3Igt+wvuSDP2fm6JCIA8Wj8SqysIf
	nXNXAiCaK/skNv9Kv+dyjb9PyrsgS3M77D2wQqZlLkRCE1LbGbpnrU+ovTY0skG2
	oQ583p3pTdFDic2wwRMmFTvL2NOhr8PIKchkg4Y1onXQ96/tzIgGsjHesgBKTvCz
	hbgrwBdx1XqKUbhfUF6hr8XJhW1eq5BfqhtZiDRffQ27UjovYSE8/gsyNyt423HN
	WliAN9Lo6+MBKtbl27oxbfBcrGhBB2cRwGZ8aRU8+ZFaD48Vv431TQEbdEw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcse36tt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 23:37:10 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae48a21d12so53906835ad.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 16:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773013030; x=1773617830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4G1XLE6zkUyEgv+up47Gk/kIHuZ/MbxKPZHfvipbfg=;
        b=h4M3sQKMAj5Q52Yn5rP12H+VgT9Q2d3O8ICSGX/1scP+4qYlrdYiwi3xI0D9p23Uk+
         H+gGjIXVpQqTaTBdLaLvGp/Dz/wY0Ebx3Fxrf6l3Y5yEJXv6qKFRgqt38fSZi8z2I30A
         ZTjTSGhL5ftIWjW0er30HJ3tQl5NJVgBrYSJ2ZuT5Ezw8VyXmvZD6oY+tmiTHda+RUE0
         KC7J16t7FYVHy7XBKInLzkOSad/e6fdHbhWE+afOwpF9DG5SQX1bVqR5IpWLb/Zvl6FL
         IF69vpeRGW9OZAQloyqx+9nXBV9+o288fFwUjjgQgL0REt9Iu0Q0hZ3poagqCTAfEB+G
         g7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773013030; x=1773617830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t4G1XLE6zkUyEgv+up47Gk/kIHuZ/MbxKPZHfvipbfg=;
        b=fuuj017UUBLm08RJbbTbxL870UCvI9HkTej2slGwoUwsD2ELVdjYfJPpN6ILPq2r1e
         KurHGduQHfXKdm3HjbBKPcfD7MOpDqSVXXylzEm3yoTOCRGsO9cYR7lSAnfoA2/HLVOJ
         bTTH/Vo12NLXf94AqjA4rI7RzUkBS1iYVrG1kpOTwF7v81CV8IV6qpQb1BqjcdhI+u6k
         HrPj8063zhYq6nb85+CkzpU/OM/oEjan4m0OQopkrHw2obCwNRG11rCLiZ/TN8Rl1cCP
         cRHaslvBHjaMU3s34bcPdCh+IhcwxdgTrFSrKmdWj0MPaOIbWfzoJD3E9PVYS5BRGv/e
         r6tw==
X-Forwarded-Encrypted: i=1; AJvYcCV2twiGrhpG9UM0dt05hCljJ6tQRnZGlEdQrXOkuzyUhVIe2/hdG2h881N8vnOoEy1y+2UHXwgQAATD@vger.kernel.org
X-Gm-Message-State: AOJu0YyH8U7SO11L85m5UlkCGOXc5gxDFEkaRFJpBPhx1ck1UzSgl0ud
	jSsexm4zd9Z8joNxEF97vd+75x4WPXFahZWhZjViqHk0VZwS+jH5WpSgbowl8+Q/5qsDxKwS96k
	yVvYuDGuS63kV/cpXj8phFRbiaQ30gA11ZpwRLV1vaMaa2SYTLXxTts5CJDFTP+mP
X-Gm-Gg: ATEYQzxZHrOl0cdHPSaTV4IPyHO5Zg2PrEjui0YLPM5XN17yrKJPvVHAzMVHwDVcZrD
	Zw20fHHij5eXEY2qSMWP1zWUGGAdvquzZWe0S/zN3L2MOmPNmb62/X/65VXYxZB8seeMk1xPPER
	C6qHw29VlE9PnjF0dj/Pq73z47gVqnls21CwEvjPa6odRB95qPf0hmkyM2VEziA4RpwY4NlwO0V
	EQSRyfssENFML+6OboKYp91YLYC1Tsl/gbgOKWQmVUIgcJXvr5c39dpQ2XyFattxOLNcqySHccE
	Mt1yOWtt7V+TPQasWHyKKT0/f0Lwy/rUnUjmQ6iSZFBkI7rgMZwys25LJ1hXKb8aPrpgNKo9aM7
	V2qketLtSCAphA2MTo7MreEjJLdZpLUWfM6sVOXUcUCLLj/A6dpu4ppPuZyWWs6YM+TD/oi8IcJ
	xAEFhEvcHSC5lePt+C2dwDg0fX/uD/OawaVokf
X-Received: by 2002:a17:902:ec8c:b0:2ae:4150:3125 with SMTP id d9443c01a7336-2ae82397833mr85238865ad.17.1773013030143;
        Sun, 08 Mar 2026 16:37:10 -0700 (PDT)
X-Received: by 2002:a17:902:ec8c:b0:2ae:4150:3125 with SMTP id d9443c01a7336-2ae82397833mr85238725ad.17.1773013029682;
        Sun, 08 Mar 2026 16:37:09 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9ad26sm114274845ad.28.2026.03.08.16.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 16:37:09 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: [PATCH V3 3/5] arm64: dts: qcom: glymur-crd: Add Embedded controller node
Date: Mon,  9 Mar 2026 05:06:44 +0530
Message-Id: <20260308233646.2318676-4-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IdqKmGqa c=1 sm=1 tr=0 ts=69ae0826 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=h-fhkJo0eXD2C244oGgA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: qhsCpqeaQOhBBNxy9f3auAlB-2XFbZwq
X-Proofpoint-ORIG-GUID: qhsCpqeaQOhBBNxy9f3auAlB-2XFbZwq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDIxOCBTYWx0ZWRfXzzVJ40PwohLm
 VJg4D+iCew+M5tAaJlaZrLfnKO8zkGB8hce0gNgJAJoLQAdaBjiVvqdM48leqXVmes7DRg7uO7+
 JUCJgg/1rEpU3tcxbnTvD5zkRmgj8QbAdO9xtLdBv2RVYeUNWNRAu0CTDXAf/m7wpTESCJVQgKS
 OTzTobTonnAqXaP0iRvvJWO1OtvBgHI8UPfonfXznE6e7j41exh59CfiJTkSpxpMH+fOq7zRGUP
 zRSyRLCcTVL+4kSE5qphA5PXAqVPxYS1corcr/4TrHVrXUDOQ71o/UmWbPJfbh1RjyJsnFMHGbQ
 P+ES4hbpN2oKSPXF8DR4nJQ/DPr90SnYwQodk7SSu+Go7tqTJMpEij6yp5mkFCzTUQ7rQ+TGBT9
 GwlMhqW96zLTyI92nq1rTZ/nQdV4zL9/6KVWqUiRZtmqcUlYbZDwuF/YnAm6KEBhLMm3PolND9j
 24tw2b+clYJkPigWCsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_07,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080218
X-Rspamd-Queue-Id: F0C32232BCD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272646-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.76:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add embedded controller node for Glymur CRDs which adds fan control,
temperature sensors, access to EC state changes through SCI events
and suspend entry/exit notifications to the EC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..94abef7f0f1f 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -367,6 +367,22 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c9 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	embedded-controller@76 {
+		compatible = "qcom,glymur-nuvoton-ec", "qcom,hamoa-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &pcie3b {
 	vddpe-3v3-supply = <&vreg_nvmesec>;
 
@@ -490,6 +506,12 @@ &tlmm {
 			       <10 2>, /* OOB UART */
 			       <44 4>; /* Security SPI (TPM) */
 
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";
-- 
2.34.1


