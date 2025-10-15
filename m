Return-Path: <devicetree+bounces-227148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA44BDF1D0
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C57719C3ECB
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162612BF000;
	Wed, 15 Oct 2025 14:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="INRlxCwK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7214428B4FA
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539166; cv=none; b=o/4Fcgz7c1K40uW/PiFRLi7TKb71OaypChbv9oWBy0sX0yBgTkUNxTHOhRGQM6Ij62MaxF9AV2RjmMU49CkkSxG8aFRi0ANr4pWOEENFGtipVDqL5VBHnwcrnW9wcMcpPuMzESHtfeH9tCUbDggeZ3T0bpieEosN+XfYvpRkjiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539166; c=relaxed/simple;
	bh=0qzb1wRUXnACQfE7kc/V3RbmqbCvj7mpXDT1acziKnE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f8eQmhll5s4d8FpRKXIXHS8roorB4p6gj+Td7/GS4Zm10ZT4kWVZRlpG/qpUmotAjSrZWsf6Cxm5T9tAtkZfCd9y28khzSqKPZi5/iFcTKEgwkS/qj07P8Ml7LZGFknw4Ja7CEpvGcuujvKsCYpNWg5IIIR7YMYcA45QNoAE/s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=INRlxCwK; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-267f0fe72a1so49723995ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539164; x=1761143964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J1qkiZNzj4i8upyPOuFU9biKPD/HSZhrQR/i5BB3FsY=;
        b=INRlxCwKDCUElwMrIKhdH8vt8rjAzV9uHrFLd9j1RO5dAWWRaF93IuSo2FzVPAWqQD
         atCVgsXB5/4vWyFv3AboNIp0/J4ceuql0IuaIA+d3GPYZ1RKvbUEWzQahyGIEbZMFnzI
         ZINIVfcRmJv1hC9Vo22YZ4Qv8qGGBMDhajFojcWourjsWq0DP9BrWCWpy5CiDVS1lIBi
         +c3/Is2vobLQcY6fkbQEpzwEYM6uACPVZsPQwFVC2GLzkv75wV2Yf7gRkhtruGHBodGE
         K3+dw/gfNcQ5Yh3Y2wAIY5cFX9EXaQuG8HMnND1vONLWGFfUs0y7awZdwu8YPPJ18iMQ
         z2Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539164; x=1761143964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1qkiZNzj4i8upyPOuFU9biKPD/HSZhrQR/i5BB3FsY=;
        b=qnrF44em07l2G3S12tXPdYR9hCfSqrS+CpCwQ4xLCAP2XC/3fI+Zx9M/UjUwqBgZsv
         v5fXWpgze8RD4qm2YSgQKxuUJJTbNpYTDox7iKsncjKRl6GhD1fNrbw0hDedkHifpzo8
         sNs+7GhT42eyqpmiIYuMLbWnmfThVK/gsUR/nWysR5RQbf8F25WkPi65VmUnHEDY3GMA
         aJktQ0zKxHEeICLhh2kXHhZ2gVkKcZOm+NgnJHetvO+hfntKhgkPrYHROv8PUlw2I0rD
         LBT7vjNZaHD/uYQijze2GhHAxNUKYaVweWNOg1Haak07+8EIOEYh5DEWC9zpxcxmmSrD
         tc4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVarz4wq6M17BjOY2/1PqFfRgg1HT6qiv+RIIliF0vTZF4H7xci4Byc4MMC/HBqIiv1DBzFsOXihffu@vger.kernel.org
X-Gm-Message-State: AOJu0YyT+R1AJucWOAZZXd1KS0HNUeHhJ4BIH9KPhtJOgDltGQM7f2+N
	wowxxDMmCU0r27bd3clPGWutHr59otJvBENGmwdAexdVwYJ+e23I14yF
X-Gm-Gg: ASbGncvZPb2S4xQGw56zEi7O3R5bJCwK7YkFHh2KP/SZntCED5p4ai4gqgYYdJ9kxXc
	WgPCY3/Pxe1+170XdhQmIUumfnEZDOPTDVkXpnMBbP/9vquqE7eZf2CgJjOUqH2MEG8ls9yN/bd
	SA2KsNcT2Szj+6lyYoEPpJaZ2i91WxhTEnEJHkyLcc0RCUglCVO35YjvDVbQJU8mZApc9yGDyYg
	dC1cXWYF91raObo7D1G0ceuI7H64xeBwCewHpSsIqbvVCtwseO9rq7kRpM/NULrdmV74ozgfDpc
	ec8IUPfzY/M9vC2cfYxcO5P6oUQBbJbUqcwkUZQep6VdkyXglPxJ6oOJL47YNW+dgM1SSJVbeCT
	MYJKCcwqnYRRYD9YSNRV4otpxLlGNHoZE3rA50IHM5CBHKiPn1zCpAbWBJp+Eo5ZPmExOlsEIPv
	dj8dS99v2l/gscnfpDJfUUbFSjZG+PBPxYlqzop3ci
