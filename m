Return-Path: <devicetree+bounces-276198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEMdIdIOuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:08:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD4029B090
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0320307E276
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 719C139B963;
	Mon, 16 Mar 2026 14:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kzp0BIFN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE3C39B978
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669881; cv=none; b=GCpBv/2vGzIkpHjrWjPNPJ+3m8fbWew2GXu/D6THydntT48jPwQS4d/wUl45OawVZYu8f0QG0wUXgqJV/T0OSBt6OoB8RMlPn4ASz6jODYL08HXY2zsWrNiKagKjHjhl/xDLsDA3pQLJCHGUUU1yoAks4CEYXdJGcy4Y2nIrKeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669881; c=relaxed/simple;
	bh=TMuC+r//YMxau2/SdiPrZPIigFg5514fOWLlzC/iIWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KWYDdCuL5ROeMZoQ5pFu1SfIO7A3SktLOQbNOYOMK+2ej9fOqg+DcRXUeFKniAf69/0DQPNo6u2TM41ccSzVlOTE2bXz6n8MoSxgaiqWfWIzT6emwVzTewY/Sj//J4IvHaFg4B07q2fvWS86pfvZeP8k+cw2DpqhCjD96PDTElw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kzp0BIFN; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439c56e822eso4882045f8f.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669876; x=1774274676; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzdLQZF+g4qVulg9JsUgV+5Hi9wiigjRN7QwVdQTPwc=;
        b=kzp0BIFNW+Sa/Gg0mi0HWEjvXDz6jcddOa0znTSZrp1qM0adeY2OE84Zd+EiDy9V3n
         8Lt7SGiMFTWwSZPvExojX8G7bC9LwwShEFtBOKC8N4rezn/kzrPLT6vUBbwOuiJuksT6
         OfheNZ7uBd8lvYOGTGKjYm3iHYJFEDI8jqGzVnP7V4nElkrdaqu3DtvnwcYFzM12Z1c1
         UPjdlGys+bQVpwcPtcPQt7fCIJCMUhzje5Yle5FJcORThhyCZAaWcjh28Dq/B0da5eLh
         IqeRAq6HKEeX45PCuCnQfWD2dTlMJ1d53AAa2F2K3XcajkZBqLsVt4FPS+OFbbt4Uc8g
         S/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669876; x=1774274676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bzdLQZF+g4qVulg9JsUgV+5Hi9wiigjRN7QwVdQTPwc=;
        b=lIh2OPV5qq6rtq+lCPfd1A+4CbHG7jnr0TZV5SAVPV7I4oBz5+MXb8Q/fg6dCeAfAM
         ZQ8F0w5/qyEU83FDbtp0y91oRRwq/DUo7WTEWyqRPkLToJI3/l+Z/GLY0/lMr90PIJ+X
         aPe/tG+ZKWXKBx/wdAbpEjMeKeCzgSLg5GO1MQ/J/lf+q3SOIIv8XLkzIx2fzJMcH/Nb
         7VwCFgOBP193oEeD2zJIOfRNcltZVFsfrjLdSf4lKjNdGdfNHMkxJJJ7+GbrCWaDN6rJ
         +k99Uy3yorckHsVE7YNw4gB8fIfLbYSyL+NYxf5Ieze9helJmVNEbNrb9ZY0etxk4YGT
         dlzg==
X-Forwarded-Encrypted: i=1; AJvYcCXNZnRQW7sSB5Z55Zzh5NMa1GG0Ksdjwwg8orklgeQZGI0cUxitT+Y4SFevPZYMiRMTPq21P5CY7e8L@vger.kernel.org
X-Gm-Message-State: AOJu0YxL4HNkml+U7SiB7nAr6tnW9poW2YpFi7bFIZS9NtVUX4iYU5uL
	ddt5LJWQsLm4Viuca0Ote/tcEjCLysgloVSjnEHjNTt02E3cEIpsXkH1
X-Gm-Gg: ATEYQzwKlhrihrKspCpO3zR3ZguTG3vbIhv0pv5ycnZYwpkSQdZUatkDBrJEZpyPWgR
	xvdwvBERZx+CpvmoMTOGDcGATfXn1OuEyC6L+VQsskDlsxOIMs/g2AqLpjnCW6Lr9uxQrwnldKL
	psYJb8vTot+dmBS4eU4dihffxl8SswpsvAUeJXmw9f3pYNaUsqNck/Pu1CIgUvUrB2HaKTGJjRv
	J58TIQfspguqg/RXK14yA1TNgvQsYNPtYYrYmrK7XbHnfQ8vTMrwsgzvjTSEi/Qg7WxvLKPZ8gC
	vfVi1JfHGgaNF49/q0QfcDo5RaZoZHqdX+UDQiLJP+U8EedoTSdrNGUoiDvXhjgvv2ERG4ddUHp
	qlkSbpDJpC3kZQPK/JkAyEKoLDjFYarSK/8c+dvBKBJ7iLR2VjsiaADGMsdY/OmS1OJEmQui0ZX
	K1cHZcbRoVvERQEPvhJNuWtddpUtZ88luRzM3NOfEpYOvrVcpQ/0JsRGzqT5oHSPzwID/ecaYO1
	Lc=
X-Received: by 2002:a05:6000:250c:b0:439:cbcb:5723 with SMTP id ffacd0b85a97d-43a04dc083emr24515986f8f.42.1773669875968;
        Mon, 16 Mar 2026 07:04:35 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:35 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:33 +0100
Subject: [PATCH v3 5/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC and
 power infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-5-aefd3b7832df@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	TAGGED_FROM(0.00)[bounces-276198-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.41:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DAD4029B090
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add Spacemit P1 PMIC configuration and board power infrastructure for
voltage regulation support.

- Add board power regulators (12V input, 4V rail)
- Enable I2C8 for PMIC communication
- Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
- Set up regulator constraints for SD card operation

Tested-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..f1533c99881dbf38e16cff5e91e33253cfa7a56d 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -19,6 +19,25 @@ aliases {
 		ethernet1 = &eth1;
 	};
 
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
+
 	chosen {
 		stdout-path = "serial0";
 	};
@@ -92,3 +111,32 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&i2c8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c8_cfg>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
+
+		regulators {
+			buck4: buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			aldo1: aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};

-- 
2.53.0


