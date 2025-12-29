Return-Path: <devicetree+bounces-250125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EBBCE65B2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5585830329DC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFD02D193C;
	Mon, 29 Dec 2025 10:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lE78Bnxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040AE28641F
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003160; cv=none; b=HGbShzlU9n4F80mF7LLXlRlfMmSOYNYI2Y7gTmVztY0JYDTJlt+a1R/QGMpmwwXeqRisqzvmdCqhUQo99d31+OBlTldsb3ulAqPqU2Aj0RMOqc/C8V6kPrFJvruAxeF3hX5cKUN7yseWqvKx5mdMpg5N6xWM9fplZzSbD9+60Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003160; c=relaxed/simple;
	bh=/DNd3nTBgpx5bzsW5XipYiAjiZLaQMrfypQ8s3aY+cQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZXl0HhgAnZoqwUPs+rk4Prm+GyZuWBYCohWSFFsH1WdqBoWJs1sdT4LhkLCLhxwE3+JJYMUmYjc+h7gFehno/nAuUiXzqBo/T06+96adbYfsXDh8cmDBoVOEYKknbtVTLrqZabosWOIWIQrd7aFNfpujBsjjyQv7aXwxirUHOfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lE78Bnxt; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so94152955e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003157; x=1767607957; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aGhaOvmlmS+7WMRTI0qoktvD9ygsBMZt9H0idUxXEQs=;
        b=lE78BnxtKn0SwHo0CVc67uKraXb6/Gn64z5PscQVNahw4QE4s/jt4hWRbQJrSveOg0
         OOW4xQvVcoXadxI04bFQPFlsOuzhtizoOsjTE4xX5YbPyXfc5WQNXZfMAWZz5pfFnWKJ
         RttyqYXetclz4+Kq6NZWy7yj7A+1ibyxsD0fPf1lkah5vmQKaaIyIuT3jKrBJZRMXhPq
         xi9RDxDZgh2HNNRa6KRwH9a7FfyLE1mOAfNm/HKu8tJsGg+s36Jl0GlaWdXOhbkMpudy
         gXqta4sgfazlXq+nMiY92x4TBAIprk3/F8geMkQA0zPjQxdPqONjXH4N5t+Uq8cFje8b
         HzCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003157; x=1767607957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aGhaOvmlmS+7WMRTI0qoktvD9ygsBMZt9H0idUxXEQs=;
        b=lAqakt+8N4s0MpS9+yIWAqATEDY5+0smH/+4gqEewgIVsQ0YkNu2yYQgSQ8EtUpFpc
         6xJ+xFNiAGxHqIzIa3jXWhuLhb16Cp7A5W51Q9EZq4pFEihXqOODNBlFQgqOIo6Zgg7o
         LqZ68rHQJqOVKsLfveQPoPCFYiAh88055Uz4Z5W5kq5CxGvkrjCSIsDK1gQ8dj7sIVgv
         njN7k0hz+rAq/SSbH1hhtZi+8dlFTrN+DxTgg8gfyaofDy7sBuQ0T4/hclhw87Xlz/yt
         uv1630DlsPs/phnMSjvdVetBpsPs/3S0rwX5zXuZ1KyaMZavZg3FgPM2xVluGpPB2jGn
         bL/A==
X-Gm-Message-State: AOJu0YxW6GCBE1v3j1mlvM5QL9/sm4NnmXmngFtx5MeIf27ajD3bMr8y
	2ILeHrMlwNlZCYQk5cv9Q2q8mz6F0lnXfRFZ8sYf818DXYemGPq1Bb70
X-Gm-Gg: AY/fxX7MWnIlZkJvtvvRgRudfgrs1bs3qiNOqdQ0O6yDAwDnCzRR0O1b+xhznuFjDzi
	ze22pKCUxGkaU403pmXE/o8AC2AnuulQatQwnRU4VH4cVid6Qth9lYzQ3STV0VJ/aAdRzV9Viv0
	L301fRaa8/1oba1vFMDDmA5Dx/TZN1NGaOE5ZMWWutq2uWf2izhlNwans+VJh/cDKNXa4gBgaos
	Oqn0gxIs03jfRnAsZjd3rUK2c10/fmB1Mvc0R1FKpwj9lkttl+BoQF5uzTUUGQKIYkgpoHv422X
	5kqUoNbQ6ScKiAhPVGHEea3gvvGN4hi4NhcUIG3oj4J6TGJVfNn1j+ohPlXVW0Q7uXhtn8LX0Tm
	tg/XNyOOvR9/4lE7ftlGvdFRhsDe/jQEX9zvjVEW69AL8ibboljT6z056+CLJPpRKYlV4qpi8M6
	PqqTqa8rn8FHJD8yKFbergOEsyoIg5eA5UplIhLJCY8eXELXRdBxQP6Kg7cipM
