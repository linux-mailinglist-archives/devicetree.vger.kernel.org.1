Return-Path: <devicetree+bounces-43375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC385A235
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51AC5B25A4E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 11:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2762C6B7;
	Mon, 19 Feb 2024 11:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="eYWkOxcR"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43a.ess.de.barracuda.com (egress-ip43a.ess.de.barracuda.com [18.185.115.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A080D2C6B4
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 11:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708342818; cv=none; b=VOeyYV3I4jOZIygIYPBbZynhQDsjJj3JmVmUz+WLDGKND3MTY7CTao84tTqO+FfLqOxu9Jyjym5mx0rp9mhqKOH0tcRp1OX/c2uT6AMg1IB1HhtWPjJBfu14Do8FY3nuEdTHzBzY9ibbKxCujV9Y/1AbROfEs0Ieq7mEB42FMtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708342818; c=relaxed/simple;
	bh=O99tFj8pg2SEbucwpfZS/VZ+NyGC4GYhc3djletH83A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XgrZY68e6dD0nWmCOSIUjJrhKFiruOcbw542CAb2tKE2gmAyBVrWqmWLTJ7bhInUmS9Jgp1+OYngZnpqHLGM40LYfNYwiXt6PrI87HwM7Gm1QNHfjfhRKsVvyEi+DGILfkcsnAIfGwXGzHbWW177WGzLfhi6Llyr+2/m5pQc44I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=eYWkOxcR; arc=none smtp.client-ip=18.185.115.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69]) by mx-outbound14-174.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 19 Feb 2024 11:40:14 +0000
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-21e5e758d36so3917757fac.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 03:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708342813; x=1708947613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tpdw0KJiz8mlHnSoHzcj3+lieIii8B37Aca6mVzGbBE=;
        b=eYWkOxcR9hh/cXzMbykB6i6Lnf2aZ0xZC8qE59jdI4IzKe89XMO1jXRJmUm54OlbtY
         rNGazc+6qIDBaVfk8HyFHKxIyVrV0y4NMkd4/CLWtYyVmklKowNQv1vduDmSB3BhK1ia
         CDhW70JKuUA+We56Hy0+rlCc56tpgWAR2frCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708342813; x=1708947613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpdw0KJiz8mlHnSoHzcj3+lieIii8B37Aca6mVzGbBE=;
        b=trlHHSZlivU19TqH0xuSFZq4vaxIVaLTbnwuXGNtAD0+FlltYc+RlSqzOl7rTcISxs
         9S8UxV2ebllCQp9MLQW40GY2GL9w8tYtJvCNURcFf67+D0wdC1ObyW6vEMnPlHTfl8sa
         3z++Z5fWnAieVtoCAvR8t9QeS8uu3XbdgdgUePhh+6vok8NN+HiHrGd2olG847Zw0NwC
         INxRWofpyA8lUe+5iUHmHmPKMwqKPjCYb9+VuBsWVtoDL6V+/JzZo+pMjS8plfL+Xcr6
         R1KS2Crws4Ln7W1Ukt/wtqplAWApcI0H5jn4DqkDhSsg44Z3NEekLuFcg0XlBQUkpxV2
         3zrg==
X-Gm-Message-State: AOJu0Yyfh3bQ/0hTuMzBf5CDMSZ++LGM1tg14SlD/i0wC6RWCvqlR8m2
	6KqyCerLoplTa1pgNU6JnJ+BLeoD5DnOR7lexsTYN94qcra3pI2nRFFvEZ10AM6bKSUZWc+/f3Y
	Lkwy3oJOnn1U3qM96gToVbyhh28cNdymzn9SqYjQO4IXF52sXF3/UoAZXvqqiVKTh60EEUR3xea
	2zfuq2uoRBjjaayKUPi0KGXJVjAw==
X-Received: by 2002:a17:90a:fb51:b0:299:5ebb:1edb with SMTP id iq17-20020a17090afb5100b002995ebb1edbmr2863967pjb.26.1708341288539;
        Mon, 19 Feb 2024 03:14:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF27U5miBr3X9K67xhG+3dINjoOqRZbr2/ahKiFk3Rf4DVRe/+rTBu+GJWrEpCYtJIdo47GCg==
X-Received: by 2002:a17:90a:fb51:b0:299:5ebb:1edb with SMTP id iq17-20020a17090afb5100b002995ebb1edbmr2863953pjb.26.1708341288243;
        Mon, 19 Feb 2024 03:14:48 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id cq15-20020a17090af98f00b00299947ed2efsm2343878pjb.2.2024.02.19.03.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 03:14:47 -0800 (PST)
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
Subject: [RESEND PATCH V2 2/2] arm64: dts: ti: k3-am69-sk: Add support for OSPI flash
Date: Mon, 19 Feb 2024 16:44:22 +0530
Message-Id: <20240219111422.171315-3-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240219111422.171315-1-sabiya.d@ti.com>
References: <20240219111422.171315-1-sabiya.d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708342813-303758-12432-2459-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.160.69
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjQxBLIygIKJKYbGFolmlk
	apSSkmhqkWFuZJFqbmiaapyZampsmpKUq1sQClBPINQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254323 [from 
	cloudscan13-204.eu-central-1a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, NO_REAL_NAME, BSF_BESS_OUTBOUND
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
index 0ff4d1623cf4..acda25a9e814 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -471,6 +471,25 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
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
@@ -1070,3 +1089,65 @@ &main_mcan7 {
 	pinctrl-0 = <&main_mcan7_pins_default>;
 	phys = <&transceiver4>;
 };
+
+&ospi0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
+
+	flash@0 {
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
+			bootph-all;
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
+				bootph-pre-ram;
+				label = "ospi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
+	};
+};
-- 
2.34.1


