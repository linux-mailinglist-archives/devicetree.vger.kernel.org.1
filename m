Return-Path: <devicetree+bounces-270651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eN5wM+YQp2k0cwAAu9opvQ
	(envelope-from <devicetree+bounces-270651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:48:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E42601F418C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 17:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E4C730B389B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 16:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6101F3264C7;
	Tue,  3 Mar 2026 16:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pNEsRlGD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AB2V1/6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58E63264C0
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 16:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556209; cv=none; b=EbJMRdBC5pG3U/G1ydANXWqaoz/eUfwCtLptxyqNciPeBkK91rffpGEiIIFmmfv0QYJXqgdwxwo+37ny4GaDqfW0uSI3edv5Pfnvi1iwndJNWXMNI+hhU4FvDByRXB2JexIBleYESPwZwSTfTQBeW0/BqlrFiwhlIm+XGeTsbNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556209; c=relaxed/simple;
	bh=/Y9yvbIVflTZGoxak/t0m6bjgdhG8e/xJZCPaqb1qSE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YOjjXsY64k9BD8eoePhIgdMkrMFhJWUavUqi25f/eaZTCSrDcVbZcDB0XNuJrsPIERpWdDIqB0hH0yyyhmksiaX5HCqG+idGjs14u/CN2gDIV3gQw5oYU/liT/T1I99zVub45Z0JJc+zhDn3nDXu5l+tuC7Xx5651w9/A4+ps7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pNEsRlGD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AB2V1/6A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n8pv2630039
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 16:43:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QO1j4VMiZdP
	cMlS2TtY7aC9MsTd8SUCYpTe3L54onAI=; b=pNEsRlGDac1kFAneh+tqt514/BI
	XnUZGSBZhI98UWotHdMylkeADRkZR9ZEZ1vdiNlo41pnXAP7iyaakkaLa/DwEsUn
	zghz8x8SMR8RctIJ+LLhIdTWqKCH8jxVvdPMNNkvhPyOhStN30Zdl0hw9TrjR0cg
	RjsgYKs41oBo9odghwl7HG4HtimNqDR4k0b0rHCaI2GsnjZGynXmxdpPOM6pUNeV
	d8TX5RNoIeT/2euZbh+iDmOCoLypiRu8IaQpaCwtohHXzsZEns5SPXNfZ8Zpr05b
	00YquTSIHl6/7zEfPrKMlUZMUpEurHfA1DrP/PavQtl1b/6FYlR4o+WC8qw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnhx5bkg8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:43:26 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824a2ca6eefso2505043b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772556206; x=1773161006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QO1j4VMiZdPcMlS2TtY7aC9MsTd8SUCYpTe3L54onAI=;
        b=AB2V1/6A2bKQqm7+HldYxRFq4gGTlOuJpPzoivBHgSyIWLYk0H18PujNrzvozCMlVS
         NWcZraYfmiQ7XfWsh9LR2wbUDl3nB8dLMIcPRFEj4K39YbnGcB87uIhd+f2IBU0HqUu3
         zDnqRSlcIJb2GBhmlaPffslVlrLae7KSdH2AtF8Xh771RmGvVOrMO8qJcI+3lblPvdl+
         KCiGXQXj9Qe/rv4bS3XSZ5FquuNBL/h1k9dIvaRf3BDTYmD+Wag+4vKc3Qgvs4HQxx/f
         8MJwG0RkNZTu6gxulRQ0vx/eLzBcoVjjkvzi6r/Hj8uVthu9NxwWe7yiVwD/RxB4XbBc
         X/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772556206; x=1773161006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QO1j4VMiZdPcMlS2TtY7aC9MsTd8SUCYpTe3L54onAI=;
        b=slRaCcyNGDZP7DHqke78Um7ldY456e00YlCMnbHpobfb8yWgHMgWAJD0b5ih2EeFva
         wNVlrleL9f86JePj/nb8sbO20YzxUoUmmvb+P5W8EYWkie+bRc15oSOcR8ivjs4dicAE
         7rXMK8dKnivI3FnRtONGEiVMpPdh6pgH91lhqjZUmcUSZtY9lWIkNnulQ0/OmbdaS+Vu
         sCwC9V/cSoemVr4CMzMgK13nABtzFUL77xWkMOM28vtHmanuSTJ7QghFt0NPuL3xCyoX
         FCE1Hrr3KwhxTLg+0Aclx1cxYHdOtX3o0lAE1fG9hal7vA4gSUiCcoa3PsIqKXFpxDqQ
         ikiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVz7orKdXQ26kGBExZOjnXzgGDxStK/INk/M1rLKqKbjLIpvWJvLgYeqPGtFXZYAee6QSl+b86wOSI8@vger.kernel.org
X-Gm-Message-State: AOJu0YxGEkSJ3D+xzdtxzelKiwM89Z047gRFie3TkWvmn1HlmYo/Mg7N
	5TmHl7O+/VC2+O5PkpNffyh+pBqUUBdE6BjpXwEmfGbBxO9QmZZfv3gfq6EGm39hYTt8fqiBVMf
	F+S3/rCc0SSkcX9n7eukTlgtSAHl+XgZn9OC4LUbwzC81GH9+TKwlZhWAv537EmVa
X-Gm-Gg: ATEYQzxzzkpSdzCKFL31mSQXXbQWtt4k42DSyUAruqC8tBmHDWMd0mEV1uEazZI9t5V
	OfSGoxdIr1yovT+pTtWngulkklrjIfNQSUk5VPqgkS4bDFSHIUS4uTQx3+B977oQUqfKQRmCf/J
	PCsIL7ynAxmGYaHhGB4AleucRv9jzKw23mprGTd7R0YthaHgJMK1xt5bOPczEob8JYSBgBPMzFg
	mCkjqNtZZmlSBLAntLkTvpMe2E8g/fauSQRWpeSlXbDlkmBa6Kg/qONKJFqU61yi6wAI8QIcmtN
	f9jv63Cd4z/8XstnDQKSCvP4OgtmEYI30jfB8ATPExyDz5VuGTOzsnKYKqVxLx++EeaH91DDXHD
	684vU0rMOZNzsbtszW/qwKP3QzKjPQ8xpDJapXdp9c1xy7ECRxYrN
X-Received: by 2002:a05:6a00:390e:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-8274d7d4efbmr11136097b3a.0.1772556205659;
        Tue, 03 Mar 2026 08:43:25 -0800 (PST)
X-Received: by 2002:a05:6a00:390e:b0:824:9f50:83c7 with SMTP id d2e1a72fcca58-8274d7d4efbmr11136066b3a.0.1772556205055;
        Tue, 03 Mar 2026 08:43:25 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a048615sm16153508b3a.52.2026.03.03.08.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 08:43:24 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 1/1] arm64: dts: qcom: monaco-evk: Add IFP Mezzanine
