Return-Path: <devicetree+bounces-233125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC582C1F3E0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 678744E83A0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D206344025;
	Thu, 30 Oct 2025 09:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="l+AfI/t1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B56342145
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815951; cv=none; b=r9Eybh6CjRIJoujsS+3s6QEDKiZMqWRET67VKAepijWAkx03eJvGEnNN76J8WAYntO97p/Mev80R43KV2WS551UTsbemKJEubz0uWt3ik9tCW12K4trix0oVll16y+m9QTr6Ks6pwaY7+znv2R9DQn2KlXQ76kRvzvqzp/nC7oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815951; c=relaxed/simple;
	bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QB3AflqTiKeDwtrZPxhV2ryB/KGgEtVi21zmZA/G3StQ558ds5Lu4cpMkz9Py/aK+6/0XAv+y0GYBLuQ0LHoCqJpLV5Fn6rUzL5GPaTemClcq6JtbOMraG15ztkJbZ2qowwBXSy7XuJPq9oY1SaW9Zeza6rac1RcsqYsCGNgbZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=l+AfI/t1; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47721293fd3so4916135e9.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761815947; x=1762420747; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=l+AfI/t1YzGDkPW15xet29P28g7nPvbZLEemQyt/KWARgmFNovw+n01xkiEh684qrb
         39KMqfmGkUCLIXBgh+oAH6rZjpLIWEx0hJIkQZjzFakIoKrQqnWVDPHrFi447jJRxz00
         2XjxaTGqSpgAJxNNpUbC86wzbUhzoXimN8vnIZiGqG8pVu+s+srDPKdMql9feV58OP2J
         WYUK/GGUQL5VM2sQ6m3H1ddX7uriqV3RSCXHMGN4dYWNaPLt04g+FUw6Yp+tABaL7gYT
         m6tfQpD7P4Ac7gJiJXkvzCN5Qu5Bwp6GQKxuu7MEoHs8YGgWLEybhQJ2jjKeEOJKveWq
         heTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815947; x=1762420747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8YyqJ4Mpj+JrYYcigX07q99vEPrtstJUifgILYXIvc=;
        b=UzYt6Z+vSOnOrFVyp+rINn4KRx+D0IGzKpMBX8SsQ3voYs7CpaAPh6Apfo00RDeBIw
         C7vRwUdpMIBM7ST33Xf4BF/Fu8Z/bvvVfHJxM9v6FSy1qZnh5E6TRrmzD3ufoSVjMJBv
         ZDvzoBekp+9syiHTsQ4jVGBMlhgd8oSwhlPeNFbQETlsLBuFv8tD+hF5SIk41SbOsyvV
         5EK3G87hf38J+xIsVKsK2cs+NeXCr5HBN6q2nJ0fVVI3RfTzdkaXzH/m0w5t106tgMyl
         ktoPvMLqBKAyrJG2kngZuToL/vAV7v231DCSppOL1cdJDvlnyduHS7qxmMD70qUShU3G
         uxuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVvvjcxpdiNz8PnlkR550/hpgXyCK6t8isvFisBk/5Ae3nZkm5EmrvhoAUcrzUMbslTHZUHdEs1uYa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3lN5l66VMs4j0qtsxEhpxXQ/YDILIlIvLvHQFgfQ0R+WvjMJJ
	mDX4jCiYeCFIltMHTX5BriyQFT+15pmBgU/ZimmCwS6agADMqNDFcgoHM6GOva/V1loqh+v1zef
	LKMkB
X-Gm-Gg: ASbGnctbCAQAtUlUyuREhGgmTvPabfGWBLbC/ohn1ZMIxq7B6QBiFrlGIddE4m27q/K
	A8kB1IYbMojq/JaN9YJW0WGzUt0Au4NwGmBx+7MCmVhwBCBIjJ9K1ribDpwxy5NuYN67HZtJ0y9
	hKTnqoQX9Ae5Hx3VTQdfez6r5OWhmqRD2bQVxh573yX0dmB71z8OddGHEU5Kw8qao4y+K/y7vt5
	jxpFlap7VLV06UtD0U31pCOFeA01USODO9izxLEbCjqeB+1u+SOLDyaYEHBrNfxVgbN540VNbQS
	0MZLphc7FM8Y7Q0Fu9M9k/AO+PnJRy7zFIWe7RkBvFmK9Cq3OWLx1Y+MT7tgDtfg2AfZZRRgp4j
	nacTEac+jHqbSht9TA6PYOa57WUJ+Z7Swa277LgCWLLR1GlBGQwclvc8yqq0NRWp+oHMdeD3exA
	u/8+7C9BTP
X-Google-Smtp-Source: AGHT+IEPj3CdqUuwMe/T9kfHnMLT0T0FRQZVC1TZ7tdmbBSLK4nCwkdMUM8n2LwuCMQiZxEn5qcu3A==
X-Received: by 2002:a05:600c:1554:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-477262ab666mr23564875e9.13.1761815947299;
        Thu, 30 Oct 2025 02:19:07 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952cb7dcsm31938479f8f.11.2025.10.30.02.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:19:06 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Thu, 30 Oct 2025 10:17:26 +0100
Subject: [PATCH v4 4/6] arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source
 system-states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-topic-am62-dt-partialio-v6-15-v4-4-6b520dfa8591@baylibre.com>
References: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
In-Reply-To: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2978; i=msp@baylibre.com;
 h=from:subject:message-id; bh=My+67m3RKIYhTGgscnRK/PbLhWzY3WuuDDNXstUgd64=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkxm3Tzz3bOtZvp0+92u2iM5d/Km8811q6LXq29Xyk3ZH
 7WSXbi4o5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACbSmsLIsOP1d6U7R2Umbjzu
 4xXyLt9smZGbxJFJ766vz52ZqqOu/IqR4dJ+zUWNqusndSS+PLtH7aaXQsFLrasuf1ed69vH8rn
 4KRsA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
powered during Partial-IO and I/O Only + DDR and are capable of waking
up the system in these states. Specify the states in which these units
can do a wakeup on this board.

Note that the UARTs are not capable of wakeup in Partial-IO because of
of a UART mux on the board not being powered during Partial-IO. As I/O
Only + DDR is not supported on AM62x, the UARTs are not added in this
patch.

Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
Partial-IO. Add these as wakeup pinctrl entries for both devices.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 60 ++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index ecfba05fe5c273c671cd0968f3eceaf54d22ac7d..cb63db337b2bc4c83b48dde693b95dd9fd93cd26 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -276,3 +276,63 @@ &main_gpio1 {
 &gpmc0 {
 	ranges = <0 0 0x00 0x51000000 0x01000000>; /* CS0 space. Min partition = 16MB */
 };
+
+&mcu_mcan0 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup>;
+	wakeup-source = <&system_partial_io>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+	status = "okay";
+};
+
+&mcu_mcan1 {
+	pinctrl-names = "default", "wakeup";
+	pinctrl-0 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_default>;
+	pinctrl-1 = <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_wakeup>;
+	wakeup-source = <&system_partial_io>,
+			<&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
+	status = "okay";
+};
+
+&mcu_pmx0 {
+	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x038, PIN_INPUT | PIN_WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
+		>;
+	};
+
+	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+
+	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x040, PIN_INPUT | PIN_WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
+		>;
+	};
+};

-- 
2.51.0


