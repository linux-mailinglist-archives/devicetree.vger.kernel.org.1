Return-Path: <devicetree+bounces-267185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHM4C5k+m2m8wgMAu9opvQ
	(envelope-from <devicetree+bounces-267185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:36:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EE416FF4F
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C67FC301A286
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 17:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F307035B63F;
	Sun, 22 Feb 2026 17:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ma8n57cM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G623yGZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E1C3596E1
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771781760; cv=none; b=YyvvN77HGU5eNXAbA52CcGMkxl4vaoV1vFfVhZJCUqRp/3hM+VVrqluugWeqeV8Ewe+XP6Cd9igSZ3m0v0+omJcKSx22ywiKxPwMKAHwI3usMVez+i3/NqVHOCbslvavMbwI/PteGtj9koRpCAh5TUeGtimKzgMo0ZZmy9bnnTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771781760; c=relaxed/simple;
	bh=UBRzGvtTFre085RCuSkU3f9PquTNc72Y1CyyQDjKCQI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=klzmnALSbIJavcUMM0gax2y8ErkAqB1mC77acNcCX312cqB4vjTh1aft4HADIZq6EObmsnPtcM/31cMq8dB0P7tLplEs8iuXKI+jJNr00vnJYyx3IwYIZgz6ZuM9FV3Jm0Wk96ak0nYjYgRhNUh/TAFRu1ihcHds/uJVLQJ9MfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ma8n57cM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G623yGZQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MHPMKH2960494
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=z32pF/kacjQ
	eBSMKvxRXFmIguQZ2SMvLBwmrDLjPi9E=; b=ma8n57cMOIBEmSJYKv9Y+CNc0vT
	tlXF4rlAGbpG2xWLRtmJWz7BPO329OsopURNbIww5o317EUAZjbEn6D/sdiAiP0d
	DXeTlvAsKV4IhAYzylR2RDalykjaeKzPoJX9qlf7vXUoZ5ADmenet1MmVE84qBpx
	EuiIp9B0Wzg2BfhSJWb7WMpGjkqzf8ALrwYIGZbsNMk4mf8gcbD8Zpi5xwEDd7I4
	K0pC1Dwl7pFWVi6FKVMPae9OA+hyzhzAEscS0j427vEaUo2C+U2foBNjwlKyqRE5
	QwhFa5UqZ+JkyNre+MQn2+NFjnz2TN3gD45QDm6fuac9Lze0QTAmZZv/13A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u8jgx9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:35:58 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6d82308c28so2134954a12.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771781758; x=1772386558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z32pF/kacjQeBSMKvxRXFmIguQZ2SMvLBwmrDLjPi9E=;
        b=G623yGZQqpKdoVzOjl0f3bu5R9OUi8IMReVxxGKMKbDzO8BHgZFiHIzMZ7bk8pNzYD
         +xlFpBJ1KFcgR5UQhJ2kN2v7iqHeiXJ7SOeMBghLLImOf+WHEt8x1El/269eT7pyVDHp
         XXPeirETcpMW4fAoNzuXplOSmOwoLgOlzMVJR3zEy1NfzVNmyBbrxDA5xYUpSZP3hl78
         VsQT/R6LmDC2slxce5pTDBXvwti/9C/zqJc5UsjwaQHCmPlxTezusNQMnczWsuBFR71U
         KAGk5UtNoF5U/NHQL16mNopzixrkKRN0eYYwu2iq9LivSUjC2MZ3HFpOSJVNe/URHVyX
         4wLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771781758; x=1772386558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z32pF/kacjQeBSMKvxRXFmIguQZ2SMvLBwmrDLjPi9E=;
        b=PRQAT4Ciw06Ns+q8tVo4g5/RMW+xL4PStjsUrD+8DvJImCYGIGP3LJt6Nl1G4KrcAs
         rDrbIRucxOCqgF+NEV3exsP6N1gr1TrpX2HlaWhMMJjX/nSuYZun9wKurQ0fyZF7Km4+
         3/qdXS1HQBIbwmp4vjxko6/0n7kLCFUSv1pW7MtZMfqxeLchJd6G8KM9FXBIGAcisNw7
         gBJoS0helOz9VGrYGL1isW9bqIY6MX6vNM7ZZYLLxtHLcM0bA2Fv6Qj32v7rdvBKer3X
         oV2GFeDubibHIn4pc4su8ube9SYH70kgx03HHxKNO6tJ2bOC0DSNLhHLNMSYxaquVd7C
         JUlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgfPvaP9AMjr76Vn7ILnzl1OWLj4HYaelDp+6p4KbUXXr2XwTrHKdK/fZhBXFi9UCXRCDPGPz8B8sW@vger.kernel.org
X-Gm-Message-State: AOJu0YwYqeRBfrslENIUR/2qm6Aj15rnaYdROB9ONHQJBgsSnziUlzlf
	wY9yIJRXkWBVzlU9u9+IzNhDgGXoXbfi3wm8+bXDCvAJzMCQYdJXNrIJmzuKARcnu0SPARB9/sn
	INKVFJy5E2F+sFAgpDHKf8X2Msy0Xm5gSdvivx8tw2cnFMLsUnAcEGjNLqbsBW17m
X-Gm-Gg: AZuq6aLAsRdv9Gljl6P/pH8mxTlDT0UAfYy/FARCPwKEZ4d3eXDahOfhdQpnF8CNrRw
	rbXOuc1bh+9Z5VYrW/PN2kYUzxhDh9g28t+MT8FpnNYerN0N5VRsriUzOgbbyFr26chnl60MKrf
	ZSMgkf/nITJwf/QQ+uNaQjWMDCIukmetB5J3GGcyh6byN0QfSw+SvYMhTjmJJMnwMFGJlD0ZOCM
	w+yAXOVf3vluBo0873SN2ZQkIdaG0/Vud/RQMfohfJ1V36/pVR28y2ur/skLLncm1BP3gTs8ebd
	81UUwKax+sbtM0TPAweHZcb/dBQWMiXzdsSm4PMvgTi4v4MIRh9VdcDfXRdsbiy1ogdAu4LJU3p
	bBuVmBNQ4FlVHl6aJF7MnCxMtT4QsMf1YW5pUn+wI8uacHSITY2/f
X-Received: by 2002:a05:6a21:6d97:b0:38b:e7ca:9517 with SMTP id adf61e73a8af0-39545f9a823mr3934831637.7.1771781756789;
        Sun, 22 Feb 2026 09:35:56 -0800 (PST)
X-Received: by 2002:a05:6a21:6d97:b0:38b:e7ca:9517 with SMTP id adf61e73a8af0-39545f9a823mr3934821637.7.1771781756312;
        Sun, 22 Feb 2026 09:35:56 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8cbb02sm5193757b3a.57.2026.02.22.09.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 09:35:55 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus Mezzanine
Date: Sun, 22 Feb 2026 23:05:45 +0530
Message-Id: <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: W7QexYHZTkjHa0_H-gJwpvlJXWihjri-
X-Authority-Analysis: v=2.4 cv=cJftc1eN c=1 sm=1 tr=0 ts=699b3e7e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=7WwWSvKBDqV37eUiOWMA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: W7QexYHZTkjHa0_H-gJwpvlJXWihjri-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDE2OSBTYWx0ZWRfXzwEJmGBcKXSl
 QJXHdDMPCeTqTCpcfP4DnM0SbevJtpL4Rxwp2iiMIpFq80r9RFEMn+bR3b1nYBe7kOqoFaw51s3
 KHYOCe4cC1yu2V7/pkSc7kiFqfeXK1MWzVVt1j9x2XpAQxtto9gkauWTLQI0o8+BOhmtecoqCtX
 w5H9Va8IebSTRakubNoHLuIG9QvMTPKExQDaWLEegrmMwekkXqg2PTozHEKK0xLIKsagkg21nkc
 qvEWn4aqDyayYU1zCQ4nOv1XJX3+UaI/Zc5lf4QqG2hfTsoH/0Xv5Zlyz1oJTrHxx/7y6S70W+I
 CAu+lzf31d35IdbIkZ/LMmTiZyHFzqEu1rRGT/qcz5V0obAyI5fKUkaOZTrY5qmm3mdjPS5agxL
 ZobhJQ+jDg8Idrpvexif7wKFHGNA2qJAKGWfK0qcD8/7n7xuzfKGwA+sJY2xHQFol47jbTsbnun
 N6pIk2qTO+htPs/xdLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_04,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602220169
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-267185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.3:email,0.0.0.52:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C7EE416FF4F
X-Rspamd-Action: no action

The Interface Plus [IFP] Mezzanine is an hardware expansion add-on
board designed to be stacked on top of Monaco EVK.

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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 184 ++++++++++++++++++
 2 files changed, 188 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e8..9d298e7e8a90 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -45,6 +45,10 @@ lemans-evk-el2-dtbs := lemans-evk.dtb lemans-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-el2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= milos-fairphone-fp6.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
+
+monaco-evk-ifp-mezzanine-dtbs	:= monaco-evk.dtb monaco-evk-ifp-mezzanine.dtbo
+
+dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-ifp-mezzanine.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
new file mode 100644
index 000000000000..f0572647200c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
@@ -0,0 +1,184 @@
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
+	model = "Qualcomm Technologies, Inc. Monaco-EVK IFP Mezzanine";
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
+		bias-disable;
+		output-high;
+	};
+};
--
2.34.1


