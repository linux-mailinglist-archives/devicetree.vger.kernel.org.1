Return-Path: <devicetree+bounces-278048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PizFPqxvGm52AIAu9opvQ
	(envelope-from <devicetree+bounces-278048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:33:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4612D5244
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57BCC302C5ED
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 02:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5779247280;
	Fri, 20 Mar 2026 02:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D+XlXNkR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fn/FfHMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2689B1AC44D
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773974004; cv=none; b=J8CGzTSjmAtzIjUzJiNfxsNKChW98T4prY/XIhMxXEwlZSBirZGHoGW6Gbxs7UWetfGzMLy/3CeOX2QWVQlOJ9YwJV6lb/GoJ5NCtsAtShlhxDDmYaKzlTfWzN85qrxij+VPnK6e+BNYVmbQzxUL6g1bZrFPWTDBTit6QoUSmvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773974004; c=relaxed/simple;
	bh=yT/ruN83APFJjPPn70oaAcGGYzVBSq+SOVS68uRRXOA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=b0RN5TWMpfdC/MT4btvOOycumsWXPKfLbSHynmaPR0WnHkQPcwc9J2ReZw/+OsyvHIc/Ay2tswO5d2IwF9dyMk5OFxVjM6yHV4eTpTB2K9ffPSJKjIJ1HLv4oKSj8K6DxdZztHi7F+TfVEV6GCIgLKV288BExdnLSBI6RcC3Kn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D+XlXNkR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fn/FfHMF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2OvBE3594625
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Yal58AaOvUqNWEf895Sol5
	lDbCEv87xxCFtyGrqjp4U=; b=D+XlXNkRgveHNiydIrbnTlF6F1FCe12aAMXSG8
	UDYLt7L3zSwVpOqAONxzK8O90MIAor/SIT8wRI2CFiDXskJAdwsXPAVEK2sJJmc9
	5tOlYH5cMKXYbCC1oPdaSoM7Gmy8IQdgzsp+iIFYtsfOEu9Woo6W36MQUUfjTFj7
	c8PfWHfIPoc8zLy1pBmaJWAhyQ13iK4stpfiDNb8tzbva3VKjSko7+/Q0+qb1WHI
	y9sg96Zd/yCdWnlW1jRz17OWGKvrWsvEu/hpmV6nvf9SBHjvxHVQkiZ05fBgaMFW
	kZdeVOL58SJ7aln6LUGaLu4dURoc8yX9KHnsBoKcGfT0dQSg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0qg78wgm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 02:33:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5091a96f0bcso10865001cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773974000; x=1774578800; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yal58AaOvUqNWEf895Sol5lDbCEv87xxCFtyGrqjp4U=;
        b=fn/FfHMFqp/KRmZj7mwSem3jUvVDbAbs72NAFaaOkhOhbwi4a9zsAsUjZd6tKJp3v+
         jqnRUjYgrrg5+QzPCtBQqNh9sr6jqp3WZTRPuEwPcqSf1tV4B1pn0KOyi9YOOAIJe4Xf
         r7a0h3nDyEkIVCYbragdeHGMH75fzu9LFiSIZHtTz3H+G3Nm/N/nPv+AHw+43tX08VWW
         jv9u8cuCvqQIf9LGSs84O4ljGLMAIqfspAg7ovCVZ34uKeB9RnLk1OWo1ISvvtenVWfq
         EYcD+jl5EDhE7OnKb2nCKiwr/wSyQxFcC8D+Q0DHHjkurRoeUOqYFmZr92nNr6qtW/Po
         u2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773974000; x=1774578800;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yal58AaOvUqNWEf895Sol5lDbCEv87xxCFtyGrqjp4U=;
        b=dEQgRa0BBPaUKCWFzQXnr/92cdq2vLJ4ygGNN/4bqepwAy5rg05PTc758mfqZWFt0f
         nb7echkAHXl2D4SIgHDA4Q77d8g7vugm2tJx8FpRCDqM/dGXXkOpgNdEo6QR5DgxrOLh
         MeuD0tNezIQ0tynehf9FgGk/NpNVh2rZyQXwn0uHS32V2qV0UfPjwdOdVQ4i6b9I8Ogz
         Pfl2selUXmmeVOALNOveX039DDLVZ06M5v6wMg/Yo2WnaxizBexcjBv7kqphCJQ/Jyct
         bYvR83i4T2LcqxsKSzDmfcnQQaD8LW30WSeYeMgG4So8ZpBPCGz6zACnCpRfjS5jw9pW
         n7eA==
X-Forwarded-Encrypted: i=1; AJvYcCUJrh7dZTkojFFOHDQip3TcXc2UZcihfuihVVyHjN/sqXARqhBNZBCOqcknSO+ZUfUY2nGbZA+5oqaY@vger.kernel.org
X-Gm-Message-State: AOJu0YxnaKwWD80NrRIKCihz7wxfeUFaeP5P6FUumZqyU93LfOHNpJPT
	UQRuWu8+39JosuEkFhj3CqNAXkcVIxYnul2Q98zsV9cF/GTUH3tKru7dkSyT7dhyBikdJyoSIqk
	GP8p690MAmvQt3r4r0XcOd/jJY5ZdouLjJY39dUF0y0UqS2DcUEXizjk6jBRj+Rar
X-Gm-Gg: ATEYQzzrGBXSdDVinkEpc178cfORnQ+9qw0pUTWybrKlwR1pPl5dzzezb32w1kdwZBR
	gR/qf3HY40dmWdzBfuXAxWaLI21y0gCKyfk9F8PrGnec/OMnmHVGUM+Dm5Ma8vIroi8IpdzCVd5
	+LbF17jzH6KJOsfLQPmgnt5Iz+j+Zy4FWZ0q0z0Yg2iZ4sAkgwI9gyjvFcKis6oOOOBOa/eK44L
	3EvXuG9kDEOY4Hp8wy32PP+5wK7jmY+I9rlO3gt5uHzwH7Utkt/bhtTDiK11GhmtRUfWqvO8gu7
	FvoHUGtWJm8T+C1T2jdiRJDS8v3+tv/PxXAuIfWRcPoliLlnpc3FR6kIJj7uF8Bj/Ml6O4A0gGJ
	XCMwnJjg+QFx3sWj4af/tN2Rfnkbf9WtrkWQ2YvJKENhRJLAYiJ5GaahYa7EpS/pnUxJjFEt+uP
	JCEo1v3+WgPwJkVB/DfdFYDQDcFAFz+0xFOO0=
X-Received: by 2002:a05:622a:848f:b0:509:4b11:6d02 with SMTP id d75a77b69052e-50b373ea419mr18017001cf.7.1773974000099;
        Thu, 19 Mar 2026 19:33:20 -0700 (PDT)
X-Received: by 2002:a05:622a:848f:b0:509:4b11:6d02 with SMTP id d75a77b69052e-50b373ea419mr18016791cf.7.1773973999514;
        Thu, 19 Mar 2026 19:33:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf9aa200dsm2853811fa.28.2026.03.19.19.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 19:33:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 04:33:15 +0200
Subject: [PATCH] arm64: dts: qcom: purwa: deduplicate thermal sensors with
 Hamoa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-purwa-drop-thermals-v1-1-2c9fe046cd02@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOqxvGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYyMD3YLSovJE3ZSi/ALdkozUotzEnGJdQ8sUw8SkVGNzc1MLJaDOgqL
 UtMwKsKnRsbW1AHzXKpBlAAAA
X-Change-ID: 20260320-purwa-drop-thermals-19d1abe37758
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=17092;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=yT/ruN83APFJjPPn70oaAcGGYzVBSq+SOVS68uRRXOA=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+aeja+F+pRyRQw+SblKJu3aFuJjpa+hqJS6SLvRkXWtg
 UXg1kOdjMYsDIxcDLJiiiw+BS1TYzYlh33YMbUeZhArE8gUBi5OAZjIt9/sf0WX1c/7bii7xM/r
 bEjGG/uffhLLTqh374zIW7ElQ3WfVoTDJqOdW3Wbp9WtdV97T6I08dfV2LMbLmTNbVE6KPOh4NN
 TjUOl6g1KJyYEp1+PjJzOf0pOJyKJJ1yY91G4zPJVL6vKCupF/t1gf5zSqFPFe6tN9hLfdWHpwC
 +himtOd51h645TLQ3+oZRv7K1z9sNTyx6Lg5/kJGI1zQ1ezL7Mo1/UWtf9+XCCUm9vy6UPkxbIq
 nywbcj2XBV5X6U7eVbfX8tv1otc11dfaa9uLl9qse3RacX6OdHaXDc6WqV3lux5rHQjfOVEp0s9
 gqGfHgtc8X2o6mjtO9W4a/M7vRDRCIt5m4ueaNxyKPkBAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: Q0hYnJm6_cIscD-jJh9WCdKNSPEQLj2h
X-Proofpoint-GUID: Q0hYnJm6_cIscD-jJh9WCdKNSPEQLj2h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDAxNyBTYWx0ZWRfX475000fZj3Q9
 4RLSsAH4yxZDVQQyl2w+8FTcpjUSxzJfRmHmqv6c5TZgn5pke9/TBk4TrAL41GQu1r5ZlQaQfK+
 Sw9FZ6/32W8W7Kf3CF3GAHZDajyCZpQkOoXpLzXbdvlI6rdAaYotjvTTQ6xvUX8ajjGz3FwM+QD
 0wJUS6xJikh2Ad4+TFXii39ucEkmqb3GHz0c8Yuj8wWAYR4f3INJ4t1Xu3oGxVrHmwSAyuyiSo9
 795GQxUzqLyMH0dFySbWt1L42b2s9WtZnBOazjUvirpuakd47x6VTEGwdBOpBPAWRdk4Pc78YQK
 dKP0YWP9gkr7QCrPWCu+xcnjftfnjN3M8tA6pbUkP4PrMlPwdAERxiVOtsCXic6yiDyN0hGgNB1
 gvwATFDa/EoFiv1jArQ+/tcgkLloXP8Fd4joselIiSprG1pF/bWgvi02Rh9PSNw2zcZoEN7JDLh
 5LigVuR/u5x0iD5RPjQ==
X-Authority-Analysis: v=2.4 cv=fdGgCkQF c=1 sm=1 tr=0 ts=69bcb1f2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=O7XKmpvJ7hnWSlJDGZ0A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_04,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603200017
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[1bd4000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278048-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AF4612D5244
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hamoa and Purwa have pretty close thermal zones definitions. The major
difference is that several zones are absent (because of the lack of the
CPU cluster) and several zones use tsens2 instead of tsens3.

Instead of completely duplicating thermal zones for Purwa, reuse themal
zones from Hamoa, patching them where required.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi |  50 +--
 arch/arm64/boot/dts/qcom/purwa.dtsi | 590 +++---------------------------------
 2 files changed, 72 insertions(+), 568 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index d7596ccf63b9..a8ecb433381b 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -9230,7 +9230,7 @@ aoss0-critical {
 			};
 		};
 
-		cpu2-0-top-thermal {
+		thermal_cpu2_0_top: cpu2-0-top-thermal {
 			thermal-sensors = <&tsens2 1>;
 
 			trips {
@@ -9242,7 +9242,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-0-btm-thermal {
+		thermal_cpu2_0_btm: cpu2-0-btm-thermal {
 			thermal-sensors = <&tsens2 2>;
 
 			trips {
@@ -9254,7 +9254,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-1-top-thermal {
+		thermal_cpu2_1_top: cpu2-1-top-thermal {
 			thermal-sensors = <&tsens2 3>;
 
 			trips {
@@ -9266,7 +9266,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-1-btm-thermal {
+		thermal_cpu2_1_btm: cpu2-1-btm-thermal {
 			thermal-sensors = <&tsens2 4>;
 
 			trips {
@@ -9278,7 +9278,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-2-top-thermal {
+		thermal_cpu2_2_top: cpu2-2-top-thermal {
 			thermal-sensors = <&tsens2 5>;
 
 			trips {
@@ -9290,7 +9290,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-2-btm-thermal {
+		thermal_cpu2_2_btm: cpu2-2-btm-thermal {
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
@@ -9302,7 +9302,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-3-top-thermal {
+		thermal_cpu2_3_top: cpu2-3-top-thermal {
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
@@ -9314,7 +9314,7 @@ cpu-critical {
 			};
 		};
 
-		cpu2-3-btm-thermal {
+		thermal_cpu2_3_btm: cpu2-3-btm-thermal {
 			thermal-sensors = <&tsens2 8>;
 
 			trips {
@@ -9326,7 +9326,7 @@ cpu-critical {
 			};
 		};
 
-		cpuss2-top-thermal {
+		thermal_cpuss2_top: cpuss2-top-thermal {
 			thermal-sensors = <&tsens2 9>;
 
 			trips {
@@ -9338,7 +9338,7 @@ cpuss2-critical {
 			};
 		};
 
-		cpuss2-btm-thermal {
+		thermal_cpuss2_btm: cpuss2-btm-thermal {
 			thermal-sensors = <&tsens2 10>;
 
 			trips {
@@ -9350,7 +9350,7 @@ cpuss2-critical {
 			};
 		};
 
-		aoss3-thermal {
+		thermal_aoss3: aoss3-thermal {
 			thermal-sensors = <&tsens3 0>;
 
 			trips {
@@ -9368,7 +9368,7 @@ aoss0-critical {
 			};
 		};
 
-		nsp0-thermal {
+		thermal_nsp0: nsp0-thermal {
 			thermal-sensors = <&tsens3 1>;
 
 			trips {
@@ -9386,7 +9386,7 @@ nsp0-critical {
 			};
 		};
 
-		nsp1-thermal {
+		thermal_nsp1: nsp1-thermal {
 			thermal-sensors = <&tsens3 2>;
 
 			trips {
@@ -9404,7 +9404,7 @@ nsp1-critical {
 			};
 		};
 
-		nsp2-thermal {
+		thermal_nsp2: nsp2-thermal {
 			thermal-sensors = <&tsens3 3>;
 
 			trips {
@@ -9422,7 +9422,7 @@ nsp2-critical {
 			};
 		};
 
-		nsp3-thermal {
+		thermal_nsp3: nsp3-thermal {
 			thermal-sensors = <&tsens3 4>;
 
 			trips {
@@ -9440,7 +9440,7 @@ nsp3-critical {
 			};
 		};
 
-		gpuss-0-thermal {
+		thermal_gpuss_0: gpuss-0-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 5>;
@@ -9467,7 +9467,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-1-thermal {
+		thermal_gpuss_1: gpuss-1-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 6>;
@@ -9494,7 +9494,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-2-thermal {
+		thermal_gpuss_2: gpuss-2-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 7>;
@@ -9521,7 +9521,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-3-thermal {
+		thermal_gpuss_3: gpuss-3-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 8>;
@@ -9548,7 +9548,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-4-thermal {
+		thermal_gpuss_4: gpuss-4-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 9>;
@@ -9575,7 +9575,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-5-thermal {
+		thermal_gpuss_5: gpuss-5-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 10>;
@@ -9602,7 +9602,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-6-thermal {
+		thermal_gpuss_6: gpuss-6-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 11>;
@@ -9629,7 +9629,7 @@ gpu-critical {
 			};
 		};
 
-		gpuss-7-thermal {
+		thermal_gpuss_7: gpuss-7-thermal {
 			polling-delay-passive = <200>;
 
 			thermal-sensors = <&tsens3 12>;
@@ -9656,7 +9656,7 @@ gpu-critical {
 			};
 		};
 
-		camera0-thermal {
+		thermal_camera0: camera0-thermal {
 			thermal-sensors = <&tsens3 13>;
 
 			trips {
@@ -9674,7 +9674,7 @@ camera0-critical {
 			};
 		};
 
-		camera1-thermal {
+		thermal_camera1: camera1-thermal {
 			thermal-sensors = <&tsens3 14>;
 
 			trips {
diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 2cecd2dd0de8..9ab4f26b35f2 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -20,7 +20,21 @@
 /delete-node/ &gpu_opp_table;
 /delete-node/ &gpu_speed_bin;
 /delete-node/ &pcie3_phy;
-/delete-node/ &thermal_zones;
+/delete-node/ &thermal_aoss3;
+/delete-node/ &thermal_cpu2_0_btm;
+/delete-node/ &thermal_cpu2_0_top;
+/delete-node/ &thermal_cpu2_1_btm;
+/delete-node/ &thermal_cpu2_1_top;
+/delete-node/ &thermal_cpu2_2_btm;
+/delete-node/ &thermal_cpu2_2_top;
+/delete-node/ &thermal_cpu2_3_btm;
+/delete-node/ &thermal_cpu2_3_top;
+/delete-node/ &thermal_cpuss2_btm;
+/delete-node/ &thermal_cpuss2_top;
+/delete-node/ &thermal_gpuss_4;
+/delete-node/ &thermal_gpuss_5;
+/delete-node/ &thermal_gpuss_6;
+/delete-node/ &thermal_gpuss_7;
 
 &gcc {
 	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
@@ -198,557 +212,47 @@ pcie3_phy: phy@1bd4000 {
 	};
 };
 
-/* While physically present, this controller is left unconfigured and unused */
-&tsens3 {
-	status = "disabled";
+&thermal_camera0 {
+	thermal-sensors = <&tsens2 9>;
 };
 
-/ {
-	thermal-zones {
-		aoss0-thermal {
-			thermal-sensors = <&tsens0 0>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-0-top-thermal {
-			thermal-sensors = <&tsens0 1>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-0-btm-thermal {
-			thermal-sensors = <&tsens0 2>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-1-top-thermal {
-			thermal-sensors = <&tsens0 3>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-1-btm-thermal {
-			thermal-sensors = <&tsens0 4>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-2-top-thermal {
-			thermal-sensors = <&tsens0 5>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-2-btm-thermal {
-			thermal-sensors = <&tsens0 6>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-3-top-thermal {
-			thermal-sensors = <&tsens0 7>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu0-3-btm-thermal {
-			thermal-sensors = <&tsens0 8>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpuss0-top-thermal {
-			thermal-sensors = <&tsens0 9>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpuss0-btm-thermal {
-			thermal-sensors = <&tsens0 10>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		mem-thermal {
-			thermal-sensors = <&tsens0 11>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <0>;
-					type = "critical";
-				};
-			};
-		};
-
-		video-thermal {
-			thermal-sensors = <&tsens0 12>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		aoss1-thermal {
-			thermal-sensors = <&tsens1 0>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-0-top-thermal {
-			thermal-sensors = <&tsens1 1>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-0-btm-thermal {
-			thermal-sensors = <&tsens1 2>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-1-top-thermal {
-			thermal-sensors = <&tsens1 3>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-1-btm-thermal {
-			thermal-sensors = <&tsens1 4>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-2-top-thermal {
-			thermal-sensors = <&tsens1 5>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-2-btm-thermal {
-			thermal-sensors = <&tsens1 6>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-3-top-thermal {
-			thermal-sensors = <&tsens1 7>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpu1-3-btm-thermal {
-			thermal-sensors = <&tsens1 8>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpuss1-top-thermal {
-			thermal-sensors = <&tsens1 9>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		cpuss1-btm-thermal {
-			thermal-sensors = <&tsens1 10>;
-
-			trips {
-				trip-point0 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		aoss2-thermal {
-			thermal-sensors = <&tsens2 0>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-
-		nsp0-thermal {
-			thermal-sensors = <&tsens2 1>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_camera1 {
+	thermal-sensors = <&tsens2 10>;
+};
 
-		nsp1-thermal {
-			thermal-sensors = <&tsens2 2>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_gpuss_0 {
+	thermal-sensors = <&tsens2 5>;
+};
 
-		nsp2-thermal {
-			thermal-sensors = <&tsens2 3>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_gpuss_1 {
+	thermal-sensors = <&tsens2 6>;
+};
 
-		nsp3-thermal {
-			thermal-sensors = <&tsens2 4>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_gpuss_2 {
+	thermal-sensors = <&tsens2 7>;
+};
 
-		gpuss-0-thermal {
-			polling-delay-passive = <200>;
-
-			thermal-sensors = <&tsens2 5>;
-
-			cooling-maps {
-				map0 {
-					trip = <&gpuss0_alert0>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-
-			trips {
-				gpuss0_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_gpuss_3 {
+	thermal-sensors = <&tsens2 8>;
+};
 
-		gpuss-1-thermal {
-			polling-delay-passive = <200>;
-
-			thermal-sensors = <&tsens2 6>;
-
-			cooling-maps {
-				map0 {
-					trip = <&gpuss1_alert0>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-
-			trips {
-				gpuss1_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_nsp0 {
+	thermal-sensors = <&tsens2 1>;
+};
 
-		gpuss-2-thermal {
-			polling-delay-passive = <200>;
-
-			thermal-sensors = <&tsens2 7>;
-
-			cooling-maps {
-				map0 {
-					trip = <&gpuss2_alert0>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-
-			trips {
-				gpuss2_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_nsp1 {
+	thermal-sensors = <&tsens2 2>;
+};
 
-		gpuss-3-thermal {
-			polling-delay-passive = <200>;
-
-			thermal-sensors = <&tsens2 8>;
-
-			cooling-maps {
-				map0 {
-					trip = <&gpuss3_alert0>;
-					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-
-			trips {
-				gpuss3_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_nsp2 {
+	thermal-sensors = <&tsens2 3>;
+};
 
-		camera0-thermal {
-			thermal-sensors = <&tsens2 9>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
+&thermal_nsp3 {
+	thermal-sensors = <&tsens2 4>;
+};
 
-		camera1-thermal {
-			thermal-sensors = <&tsens2 10>;
-
-			trips {
-				trip-point0 {
-					temperature = <90000>;
-					hysteresis = <2000>;
-					type = "hot";
-				};
-
-				trip-point1 {
-					temperature = <115000>;
-					hysteresis = <1000>;
-					type = "critical";
-				};
-			};
-		};
-	};
+/* While physically present, this controller is left unconfigured and unused */
+&tsens3 {
+	status = "disabled";
 };

---
base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
change-id: 20260320-purwa-drop-thermals-19d1abe37758

Best regards,
-- 
With best wishes
Dmitry


