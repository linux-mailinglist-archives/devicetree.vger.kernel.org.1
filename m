Return-Path: <devicetree+bounces-43993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB00B85C15A
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF9F41C23754
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B894476C82;
	Tue, 20 Feb 2024 16:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b="VQt61X3C"
X-Original-To: devicetree@vger.kernel.org
Received: from egress-ip12a.ess.de.barracuda.com (egress-ip12a.ess.de.barracuda.com [18.184.203.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8258776C7B
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.184.203.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446354; cv=none; b=EV1g4zehWHW08D9p3cizmLwThw7ZyJveytfBHHLM3d99I9c44TOYnSJThET3mQTIueU0lgTgQnDWeXBW8uap7TQjpbY1YJn3MxBrjQDsDc2yWqKg0sbnV9rsywH8S0aQdPLt/x5uAS85CNSOT6tP3kl5hnAEdqmh5+rMo1dUi3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446354; c=relaxed/simple;
	bh=27Az4tGJk56OrsQyEEhIjQaGIm2ZMFAEqf7QHdWIvRs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=b8mx0Q8Mq9/W6BnIjKfcj590tJUubHDaH4A4tGHgRwSp22L2Cv+kYT9XcYHfoJU4WwAEZeiBkvvayxMxNeVHYVo+jSSHdRm/eK6Z/piK3uq3RRmqq2ENmaZA+r1/S+u5Yr6bVmNVbQ4lgXIlLSFZZapgu+HzM97DPEm0UjkVgpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com; spf=pass smtp.mailfrom=mistralsolutions.com; dkim=pass (1024-bit key) header.d=mistralsolutions.com header.i=@mistralsolutions.com header.b=VQt61X3C; arc=none smtp.client-ip=18.184.203.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mistralsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mistralsolutions.com
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199]) by mx-outbound46-244.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 20 Feb 2024 16:25:43 +0000
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-1dbe41ad98cso23903305ad.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1708446343; x=1709051143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5lc99WJ3VLUsFZViNGzqECAwK+dXJp73I4lyc5jvLI=;
        b=VQt61X3CY/m0lQxAsW+8Y1tQksi/gAhzXQE/o6omFUMWN507+YJ8QsDzUZMy3rsSQu
         oomraXAS++vCfXv0KfXd84jWr/5yknJKkYTbpZ4InfcHqLl2kgkJbf6RDvQwKYqWco2W
         I8w7k12QNwXv04SGSnelvcBY6Et2gUzxGzBJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446343; x=1709051143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S5lc99WJ3VLUsFZViNGzqECAwK+dXJp73I4lyc5jvLI=;
        b=Kh5Ci/oTltFX0XFMeNn5c8FavoIElLZWhFyRt/Aa5x+qM5gJy+dRHYntgGMSpw94gF
         jErzO6YHsfn7zkZndAv0OmFlNIIacjAnKqTu+KGJYraXlXFtC5V+FbPJ0N5gr8ODCdyp
         egUQfuqmVm6IlGWPdO+x+47OaFXAkU66L4p8zcJk36cytRoqzy64itq0G37RcPuxEbJw
         M/oSIYwdXmmqT5zm8Jmzr7DIJb9Rtix/wkXcVqPUiyRyLdOaNyxYXDB85oZASAUgtBVl
         5v9MIwurdttt+WDh6wIATKW50jHJ9/kTiBxdgrl/7q0fn9inT0jIDTNvAQ9zDZTVuzym
         +Iqw==
X-Gm-Message-State: AOJu0YyMMvjtLdAQ6ds5sZd5ulm9Fje8n/55KusFfXCCwmLcRr0+tw2R
	Orkt3CmYGYNGEjUoWLhmB5nbV/1T+EdOP4D/AXKdz8/qCaHyhdFQB9lGmPs7sRsPjQ49OdF25Pb
	Thh1GcZKW1LMDFT0CkFSk2IiXL50/Ys20AmG84vWaBJjIg0qbKbuT0VRTvFxASnYzODzDLb5+WQ
	gfc7zdHgi2v8sYbc7Q4g==
X-Received: by 2002:a17:902:dacd:b0:1db:e792:bb25 with SMTP id q13-20020a170902dacd00b001dbe792bb25mr8912374plx.25.1708446342834;
        Tue, 20 Feb 2024 08:25:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHp9mjJ4cdHVe7owBcKek9cw68MqPunrfr16Pxr0DUBxva5cEALlQZh2c10slphAbBxs2n8Sw==
