Return-Path: <devicetree+bounces-309778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iQU6DSZWKWrXVAMAu9opvQ
	(envelope-from <devicetree+bounces-309778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:18:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C59216692F5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:18:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=X4ISy8kh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309778-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309778-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DC462300FA89
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABA1406826;
	Wed, 10 Jun 2026 12:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCD7406801
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 12:18:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781093918; cv=none; b=L+i7Uzn8X3LyM+03Kwk8DeWdw/VlMOTh4GnWXrtbDwGFtp/rASB4DU6nYMD2ShqEOr88nYFz9qd3IHOIIjz1wGTV+WJuuc2FZinVWUb50ZuS2hJ/7JK5VvjzQEq6p8YcEuiGJ/ngQ4aXbGOg8CXkyW4mtHRY95h5t4N5NaELx+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781093918; c=relaxed/simple;
	bh=ems2LpTiwpTPgbOwaVQx5TOJZKGRhpPlPNAONUo8hZE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hZoI1aaWQ6s2SY4A52M94Xqr2tDquTusFr+C9vjyw94WopjMr/h8y+LltW565/JpUvdeaUeRXUgtb7vwPtZvN60/NYxPese6TgXXyEkR2rc/2rc0QsO3x8Cx0EjES+OeIvDVuY4qQTb/nvMAmrVrn9tb64HpHu3iUtHuBEoqspY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X4ISy8kh; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490b64c8311so74004915e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781093915; x=1781698715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NPfdSQj9vTm35G3KAdx9EH2tKkR1Y8xAGyUsxKN7pqw=;
        b=X4ISy8kh0WIlnIMU+YW+yQEt9VpK+bIC7DxYRmM5lTx1KgJ+SsYNXtGUDz2WaBqwFy
         bYhrejwzKc1DFwLhPRUK3AY5zO//qaUkT6EHeqs+TkkCpBoGUphI7j87lO01rjxJEUeQ
         WrkmptJ3l6K4VYJfaoSO/H9zRP6SPz+6Q8FykTpGJy0j/Ht9+dnAi9vKCdQxFT0UZbrl
         t5V4Yv8AynKgZQdPtxUShRLHt7wNnJBsbrRtQnOJPLT1u8OSKJ8aQ8qrkPnxvWKy+K61
         5mnMnR1NF5xV2E4KAdHij09n7wWdM3KrTL2FrtdlrTck8NkvBiVGvYTQl3I2MxrR/c8k
         3Wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781093915; x=1781698715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NPfdSQj9vTm35G3KAdx9EH2tKkR1Y8xAGyUsxKN7pqw=;
        b=BoJnDNXreRVacLKq+/oNdnaH4y0lwCSJR1gyJLoaHgrTLmhlbaIGfuFCHBfg5iN++T
         bUK6N7eKrSICu0tUIWs2KIdeSm8fC1kzdN5kqLgXsGg8p1ZbTALnyoakTO/Fqdbv3xkY
         /XWcAokGk8IwkpdHkneKAlTNe7D5UxMedR2Yjn77MPYUVDmEElvR+RTJZvZ4a01Jwyua
         gi3qtTUkxvUiLz0opxSfnPnhm55Gnym+8PqOqJTXot+KpAngKg0g4KYIGQ5f9H5vA4LH
         VRkTCwVLaGqUGhMUzmQQ6JImFIWqzFQBKiY89YTASQrzsyffRb55fSdRVszlHHLN60dR
         ReCg==
X-Forwarded-Encrypted: i=1; AFNElJ+H1sOZV6/61ytaBfnMFNkiYOgEEfg63iVw1q+5tWlNkhAOGK86sDhkFEbx3YowfUez1kDRP7OpRAe3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+cjO5QFG1DZnzzSJqMdTNNqGciCwBELiCxxGQCpkyP1MliKRM
	ldt0NOL+s7vwD5bz+2hPBkTUvWkEjqLl6cVAKcUW5WQti3DO4siMME8k
X-Gm-Gg: Acq92OFJy21YqJXqkARU+hqouqeZ+9JyvfQ7XLxIklvoXXcI6BGw+lV39InlaE2sTrA
	Lo/rom9EisOx0B3L/T/ayFuZOpjxcyY9pNwelymqQaJKrFsVhNOJjGxohtsOOVLdmx/uQ8q+++h
	JgbI+TkHubEF9UpUgHk5UWoYw8OrMm7/MTE/seMABFslULg48sR3HT34lKs9alxRwqxKFEiY97j
	c8/xW0EJrnZ0XeBJHJSrOVlIbyYXtZkwN7bHkEZjJbZy5P75yrVklCnW8gsz2FudjwMv4pt1df0
	RgXUfxv647DYq5IYGBFCqagiz3aLeZfuPa3qXJhTijS/OOp9vEdOrIN5gbnp/FTa3OzCV1E+TfU
	V8lDQtXeRSs38RpPQe2ro973SboWLlqtOBPOft2rN7gw2VIHxkxdqVrrJZDAB2aceeJiOl4S8xw
	Ef4N4Xe4seCSmecZGZ8qcXm1QcbDr2NxZZ90AIuRt8nDUZV0hGczfd5fk=
X-Received: by 2002:a05:600c:a117:b0:490:c2a3:23d0 with SMTP id 5b1f17b1804b1-490c2a32441mr294659765e9.35.1781093915295;
        Wed, 10 Jun 2026 05:18:35 -0700 (PDT)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc413adbsm566553095e9.15.2026.06.10.05.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 05:18:34 -0700 (PDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: openbmc@lists.ozlabs.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] arm: dts: nuvoton: npcm7xx: Drop bogus FIU memory reg-names
Date: Wed, 10 Jun 2026 15:18:20 +0300
Message-Id: <20260610121822.2524634-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610121822.2524634-1-tmaimon77@gmail.com>
References: <20260610121822.2524634-1-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309778-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.ozlabs.org,vger.kernel.org,gmail.com,google.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@codeconstruct.com.au,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C59216692F5

The NPCM7xx FIU controller nodes only describe the control register block,
but they still advertise a second "memory" entry in reg-names. Drop the
bogus name so the DTS matches the resources actually present in each node.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>=0D
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/a=
rm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index ab3c3c5713ae..a16450abea0e 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -191,7 +191,7 @@ fiu0: spi@fb000000 {
 			#address-cells =3D <1>;
 			#size-cells =3D <0>;
 			reg =3D <0xfb000000 0x1000>;
-			reg-names =3D "control", "memory";
+			reg-names =3D "control";
 			clocks =3D <&clk NPCM7XX_CLK_SPI0>;
 			clock-names =3D "clk_spi0";
 			status =3D "disabled";
@@ -202,7 +202,7 @@ fiu3: spi@c0000000 {
 			#address-cells =3D <1>;
 			#size-cells =3D <0>;
 			reg =3D <0xc0000000 0x1000>;
-			reg-names =3D "control", "memory";
+			reg-names =3D "control";
 			clocks =3D <&clk NPCM7XX_CLK_SPI3>;
 			clock-names =3D "clk_spi3";
 			pinctrl-names =3D "default";
@@ -215,7 +215,7 @@ fiux: spi@fb001000 {
 			#address-cells =3D <1>;
 			#size-cells =3D <0>;
 			reg =3D <0xfb001000 0x1000>;
-			reg-names =3D "control", "memory";
+			reg-names =3D "control";
 			clocks =3D <&clk NPCM7XX_CLK_SPIX>;
 			clock-names =3D "clk_spix";
 			status =3D "disabled";
--=20
2.34.1


