Return-Path: <devicetree+bounces-260757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKnjINoKe2k6AwIAu9opvQ
	(envelope-from <devicetree+bounces-260757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:23:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B61AC90D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:23:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7935A3008266
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224D636F411;
	Thu, 29 Jan 2026 07:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LC5GeE4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88122E5B2A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 07:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769671385; cv=none; b=dObejL5hkqTObKTMOC5vPGQvSBBP/xf52o9tCA23JuNjloImGm9Wodj9W2h/Cx2N8Z5kEliu5W9JtcKxQmuaNVLuUM2K27OaRYWnizTgcqGbKmLfvkumhb4CHPG+K0hlgjODsh4Hz8TUd/cAH+iQLlN4LOqEzEcWV8IioklYo2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769671385; c=relaxed/simple;
	bh=KAvlbY0yYL9PaaTueRuO9yIwL2QGgENhM1iet7MXCjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=deT65UOkiHRl6nN/Og1i43uUXcFq9oJg/Sfx5hbZ6cMkwVJNizbzM2tnb2c6Y3/dRkvZExl6egiL23rPUFjTxZ2NW3klxDMWQLAdijypjHHmTaFUDQT5JeyoDf+abSvJIpdbVogXfstW+esfS2399QvBr7r/nEbskgRhU7aCZkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LC5GeE4v; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a7bced39cfso6150745ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 23:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769671383; x=1770276183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=LC5GeE4vJibEjrhzDV0fdxYBgyO87XAMNnMn3QIKzFw/GxFINXYKqI8D3OO9Vr+Edk
         84e9wMALQwIHccPhMMOk6Besb2/v4lJMHq4+X68OXU+WMsS1717nT3AZ1COd8RMAsvD2
         u+jNU9h3SV4ppjCvhypvRLzcAz4kXmKc63M9IolicbglNe4GEsnZW3nwTorftnrIOm3t
         aBsVq5g2PvsMpNtxyp5/4DW8gDPJNnQRf4QDjZg7DYDXSwqKgt3sVfZbjZ+DbZubKJEa
         MAsWkxm88JKh2pl8El86XyKtiGePI9Biv0IKVA1eDtlXoU+5c//4xTZ1pKxBa+4IgEVK
         0zRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769671383; x=1770276183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=UZunEKOcjlsZo6O9uIg8Do1PBqMHxTtylWBDHLGGqwLeTkmgwObHrsVrKaRtFdulSh
         RcKXd7suGEBpP+vWgUwFp8MgVN+DrQAwZYs9+ItXL4+DOSjEBnBarrisSayg9FohbI/s
         nJqsUXwyRftB5TxBePtUsycDbi+IyW30bF9rE8Ez2QzuJS9g2GkD0c2yjv0J6sdqwh7M
         oeu8mghR8cLlnpXP2vfQwAhopY3I4TlryvSR6LnmQ/5tzMyiMPDdbaoMERlASYo2oJYK
         zsIW28DBnCzT/2nqyoAtgwg54umH+OhtJFYNt0RUAJc3yNdqhuXRB9hzSq33qiiEas3a
         ps9A==
X-Gm-Message-State: AOJu0YzEjYD7aBEOzkKN9+Z1LA92NTGuXLA1mREDbiFIdOMnwuHd3MXv
	Xu4XSsUPbF0tCx8uOXgEw1+1189My8hO0tfFMxJnqty/8cAdtZBIosL/Yz3qtzrq
X-Gm-Gg: AZuq6aKxZ7IKpDWQzXCRQCSSGPv43OPbfAHCPJqpehdJgVqu+PomYJIF30Ip6863YSe
	L7sBJLYzoTw/OyT6W1fUAzZAY+TBZfUwIEkq4g+yw+yAxQ4JZLofCVzaU+U9C6H9WSqYrd5iumy
	dTdgHzNwUnLkfqI2TEQa5JBSUCSpLOaS5HSuJseJ5DEIb4zYcjeQLgpRqWH2wirUTTGw1JsKLVI
	scs2/zh5VzpCTuDti3rKqVsibK3q2yaNR3Sfeqqc/LYyNCb0N7VzDBqmMFexpUe/f2gG2hAB1tw
	dNcNpxOCr7RUMbAR9PgdzH1hjQ/CdnXI0glKf7Jyh8nHz2XFwKxCUmpUBS3MntKi2QCClrVV0aG
	Szlju4PM5YSx/oQ05GC+pZRU7EMr3VbSmBii9nN44lqeU9cakzcuXQqR8BdJ0bivIOkOkw3SdYp
	3gVGUwTWdphWHpQF/BiravQAueWQmObJHiaQVeJbKb4FcYn3cNH10TXIjmw8RDOhOsDl7vQFE=
X-Received: by 2002:a05:6214:202d:b0:7f5:eda2:a54b with SMTP id 6a1803df08f44-894cc95cd40mr119052776d6.62.1769665662516;
        Wed, 28 Jan 2026 21:47:42 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:42 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v5 1/8] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