X-Google-Smtp-Source: AGHT+IGhJSIQPh1cVrCpB8ckttgUHuHIw4pB+GNjrgyyBubcVdnekxYCkMTZnEV3Ov7tT/KZdg62EA==
X-Received: by 2002:a17:903:286:b0:276:842a:f9a7 with SMTP id d9443c01a7336-290273a1725mr344577015ad.57.1760539163812;
        Wed, 15 Oct 2025 07:39:23 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:23 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/7] ARM: dts: aspeed: santabarbara: Add blank lines between nodes for readability
Date: Wed, 15 Oct 2025 22:38:57 +0800
Message-ID: <20251015143916.1850450-2-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add missing blank lines between DT nodes to follow the devicetree coding
style and improve readability.

No functional changes.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../aspeed-bmc-facebook-santabarbara.dts      | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 72c84f31bdf6..4adbf15d913f 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -319,16 +319,19 @@ eeprom@53 {
 				reg = <0x53>;
 			};
 		};
+
 		i2c4mux0ch1: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c4mux0ch2: i2c@2 {
 			reg = <2>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c4mux0ch3: i2c@3 {
 			reg = <3>;
 			#address-cells = <1>;
@@ -380,16 +383,19 @@ temperature-sensor@4e {
 				reg = <0x4e>;
 			};
 		};
+
 		i2c4mux0ch4: i2c@4 {
 			reg = <4>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c4mux0ch5: i2c@5 {
 			reg = <5>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c4mux0ch6: i2c@6 {
 			reg = <6>;
 			#address-cells = <1>;
@@ -424,6 +430,7 @@ voltage-sensor@48 {
 				reg = <0x48>;
 			};
 		};
+
 		i2c4mux0ch7: i2c@7 {
 			reg = <7>;
 			#address-cells = <1>;
@@ -469,16 +476,19 @@ i2c5mux0ch0: i2c@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c5mux0ch1: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c5mux0ch2: i2c@2 {
 			reg = <2>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c5mux0ch3: i2c@3 {
 			reg = <3>;
 			#address-cells = <1>;
@@ -503,6 +513,7 @@ voltage-sensor@48 {
 				reg = <0x48>;
 			};
 		};
+
 		i2c5mux1ch1: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
@@ -513,6 +524,7 @@ temperature-sensor@48 {
 				reg = <0x48>;
 			};
 		};
+
 		i2c5mux1ch2: i2c@2 {
 			reg = <2>;
 			#address-cells = <1>;
@@ -542,6 +554,7 @@ power-monitor@45 {
 				shunt-resistor = <2000>;
 			};
 		};
+
 		i2c5mux1ch3: i2c@3 {
 			reg = <3>;
 			#address-cells = <1>;
@@ -663,6 +676,7 @@ temperature-sensor@48 {
 				reg = <0x48>;
 			};
 		};
+
 		i2c12mux0ch1: i2c@1 {
 			reg = <1>;
 			#address-cells = <1>;
@@ -678,6 +692,7 @@ power-monitor@43 {
 				reg = <0x43>;
 			};
 		};
+
 		i2c12mux0ch2: i2c@2 {
 			reg = <2>;
 			#address-cells = <1>;
@@ -695,6 +710,7 @@ power-monitor@41 {
 				shunt-resistor = <2000>;
 			};
 		};
+
 		i2c12mux0ch3: i2c@3 {
 			reg = <3>;
 			#address-cells = <1>;
@@ -712,6 +728,7 @@ power-monitor@45 {
 				shunt-resistor = <2000>;
 			};
 		};
+
 		i2c12mux0ch4: i2c@4 {
 			reg = <4>;
 			#address-cells = <1>;
@@ -722,16 +739,19 @@ voltage-sensor@49 {
 				reg = <0x49>;
 			};
 		};
+
 		i2c12mux0ch5: i2c@5 {
 			reg = <5>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c12mux0ch6: i2c@6 {
 			reg = <6>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
 		i2c12mux0ch7: i2c@7 {
 			reg = <7>;
 			#address-cells = <1>;
-- 
2.49.0


