Return-Path: <devicetree+bounces-259433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IC9H90+d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DF1869E0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FF0B3006828
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C711530DD01;
	Mon, 26 Jan 2026 10:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bs5USPRo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D826330301
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422514; cv=none; b=boQhlcCVOnDhgzOwfVyEN+nHX8O6Q15uLYu/EQGTrAEQCmPiNYi8tnLddmRzpi0/AMCjlzI5bs6Xm3fJ+CrCF+A3R1pI1J1UgrhD5IjsS4V9Cxixzihz750foWQ8iy21EaeBh9Rlzdh9YKP6gvp/2Rj66x9sudzVIl38bqxrCHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422514; c=relaxed/simple;
	bh=99gnZcZxjVKePLKi790JFN3qskIt6IL6hQQaLwg09j4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uMkOJj+h3h4RU8XxilEVowAXsWiRhJSPV976zpOF3XjbLdAO8sPgc2sPUl6Cz3WJN2Xi7QYF6sDWCAUFNVzRJdpIvk+/pBv4aJlzDRpbCgE0nq002KW9KOCkfVHhH4B1JR+j1sTOhvT/GdeE+GCpM9fhlT18TFhY0aqA9clQeB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bs5USPRo; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so32819155e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769422511; x=1770027311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nApJ7Qkf2Z+O7u87Az7F+sJc0V4S0WdNi4tOh3+T5Po=;
        b=bs5USPRok7e89JHN3GO/yTHMznKv6Cu2s11LbHYgyEfstouFKS7cEy5Sg/XKK/l1VM
         v2RMxWh9o9vVA92tbsKAu469lfn0Q6OQmuWcek3UsaySHK1Ha7htvfnx8UwLvy7jpETk
         80N/Fh661LOp7TPwtqmp4geFpGCQxxPZbZixxpDEeYOVI5D5rimrCgKuLE5LVsd/hJGF
         xZJWKpijvInIgyof2ldgkxzy/dOcgQucdt5aHx/+sjQSXGJLIfVde73E+3+LHUxKTbGE
         lx+k4k032z6BxxToVeBKuctL8biMcuKeRNfJiS72sCvuwYVcHx1ogHCOp+bSmVp6YaHK
         Umww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422511; x=1770027311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nApJ7Qkf2Z+O7u87Az7F+sJc0V4S0WdNi4tOh3+T5Po=;
        b=ApKoAAt62rse54tbTWaJZ8iekVksHO3SaEbhnL+JwNSVCx20skCtR8vhYurFgSb9Wc
         NmPEaNyS31pKotVjGkkMBVykIf1cdz3EgOcdWyOf36RywSPw2OhhP4iSRge5G/pJVygv
         kFmHCTT8EHE8uZvGRr8vDw9NMVCPyPzPrhrI4CksTM1GoFGPCkEfWtG0lB17Wst+/jX+
         Loii7eKwuivawuMV9d0IEgmxtPIUbQ/gkipGJ6Ar44yV8QNSW5sIPtpd+UoDif6bNYGO
         qnl/FZe0dNYY7eDdqQXznPNnuK+fghC/lGxSDXlP3ilhFjptNXZvanI4YNHK2ip+M/1V
         FbKQ==
X-Gm-Message-State: AOJu0YyAufSGKA9RE5RtrqC2PKh+CS2QRNyVPXxUuno1u5FQwoZy2GtW
	uFbULXuXaybs1fRGuV/meKo1v0J9pcWJMQaRicGur/AkLSRgyz63qLcK
X-Gm-Gg: AZuq6aKvQLiwCmRpFmX6NOmhOUxVm9A0Fg1eazDu8vrzqcyMlb5tS52Kq34T7Ck1amM
	D67KUsGhcU9o2cdssBfZbJHWzIR8tQQkZICqPAasF3wMrfwpItLQEdvu8oEAh2i5Q+urc2rDEFM
	qCyN5+q3ZRL4ftFKkqrTwnBmcvjfRE/pB4DQSpTWtdr6ksKrtKVaHISNMaBHATvMRX9EDjcXH2K
	EhFi/u/4g26qf003Pg8qwGRAlUnq156XscqNYpmDSHvJC2smLzEe3+69rA1SwbuwEbnlhgJrubV
	Ix8uOJf2HADb2UH57rQrCuHIA9LqESlSjwsaRYMTj20nGvIwm58iuQuiFHMrH/HhhX78AYSSit0
	MR21k+HwQ2qXDfOAxeCKBeqm0DMVpkdWqmbwA/+9Uq9JyNsV0kYvTkOGTb8kUPqKUZTZ2c8qqIY
	TE