Date: Thu, 29 Jan 2026 00:47:02 -0500
Message-ID: <20260129054709.3878-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260757-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.48:email,ti.com:url]
X-Rspamd-Queue-Id: 29B61AC90D
X-Rspamd-Action: no action

Add a dedicated DTS file for the TWL6032 PMIC (Phoenix Lite). Already
has driver support with TWL6030 (Phoenix) since both of them are so
similar, some nodes can be reused from TWL6030 as well

This can be included in the board files like twl6030
Example:
...
&i2c1 {
    twl: twl@48 {
        reg = <0x48>;
        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
        interrupt-controller;
        interrupt-parent = <&gic>;
    };
};

/include/ "twl6032.dtsi"
...

Used in devices like samsung-espresso, amazon-jem, epson-embt2ws etc

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/twl6032.dtsi | 77 ++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

diff --git a/arch/arm/boot/dts/ti/omap/twl6032.dtsi b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
new file mode 100644
index 000000000..d599a2ca6
--- /dev/null
+++ b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Integrated Power Management Chip
+ * https://www.ti.com/lit/ds/symlink/twl6032.pdf
+ */
+
+&twl {
+	compatible = "ti,twl6032";
+	interrupt-controller;
+	#interrupt-cells = <1>;
+
+	rtc {
+		compatible = "ti,twl4030-rtc";
+		interrupts = <11>;
+	};
+
+	vio: regulator-vio {
+		compatible = "ti,twl6032-vio";
+	};
+
+	ldo1: regulator-ldo1 {
+		compatible = "ti,twl6032-ldo1";
+	};
+
+	ldo2: regulator-ldo2 {
+		compatible = "ti,twl6032-ldo2";
+	};
+
+	ldo3: regulator-ldo3 {
+		compatible = "ti,twl6032-ldo3";
+	};
+
+	ldo4: regulator-ldo4 {
+		compatible = "ti,twl6032-ldo4";
+	};
+
+	ldo5: regulator-ldo5 {
+		compatible = "ti,twl6032-ldo5";
+	};
+
+	ldo6: regulator-ldo6 {
+		compatible = "ti,twl6032-ldo6";
+	};
+
+	ldoln: regulator-ldoln {
+		compatible = "ti,twl6032-ldoln";
+	};
+
+	ldousb: regulator-ldousb {
+		compatible = "ti,twl6032-ldousb";
+	};
+
+	smps4: regulator-smps4 {
+		compatible = "ti,twl6032-smps4";
+	};
+
+	gpadc: gpadc {
+		compatible = "ti,twl6032-gpadc";
+		interrupts = <3>;
+		#io-channel-cells = <1>;
+	};
+
+	twl_usb_comparator: usb-comparator {
+		compatible = "ti,twl6030-usb";
+		interrupts = <4>, <10>;
+	};
+
+	twl_pwm: pwm {
+		compatible = "ti,twl6030-pwm";
+		#pwm-cells = <2>;
+	};
+
+	twl_pwmled: pwmled {
+		compatible = "ti,twl6030-pwmled";
+		#pwm-cells = <2>;
+	};
+};
-- 
2.43.0


