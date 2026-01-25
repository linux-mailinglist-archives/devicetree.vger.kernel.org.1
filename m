Return-Path: <devicetree+bounces-259242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFsyLbQZdmnXLgEAu9opvQ
	(envelope-from <devicetree+bounces-259242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:25:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC3180B28
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E5D6304E6EC
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDDA31C56D;
	Sun, 25 Jan 2026 13:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qt3lwj7v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZyCBHFl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C590722E406
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347242; cv=none; b=k4Tg8oJPK/juvMUOlMbD4whlNvbo8O/XKt7jgxsmFI6/wFsT3AcyKEsbYWOjPifvBermxnS3aM2pjyB8JPN1DmJ0j8uSQ17O2Gx5ma0wnVvsnQvUsqI0g4A1trUeaO1peL7dO/iD/abRjaLB8uZgeh5xgQK4pqz+izlXPBmgM7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347242; c=relaxed/simple;
	bh=HCJVqJ428XQDN87qXRqTrOdSLhLMNLY6esVTo6pN1fY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fdM0U4L3NLXePqeNsi9u+uke6pwSRG1sWd9L/1NXAXOTljaEkrWn31ND26cmfjsWLjqWuIhlVQ9/HRUpIUJddAsg7QW090lf8ZqH6PCg/QiXf9mi1b6AUIlJns315GZqyoLqTZSX6ZsjZKDunM+F0t8l+omYYTF2aMxfUGKO0Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qt3lwj7v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZyCBHFl2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PDC764582017
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qlGU9H3dfUbp4xV6iF65kZJx7Y/3oJU9X/2nLKTv4SI=; b=Qt3lwj7v5diFjcw2
	2bU/gVOutT6EBjWmM1h+4mUqvSm2X0LLqo8hhrnzPZceaCTFa5F4ljON2DFKgtBz
	acxZS4kWDoXj5Q6ebnCIv9XEtyUU6i8Y3V+eSiZvWUIReYt1G8vjRt0rYBLhgm0y
	/jI5Wqc8m4rmI/IcLIw0MUhsduhVFjLF9vmZ9mKzSRk+I3jlXbKMUp5V04rogvk0
	2JH+cA18/M/s8b0ljMXDsFAOe4AOpNl903QuZexs9PP7kbSVp1J2x8B/ctDbcVjQ
	LW2UvaSu89KKb5xYEsUYTo8BKjN5as/NunU5xfZNQktT3JXDSM7s27rqkRaclRC3
	2zkGQw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q24bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a241b5cdso686481085a.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769347236; x=1769952036; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlGU9H3dfUbp4xV6iF65kZJx7Y/3oJU9X/2nLKTv4SI=;
        b=ZyCBHFl2pxsVUfgrApwfAc+Oh1B2hM4DvcfitfAAbp65Mum/R6zR895BHBE2K6bw77
         hT9MQNsZXR0Oe34Ylb5aR5WRd6v6w+2mqkqUTyigkUr2yagU8KHSPZLTpTHxn95liL7K
         Qa243V32CWMYM54yxnCRXuByiEgloSZe3uEB+3FADPZC+zB5siqW/um/s05O57GRxId/
         xcdzbTsMaXaloSQseRO0P+YmQCbM+xZuDMhFILRb5xJDwvoExXV+OQsaeKOp2+HVr9dI
         eMzLcp+xssAG+/ceXGyGSQ6N+1wp4G5/uQAHBfCo8sPJuzDZll6Nxm916iJw7hSs7zfx
         O4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347236; x=1769952036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qlGU9H3dfUbp4xV6iF65kZJx7Y/3oJU9X/2nLKTv4SI=;
        b=Gqo49Xb2lhdgFZMHf+KSkYAeZzjwJ3eetIGYoWEotm9r2VV3wxcHnhiqQd6hhT1Tcz
         rwLnArI218huU0Mc/NyPwMvGwQPNfp3qVdy5M796S0zAjfTkmkuysbhF2zDHbxY8ZaVJ
         QrtM4ZNQbXGz4CTmlbAYtqAYttYyLpkcxZnsq+OSgtZLjmt8YomB4oz20+KokgR3ugJF
         aREcgPTSco/gRI7kRq82WN9vCsHIwwHiQba5BQEPs7F6VzXLqKnkycZ+t5rBJ8BrPsgc
         rcYlsyJeZ62tRp3OUruVKd0gAyGlLq3CCqv1o2C3BQKuCc2hWOQdoOIUgJXVu+FxLwhU
         Ve2w==
X-Forwarded-Encrypted: i=1; AJvYcCXeuk9ErT4gHNb+agOdxiOIzPWIBlYNtGU+lvN7Af2vzEbdPAe+mVWLI3HUrxsEQR0Dl9dl5nYVaVUc@vger.kernel.org
X-Gm-Message-State: AOJu0YzEcMxKaZSXF3gUrq+MgrvXAu4czZU+2uIIIMGaqE11c9ndm06p
	t4D/FknOzvt5rNRNrbhvsrCcuUSSinqpdpiX7VXKLAl6G8QyjFpt3RpJf1Uu+YZzHzH0ZcKuH/N
	Z3dlDhrKj7Y/G6QtoDU1kXLiSUA7qV3efCTqLCrRqzUKR6ym51Sv4EQ/P3A9W5qmL
X-Gm-Gg: AZuq6aLp/iY+lsiDFiqxXINn509ean7rjFmJR8kdwPDrJvvorgu7i6bykiZuHLJF28D
	2QTM3JtE2ZgoZY6r0zbhhnnolFOSKgodbF8eU4agdjIFGNQ9YO+AEyLnp/h5AQhRA6RcMctYita
	HLFeO++jyq6lVNKLu46O9SEMFixPUZK0vDnecA4ks9x8ZY4ye8ikrdIV6IRgyS1ZxQX5F/iaqgz
	+urFaGdLy2hBaUMca58UHtlDYZRAflwZGrr0YiKmGBNh0kbW4Uvte3gbK+8n4gYX5vV7lB/ew2W
	kaCmT4H0WpegAJEFerJTosaRAFHFL8nnLv68Rz1h31VGxAQCM8BAZN/oyaL+SiiuwNBSdr2iOEr
	3GJrldj/2P7ZW9nI/pIVgDd/bxQhnLBFdgGDl/DgNCDnCht32vV5Rg2eGCmif72/6U+YvVsbAbx
	UxQURHWW6hg0sVvoZwM6/Ihfk=
X-Received: by 2002:a05:620a:319e:b0:8b2:4a1b:b80a with SMTP id af79cd13be357-8c6f95c6dd8mr174358585a.25.1769347236018;
        Sun, 25 Jan 2026 05:20:36 -0800 (PST)
X-Received: by 2002:a05:620a:319e:b0:8b2:4a1b:b80a with SMTP id af79cd13be357-8c6f95c6dd8mr174354285a.25.1769347235435;
        Sun, 25 Jan 2026 05:20:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1706b5sm18901821fa.24.2026.01.25.05.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:20:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:20:23 +0200
Subject: [PATCH 6/7] arm64: dts: qcom: sm8350: add Venus device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v1-6-2c5e69fae76b@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2744;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=HCJVqJ428XQDN87qXRqTrOdSLhLMNLY6esVTo6pN1fY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2aZxJSaAxnnxMNe3rfyCgkw9eBmy5s3bVfz7yl6v+f+d
 Lpa+byhk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATmfOd/Z+uErPs6itvdea7
 LP3RcXHPdXdVFdHvz6KZy2cU3T+ykjPzWYK/5C6rbb0rU+eZrHuz2nKlmt5B/yTTl5ON96zaLlm
 nlRcgyxHIkmVibtl9tV5pU2zs84IjO1O3/np0/tjkF22sX9qbPTkzNRx9oq1EDnM85RZO1bhqz/
 NpunlGV03m+p48D4e1vOrJ0y7d1usMz51vPLvmVhLHFDWfRa7xW1btz63yNMvx13h/4+CLgsKkQ
 1/Vk3nc76/XPSt7XVpPpuyDZcSmZScUHCN5Ht1cUFwlkBge2a4VVqW/L2l6jOWvlT0uU7MPnHO7
 L3t72YaUrqXOTdk2IYbrjl1x9b2XczRSZMMVRZHnHTEnAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: agl49fEBppwjlMHZFaytHUJ7E1gCiDvK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExMSBTYWx0ZWRfX2nArCgxg/h/i
 3om6DPeDGQekqbhlb4dSgYsgE2jwfzFvw+3A8jDRF6ZuGKaFNBxbvza/Rq2RkUMpplNQFncGzkR
 jfp9bHJRD8ufHpGHjaGqAJOGV8MQK6/2iuwSiozsb9XXD/KjD8CJ7b0un9CWZV68gtWoG2t9pu6
 5tiw4vDx6rGY5teNcYGPXwX/5+BhoNgxglwe9MVwNUOk4nCUu8nN1W7j8Bf+pFQFQ07XJY1bzg6
 pZHFGTMGqcn029onc/13EsxotuKY7WlqGeHJcXYKFvx2rTVvDpgv0oc08jUmJHkZaPIJp7zA6Hv
 sMQWCnIrAprRYJadA0VyjmBVs+VpGojISyMVDmWtwn9kzYUbfykJfbQmjJYPvBOWUcy3jSwHbdV
 B7c5cdxlX6FoE+NS6Dq3WH/ZDR44wzvnRXaiPgJ9x+0X6czTQoFP7f/uCIyUL0Koh3V0nw4k30f
 txV2VmbXL24TE9Qakkg==
X-Proofpoint-ORIG-GUID: agl49fEBppwjlMHZFaytHUJ7E1gCiDvK
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=697618a7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OyNfseFvsq6WzarXZFIA:9 a=RMe4X1btV4NIqd4N:21
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259242-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,abf0000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aa00000:email,qualcomm.com:email,qualcomm.com:dkim,ae00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3DC3180B28
X-Rspamd-Action: no action

Add Venus and video clock controller devices, describing the Iris2 core
present on this platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 72 ++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5c8fe213f5e4..2d8787266011 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2745,6 +2745,78 @@ usb_2_dwc3: usb@a800000 {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sm8350-venus";
+			reg = <0 0x0aa00000 0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			operating-points-v2 = <&venus_opp_table>;
+			iommus = <&apps_smmu 0x2100 0x400>;
+			memory-region = <&pil_video_mem>;
+
+			status = "disabled";
+
+			venus_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-720000000 {
+					opp-hz = /bits/ 64 <720000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-1014000000 {
+					opp-hz = /bits/ 64 <1014000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-1098000000 {
+					opp-hz = /bits/ 64 <1098000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-1332000000 {
+					opp-hz = /bits/ 64 <1332000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sm8350-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,sm8350-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.47.3


