Return-Path: <devicetree+bounces-326774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vA7KGdFMV2p+IwEAu9opvQ
	(envelope-from <devicetree+bounces-326774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:03:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB97375C2F1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:03:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=YD+657aR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326774-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326774-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B95E315818E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B433EB811;
	Wed, 15 Jul 2026 08:55:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F9C3E7159
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 08:55:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784105735; cv=none; b=aurY8GgZmdfMUPdOEN9eVjTxzKIlnoxXkm/iOG8tjLbmTsjyCBcduFgDVtG4Z01bMk0vcgKeXDFMH6piQKWRqvTOVMg8itQJFprHVFMr4i1aFzfBzjUThQrtfiKdnQZ46lAHNBz7Ohbee4Pr7oYg5LdZVcyo5AaTS6FR3UgjFd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784105735; c=relaxed/simple;
	bh=Kwdh1wsDA3PQhAJXo0c3P6asDMiUgGjPhgZiuNl33tU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LvYnTeJESQZp7oargSjCet/jID04Kek5K6FdKn/o9ZNrm4TH2KP4PGGCPkV6UMsTLJ9rlDN5QYActofX4CIGAZeNJV7OBvA6+45Q7Om0S0ZN5OTLg0iIiDha83QD1TVY9Xi2bwCqYnA3+IYYaLbrzVMDwT9BjjvQDkL9ABR0+vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YD+657aR; arc=none smtp.client-ip=209.85.210.177
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-8484a0b998fso3012249b3a.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 01:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784105729; x=1784710529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E3HJTWjS7+7k2AMeQ/ADfiVkN81b/TWdXvCN6CQ3PZA=;
        b=YD+657aRgzTGumB9/oj+u6hfr1yAFK+xox0LXBU5PnN3FPPpf1xaqUYUTqv4drsZf6
         pLfnBrEDEWUtFlJnyHR2sv+Ghxjn68bj404DI2u9vHanWEL56iIAkFLwKHnHD9l3f+Vv
         qHO5xy8FdjpojvO5acW/dlTCdgKSRmcLM2vF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784105729; x=1784710529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=E3HJTWjS7+7k2AMeQ/ADfiVkN81b/TWdXvCN6CQ3PZA=;
        b=k9pXHHokMXINjt4YPq5T+YfqN61AuqElZxUZCz2YY6xmZx01UD19UWHyhYNsq1Qhm1
         FrxAbucWcAxI6qvhWS0t414Hn616oQpmUojpqeO3lvriZQQoqD52m5QYDc49PkrBEZmb
         0iJw+f1x1dhWAhNmE9afr4ZZc5ND/30tzxaHh8b9v5Xasc8LjhHJuOAl8T9zXbvKMSNT
         plG9NpdJ4FPpPMilr4A4ZMoF0O8R5b7HXSM8qX5a7dhM9r1NOCRL6YZrjsIBXXV9MRAf
         Co5oTR+j/N9T3DevU9gTcgQv0G6Lwb3mllgyXs+xo840weDZtyL9wHcjgG8Udvn0W/WC
         GrqA==
X-Forwarded-Encrypted: i=1; AHgh+RqtwbrEXKMctfoxgVbW2H9EeD7MT006eZFCdmewJiOeeC5X/0zYXIJCWSveXlIBPS4dDSqJ0pJqufhn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyv/KrruH+FrfoKxg52Fb8XYX0zE65a+q2hHX5CKaoVYEMwSay
	tVvAni8BJEi06lBeh1rYXtzEbbqhlWvdkmZ9Eope7ilmplWNk90CkAQsKq7wqwRLIQ==
X-Gm-Gg: AfdE7clNOAXdmctaPixkL7pUDCzyUAszF18ZA/YVUpo6MnwgHlvn9HfmYTB8F4LRhxE
	OVXfQcU2e9aggDXbseyG6HWv6BEerAaO/f4NHu9XHY/i/jxrlqGMNrWfeEusf2Vllew0Ic8kLae
	FDa4AOwY0u9SCf0j+6YGeh9ztABKtxOltSDWHH54xzKjH87Q247hyYA9z4KESEg1FoJOq5CXY02
	2M7pnUv5N/jWmDNqvJE8IYmxoVVhP34jNS0pSOeS0/QbjPUN/TJg/6VYDDJ3Hwmz/KiIMO1beBG
	XFfnDQd1sq8yuZwT79a9o8V4T71TV6IMl1ZuSooDRAZuxy4+/Jseeg1zRbH/pn8Mvuth6aaQpMV
	aLI1LokbpBb3cvgIlsHK0iVubiknkk4ffGAvRzznx5W2XzZjm1fx4ZK72XDgkh9yWNQsKTjLlUD
	VlYyVS3QwKxEEujlhkLQDXuoUze4yqbGFY7Pgc2HNG9ZhS/rhqoYywa78mTDeNfwtEs7/fdGR4T
	mxFE2+t
X-Received: by 2002:a05:6a00:23c3:b0:845:d284:9e11 with SMTP id d2e1a72fcca58-84889756a2cmr15382339b3a.56.1784105728841;
        Wed, 15 Jul 2026 01:55:28 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:47d7:4aa5:a6f8:2279])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84a4f819117sm2757491b3a.59.2026.07.15.01.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 01:55:28 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Wei Deng <wei.deng@oss.qualcomm.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>
