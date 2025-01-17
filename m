Return-Path: <devicetree+bounces-139571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BFEA1638D
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 19:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E68183A5BF3
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 18:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6E01DFD8D;
	Sun, 19 Jan 2025 18:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="hs4KABI7"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1D1DF968
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 18:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737311702; cv=none; b=hawSiwttfgrUlSsvt+6T0gluQ90ZN5qa9g3YTkcwTxiCyyygxTQje+u9eS56kh9Oz/+0EgOGVTIvkSGG76Hn7QStPi0rAi1YZu4cRMHvFnLlxXtugfkMzuzRclLjCs2kX8zREj8UnBiLEp3alOe8B/1GwqViBpmxmO6UGag4sjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737311702; c=relaxed/simple;
	bh=7CkaAxJau2fFS8tpIxD/jCXpy89OsYk/FiTRSJaT2DA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lf8aln7ezN90hpriYlrrJPFp/WAOUHpddR4cT88ADbIaQZq3SSvSbfjkc9vRKw4TTflkBpzS5QWTwBk6TiR9rZ5CjytHibMUqxl+kQEiwxqDbuOdj2Py8mns3zOyJ+BaFVC9FPUuV6sIxgEEtjeuRt/Mbu1hI4ESYznsDhRLmfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=hs4KABI7; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from terra.vega.svanheule.net (unknown [94.110.49.146])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 7B84A5A7E55;
	Sun, 19 Jan 2025 19:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1737311694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/yCIGpdW6bZuuprcTRCy5tyH+DBatJe449aiujsUBxE=;
	b=hs4KABI7N1wUR3okMIMq0VDD+UqBLQcXI4/QEGphBF/9ZfTbCXrsIuUsEPkPtpeblFLosk
	pqFsVbkxM+YsTeFTNIwGEHSJq0U7OLNykYZdyq5QI7PeeyNDtmtkh/YkOuMUd5MnTwY/fr
	cCwB3fURoTIXnFw5pFDBE0FIaPtC+hX9atZezPpPYOYoyp6qpo92E7/L6ts8y7P/fNlJXE
	jMjV8GK/rCpYxuNatPlnaFJvtKn0LpU0KZDOeVMJsQOTCvxT0yd4YNxg5dbqp0Fl1wIoCd
	BLk6WsCjLLnBubUm9jO+WNkyKE6eBkSgQtesplR7FbyGtOg2okXYCOdPBvg3bQ==
From: Sander Vanheule <sander@svanheule.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Subject: [PATCH 9/9] mips: dts: realtek: Add restart to Cisco SG220-26P
Date: Sun, 19 Jan 2025 19:34:24 +0100
Message-ID: <20250119183424.259353-10-sander@svanheule.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250119183424.259353-1-sander@svanheule.net>
References: <20250119183424.259353-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a gpio-restart node to the Cisco SG220-26P so the device can be
rebooted using the SoC's hard reset pin. Set the priority to 192 so the
gpio-restart method takes priority over the watchdog restart.

Signed-off-by: Sander Vanheule <sander@svanheule.net>
---
 arch/mips/boot/dts/realtek/cisco_sg220-26.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/mips/boot/dts/realtek/cisco_sg220-26.dts b/arch/mips/boot/dts/realtek/cisco_sg220-26.dts
index cb85d172a1d3..fab3d552404d 100644
--- a/arch/mips/boot/dts/realtek/cisco_sg220-26.dts
+++ b/arch/mips/boot/dts/realtek/cisco_sg220-26.dts
@@ -4,6 +4,8 @@
 
 #include "rtl838x.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "Cisco SG220-26";
 	compatible = "cisco,sg220-26", "realtek,rtl8382-soc";
@@ -17,6 +19,13 @@ memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x8000000>;
 	};
+
+	gpio-restart {
+		compatible = "gpio-restart";
+		gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+		priority = <192>;
+		open-source;
+	};
 };
 
 &uart0 {
-- 
2.48.1


