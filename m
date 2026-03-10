Return-Path: <devicetree+bounces-273255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKLgFHiZr2lbawIAu9opvQ
	(envelope-from <devicetree+bounces-273255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:09:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDEC245274
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 70A4130225AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E376A3C6A58;
	Tue, 10 Mar 2026 04:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HLyz1roU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O9b3LYXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB01279903
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773115723; cv=none; b=mV3NhU9B/mSf0/WTxp7AIwX1JcMKyQVDt+acmsySX6X67SB8hdFoDcLv1FvpLNEijnc26t1OZ7c6fJqGzu+tr66PRuqX6pKJmEWTfuzkqW5i0kRg4CvdlUwmJChrT+X+MYIYhBIhlAVgYMxr1aLi8qnhNfaRoddzclGJGFeIkdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773115723; c=relaxed/simple;
	bh=05/ih02aQdZwwoiULvDR8rNHCC4tH+xiDZquh3M79mo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CvDUWuoSGwGqa2bBlAyd7KsKfESKzDYcPzJeo98tBrVAAfqiVBTcU/TDdg0kpTvLYX1lnPUsTEDRddrgA7QQHd676j0SK9bHfDOPhMsTjELyh5eJCYz7lv5jlZSYV0TFgtrUFG3l09j4LFi0aEoPOuCGwd4ql8GKT+0UMKRmp5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HLyz1roU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O9b3LYXX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2ENWA110891
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oT4GLUukv7F
	xUmJWkX5ZBHKue1HOeG3dJ9jEmJUu8Sc=; b=HLyz1roUu+rx0qhdL4kmUz3uc6D
	4juopW9fkpzynGgLe3smcBHqHanrGQvVk6KVbmo6RHyFITVQphmE2rbcfO928MvQ
	QQ/e5SuRUIs0Rv4m6phapXaOwOW9m4EAFZY1GM3qwHBCj2P0HaZtio6babNjbIvr
	4QK3Xo428HfiibvAcY4IVFX7eAxEXvJVa3gajSfpLkFTO7usz5LP7nxJ4zMcXXRE
	oRBuCEqR5ccW0LzvBAUbuLszP4OXjpbzaJ6kgA0cKQh+UFhhH0M20GWlmXh0dOdc
	5mqmlRO0ehK7jLQucfS2mhU0UPBKQOvL4d7M6ZPDCmWP+CdIDwJJBk5I+fA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5ub66m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:08:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae61939fa5so210936865ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 21:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773115721; x=1773720521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oT4GLUukv7FxUmJWkX5ZBHKue1HOeG3dJ9jEmJUu8Sc=;
        b=O9b3LYXXuIo6i6aa7T7XAvwyyoV6V2S4QMKvso8sLObKpk5+g24YJ9SkYf8JdPhLL1
         Px6gUCMGA8C3/RDEKRBrcD1MgpBYCWKiLj1Vz868gQ60W/x5aUsYqw53ICLQ2tysIBVY
         IG29VjOS9AwTumftu803xNy1qwEjglXjZCBHYq6/RGG1FBSLnFGkEqXYScegP4vBQbA3
         qsrKqbCM5ub73rUwI5MhMBFROQGIxKdN+1YzjA3Ehu/AQ5reOXEdBpw5/uzSnjNoCSJ4
         gmwk6yi0/VuI+x8c9ZcoEpYBUrbL0VZxw/tJczmZZkskiJ5KjKWCY5WODh4Chb8utOSF
         E4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773115721; x=1773720521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oT4GLUukv7FxUmJWkX5ZBHKue1HOeG3dJ9jEmJUu8Sc=;
        b=jbwsKK2O0kv9C2mW73qDPOdGOJwmYLdQfE78+3TKc+0b0c3jx2k2rO5v7Qr8IJZrLW
         epklF6yfkpMQqoOBg6YQ37Pa2Mmx1NckYOW9JskZ1r3tjtmQE7VKkjNUzdsaMzlJoUxq
         hXKUZgjLj13oKhYVxVT22d53ji1g6TGLW5/vaVzxwhJyPKgWoRLGiBwU39Bn6vhXXMtj
         KKGPVTXjeq2SfUuBzBJ7XbNfBFuscJP4MXDhtBixy4SnuS1JF0T2x7mz29EzWjHqA027
         b1OAtjyrbs4+o//lSUKCaS/YPu8WfmJcCQgqqvYHfOPv7RWHmo/re9GGzM/vQi+3Sf7j
         5N/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWkgwiNdSudw6CuNCEj5ukA/6cjcUhr8iHrVcU31K3O0CdEISqn0DP1uwbOVB45TPAJ/xB8IXpgVZr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4HBjj1zxZTtYlQKm8+7BfHsb78I2EzfMrQ7h0rlnnk0WtGvWJ
	OBXaRCCgF0YsYg33zYzCu5r1UKLjsH3Id+LYzwlpB2E28nJoS8gWqADKogwguQ4SvSkJxh5FIRU
	ZToQygWqAfnVwL29l9mWjxuyc6cFuRzHbzVCz2etNTrVvbKY/BE7nvc1WPIadeO8d
X-Gm-Gg: ATEYQzytUd78iS+L4I3qF18FmlvHQs3fN+U7XpE2yPfNjWhK9ZEaJCPSs+ubFRS/YWu
	YMqt7c3gyB6N4C41NLkRQ/Boeqn5fla0CEnoGZf4SpAbtsk80YsvRXEG5XPQ8V8ahYQd53K6h0G
	yoVuTYUx3z6VFod2raTkhENYa3q86PnXXZENnwFWkDbmRQYz7WniU/84KuG3sFZM85A/RLm6lp4
	m0EtbbT19q0C51DNAoMc7z9plsk9sMHr+5ohBMlXCThYj/LvuTKXwK9TAxFfh+AzMguYwvVx+Ch
	pYHL3OBlUYsRwOpOmaxGBeO9L0bZ+1Kchl/a4Cj7O9AFWXGQcGYzXJsr/2w+aziclreaSy2H/I+
	AxirjXtZYWO82QoDlnwlzKxveYxOd97rpbq7whI6PEXFvDgYwWDsBb1Zkc70VGSyjTed3XHrYkQ
	fsB8si+UFjtmNLuCz+g//bKtAt/mMUBJ/OK1iT
X-Received: by 2002:a17:902:cec2:b0:2ae:a5fc:6 with SMTP id d9443c01a7336-2aea5fc02b8mr6301395ad.26.1773115720455;
        Mon, 09 Mar 2026 21:08:40 -0700 (PDT)
X-Received: by 2002:a17:902:cec2:b0:2ae:a5fc:6 with SMTP id d9443c01a7336-2aea5fc02b8mr6300975ad.26.1773115719965;
        Mon, 09 Mar 2026 21:08:39 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aea4eed00fsm9797975ad.80.2026.03.09.21.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 21:08:39 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: sudeep.holla@kernel.org, angelogioacchino.delregno@collabora.com,
        viresh.kumar@linaro.org, neil.armstrong@linaro.org, festevam@gmail.com,
        Frank.Li@nxp.com, danila@jiaxyga.com, lpieralisi@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, tengfei.fan@oss.qualcomm.com,
        jingyi.wang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: kaanapali: Fix deprecated cpu compatibles
Date: Tue, 10 Mar 2026 09:37:51 +0530
Message-Id: <20260310040751.3132523-4-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
References: <20260310040751.3132523-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qgcWazGpxVatqYpNoBRk-eBAMTNh9xjA
X-Proofpoint-ORIG-GUID: qgcWazGpxVatqYpNoBRk-eBAMTNh9xjA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAzMSBTYWx0ZWRfX1F+IMWyEQd9z
 f/2tLFNvUWrA6RhWbNaJVaTG0GHfCByRibZqiOk6fSkoDG2H/fKNTykiS1+6CybqSjOpZgE5UVn
 /FYMYw/3zEiRJ08RZlmx4XoNfFCgPf0AFaTc8YHhxmqSozauxMR3S7JiMOfsFt73GWZ1U3Sh2jH
 Pl2JT1RqZfL2sLMUijEhDhveEHUa8RhHUfcQB5DJV2+GmzvhktUVnCkyVfWGZwkGdci0VSXZfT1
 yJdEJX7j7i2CW3gbnTFOInp0LGls3N2PG3z75/NC6kK3SGi7aLNCj+jcrVOSW6d38kA0ULS9d/s
 +X4vQLV+dTsCMm8rZS7/u5M283zC8AiO4BRjpUsrbQ4uSLU91wVW8NaaPs1bKc9DQmvsUn+nwKB
 TZfYcM8N9iZRlQeq72/OenU0TMTSl35gmCxgVYayCWtoeM73lBeZHLTVzD/l0/oD8jZM2TbzXWv
 ZBiKLn2b3PqnoDfBJRw==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af9949 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=GQnCsLCnUx_kYXgjSdsA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100031
X-Rspamd-Queue-Id: 4BDEC245274
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,linaro.org,gmail.com,nxp.com,jiaxyga.com,oss.qualcomm.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273255-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The generic Qualcomm Oryon CPU compatible used by the Kaanapali
SoC is deprecated and incorrect since it uses a single compatible
to describe two different core variants. It is now replaced with
two different core-specific compatibles based on MIDR part and
variant number.

CPUS 0-5:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x2

CPUS 6-7:
MIDR_EL1[PART_NUM] - 0x2
MIDR_EL1[VARIANT] - 0x3

Fixes: 2eeb5767d53f ("arm64: dts: qcom: Introduce Kaanapali SoC")
Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 9ef57ad0ca71..40b9a5953d39 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -31,7 +31,7 @@ cpus {
 
 		cpu0: cpu@0 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -48,7 +48,7 @@ l2_0: l2-cache {
 
 		cpu1: cpu@100 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -59,7 +59,7 @@ cpu1: cpu@100 {
 
 		cpu2: cpu@200 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -70,7 +70,7 @@ cpu2: cpu@200 {
 
 		cpu3: cpu@300 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -81,7 +81,7 @@ cpu3: cpu@300 {
 
 		cpu4: cpu@400 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x400>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -92,7 +92,7 @@ cpu4: cpu@400 {
 
 		cpu5: cpu@500 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-2";
 			reg = <0x0 0x500>;
 			enable-method = "psci";
 			next-level-cache = <&l2_0>;
@@ -103,7 +103,7 @@ cpu5: cpu@500 {
 
 		cpu6: cpu@10000 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-3";
 			reg = <0x0 0x10000>;
 			enable-method = "psci";
 			next-level-cache = <&l2_1>;
@@ -120,7 +120,7 @@ l2_1: l2-cache {
 
 		cpu7: cpu@10100 {
 			device_type = "cpu";
-			compatible = "qcom,oryon";
+			compatible = "qcom,oryon-2-3";
 			reg = <0x0 0x10100>;
 			enable-method = "psci";
 			next-level-cache = <&l2_1>;
-- 
2.34.1


