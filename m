Return-Path: <devicetree+bounces-264340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPLoI9oKi2lQPQAAu9opvQ
	(envelope-from <devicetree+bounces-264340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:39:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F013D119B56
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86E023062F86
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624FC3164D9;
	Tue, 10 Feb 2026 10:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XlmF/Kb3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gsqsevoR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889F33168F2
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770719916; cv=none; b=OMc6QxcP7HRp5aLF08IlMRR3iGmleC6e22UgprE1XVHsWOsqJHa5I+owqaN59ClFe3ROURSOkZuErSkEbeQNXAyrZdSbIxDHu6keLg74W/J9VeFBUz5kG2rKtWkzvm59sAevZq2fny0ai+8Qw7Cl8bQb3lBX3IFzu+uVFdmUy3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770719916; c=relaxed/simple;
	bh=I3Nx8cWsJSImoM7W3ix49fyi0+g0f2Cv3/8OUNgIQPk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mkyq+bkjZt4xxsS+RkutgsiRLJ16QHr567K4o1FhcKwZdrphP4ZJnuYObcL4nhVCcaz+fn+88uzxfH1oqlYlY/7WU1ESzZQdNXUm1wfG0Iy7OBpbS3AsnhoX/3Vf56GnqE7MctACe8VEhpuGEVykG8f0BTV5clOCk0h5e3+b6Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XlmF/Kb3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gsqsevoR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7Z4Db2169252
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=CbUOf8f+2cq
	PAdS3EUjFGmF05TCgL4SOq39zD1JBkRc=; b=XlmF/Kb3Ww7P9ftZW4eCCCncHIP
	8WxXP/X6hK8tK3KRFY/9Q6MHXDo6rSR4RUNkd/Y8df0Lx2G5DGqiUUXX4P5nPaNC
	A3bonMQbnUjw1YhhmOWCx6wjLJYGlEzROP3KMsm6+k21TOkM71j/8HnTJBhdrS6O
	cglGxyxaRpmSjNYZoTN5e6CQZq76N2GE88dgdKyiqlI99Y0HOMmJKIXWcrkBAMUp
	vfuEmZ6sr3l1F+lAmhkPnBGFR6LiSO2S04qEKKrgkycNatLaqzanUUCnmnJh4+AK
	+R/KKDPLLQZl99bTBFuuKeDmLlyFParu41StykYBaj6vj5fcSVYLdyL9AEw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c80drrmgc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:38:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aae3e185a3so5176865ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770719912; x=1771324712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CbUOf8f+2cqPAdS3EUjFGmF05TCgL4SOq39zD1JBkRc=;
        b=gsqsevoRrBeEvjcXBdr1fo6KenlwrxFJy82CxZTmmqkOBlsgloj1+qLdgjZYn+BlGd
         Nv86XIvQtrrEN7mSGoW6fTRN4SLaB++j6QsTqg3sF5F/AAnoiHnYZ7CkmWC+0/jCybeo
         QYZI80AXvjLVlrebL8TFSnqywQ8yQ2Vw4N7fNztA4JhbujSmgGHR28kW9rt2pTtk3f7u
         o7NAzQkGqyy5VtsNTFB3e09bUykY/sTyE4PE3+XNk8ZAjdl5TCookMdk9sX9OpxJqKUb
         5uYTIZHe8E7FTEpWDsH30dyKEGc0vufr/t6OHJSOLQhI7YKjkfYTmOXg+PnCsSp4y5ee
         q5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770719912; x=1771324712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CbUOf8f+2cqPAdS3EUjFGmF05TCgL4SOq39zD1JBkRc=;
        b=rEvMKGXcg5OQUr09OnwY3HaYxj/3IQT0Tf+vUBVNyuLPSJXN/0jCdVXxhmld0S3e6j
         3NgkSPuHRmAG5+8O4od/txleYvFJr8xZfFhjkqiCL7USYP3jvY8g9T57M5B0xyoWIelP
         cehxO46fLYN/mBAFFeUjX46/h7wdTFvQr8JTWsJKFdrhXpF6YXlsNiOQbpKdeWKohvIn
         HyTeSwK6pZr1ZKQ/eHHg+dXvs8RLyf2FvsR5ADGqZB2lFyMDkb7KHfNgBWgnOsLhGQop
         ZXRGUNs+Q9jXbMvAZDTkgq8s1Ytm2BiypY+GHo7m0MOoXhAWjQnHSNstIXypvPvgla5i
         yCKw==
X-Forwarded-Encrypted: i=1; AJvYcCU1Mx2SqDHWI2g4EApWfsQ8cZJ8DBZI9TXFuTiVe0BsgvwlNBB/NqD0YLwTG3dvByrN+NgRzl1s5sm/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9Yfs/bSF0bpzri5cQg9cpv3hb0VAsHrvCgAsOij9Kd+KbhwlV
	DppB1AxRztsAhGouZCxICtpwO4sIbnwjPUru2KnhSjk4rZnXCwBaOm6ufk2dqgnL30hKp/pjUgx
	M4+7ZQ6+L5RoqUd3zDv9HYvdzln2752/3lYkeSMgu+XFlTQFaP2ql65ydo87mGBN7
X-Gm-Gg: AZuq6aJQ/7SdvRPvnE6uTkpY8bdd+cJ0Zx+VOVVelwYAh6SfySlXbDe9teXrO+TfuvW
	6WkJep17JYKE1KRl5KOuzRU2kK6UdGJIsASkLHBtyDi/ujNKO1NyUskPSnEbALNyKWjI1DqmpZS
	ThZJyc7Yw8ccfyR+6iTrqCQ9MDLaIe0V/ZTsadhlekTxZcLFJpqijrJmnyvCdgoOyXBYOKB6QKp
	bqiX/9y3WXPwS018Z0T+Sns9u6lLW62JLpadLSwjDAipqU0bpDtjA+PNONOj6Jw5/kN0EzmDmcn
	LbrXDFziTimYUaPir4JwGB7sZdSy527toskDF+1SB+LfCcYNkyWoA1Ft8ORkuyZJhVosgVeK+oR
	DGyMJ/+HBXz1V2P/fmr2gyKvBoqcu7nuIZ5JL3m9FY26GbX1XFt8v
X-Received: by 2002:a17:902:d54d:b0:2a9:6281:6a4c with SMTP id d9443c01a7336-2ab12cc647dmr10500005ad.0.1770719911936;
        Tue, 10 Feb 2026 02:38:31 -0800 (PST)
X-Received: by 2002:a17:902:d54d:b0:2a9:6281:6a4c with SMTP id d9443c01a7336-2ab12cc647dmr10499735ad.0.1770719911438;
        Tue, 10 Feb 2026 02:38:31 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951c92fc9sm143649365ad.37.2026.02.10.02.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:38:31 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
Date: Tue, 10 Feb 2026 16:08:21 +0530
Message-Id: <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4OSBTYWx0ZWRfX1IlrYXd6IuR0
 RIvjKiZeod8R4SKRITEVzn+aJfvED1uTEfRS0dN/ofJ3HP+qJVOHaBXmUQM3OjqmQQekf91xNrZ
 PQplRdKo/VRmEPf+GLCgROaNFp/UQ/NOHPjMcO3iARLXdWHI7TgcSjcSKt/1eMVjKRevYTlw79q
 qbg8m7Hke41aXY1NdpfQsB8O1zK4FQFCHlB7ou/uEijjEoNoaKajCga1jYW8ko72n1RN348cQY7
 s964Y3/4XXqOcQo//HAKZJ0d/l2fmpsoQiLTrAbj63WFFl3c+xPgYv36qymmN2QIU/gtqeEMrxl
 xkyFCB1Xp7GYdRlmGasSsvALa6JcmfgRvfE31RbCTxipkC/OImXWGR9NkzDLNyZprLQl744/jJz
 FXr9fRV4w1CtJFB2Av+82Xt25TG+7JIyq+AqzqvZcKEc1fkoJPjkbYZ+v6ClMLquvB42ojnMkHB
 NvlwNqMWQG+GdUHgFjA==
X-Authority-Analysis: v=2.4 cv=fd+gCkQF c=1 sm=1 tr=0 ts=698b0aa8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=7WwWSvKBDqV37eUiOWMA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: uv0eUTJvcCe2uR8h9YmKUekFYoLcdgWk
X-Proofpoint-GUID: uv0eUTJvcCe2uR8h9YmKUekFYoLcdgWk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100089
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
	TAGGED_FROM(0.00)[bounces-264340-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.52:email];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F013D119B56
X-Rspamd-Action: no action

The Mezzanine is an hardware expansion add-on board designed
to be stacked on top of Monaco EVK.

It has following peripherals :

- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
   - 2nd DSP connects M.2 B-key connector for connecting cellular
     modems.
   - 3rd DSP with support for Dual Ethernet ports.
- EEPROM.
- LVDS Display.
- 2*mini DP.

Add support for following peripherals :
- TC9563 PCIe Switch.
- EEPROM.

Written with inputs from :
    Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
    Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../boot/dts/qcom/monaco-evk-mezzanine.dtso   | 189 ++++++++++++++++++
 2 files changed, 193 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e8..009e50c145e9 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -45,6 +45,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
+
+monaco-evk-mezzanine-dtbs	:= monaco-evk.dtb monaco-evk-mezzanine.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-mezzanine.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
new file mode 100644
index 000000000000..7811bd9e7ea6
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	model = "Qualcomm Technologies, Inc. Monaco-EVK Mezzanine";
+
+	vreg_0p9: regulator-vreg-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_0P9";
+
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-always-on;
+		regulator-boot-on;
+
+		vin-supply = <&vreg_3p3>;
+	};
+
+	vreg_1p8: regulator-vreg-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+
+		vin-supply = <&vreg_4p2>;
+	};
+
+	vreg_3p3: regulator-vreg-3p3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_3P3";
+
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+
+		vin-supply = <&vreg_4p2>;
+	};
+
+	vreg_4p2: regulator-vreg-4p2 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_4P2";
+
+		regulator-min-microvolt = <4200000>;
+		regulator-max-microvolt = <4200000>;
+		regulator-always-on;
+		regulator-boot-on;
+
+		vin-supply = <&vreg_sys_pwr>;
+	};
+
+	vreg_sys_pwr: regulator-vreg-sys-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_SYS_PWR";
+
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&i2c15 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	eeprom1: eeprom@52 {
+		compatible = "giantec,gt24c256c", "atmel,24c256";
+		reg = <0x52>;
+		pagesize = <64>;
+
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+	};
+};
+
+&pcie0 {
+	iommu-map = <0x0   &pcie_smmu 0x0 0x1>,
+		    <0x100 &pcie_smmu 0x1 0x1>,
+		    <0x208 &pcie_smmu 0x2 0x1>,
+		    <0x210 &pcie_smmu 0x3 0x1>,
+		    <0x218 &pcie_smmu 0x4 0x1>,
+		    <0x300 &pcie_smmu 0x5 0x1>,
+		    <0x400 &pcie_smmu 0x6 0x1>,
+		    <0x500 &pcie_smmu 0x7 0x1>,
+		    <0x501 &pcie_smmu 0x8 0x1>;
+};
+
+&pcieport0 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vreg_0p9>;
+		vdd18-supply = <&vreg_1p8>;
+		vdd09-supply = <&vreg_0p9>;
+		vddio1-supply = <&vreg_1p8>;
+		vddio2-supply = <&vreg_1p8>;
+		vddio18-supply = <&vreg_1p8>;
+
+		i2c-parent = <&i2c15 0x77>;
+
+		resx-gpios = <&tlmm 124 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
+&tlmm {
+	tc9563_resx_n: tc9563-resx-state {
+		pins = "gpio124";
+		function = "gpio";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};
--
2.34.1