Subject: [PATCH v5 15/16] arm64: dts: mediatek: mt8195-cherry: Add M.2 E-key slot
Date: Wed, 15 Jul 2026 16:53:45 +0800
Message-ID: <20260715085348.3457359-16-wenst@chromium.org>
X-Mailer: git-send-email 2.55.0.141.g00534a21ce-goog
In-Reply-To: <20260715085348.3457359-1-wenst@chromium.org>
References: <20260715085348.3457359-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-326774-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:wei.deng@oss.qualcomm.com,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:from_mime,chromium.org:mid,chromium.org:email,chromium.org:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB97375C2F1

The Mt8195 Cherry design features an M.2 E-key slot for WiFi/BT combo
cards. Only PCIe and USB are wired from the SoC to the slot, along with
some auxiliary signals.

Add the proper representation for it, replacing the PCIe wifi node and
vpcie3v3-supply property under the PCIe controller, and the vbus-supply
property under the xhci3 node.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v2:
- Drop default GPIO output state from kill pins pinconfig
---
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 73 +++++++++++++++++--
 1 file changed, 68 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index ef7afc436aef..8d4cc30d91e4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -266,6 +266,47 @@ tboard_thermistor2: thermal-sensor-t2 {
 						120000 51
 						125000 44>;
 	};
+
+	wifi-bt-connector {
+		compatible = "pcie-m2-e-connector";
+		pinctrl-names = "default";
+		pinctrl-0 = <&m2_e_key_kill_pins>;
+		vpcie3v3-supply = <&pp3300_wlan>;
+		w-disable1-gpios = <&pio 61 GPIO_ACTIVE_LOW>;
+		w-disable2-gpios = <&pio 59 GPIO_ACTIVE_LOW>;
+		/* PCIe auxiliary signals wired to controller. */
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/* PCIe for WiFi */
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				wifi_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&pcie1_ep>;
+				};
+			};
+
+			/* USB for Bluetooth */
+			port@2 {
+				reg = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				bt_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&usb3_ep>;
+				};
+			};
+
+			/* SDIO, UART and I2S not implemented */
+		};
+	};
 };
 
 &adsp {
@@ -791,14 +832,14 @@ pcie@0 {
 		reg = <0 0 0 0 0>;
 		device_type = "pci";
 		num-lanes = <1>;
-		vpcie3v3-supply = <&pp3300_wlan>;
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
 
-		wifi@0 {
-			reg = <0 0 0 0 0>;
-			wakeup-source;
+		port {
+			pcie1_ep: endpoint {
+				remote-endpoint = <&wifi_ep>;
+			};
 		};
 	};
 };
@@ -1085,6 +1126,13 @@ pins-bus {
 		};
 	};
 
+	m2_e_key_kill_pins: m2-e-key-kill-pins {
+		pins-kill {
+			pinmux = <PINMUX_GPIO61__FUNC_GPIO61>,
+				 <PINMUX_GPIO59__FUNC_GPIO59>;
+		};
+	};
+
 	mmc0_pins_default: mmc0-default-pins {
 		pins-cmd-dat {
 			pinmux = <PINMUX_GPIO126__FUNC_MSDC0_DAT0>,
@@ -1637,9 +1685,24 @@ &xhci2 {
 &xhci3 {
 	/* MT7921's USB Bluetooth has issues with USB2 LPM */
 	usb2-lpm-disable;
-	vbus-supply = <&pp3300_wlan>;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			usb3_ep: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&bt_ep>;
+			};
+		};
+	};
 };
 
 #include <arm/cros-ec-keyboard.dtsi>
-- 
2.55.0.795.g602f6c329a-goog


