Return-Path: <devicetree+bounces-278214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLoaOaUmvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA4A2D9141
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E10F5301938E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550F839C011;
	Fri, 20 Mar 2026 10:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N3pQwizO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD983399366
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003805; cv=none; b=e2LWoW0jC4xpKAXfldNfwQRolwDM/BESrTY3o3Vo0pY9Tro+rBJBm4oObF67c1ZyJP39eyhobMU6aqWmQEEUk5z17b4eXj+D60pFm4lvb3vzGC5rk90kYQqjcfo+P/cCscqQ7NJRfZEgQ6tIro/HbpFva3bTG6DwSHh2E1jKEMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003805; c=relaxed/simple;
	bh=PNKTzdrtAWiBT6BvQVGM2hId5XOrWv5D1PEL2Jf3qck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FHexJBr+niQkraPt0pX1QKfqVxxWaHk3HAbaSZrGWVfwU9HY6f5gilUeQziH1DOHmg+fm96CoT1hhj4LXYGViHI705zJ3gssGiQNC6y41+GJ93zu+OkSmEc4xkK4XiqJW7xwYWk59SDwwcHoV3VHGLb3V1RCbKDAV7nbz59fDxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N3pQwizO; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-439bcec8613so319940f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774003799; x=1774608599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FU589jD2JKROuFlCbIY16RQahML1VqnyV6oSI6Eb8AE=;
        b=N3pQwizOLgI+1bSWCvEj/dB0+4tbHwFq6hjBx9d6/cOn5Finm1hPBegzUmOkgVf6/3
         klH6/pKzlJlfM6p13+pqk7iriQpsf2CKicBU4It25V2xinNJHGa5ep4Zd0wL2p26P8tj
         OCByMeb7L6pgYNkNsuXDbMfqcF/OCQufryja3RT1bOhfsYJcQvUma1kMOGtZcsStiwXE
         X3Dar/PDl1ZKTBlpYygTQ6ZOvUz08O06c9M+FOFzDHmzfA+uo5kXotvuXDs9ICaTMuJp
         CknJCm+PmogK5eAdwqmzoZ+WpdHOg9/YiNWSokalHEtqJA1I2YEpJ8ZHWFZmyhsrrDw7
         NxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774003799; x=1774608599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FU589jD2JKROuFlCbIY16RQahML1VqnyV6oSI6Eb8AE=;
        b=F/Gq7rFX7NtIlAF+EUszGyVioKS3+B4z8UCCPw2W8ZmgNOoDrXVyO0GK/ab89G0rbE
         2bNpYnn76gymK7prKzkiUYFnkxc5L8xyvOXXXgUMW2V2npTjhB2tjIO6JrwzFIj4CN9B
         qDKEKKPEU/e7uSXFizTFa6ARYTNARD6mLEieBKYLAf3bgWOfV3D9IjzruaQ4gQj5cL0x
         NBVhHOMuM8zjGAY3ATLB2Je1XTnMRBagJ5XMCVJs+G+2GILiIjKuxunEK9WhdTRp+dBO
         Fdl7r2vtUZbxPrVh3Qj79k9lEk7tT0TjLDSAtBEk3EVY8Jqei2rq7deUFyBQhtafHdt5
         1+4w==
X-Forwarded-Encrypted: i=1; AJvYcCVQSUd9kuV/FC8WuAec9N9mPIvlRBexcDIf1d5klMssi/XkjH7ocV7OaMQdlqdzbH7YamZYQ5b/Do5U@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfqm9b9MvHQyEzY3hTfd7AY1vcInLMscoq79WVZqFK/iRzEQe8
	ODhLUWqaWiCy2462rCYT9sP+q30j8AUKHblQzlR+7gqKjQd8+wQcDgkF
X-Gm-Gg: ATEYQzwPsXp6of446eVWJOJlA0JyHJwZe4UgiRi1yH2p26G4jxBD3Pczpo5qon4dBkQ
	VDDBqeM5LfQ1zuHYAMoNUw0TpKAzx1pv2hblM+9n7rS2oqiaUcJhNTnnbi4QVy0JSpm4AmNdrAH
	/u3OrOigtTOsyFFGR35pPfzcih6HMsmF/YGcLY3mzGsEAsmj7dWNp6igmPkZ26foTpf8d9ulmtx
	exeGuWjkfT9AT8e7FfLsWSgCvTzRt2asIuzovHgScIYKNinuLOq6XpVz+eBOT79dIVJhk7riKnP
	R6L1GVo5mh6DekNovejb2kCPE8JZihzKEm/EPBjzNhDStRnc06f5uy+MSGB6vP43xHwliSdx9PB
	xXcDsYyYf9dk9IraQEE0OXLDBPtC0mAwOFuQjlOsy1B+PC3gK/R1VnASCtbe77flWa7EaLyAIcK
	P6mq3ye4//qWBR6uExL02fGSuk3yf1q98=
X-Received: by 2002:a05:6000:290d:b0:439:d242:e8fe with SMTP id ffacd0b85a97d-43b64242fddmr4539113f8f.11.1774003798606;
        Fri, 20 Mar 2026 03:49:58 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:5b93:d2b1:bc5c:9231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b644ae619sm6203062f8f.5.2026.03.20.03.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:49:58 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v7 10/10] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Fri, 20 Mar 2026 10:49:44 +0000
Message-ID: <20260320104950.42220-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
References: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278214-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.958];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 1DA4A2D9141
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v6->v7:
 * No change
v5->v6:
 * No change
v4->v5:
 * No change
v3->v4:
 * Collected the tag
v2->v3:
 * No change.
v1->v2:
 * Dropped scif node as it is already included in common platform
   file.
---
 arch/arm64/boot/dts/renesas/Makefile          |  2 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   | 37 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index d4dfb7fd973b..76df20d2fd29 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -179,6 +179,8 @@ dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtbo
 r9a08g045s33-smarc-pmod1-type-3a-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod1-type-3a.dtbo
 dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc-pmod1-type-3a.dtb
 
+dtb-$(CONFIG_ARCH_R9A08G046) += r9a08g046l48-smarc.dtb
+
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G047) += r9a09g047e57-smarc.dtb
diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
new file mode 100644
index 000000000000..86db86335d5e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3L SMARC EVK board
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+
+/* Add place holder to avoid compilation error with renesas-smarc2.dtsi */
+#define KEY_1_GPIO		1
+#define KEY_2_GPIO		2
+#define KEY_3_GPIO		3
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include "r9a08g046l48.dtsi"
+#include "rzg3l-smarc-som.dtsi"
+#include "renesas-smarc2.dtsi"
+
+/ {
+	model = "Renesas SMARC EVK version 2 based on r9a08g046l48";
+	compatible = "renesas,smarc2-evk", "renesas,rzg3l-smarcm",
+		     "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	aliases {
+		serial3 = &scif0;
+	};
+};
+
+&keys {
+	status = "disabled";
+
+	/delete-node/ key-1;
+	/delete-node/ key-2;
+	/delete-node/ key-3;
+};
-- 
2.43.0


