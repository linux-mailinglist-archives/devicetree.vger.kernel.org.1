Return-Path: <devicetree+bounces-277556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FkAJWZzu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3D32C5BA9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9255C30A24F8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4372E328B7D;
	Thu, 19 Mar 2026 03:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gdZIUfT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D1930E0F2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892437; cv=none; b=BEW+U5Jvxq4jHYw2yqdc6KQbbpJtJQeOX4f0+jYCYCmEQIMH/HnYp7xDW2Wo6x1JxJPs04FvZaCepiUOjLMFkbn58moLAQjR6bzDrYUWR++mFFQA/KyXvKH8PJEijhn8uPTknvgh7Dgytrk622MObggWirbsfg3/VVdB5M8sgYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892437; c=relaxed/simple;
	bh=oPF6KHJgRYdqE4tgZRpqR+s8i2VAulBVC35EhiPw7EA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qpqfYyRL9q/2I8OvM8qvIoQz5/O9dXKmOWl4TzsRGLcGQP61GoODFYZH0nKMW6QWHDfTY5n9mAx49uCCZanHGEkaeXsaDkU51Aj+is8vsW7LCnjlB9eYlrUmrFWK7I0Cjgsdrr1B9mAupBoAcJTcWSFtxJezloWzxEA+9astD44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gdZIUfT/; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so127913a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892426; x=1774497226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8e+wpvoY6yD1RG4Kj+AWSxyaFX8YNngg+IFhXCxexik=;
        b=gdZIUfT/u//sJ/i3lfXOM1ojWXMdfw+YyFDlI3gnwoUFE7Y4EJ+J2eMWqcaEFj4LEr
         LP5Eq13arPHT/B/gEwviC7vTpSmK65BFwC35prRjfejF2WDVmzU1b3yFddyRo89KRA5T
         HwMNOMKtYm5DS7DEgmTQwwmtOFBxTEfjj2JNWXyYl5QrKexGAO7kJsZoLxFvtpeb4mQo
         XfizjtU9FzM+5i3efMOAs/IZKgitac8VUUv0YDkykcfr3h0XMwzk0uX2Yx78z/rBuc4+
         ji7yAQZnyVaPQj19H5N+L2jOYEKwDIKhYJhop622NevFe7m+2ZUf9sZLB7EtHzVOjnDU
         YAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892426; x=1774497226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8e+wpvoY6yD1RG4Kj+AWSxyaFX8YNngg+IFhXCxexik=;
        b=rd38HKGfgxUBeSlGaC0JY8bG4F6ZDNaLzs/q/9bJO+m+lFJm6/793Xn9TmRrQuJLEK
         PR7PHWAohXCBGQoaUFY+APotNwINSuZMpZAIpMuD14p4pQGrZ2Neh7jtcgRLCWLiQhZU
         9+7naAjImVKoRgg6cfR5IRsG+KvGNiWEcQSyjJV+dkRNE5SceuSkXFnqHaohdfKS9mN9
         YJZkcbw8pPtDhPUNxT86BiEwWw8qpNaLy7NoEs5YAWzLp3A8gpuN4eeUcXutkvhkYy4/
         cyeBFqmBTMTWAq+kwphBPHjNceLCmVMd3Nb3N7v37Mx8zcB2bwVdTKHUUr0H5Veb0NOt
         t9Rw==
X-Gm-Message-State: AOJu0YyzmGDoiqj+CPVXac3FTr3OdVSiFiS+1o8++bxPzO4ncRX8Wk/o
	ii7yfb0QemS2r/hAx2hht+4+vTsE58p4ZgiAE30rX/H3IA1T6plecAB+frwNeb6Q
X-Gm-Gg: ATEYQzx92irBBtkawRwpfpSccY12kozfOf2F2XpChpvP3LKB7VtApzuK79HWROyoSIa
	ou2KPS/HASdD7F3uadtmqBHCUSqoxV0eBwP0VIdkGj6alzLWO8rcTI6hByC91UuG3m+GFN3eJju
	Tf+DtIfS90uFkLzX0bKprj/mNQ7phAz6uMKjO/XA6yGIy1p+/2lvomhol+cd9+EZCJnjTRAIZQs
	RTnOLWPO6zwZ/h+9MUvLwdSX0oJfgW0eRCepjN0D1XNeMmW0pd5wOU+sS7+6wuGr1IFrOPLpR+5
	GuiIP2gwa5Ah1SgHh1YvTs3VDZTov9TQZfWOTB21K3n3IQPPtqLA7St6PLsS9TKgDonT0P+8IVS
	HQI5ao6NckjI7ej9vmcNNcM2bZJoiW3m0MXMl24LJBOGFJTb2FePErdKcZCovPIS+NI6KyFdRGK
	jGngN5IXOxb73qXr+QVqmPNF/1qkVse6GC0r/uOa4m1S9JWJZH5syIzsY=
X-Received: by 2002:a17:90a:d003:b0:35b:9894:f6f9 with SMTP id 98e67ed59e1d1-35bb9ef531cmr4730069a91.18.1773892426512;
        Wed, 18 Mar 2026 20:53:46 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:45 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/6] ARM: dts: BCM5301X: EA9200: add LEDs
Date: Wed, 18 Mar 2026 20:53:21 -0700
Message-ID: <20260319035324.269905-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319035324.269905-1-rosenp@gmail.com>
References: <20260319035324.269905-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277556-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.827];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3D3D32C5BA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Allows control and configuration of device LEDs.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../dts/broadcom/bcm4709-linksys-ea9200.dts   | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index a579c372d404..617fb55bc52f 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -5,6 +5,8 @@
 
 /dts-v1/;
 
+#include <dt-bindings/leds/common.h>
+
 #include "bcm4709.dtsi"
 #include "bcm5301x-nand-cs0-bch8.dtsi"
 
@@ -52,6 +54,43 @@ button-restart {
 			gpios = <&chipcommon 17 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_WLAN;
+			gpios = <&chipcommon 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "rfkill-none";
+		};
+
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_USB;
+			function-enumerator = <2>;
+			gpios = <&chipcommon 6 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "usbport";
+			trigger-sources = <&ohci_port2>, <&ehci_port2>;
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_USB;
+			function-enumerator = <3>;
+			gpios = <&chipcommon 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "usbport";
+			trigger-sources = <&ohci_port1>, <&ehci_port1>,
+					  <&xhci_port1>;
+		};
+
+		led-3 {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&chipcommon 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+	};
 };
 
 &usb3_phy {
-- 
2.53.0