X-Received: by 2002:a05:600c:b86:b0:475:e067:f23d with SMTP id 5b1f17b1804b1-4805d0643d0mr68648265e9.25.1769422510747;
        Mon, 26 Jan 2026 02:15:10 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5c32sm319771795e9.11.2026.01.26.02.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:15:10 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] ARM: tegra: lg-x3: add USB and power related nodes
Date: Mon, 26 Jan 2026 12:10:16 +0200
Message-ID: <20260126101018.24450-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126101018.24450-1-clamor95@gmail.com>
References: <20260126101018.24450-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259433-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.48:email,0.0.0.0:email,0.0.0.11:email,0.0.0.36:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[7000c500:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,4.166.49.216:email,0.0.0.44:email,0.0.0.35:email]
X-Rspamd-Queue-Id: 79DF1869E0
X-Rspamd-Action: no action

Add missing charger, MUIC and ADC sensor nodes. Reconfigure USB, set one
of the ADC channels as the fuel gauge temperature sensor and add a battery
thermal zone.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi | 93 ++++++++++++++++++++-
 1 file changed, 91 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
index 6eea8eacd7d5..768e201456d8 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
@@ -1070,6 +1070,38 @@ rmi4-f11@11 {
 				syna,clip-y-low = <0>;
 			};
 		};
+
+		max14526: muic@44 {
+			compatible = "maxim,max14526";
+			reg = <0x44>;
+
+			interrupt-parent = <&gpio>;
+			interrupts = <TEGRA_GPIO(J, 0) IRQ_TYPE_EDGE_FALLING>;
+
+			muic_con: connector {
+				compatible = "usb-b-connector";
+				label = "micro-USB";
+				type = "micro";
+			};
+
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				muic_to_charger: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&charger_input>;
+				};
+			};
+		};
+
+		tsc2007: adc@48 {
+			compatible = "ti,tsc2007";
+			reg = <0x48>;
+
+			ti,x-plate-ohms = <1>;
+			#io-channel-cells = <1>;
+		};
 	};
 
 	cam_i2c: i2c@7000c500 {
@@ -1326,6 +1358,22 @@ ldo8 {
 			};
 		};
 
+		max8971: charger@35 {
+			compatible = "maxim,max8971";
+			reg = <0x35>;
+
+			interrupt-parent = <&gpio>;
+			interrupts = <TEGRA_GPIO(J, 2) IRQ_TYPE_LEVEL_LOW>;
+
+			monitored-battery = <&battery>;
+
+			port {
+				charger_input: endpoint {
+					remote-endpoint = <&muic_to_charger>;
+				};
+			};
+		};
+
 		fuel-gauge@36 {
 			compatible = "maxim,max17043";
 			reg = <0x36>;
@@ -1334,6 +1382,10 @@ fuel-gauge@36 {
 			interrupts = <TEGRA_GPIO(S, 0) IRQ_TYPE_EDGE_FALLING>;
 
 			monitored-battery = <&battery>;
+			power-supplies = <&max8971>;
+
+			io-channels = <&tbattery 0>;
+			io-channel-names = "temp";
 
 			maxim,alert-low-soc-level = <10>;
 			wakeup-source;
@@ -1514,12 +1566,13 @@ sdmmc4: mmc@78000600 {
 	usb@7d000000 {
 		compatible = "nvidia,tegra30-udc";
 		status = "okay";
-		dr_mode = "peripheral";
+		dr_mode = "otg";
+		extcon = <&max14526>, <&max14526>;
 	};
 
 	usb-phy@7d000000 {
 		status = "okay";
-		dr_mode = "peripheral";
+		dr_mode = "otg";
 		nvidia,hssync-start-delay = <0>;
 		nvidia,xcvr-lsfslew = <2>;
 		nvidia,xcvr-lsrslew = <2>;
@@ -1803,7 +1856,43 @@ sound {
 					 <&tegra_car TEGRA30_CLK_EXTERN1>;
 	};
 
+	tbattery: thermal-sensor-battery {
+		compatible = "generic-adc-thermal";
+		#thermal-sensor-cells = <0>;
+
+		io-channels = <&tsc2007 4>;
+		io-channel-names = "sensor-channel";
+		#io-channel-cells = <1>;
+
+		temperature-lookup-table = <
+			(-50000) 4100 (-40000) 3980 (-30000) 3815 (-20000) 3610
+			(-10000) 3285        0 2880    10000 2445    20000 1955
+			   30000 1440    40000 1125    50000  840    60000  665
+			   70000  465    80000  350    90000  230   100000  185 >;
+	};
+
 	thermal-zones {
+		battery-thermal {
+			polling-delay-passive = <0>; /* milliseconds */
+			polling-delay = <20000>; /* milliseconds */
+
+			thermal-sensors = <&tbattery>;
+
+			trips {
+				battery-alert {
+					temperature = <55000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				battery-crit {
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
 		/*
 		 * NCT72 has two sensors:
 		 *
-- 
2.51.0


