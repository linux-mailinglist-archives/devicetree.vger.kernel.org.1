Return-Path: <devicetree+bounces-295396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFK5CKqbAWqDgAEAu9opvQ
	(envelope-from <devicetree+bounces-295396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:04:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7788950A8D3
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63940311F388
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 08:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD9B3D332C;
	Mon, 11 May 2026 08:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rSjhg1XV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B7D3D1CCC
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 08:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778489682; cv=none; b=M5ffPokJhegh8MZWeYJq6DyOsr1kDpnUh07HR/rWAwnc2BfP+s71INEr/c1Y4xxLVUmQVTfZntr8/ptF2XCeFsy5/cEsgP15hJsD/Uvph5rRBPexy1+k8IvUiQNfT0jMkJ9X1pVDdMrs/D4Qrg7r23WedEKs+kffG3Ypi2sk8mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778489682; c=relaxed/simple;
	bh=KCOvZYyTd7ld6R+DEiMgf0st7whZv7B/cS4xzgObkHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SVSOJW6XlwR7d8WR9zWUWUGFZTo4OBekFGQGVfw6EwctfhgQRS/5JalWtE5g2WHaT46XP5sm3zbWCVu1CStHnjDXnPcygcpoSmaamiG5l8nd8b5dAA6wvyRxYI1+eH0N7eSYJKv9ZEdsDkpzk7NLxqTuwh5gLyCfhv4ut5h48Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rSjhg1XV; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-452169ae568so3080083f8f.3
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 01:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778489679; x=1779094479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TEIrqqD5+9V93nbJhziz0GoVKNocn+oS9pnFRNj6sLI=;
        b=rSjhg1XV+D69POXCVvzYBC1TMRKHwt26CGsmwplUb8DWH0tuRF7TgxIgfGwBFKrKBp
         wD7jCXHgCPezQGSO78QLCxEW/dOnSeYl6qzkYAkmF1q+9Xl8RYv8uuFz6sfjHg7T8NpK
         9Pg38kKtA+rAzTRzkcd5g4PdteyNGBEye5D7hAjTTQa/PT3rrz1kahPAn38y3lUufklZ
         Q9k8+UZnXYxMGzRk30Tc6Yk4vv3yKoGMrWm9amZllXwKnIKH/AllWUoY6V2Ku4Cs2sWJ
         /3gTIUqu+XkyHZr3R1q8nJDKajQJctdrAkc2narrxgpYxgDzk7t1uA39bdmNkRplytKr
         MmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778489679; x=1779094479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TEIrqqD5+9V93nbJhziz0GoVKNocn+oS9pnFRNj6sLI=;
        b=lZo+DBYfSXB5WKelvdOgR05NW4Q3cm4JrhzFeWC42toUFyxqib7gw/vSQBSX8CFbzN
         OJYmwTlHbfgfcnI3TLYDNjQhpaxamrWZw1X93asoe6AUTDPAeUgSYZOrO0OS6sh32PC/
         oRTjDyltXC39ZRPRIwKYTgANqo7b0JwMTyA7aReOGvLjQOpVBqbca6YTFnUMw3kkkMOh
         9/Pc5F01SqcyRmJB2/943Bfa/jIXQVcZjQuIaZbVVk52zaCOsaWm5vClC6ar2b1LRpFs
         T8/hg+s3NVNXyn60A8OGY8u12hK8Wjxe4XTFmGflO42JqKfglQmSOSEYeu+ZkKYiBb4u
         7tyA==
X-Forwarded-Encrypted: i=1; AFNElJ975kLQhHs/TwzCv9bjjmdbcqS+CdPxx0hNDDNOXt4sXESUXFsnkfSKOZ49PZfUscdK+jIS6WbdJAkA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3P/o0jO/ukd/r73DhYs4lSxClRT2nF1MJGR3vMy6EfmIit3vw
	f9C10tMuFelc9uhO6sH/k0AypNIOMrJq/s+akZD+GvqBsf9e2aoKYIL8
X-Gm-Gg: Acq92OH2XzyPcbE1ibQCGPHMaxkdBjuJJp1ZvXjd5AdNrlkgZ70Uo7mpgav8on120mq
	bHh32z4AnM+8FsGPW8I/6cb5RkbxT7p/kM7l1XBaWgRN8ZnKEvQbgb+Z+1dQFc4PhxuTEcq+RGE
	ZaNdvPvLyrZPTYU6T6mbLLgtG6qS3z+X8FoW95eK2egO82UqM8zaAsAoGE7RDGcXnY/2uDuEMW+
	dXqNq+st3zqSeCMSzCFTf5OnUBXuL1HGZITI114qT5jMhrdYoiW0qMRZpVLOrbRSFA3QSlnLOfi
	T0LhUmSX8ubkcfK+r7Mmnx5F6y7OxUnHFQmhdl33rJ1iEbxs+kPIG8tyOx0lM7v5OVy9OEWTONo
	cXpi1xqV+5zck8RvzAl//pvzrskhAE8gT3WJvE7zRRaElDg9ARZOKS+xhpB7ONUOvLjnAb1oxFr
	AGsELKJB9NSh58FcHovZ0bFJV65UgOj32gEuMJSysPmhfxB/SIIXnp56OgoOeBUreP76GtiKESH
	eZUqN4ml5B6ats=
X-Received: by 2002:a05:6000:4014:b0:44f:db87:8919 with SMTP id ffacd0b85a97d-4515b056a63mr33531534f8f.4.1778489679107;
        Mon, 11 May 2026 01:54:39 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.237.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45491ca2fd6sm24944189f8f.30.2026.05.11.01.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 01:54:38 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 11 May 2026 10:54:02 +0200
Subject: [PATCH v9 7/8] riscv: dts: spacemit: k1-bananapi-f3: add SD card
 support with UHS modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-orangepi-sd-card-uhs-v9-7-ae48c0b2b2cf@gmail.com>
References: <20260511-orangepi-sd-card-uhs-v9-0-ae48c0b2b2cf@gmail.com>
In-Reply-To: <20260511-orangepi-sd-card-uhs-v9-0-ae48c0b2b2cf@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Ulf Hansson <ulfh@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Troy Mitchell <troy.mitchell@linux.dev>, 
 Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>, 
 Margherita Milani <margherita.milani@amarulasolutions.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 7788950A8D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295396-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.dev,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,amarulasolutions.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amarulasolutions.com:email,0.0.0.2:email]
