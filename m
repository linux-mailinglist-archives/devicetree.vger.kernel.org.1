Return-Path: <devicetree+bounces-221017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C61B9CCF4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 866274A1457
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68AF9146585;
	Thu, 25 Sep 2025 00:05:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D691E86348
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758730; cv=none; b=RHumgrEF4StVWqBXtNaWaVPFudKbDse6diEenM2Z88qYgXkV4axiQRduxKizIMz9Fi2iRTp0xg7aI0HxRVNYvMgcGDCeaEXs9o7sIfFyhsdCb2fzERMlrnwal3GsNphCZt0RrUNgadN5xClm0wjOhQoxRMjF7spNAXw2jTJgF14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758730; c=relaxed/simple;
	bh=gkjRbBYbeFFfZZgNQHCZf9VD0rEAhTe2UfEcodk1ePc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QCHe+jtlHQjVxUpR27EV+u9zephwht0jMXyfeVn24gtWcg2aByXhHfnBP5d/+i337WB5GcMv+hXLw41fFg0KuZae+OiSVgIWyQNDMO+eNb+TsMtyM1C6eaNA2UZM6WXqAuDXs9McbkSgyJSQ30W/0doC593NphnwZLdPMB/guak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B069E67EA7;
	Thu, 25 Sep 2025 00:05:20 +0000 (UTC)
Authentication-Results: smtp-out2.suse.de;
	none
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C78F01386E;
	Thu, 25 Sep 2025 00:05:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id WLxdLj+H1GgdNQAAD6G6ig
	(envelope-from <svarbanov@suse.de>); Thu, 25 Sep 2025 00:05:19 +0000
From: Stanimir Varbanov <svarbanov@suse.de>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-hwmon@vger.kernel.org
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>,
	Saenz Julienne <nsaenz@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>
Subject: [PATCH 3/4] arm64: dts: rp1: Add Raspberry Pi's RP1 ADC DT node
Date: Thu, 25 Sep 2025 03:04:15 +0300
Message-ID: <20250925000416.2408457-4-svarbanov@suse.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250925000416.2408457-1-svarbanov@suse.de>
References: <20250925000416.2408457-1-svarbanov@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Pre-Result: action=no action;
	module=replies;
	Message is reply to one we originated
X-Spam-Level: 
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.00 / 50.00];
	REPLY(-4.00)[];
	TAGGED_RCPT(0.00)[dt]
X-Rspamd-Queue-Id: B069E67EA7
X-Rspamd-Pre-Result: action=no action;
	module=replies;
	Message is reply to one we originated
X-Rspamd-Action: no action
X-Spam-Flag: NO
X-Spam-Score: -4.00

Add Raspberry Pi's RP1 ADC DT controller node.

Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
---
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
index 6bdc304c5f24..a0b06d7ce9f2 100644
--- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
+++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
@@ -40,6 +40,13 @@ rp1_gpio: pinctrl@400d0000 {
 			     <2 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	rp1_adc: adc@400c8000 {
+		compatible = "raspberrypi,rp1-adc";
+		reg = <0x00 0x400c8000 0x0 0x4000>;
+		clocks = <&rp1_clocks RP1_CLK_ADC>;
+		status = "disabled";
+	};
+
 	rp1_eth: ethernet@40100000 {
 		compatible = "raspberrypi,rp1-gem";
 		reg = <0x00 0x40100000  0x0 0x4000>;
-- 
2.47.0


