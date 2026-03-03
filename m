Return-Path: <devicetree+bounces-270750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDOaCzRFp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:31:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8894A1F6D1D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55068312EF24
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DDB349B0A;
	Tue,  3 Mar 2026 20:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nsMugjWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36747370D4E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569829; cv=none; b=ZLn3BB1mcAxmh/vCD2HpD0TM4TIYjdC4Xa4fWhAbz+nJ/injcJvPlV+eDLsXK3auZDfdJmPdlRyhxfdSPjmNyN19vR4eYPTy4WymImMONIRO9wvfFfh5gSObSkkcbnz/cpbnKFgC9kG4KxnKV5uyTllXHAdjS/RBnxdW0f4OS5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569829; c=relaxed/simple;
	bh=KAvlbY0yYL9PaaTueRuO9yIwL2QGgENhM1iet7MXCjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uovP09JtXDqeL6ALZFUDA1JKrHagfWTZMdk5r0k3L8KU2jJG9yxrgOFb6KrwiuhdMAWnO48kPj7EbK/oBMugfRxlC6Jh8Yjc3cAw6/43qNNcrcmdNrYyanOfSOMJKrxdW4Hd/msapZ+sC86zPO87cxSFjMcJEnrHaIyYMLPwjgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nsMugjWX; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8cbae8f69cbso631055085a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569827; x=1773174627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=nsMugjWXJJeXW8KaA7wQtHGvd1qQaYhLcv3g1UgU0vlV9v02eXpCP4Dx55U0GJFKWY
         bWwGjunI0qhBv7qV8qV/shiYuz3Vkzj0SiYv/Of3cw7hibCboKnggvxEMYqT2e3V42c9
         Pzbt84m+o49EjjksEM02mLedRjhyA/0M48GHV9Tbp7cINEj/jprE4jKtNdeJ7xpq5T7P
         mBaFvjlQBQc0GywqE5tMFHHeQx6/+LqwfLP63qdFbtQq4sBTmNywMOpiwNzE/Tfvr7C0
         FU8er4TPkFnCdLLzEzKNQ3ON4votFwflb4o4ifJ3pCrq4UUtkdgNwvCjo+E7IY47yHTg
         uQFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569827; x=1773174627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=NJi/6E+m9eTp+i2j6ly+l2j0dN8zZZiwslECdSkep8rWqdIDEYI/5r6ROD1DL4TPwh
         qj5M1dKy2ljGf/QuAT1plN947jnbkB8VCf5FcFa7Z9cxer9T2xOqbvuoMD4SOT75P9bw
         /rxqIjp9+biJEndBuh9D3XiuAH8HSoXUYjJhzicD7zL/dhs8xwmmia/cMU7M8xoWvkud
         3F2wkUK39RIGbrnLPW0LKcrkq3ui403aps3UfMLyj4vjR+YByqnccSTvt72hbKICEdQE
         CP7uFcx1/Vyr2MwY/TF5jg54Eu99jRRZNVAVMMahGSrzQ/fOVem0BosHFd5N6Wl1CeqH
         Zp7g==
X-Gm-Message-State: AOJu0YycQiV0MkdhMcFODPojdPupWF/4aDnYlwu8TFjuHcswih5QSsBf
	yvdCp3GYx9e0PvRChHS4cLMeb1UfSLx4ZZNgUmXhAqY5RPdJuDeKnL08
X-Gm-Gg: ATEYQzyyI1jTbX8agAJa6TGyxfm8ubj+3XYKqxtLV/PgO1h0b0QLWbowN6RZieQ1Iq4
	4C1e8GI3gwSCoJo1q1Dd7fDkPR0OYgXfJPSGfNjemBxoYMphvUCAhXG/RtdjiGB2WnpWCEmc0qa
	j7dgMzTc6MT13APRmxUJZliC49BzhWbuAS2QqwxbCGH4Dq9DonkgNv3ZUasrTZwWo7VPOm+dZzF
	p0bzHvBL79/mqT7p6umuBtkR7vGaP6xZowfcIT2JP7qgkB4vKlxriVmpUnDLEaKn9EEnx1cvDh5
	sOJLiCWhqXtViWCIN0FBzPOUBE8GQiw8d1wZazfCBCu8zZaNeovM/d3MfiXTDYID6QB1G/1SP/O
	zxokAN3thiquTQpLy7lO/Q+pPTmKcGW5ZQl2GTvQWFslrfJfgBWaPxpHo1hm30bXOe7Ccebbpch
	zBqKd/zt4QzSBZwdsMiNLH+452UvichyjqykFJ2NDZuiJKd7dMkrXbqv7kX6R84LKiYKU5dBe79
	2u6MZiEpLFwr237jiBEQA==
X-Received: by 2002:a05:620a:1a9b:b0:8c9:eee0:dbb7 with SMTP id af79cd13be357-8cd509c3187mr382434085a.23.1772569826932;
        Tue, 03 Mar 2026 12:30:26 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:26 -0800 (PST)
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
Subject: [PATCH v9 1/8] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
Date: Tue,  3 Mar 2026 15:30:10 -0500
Message-ID: <20260303203017.511-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260303203017.511-1-bavishimithil@gmail.com>
References: <20260303203017.511-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8894A1F6D1D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270750-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:url,0.0.0.48:email]
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