Date: Tue,  3 Mar 2026 22:13:14 +0530
Message-Id: <20260303164314.886733-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260303164314.886733-1-umang.chheda@oss.qualcomm.com>
References: <20260303164314.886733-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEzMyBTYWx0ZWRfX5RoFqXSNNqNw
 IeF+ibLqJwhD/mcZfWr6szCSP20hFvJKhutYVn/BsNQaTZy20RzxOl7TuyH9FxZlZNGiYQB0hdy
 970eASOOIcPsguY1i6ByVCxyjVWBgN7cjXoNBbLj5rLV537TzFek0X2ytF9XapQTRqXjOx/E9A4
 AOThPwKxFGDfhqrCO272txY/FBPg0/vPdh/l4Hr7IBEH8yidA2wzOoco49UKmAjF2HkfC8jucZY
 XYVmGHcJcTn48JWBpwHqioColgdZpjCSy3C8h7+bknL5fIUraj4HDjCyKRFnO6f95mD+HZiwp/q
 RVo4HTsr1u7ElUsGPIqaLUUcpGStJ6v+zDEgS4q/VNPkms7rWA6olbZyPT5/FqZDRX3Iw+7Z8EO
 shC2eRNvj5M0TyyzwtrjrQvywsjWmVdgwZSeAiDRz+jn9UY5R5pwFfvV1+QMONwRDPSceh/W2ZV
 HbOjrxUnZKbvq+vZlqw==
X-Authority-Analysis: v=2.4 cv=T9CBjvKQ c=1 sm=1 tr=0 ts=69a70fae cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=7WwWSvKBDqV37eUiOWMA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: fuuTt__WaQY-XWq_FzjgSRmmHtbWOxYK
X-Proofpoint-ORIG-GUID: fuuTt__WaQY-XWq_FzjgSRmmHtbWOxYK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030133
X-Rspamd-Queue-Id: E42601F418C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270651-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.2:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,0.0.0.3:email,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email,0.0.0.52:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The IFP Mezzanine is an hardware expansion add-on board designed
to be stacked on top of Monaco EVK.

It has following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP is routed to an M.2 E-Key connector, intended for
     WLAN modules.
   - 2nd DSP is routed to an M.2 B-key connector, intended for
     cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- EEPROM.
- LVDS Display.
- 2*mini DP.

Add support for following peripherals :
- TC9563 PCIe Switch.
- EEPROM.

Enable support for USB hub, LVDS display and mini-DP later once dependent
changes are available in monaco-evk core-kit.

Written with inputs from :
    Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
    Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/monaco-evk-ifp-mezzanine.dtso    | 149 ++++++++++++++++++
 2 files changed, 153 insertions(+)
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
index 000000000000..e6beb4393430
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-evk-ifp-mezzanine.dtso
@@ -0,0 +1,149 @@
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
+	vreg_0p9: regulator-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_0P9";
+
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vreg_1p8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
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
+		/* Reset pin of tc9563 is active low hence set default
+		 * state of this pin to output-high.
+		 */
+		output-high;
+	};
+};
--
2.34.1