X-Google-Smtp-Source: AGHT+IEEqpluRCt6k8YgVElk53IPARdNcOg+sX454L4Ga2LZMawpnbxrDXzY9rlApr1YZZYjgLKOaw==
X-Received: by 2002:a05:600c:5246:b0:477:54cd:2030 with SMTP id 5b1f17b1804b1-47d1957f707mr375649945e9.21.1767003157158;
        Mon, 29 Dec 2025 02:12:37 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:36 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:04 +0400
Subject: [PATCH 7/7] arm64: dts: rockchip: Enable analog sound on RK3576
 EVB1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-7-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3935; i=alchark@gmail.com;
 h=from:subject:message-id; bh=/DNd3nTBgpx5bzsW5XipYiAjiZLaQMrfypQ8s3aY+cQ=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTDZu/EGt5/fcaLyRtWMkHvJgSmTV+Q53v/1f93JR
 Yf/mVhkdkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDV9u6MDNseFxl6BW9gXHBv/p8du43+i12o+P+UZV7Krhe3Q3T4bRcw/I9ZufD
 O/NgFm/hUti93nDKzMu+OUpnOHpvWdYU19i72FzgB
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Rockchip RK3576 EVB1 board uses the typical configuration with an ES8388
analog codec driven from built-in SAI I2S.

Add device tree nodes for it.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 99 ++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index deab20ff4d97..0789733c2073 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -246,6 +246,63 @@ vcc_wifi_reg_on: regulator-wifi-reg-on {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc_1v8_s3>;
 	};
+
+	sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_det>;
+		simple-audio-card,name = "On-board Analog ES8388";
+		simple-audio-card,aux-devs = <&hp_power>, <&spk_power>;
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,routing =
+			"Headphone Power INL", "LOUT1",
+			"Headphone Power INR", "ROUT1",
+			"Speaker Power INL", "LOUT2",
+			"Speaker Power INR", "ROUT2",
+			"Headphones", "Headphone Power OUTL",
+			"Headphones", "Headphone Power OUTR",
+			"Speaker", "Speaker Power OUTL",
+			"Speaker", "Speaker Power OUTR",
+			"LINPUT1", "Main Mic",
+			"LINPUT2", "Main Mic",
+			"RINPUT1", "Headset Mic",
+			"RINPUT2", "Headset Mic";
+		simple-audio-card,widgets =
+			"Microphone", "Main Mic",
+			"Microphone", "Headset Mic",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai1>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	hp_power: headphone-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio3 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_ctl>;
+		sound-name-prefix = "Headphone Power";
+	};
+
+	spk_power: speaker-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&spk_ctl>;
+		sound-name-prefix = "Speaker Power";
+		VCC-supply = <&vcc5v0_device>;
+	};
 };
 
 &cpu_l0 {
@@ -712,6 +769,25 @@ hym8563: rtc@51 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+
+	es8388: audio-codec@10 {
+		compatible = "everest,es8388", "everest,es8328";
+		reg = <0x10>;
+		AVDD-supply = <&vcca_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcca_3v3_s0>;
+		PVDD-supply = <&vcc_1v8_s0>;
+		assigned-clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
+		assigned-clock-rates = <12288000>;
+		clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sai1m0_mclk>;
+		#sound-dai-cells = <0>;
+	};
+};
+
 &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-id001c.c916";
@@ -778,6 +854,20 @@ &pcie1 {
 };
 
 &pinctrl {
+	audio {
+		hp_det: hp-det {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		hp_ctl: hp-ctl {
+			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		spk_ctl: spk-ctl {
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	bluetooth {
 		bt_reg_on: bt-reg-on {
 			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -839,6 +929,15 @@ wifi_wake_host: wifi-wake-host {
 	};
 };
 
+&sai1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sai1m0_lrck
+		     &sai1m0_sclk
+		     &sai1m0_sdi0
+		     &sai1m0_sdo0>;
+	status = "okay";
+};
+
 &sai6 {
 	status = "okay";
 };

-- 
2.51.2