X-Received: by 2002:a17:902:dacd:b0:1db:e792:bb25 with SMTP id q13-20020a170902dacd00b001dbe792bb25mr8912341plx.25.1708446342534;
        Tue, 20 Feb 2024 08:25:42 -0800 (PST)
Received: from LAP559U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id d17-20020a170903209100b001d9ef7f4bfdsm6447398plc.164.2024.02.20.08.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 08:25:42 -0800 (PST)
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
Subject: [PATCH V3 1/2] arm64: dts: ti: k3-am69-sk: Enable CAN interfaces for AM69 SK board
Date: Tue, 20 Feb 2024 21:55:26 +0530
Message-Id: <20240220162527.663394-2-sabiya.d@ti.com>
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
X-BESS-ID: 1708446343-312020-12421-12920-1
X-BESS-VER: 2019.1_20240214.1700
X-BESS-Apparent-Source-IP: 209.85.214.199
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIysjQzAbIygILGFoaGZoYmyY
	bJqcZGZhYmZuaJZmmpBqbGZskW5mZJyUq1sQDmdhAMQQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.254352 [from 
	cloudscan21-49.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status:1

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 SK board has several CAN bus interfaces on both MCU and MAIN domains.
This enables the CAN interfaces on MCU and MAIN domain.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 82 +++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index aa770e82de27..7afdfbbe956d 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -330,6 +330,30 @@ csi_mux: mux-controller {
 		idle-state = <0>;
 	};
 
+	transceiver1: can-phy0 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver2: can-phy1 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver3: can-phy2 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
+	transceiver4: can-phy3 {
+		compatible = "ti,tcan1042";
+		#phy-cells = <0>;
+		max-bitrate = <5000000>;
+	};
+
 };
 
 &main_pmx0 {
@@ -445,6 +469,21 @@ hdmi_hpd_pins_default: hdmi-hpd-default-pins {
 			J784S4_IOPAD(0x000, PIN_INPUT, 7) /* (AN35) EXTINTN.GPIO0_0 */
 		>;
 	};
+
+	main_mcan6_pins_default: main-mcan6-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x098, PIN_INPUT, 0) /* (AH36) MCAN6_RX */
+			J784S4_IOPAD(0x094, PIN_OUTPUT, 0) /* (AG35) MCAN6_TX */
+		>;
+	};
+
+	main_mcan7_pins_default: main-mcan7-default-pins {
+		pinctrl-single,pins = <
+			J784S4_IOPAD(0x0A0, PIN_INPUT, 0) /* (AD34) MCAN7_RX */
+			J784S4_IOPAD(0x09C, PIN_OUTPUT, 0) /* (AF35) MCAN7_TX */
+		>;
+	};
+
 };
 
 &wkup_pmx2 {
@@ -541,6 +580,21 @@ hdmi_pdn_pins_default: hdmi-pdn-default-pins {
 			J784S4_WKUP_IOPAD(0x090, PIN_INPUT, 7) /* (H37) WKUP_GPIO0_14 */
 		>;
 	};
+
+	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x054, PIN_INPUT, 0) /* (F38) MCU_MCAN0_RX */
+			J784S4_WKUP_IOPAD(0x050, PIN_OUTPUT, 0) /* (K33) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x06c, PIN_INPUT, 0) /* (K36) WKUP_GPIO0_5.MCU_MCAN1_RX */
+			J784S4_WKUP_IOPAD(0x068, PIN_OUTPUT, 0)/* (H35) WKUP_GPIO0_4.MCU_MCAN1_TX */
+		>;
+	};
+
 };
 
 &wkup_pmx3 {
@@ -1040,3 +1094,31 @@ dp0_out: endpoint {
 		};
 	};
 };
+
+&mcu_mcan0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan0_pins_default>;
+	phys = <&transceiver1>;
+};
+
+&mcu_mcan1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mcan1_pins_default>;
+	phys = <&transceiver2>;
+};
+
+&main_mcan6 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan6_pins_default>;
+	phys = <&transceiver3>;
+};
+
+&main_mcan7 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mcan7_pins_default>;
+	phys = <&transceiver4>;
+};
-- 
2.34.1


