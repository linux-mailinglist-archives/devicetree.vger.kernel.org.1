Return-Path: <devicetree+bounces-33046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA3831D87
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 363DB1F2374A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 16:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9950729436;
	Thu, 18 Jan 2024 16:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="m6JBquZs"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12a.ess.de.barracuda.com (egress-ip12a.ess.de.barracuda.com [18.184.203.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBAA2C190
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 16:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.184.203.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705595084; cv=none; b=FpbXIRDDInW4vE0FcvChutDefBTU3vZ4j1NdgPDRQaknQF0n0mj68LKt6s8E8E/sriXzhvvgR9DvgK8JUPtsg0NtZca/vaR8fk+eX308iC1A2YVbymx5W7oHniU1nwDAjksJB2s/JFngpyhgx+Ukr9zboyjwsOQXG6upyZRfIUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705595084; c=relaxed/simple;
	bh=Ifr8E2oufJGKchMykBY9+g7aZvjezVWdwiSM4W1xHbk=;
	h=Received:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Received:X-Google-Smtp-Source:X-Received:
	 Received:From:X-Google-Original-From:To:Cc:Subject:Date:Message-Id:
	 X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Transfer-Encoding:X-BESS-ID:X-BESS-VER:
	 X-BESS-Apparent-Source-IP:X-BESS-Parts:X-BESS-Outbound-Spam-Score:
	 X-BESS-Outbound-Spam-Report:X-BESS-Outbound-Spam-Status:
	 X-BESS-BRTS-Status; b=fb2mFHGrY3PhTaE2tWtF9F5Z6N6914h1Q1IB/5wRSF4CKszfWTlwd+grIY7/qSJUOxxT7aVXRE4bLDjFlrVRugyoV3KKQXyLRHY3q7LTU5+Tr5KEgioXiZ77L3UdUgixOOXPcpVKkrTeb5hnJYiksPmyDL/kjs7dsaYLKv2HrL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=m6JBquZs; arc=none smtp.client-ip=18.184.203.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198]) by mx-outbound40-32.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 18 Jan 2024 16:24:40 +0000
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3bd53252a74so12751245b6e.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 08:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1705595079; x=1706199879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qsidD247MlOveZe6z0oTPZMJTm+NPsyrRqiMMm2tdIU=;
        b=m6JBquZszUwrYXenF615F4DmSL81H8nNb1y45Nr0YHdIO5JgK+b9oM5IpaZ6j7xdTG
         GePpbAaZE/AoTrVRNtiis0gC0Dmc/ZNhGur4hDi4vCR4dNt5zugoHwIvPmtZ9FMoOBQ0
         1FBhAzjl3ExO+k0JIGMB0ZiaEEDQUBM7yzhc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705595079; x=1706199879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsidD247MlOveZe6z0oTPZMJTm+NPsyrRqiMMm2tdIU=;
        b=e7d400ESjFjQllt7cR/wApOhzUsxTUhVRInIEUtwkv6wjRqMF7hQXKVg2UC0Kw77Ln
         Tx/CtMK5i1Er7y+dJs7FCRtJabgGqe+Q2yQMMqArrfb31py6CE6u13W1GukalrOrBxpO
         4c83/qyjOqKCAmYdGI4WFGgsSUTzxZk2rZLyKJPxCPDjyI576o9+j5oXtXuGrCjkRagK
         5mCGDGJmTplmEmaWJHRx4yEMWPfPkhqVFjOqfzuVphXuVg87/6qwHuDkES0wMSkkBGxS
         kcK5Ho9WdbroTt+SUTkYyU9R0xcw6Y160nMIYbRXav2o3/UbFL+9hhYahDnsxhqMhsXN
         k/dw==
X-Gm-Message-State: AOJu0YxJLeSZGfp1c2w/Beze30T1IavOD9xkwRvogZR8gxyhVgk7iV0x
	JbLz904h21uj6W5TMP6uVK7M4zJDYtO20BRooAWU+9mXhhvL3oVz05BZJFPK5tidI4UAzCGN/jB
	+rgDLec3IoY7PfHpxMIibMA+WHvF3GSFBKGrsKq9RceV689hy9aThdruC8hyqBCgPrhYnmUQe6H
	U3zhLx9s3ZFUj/Jgshng==
X-Received: by 2002:a17:902:8c8a:b0:1d6:f1cb:7a95 with SMTP id t10-20020a1709028c8a00b001d6f1cb7a95mr996799plo.57.1705592161030;
        Thu, 18 Jan 2024 07:36:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1N6+Ujn+w8UVBkZ1EV2KSVM8fQeMcOeMJJDl5KrOUVoSdclCmcI0wvbfECLkpcqTISVUZdQ==
