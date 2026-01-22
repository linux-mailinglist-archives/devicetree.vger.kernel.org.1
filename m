Return-Path: <devicetree+bounces-258483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKqPFnFJcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:59:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C1369625
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1B533001C4F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7375F357A29;
	Thu, 22 Jan 2026 15:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ksqyuMOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE1F2C21F0
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095651; cv=none; b=PoO6x2pX/L7TUgQV+i72avrp62CutTu0AwXGkvNUnKq5iBaaMwfU+O3yyztAQPVxaDnFQQGh2fe3SaziedPOSMISsCgxK3nkNpxV4M0y26TFUA3k2juFq7XJMfPEonb1KJTDA5xC7f3GUeprW4oNpsbbVmHVVfftojLu7du/t38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095651; c=relaxed/simple;
	bh=yf2aPzz4UTyPSbv5ojv4evhBkQRP5VUgGqfXtk4W1B4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oDhi0QAy0hSva6JOlFIXgZp/oZInXIt8AY7hNhsarzy/zJS+PUAcWZXNUuwpjSvIOwxcIimi6zFPud4h5KTRE5ekk1S+bxOFIzBpR03XERRbCECXq4G6U22uX8ar9tmRn4ZU2vsP+RbGUSlUoVweHQ319pzTnk726QgpPAY099k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ksqyuMOY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47edffe5540so12492885e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769095646; x=1769700446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67NAYtQ7tXtXTvo7lx+0/H0CjnIzqwXkUlVV+IQgLuM=;
        b=ksqyuMOYIwgfDCPSSoeseMFgkSK5kWSvniEv5mZhiYgWBceFSkcddl3iirBvJ4f8LW
         fZY5Da2meXceBC6d8zvOhsVgNtQPv8MOCVmUPJ9iiGxP9Sejq77ialGjMHNxn8Cpi+rs
         OejtBMtAg6wNfFeraWCSNNXwD5O8qqMz7toNEdhrYsLvIYFCzmJVUKwM8thrjBPLgj6C
         R17pzl+ClmlJ0TYyfosqyfw+r+soOSwoGOVp7yC+x52jFahaiscEd3BKuiLZGoAztNp5
         sEnq4uAg5GpDuxf/06qekwXm0gW4GlJFKKNOCBdqLpb0R3ioibNab1et+iQo5PUNj20b
         V55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095646; x=1769700446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=67NAYtQ7tXtXTvo7lx+0/H0CjnIzqwXkUlVV+IQgLuM=;
        b=nAsHpJcl5sI9JWlltSZo+s2GJ/Fr+AFdOegpY0qvOI6Sd/c/LhNKRXUps+dxl5Mw+H
         YFeZgtlisLh9qsXH4DPNtsxUnIAFsz/7Dt+zyiKRW2NDIYyaYAjTYxn0PZmMSQTsE5Bv
         itGGnoQXkl9Yu8RKoRnxVHTzYWw2N+tAZfKJ3Uwq5YbpX5lj3sjY6ZfGfJX+bMBWJfYI
         x8jC8NGo8k8N6aYZz3ACbicFDK9R70WFNormaSB6C0vmaCYERa298LmRRAWbheG7qWRy
         9RyaI0EKCr9r8jBmpbxnmH2Fyh3AAphgWR6479UewQsrVkw0UiRE82drrBY8dI9wPaps
         PyIA==
X-Gm-Message-State: AOJu0Yx5majtjwe+sFOY1RY4dF5nsfuyJMxr0XUCaB7iLPt81YOglK5P
	npbyri8gLlUplhwF1wU4egZbn3/mv8d0/KIyuKcYcSrYxb5IsU33iktgTOuuYQ==
X-Gm-Gg: AZuq6aJC3UdMGKKQXjO84E3YeboTgoeEhHStxlEs+/LkKDTqJ0YCgIxADNwe8XuHJTA
	v95sf8UTHmAOC/sWqQfyCmkvPNFTcB2nv+3XU9cTJbNqWCmht+l3NnF0WhIRPERXl5XMwFPAhC4
	+93RFrNWYdlu7WVRnWB6wknUHjpqmzP9VCc+SDVrRB4d1R7ra0I0ajbRqxZY+hNVbfV4XshUeGA
	0/hlLq7zKMvcP3hTDHXUsqjLTlEJ/Ge8uHilSH8yXbazItZycxmYam2F4YFMNxyoKGx8rQQEbkx
	4pI3p8/MRx0dhD+Zz96xxJMeLVNeRSkqLzbV8HxNo3Psq/+byqBfUhmxSENEmfY4+SXLoMW8vsJ
	4yBonqFJb8EhYTRSgNTwGZ29qyZBsA1raqheh3l+YiqyTEIkB7H2VVxvC5A1T+J/wkzU1dcS8PF
	wU7OtbZm/jHZc=
X-Received: by 2002:a05:6000:2303:b0:435:a363:f29e with SMTP id ffacd0b85a97d-435a363f552mr8627619f8f.11.1769095646287;
        Thu, 22 Jan 2026 07:27:26 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f138e26sm20762642f8f.17.2026.01.22.07.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:27:26 -0800 (PST)
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
Subject: [PATCH v1 2/3] ARM: tegra: lg-x3: add USB and power related nodes
Date: Thu, 22 Jan 2026 17:27:12 +0200
Message-ID: <20260122152713.8311-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122152713.8311-1-clamor95@gmail.com>
References: <20260122152713.8311-1-clamor95@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-258483-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_PROHIBIT(0.00)[4.166.49.216:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.44:email,0.0.0.0:email,0.0.0.36:email,7d000000:email,0.0.0.11:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.35:email,0.0.0.48:email]
X-Rspamd-Queue-Id: C3C1369625
X-Rspamd-Action: no action

Add missing charger, MUIC, and ADC sensor nodes. Reconfigure USB, set one
of the ADC channels as the fuel gauge temperature sensor, and add a
battery thermal zone.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi | 93 ++++++++++++++++++++-
 1 file changed, 91 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
index d71d1d6694f8..25c238562b9a 100644
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


