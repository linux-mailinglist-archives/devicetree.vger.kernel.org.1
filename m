Return-Path: <devicetree+bounces-43992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DEC85C159
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 831E2286574
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF63F76C76;
	Tue, 20 Feb 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="ZCFawg3B"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip43b.ess.de.barracuda.com (egress-ip43b.ess.de.barracuda.com [18.185.115.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EA776408
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.185.115.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446353; cv=none; b=O0D8sEwQEzK2MvYrUcBVnXeHDpQ9LFludRi0CMb7xZ/WG9urIobjtVFi+Usk3yvUzyA1t3rfegqf7cWfTueRHr/DzV0fKSxLsfBLN56MJBgQne+sE2UsSM/SogYrA8abzl/4RTaeSWY3dA4kVE2yQECAoMlUATxEQ/KYlzmVgDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446353; c=relaxed/simple;
	bh=ZuktFrZWBzH8rd6Kja2Ujm0QcLobgaP53hJpY63Ck9w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oOXDbpFvWcB5/GwN5rB/X5kenUEA0isufwwTobcRxf5/fGoh9+o1gijwD3VsLz0MIStg9iklNvJbCGSPgZd99fsihkNXZjATA0lSOyJuRDvhFdyRK5MoylvDa9kUOFmx3wFsr4OsNHNexWyYheKeBLftrn35Ipj86bPaxZ8Vs/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=ZCFawg3B; arc=none smtp.client-ip=18.185.115.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197]) by mx-outbound18-77.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 20 Feb 2024 16:25:49 +0000
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-1db90f7b92bso52127005ad.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708446348; x=1709051148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5lydSy43uLmozY4hIVyEJMwJBX5JTBJFRts8o/U2LL0=;
        b=ZCFawg3Bv4qbeKd54DhANaXr9T35TPS6WWQ4EhCIJ8UDCeuQx+jU7yUvPvTpra4fqA
         IeIqo73sJZu5RYmtP7O2o+IHjQHGcGVhiKKMRIKRPY9G6vpdfHvFk868PxC64i7v87+/
         WO8VaBK48Q6SR0gq6ZJN3Y/NHoKJWvksNS1Dk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446348; x=1709051148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5lydSy43uLmozY4hIVyEJMwJBX5JTBJFRts8o/U2LL0=;
        b=xGTA8G7ACnnejYQSTUXBBRh1TtlNkzkzPMQ40A3+ZKwnX6kUNCShC7er4n1pw/A1O5
         X0qm1np92Jn/qr4Bc2bt6OXImgU+PKH3hDE8bh3+TVWYecxHJCWR3tzzIwi2nxvQORQe
         6+j+oJA4IfHyQHRQWpUskLJnwQfQtWdnY0dNd5Xd/ZmFN4GLtdcUGVByKXGLaiGzdiug
         5++qwTIujXe6zQddiPXABrU7XKtmPuMWfWUQVqSzJ+NBZ0bDWh8K/d7vGzqUUtcbhf7L
         HH6g2MijXESvpIVehtq68Tow7SzyC8pHXmJShPmExskyZEkHcZ2BcpaT3cQvyF9XqHB/
         6Mkg==
X-Gm-Message-State: AOJu0YyaTAT/wqWvFBZJy24SliQyjepLO1O7r40tlt7dtVdKOzt7h8lD
	SSs1+gDGEn1R950PY4os+q1JYx1M6hlj7lX+2eYw2xjN3jd58yYrd2On46TzFSWprREQmOaAh7d
	UAkjuBSm3DxoDE9Pu8vY26D6pE3meYooCNcuEIgEKJBQAzMNYVspztBiYd1njW2zqWJ58klb80D
	LjI/O6AFKFoK4hFBJ8Jg==
X-Received: by 2002:a17:902:ecc1:b0:1dc:43d:964 with SMTP id a1-20020a170902ecc100b001dc043d0964mr4513647plh.48.1708446347957;
        Tue, 20 Feb 2024 08:25:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRJtYdih0iYRQFiQdssaBAekuGqg3UlycLLTqQ+o4seqcWmE9e090Z6UwjkYYq2UcPzHOLRg==
X-Received: by 2002:a17:902:ecc1:b0:1dc:43d:964 with SMTP id a1-20020a170902ecc100b001dc043d0964mr4513626plh.48.1708446347648;
        Tue, 20 Feb 2024 08:25:47 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id d17-20020a170903209100b001d9ef7f4bfdsm6447398plc.164.2024.02.20.08.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 08:25:47 -0800 (PST)
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
Subject: [PATCH V3 2/2] arm64: dts: ti: k3-am69-sk: Add support for OSPI flash
Date: Tue, 20 Feb 2024 21:55:27 +0530
Message-Id: <20240220162527.663394-3-sabiya.d@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220162527.663394-1-sabiya.d@ti.com>
References: <20240220162527.663394-1-sabiya.d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1708446348-304685-12427-15813-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.214.197
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjQxBLIygIKWaeaJ5inGFq
	apRibJRmmpBikWqYYWaYYGySkGJkbGhkq1sQBvJG3bQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254352 [from 
	cloudscan20-171.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO, NO_REAL_NAME
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
index 7afdfbbe956d..50de2a448a3a 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -486,6 +486,25 @@ J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
 
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
@@ -1122,3 +1141,65 @@ &main_mcan7 {
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
+				reg = <0x0 0x100000>;
+			};
+
+			partition@100000 {
+				label = "ospi.tispl";
+				reg = <0x100000 0x200000>;
+			};
+
+			partition@300000 {
+				label = "ospi.u-boot";
+				reg = <0x300000 0x400000>;
+			};
+
+			partition@700000 {
+				label = "ospi.env";
+				reg = <0x700000 0x40000>;
+			};
+
+			partition@740000 {
+				label = "ospi.env.backup";
+				reg = <0x740000 0x40000>;
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