X-Received: by 2002:a17:902:8c8a:b0:1d6:f1cb:7a95 with SMTP id t10-20020a1709028c8a00b001d6f1cb7a95mr996792plo.57.1705592160742;
        Thu, 18 Jan 2024 07:36:00 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id kf13-20020a17090305cd00b001d0ca40158dsm1535207plb.280.2024.01.18.07.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 07:36:00 -0800 (PST)
From: sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To: nm@ti.com,
	vigneshr@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	u-kumar1@ti.com,
	sabiya.d@mistralsolutions.com,
	Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am69-sk: Add support for OSPI flash
Date: Thu, 18 Jan 2024 21:05:24 +0530
Message-Id: <20240118153524.4135901-3-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240118153524.4135901-1-sabiya.d@ti.com>
References: <20240118153524.4135901-1-sabiya.d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1705595079-310272-12414-9106-1
X-BESS-VER: 2019.1_20240103.1634
X-BESS-Apparent-Source-IP: 209.85.167.198
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjQ2BrIygIIphskWlmmJ5o
	mmlqmJFqkWqUZGiYlJ5gbm5ilpFqmWlkq1sQAb1Lx9QQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.253602 [from 
	cloudscan10-177.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, NO_REAL_NAME
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 SK has S28HS512T OSPI flash connected to MCU OSPI0.
Enable support for the same. Also describe the partition
information according to the offsets in the bootloader.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 81 +++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index feb571a5a0f5..f368105942eb 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -474,6 +474,25 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
 	};
 };
 
+&wkup_pmx0 {
+	bootph-all;
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (E32) MCU_OSPI0_CLK */
+			J784S4_WKUP_IOPAD(0x02c, PIN_OUTPUT, 0) /* (A32) MCU_OSPI0_CSn0 */
+			J784S4_WKUP_IOPAD(0x00c, PIN_INPUT, 0) /* (B33) MCU_OSPI0_D0 */
+			J784S4_WKUP_IOPAD(0x010, PIN_INPUT, 0) /* (B32) MCU_OSPI0_D1 */
+			J784S4_WKUP_IOPAD(0x014, PIN_INPUT, 0) /* (C33) MCU_OSPI0_D2 */
+			J784S4_WKUP_IOPAD(0x018, PIN_INPUT, 0) /* (C35) MCU_OSPI0_D3 */
+			J784S4_WKUP_IOPAD(0x01c, PIN_INPUT, 0) /* (D33) MCU_OSPI0_D4 */
+			J784S4_WKUP_IOPAD(0x020, PIN_INPUT, 0) /* (D34) MCU_OSPI0_D5 */
+			J784S4_WKUP_IOPAD(0x024, PIN_INPUT, 0) /* (E34) MCU_OSPI0_D6 */
+			J784S4_WKUP_IOPAD(0x028, PIN_INPUT, 0) /* (E33) MCU_OSPI0_D7 */
+			J784S4_WKUP_IOPAD(0x008, PIN_INPUT, 0) /* (C34) MCU_OSPI0_DQS */
+		>;
+	};
+};
+
 &wkup_pmx2 {
 	bootph-all;
 	pmic_irq_pins_default: pmic-irq-default-pins {
@@ -1073,3 +1092,65 @@ &main_mcan7 {
 	pinctrl-0 = <&main_mcan7_pins_default>;
 	phys = <&transceiver4>;
 };
+
+&ospi0 {
+	bootph-all;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
+
+	flash@0 {
+		bootph-all;
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+		spi-max-frequency = <25000000>;
+		cdns,tshsl-ns = <60>;
+		cdns,tsd2d-ns = <60>;
+		cdns,tchsh-ns = <60>;
+		cdns,tslch-ns = <60>;
+		cdns,read-delay = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "ospi.tiboot3";
+				reg = <0x0 0x80000>;
+			};
+
+			partition@80000 {
+				label = "ospi.tispl";
+				reg = <0x80000 0x200000>;
+			};
+
+			partition@280000 {
+				label = "ospi.u-boot";
+				reg = <0x280000 0x400000>;
+			};
+
+			partition@680000 {
+				label = "ospi.env";
+				reg = <0x680000 0x40000>;
+			};
+
+			partition@6c0000 {
+				label = "ospi.env.backup";
+				reg = <0x6c0000 0x40000>;
+			};
+
+			partition@800000 {
+				label = "ospi.rootfs";
+				reg = <0x800000 0x37c0000>;
+			};
+
+			partition@3fc0000 {
+				label = "ospi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
+	};
+};
-- 
2.34.1


