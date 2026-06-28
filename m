Return-Path: <devicetree+bounces-316553-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qzqPNn6KQWrcrwkAu9opvQ
	(envelope-from <devicetree+bounces-316553-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:56:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDFF6D4EC4
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:56:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=raLF4N4m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316553-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316553-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4677C300668B
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B96364EB0;
	Sun, 28 Jun 2026 20:56:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7340E25A655
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:56:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782680188; cv=none; b=u5pDvZpaXL7LQuv9JRYzj0pUDT1Ykl0UaghtIVC1SClmxdQJ12N4xg/jORTIToBbeoMZfSNE909k+YOQSw4ER/vW4pUJueFRKY7McwctRDig2dzGlcFRpkU1pUnjhrvBYd62UvVPgGEJj7QVqqenuDKnj+nOpe3ubqTRLx5ZS88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782680188; c=relaxed/simple;
	bh=BwhTmRzVfWrl4LK1d0bJZy+ENkiskcLEfoaPKZywsWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bDb1j3TP/lx4vgr6WbvjyBYwzoUgEScPY4yobAXIvAB4mwhjdUf+M9oDb4HX7KM3jpQ9xYzsFjC6e7+iArkUr0jeSe09QEfMPeWPa80iQCA2COlVb3tr+WOoyiDUvtrFmvPK0o9ek9WsRERZaGPDk3eHS+asotSUMVZAZMklhH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=raLF4N4m; arc=none smtp.client-ip=209.85.221.41
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4631679f204so1975668f8f.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 13:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782680184; x=1783284984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jI+CNHsKpYCs05jd7k7dZKD6GHKhGOknPODjslrM5lk=;
        b=raLF4N4mlyGswaAg137knd00F3hWuUV/67GL417p/VctWs93IYSwJOOZbh+JYG6PZD
         3hzZTCO51ZB+Zyl/SG5oUlKMGAs7IVWDVuuq84SBXFJ9caNcnQBr544DG4aFEeoPnxtQ
         e91k6cES6D3V290M3h/2/wWOguWBka/11ZbvpgDozeHAFZWBPAPgn/omE1N0pNhGfj+/
         8+YvCu8ugrKVQayRodqMxFqckJXfz/ID7bAwW4dWO/+qcul2cYUxJk8ciZCVBMFYgedz
         dGENxRqFHnYarsvWSUk3uZE5TBEGsKM+nG0LR1rgEYQKkp2YITJRr4KO5y2zllrJTz9B
         QWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782680184; x=1783284984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jI+CNHsKpYCs05jd7k7dZKD6GHKhGOknPODjslrM5lk=;
        b=SubVlLu/oR6zTivsgQkvftyAOtyCB99m71rKg9SvX3PzBCIoUnGdNLRCf8A90DGtAQ
         HopgV9Zjik0vt5/GlrWU4bw9khfeOKsSRK8o/DdoyBYsEiP83bnx/lY/TqdVErqavbsJ
         dgl4+XsvRNLFIrF+uJShQydBYXIiFEW8PgzdsjK6rSbt23zgEAbJWc90PuFqGfwc4/lW
         6dP6428ei+EtaTJIf7Sq1EwQK92MC6+7fI1qyKHZtfoZAF/ksEMfzxVlt/02JZJ11F4n
         7xqGplRhTTcx8a7OoJiH0fC4mpMImzFYEEGKVMDUS1jVCHlkI61JE8r3KpF/uOzvvhyz
         fy7Q==
X-Forwarded-Encrypted: i=1; AHgh+RochCjFA/rbt9TFc2VLbqU1own8tfD9Gpr5hOya/Ufz6i86lAEFls4aQJUh447PxqKaxjg/H/ybhbZq@vger.kernel.org
X-Gm-Message-State: AOJu0YwUadtAPseaiPlaCh6Pm46IT9cU3fsaNa9/DhGdHnwkQMP0H7V2
	/opi8Ngr11M35+EH8wQ7AzxfJJXDRHpgkBGBFfu4GsKELtJg9kKI9kQe
X-Gm-Gg: AfdE7cn7XNI+ygkQotKcBKWphvhqvDZZs1FMoPoCWTQxssVVQccw6UW9E8mnzlKNB7L
	VV/QCSPZb868l1ZKiSDgfb49olC/jQrCzMw81n+SEWnpUtQebkBeqFNBcZhqiAEu/VXkoKCeHmj
	g0MzbBvniOoe41D9WvQnb0AYZ1/h+HxZ4toUghZtRWFeCLqXTm2bJ62BcXcLrXJrvnC3OSLzUIX
	Cd3B0wetG9c2LA/pQbB0KWQ6c32aAyYAVf9nAfbu1WiAo4d/YaA8ZErCWr2DQ+D7KG5ve2YH+xX
	x0sKY8fLBiqrsML13tMz+glbUyoOeWFAj/b0WJ43MMUu3XpZtEhRhkuY7asnukRALbRKOAWQ76d
	rBfJJ3TudbXrst+sT2X1S6yT4OqMrWinS9xPDgJhg/TkwJ4zSv7p+jhi0pos9RWomIy210pkWpm
	scGXsx3d1tqOIbqYS2zpiMKD193dHIoN8zQoN5z7dC1Ods72m9jvrskXmOfhQ4+rUuzPTxF0g43
	riyRxCTzgCHBz6dQGI2Vw2qzw==
X-Received: by 2002:a05:6000:2686:b0:472:1424:fc7c with SMTP id ffacd0b85a97d-4721424fda4mr6746824f8f.10.1782680183683;
        Sun, 28 Jun 2026 13:56:23 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.dsl.teletu.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46f86c34d76sm19448910f8f.3.2026.06.28.13.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 13:56:22 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 4/4] arm64: dts: am62p5-var-som-symphony: add TPM support
Date: Sun, 28 Jun 2026 22:56:08 +0200
Message-ID: <d3ac1ce507b48f8debc8857814be00600b5a14f9.1782680023.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782680023.git.stefano.r@variscite.com>
References: <cover.1782680023.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316553-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FDFF6D4EC4

From: Stefano Radaelli <stefano.r@variscite.com>

Add the ST33KTPM2XI2C TPM device on the Symphony carrier board.

The TPM reset signal is driven through a PCAL6408 GPIO expander, so add
the corresponding GPIO expander node. Configure the RGB_SEL board signal
through a GPIO hog to keep the board in the expected configuration.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 .../dts/ti/k3-am62p5-var-som-symphony.dts     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
index 5c41647ff43f..8fe8ec903d3d 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som-symphony.dts
@@ -293,6 +293,28 @@ &main_i2c1 {
 	clock-frequency = <400000>;
 	status = "okay";
 
+	pcal6408: gpio@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		/* RGB_SEL */
+		lvds-brg-enable-hog {
+			gpio-hog;
+			gpios = <7 GPIO_ACTIVE_HIGH>;
+			output-low;
+			line-name = "lvds_brg_en";
+		};
+	};
+
+	st33ktpm2xi2c: tpm@2e {
+		compatible = "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
+		label = "tpm";
+		reg = <0x2e>;
+		reset-gpios = <&pcal6408 4 GPIO_ACTIVE_LOW>;
+	};
+
 	/* Capacitive touch controller */
 	ft5x06_ts: touchscreen@38 {
 		compatible = "edt,edt-ft5206";
-- 
2.47.3