X-Rspamd-Action: no action

Add complete SD card controller support with UHS high-speed modes.

- Enable sdhci0 controller with 4-bit bus width
- Configure card detect GPIO with inversion
- Connect vmmc-supply to buck4 for 3.3V card power
- Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
- Add dual pinctrl states for voltage-dependent pin configuration
- Support UHS-I SDR25, SDR50, and SDR104 modes

This enables full SD card functionality including high-speed UHS modes
for improved performance.

Suggested-by: Anand Moon <linux.amoon@gmail.com>
Tested-by: Anand Moon <linux.amoon@gmail.com>
Tested-by: Margherita Milani <margherita.milani@amarulasolutions.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index e20daa50a152..8fea6e87acec 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -221,7 +221,7 @@ buck3_1v8: buck3 {
 				regulator-always-on;
 			};
 
-			buck4 {
+			buck4: buck4 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-ramp-delay = <5000>;
@@ -242,7 +242,7 @@ buck6 {
 				regulator-always-on;
 			};
 
-			aldo1 {
+			aldo1: aldo1 {
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -374,3 +374,21 @@ hub_3_0: hub@2 {
 		reset-gpios = <&gpio K1_GPIO(124) GPIO_ACTIVE_LOW>;
 	};
 };
+
+&sdhci0 {
+	pinctrl-names = "default", "uhs";
+	pinctrl-0 = <&mmc1_cfg>;
+	pinctrl-1 = <&mmc1_uhs_cfg>;
+	bus-width = <4>;
+	cd-gpios = <&gpio K1_GPIO(80) (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	cap-sd-highspeed;
+	vmmc-supply = <&buck4>;
+	vqmmc-supply = <&aldo1>;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+};

-- 
2.54.0


