Return-Path: <devicetree+bounces-260361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UM2XLGr1eWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:39:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66840A0A00
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D97C03137B5C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D991C352C48;
	Wed, 28 Jan 2026 11:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xj/RJneN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57C03502A6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599849; cv=none; b=Ni/Uj+QzKtvHUMy7cxnC2cQfQeTWbgeRMqWU6Ygm72gyX/kPjMFCdRr5EgqQthukz0MtweVLX00A3OI700dWsi57u1KBuV/deHo1dVOBG8LtUhf7yxkQysrtUOTTKpTvlKCaN3zAPDNzbAGxBc1xyOdjbMmK6dJNeuTgSBOKsHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599849; c=relaxed/simple;
	bh=wYGYHHecgZ3f8TInHssT/2zr5i37lvwq1yFMVyVZT9c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MQcNzlgBJOjIV5StwtHrvTnef92TJxyxmMNCKVm/dcJEiokL7uf+UUzpVNTamtwJHULro6wpuXlQvZ+ytHXlwhwp1GKKUU7BsxYn/3Yg0coEf9qVd5teAZiIElpwwDzor8It/aGvZTuJO7pyc1VaGbz3GIIu8PFWkVy6nvhFfVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xj/RJneN; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-658b9e95990so898558a12.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599843; x=1770204643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6lNXhVo6rabsx9uuwYfPMUxIX+5+vIBC2iOr84Rj6M=;
        b=Xj/RJneNvJV5wFyIcB5S6VLA84W3857QVlI/bJCTwfWlS62iMBXKk2XEkaEC3V+RKt
         sveZmJGQErIbcO2rqK07ZSYGNusfQtLHAsv4cbHjDYBgegRvXtqyn2LObJcQt69wW6kr
         /Q/kDnCExwbRfrvzAW3WYOr4x0V2UQnOrgl1UGts/sTye4ynk1SGFST/GCfpBuUjFXiF
         FPc+6IZsN6TSoI4Z0PnikV9QtbszyvJ2AOS0QCiZK0402J/BuXo59HrgeRc7urB/GTbc
         R809TBZAu3UkSzO5jL2HXicr6duYgZLxbo8F50Tgrvp7qulbLHhVbBOuJ57wSPLZlmaj
         N1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599843; x=1770204643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T6lNXhVo6rabsx9uuwYfPMUxIX+5+vIBC2iOr84Rj6M=;
        b=nxqqCzLGKRwMQRe8LHw6b+i1joCdWwnaAFbRfFypx9R+modGUJ3qlC+QiWzS7gYmi2
         enjgeMW+J7PVkoGX7OWG3HFS9gU+k/m/ob35L3ZXciUoVMTBEiZ2Pb4BMVqQrkMlOo8a
         dnrYg+widlmdo73wlJ0g4SIJi3GPbxH7e/aki/DBPXYY1u9zi2ddSF3ohOPxnASJXxHK
         8sUuv4oJAj0EQj+FJ9hsA/EhJaKkcYLeK2KQRUAF9QdcOl8smEXqpY7cPZXs1bKXeCaI
         bNPrHul7ckkmZAB/kP6pWij67W9M4jUeYQ6Uia/PDe8ZjwBZqcWkS+mDuoejzpWkJsg4
         urMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVql2J11fuyJFXP0ECXAwjZFl4eoeQ08lgFdOGD3D768VenJB0qbOseSd9ljJHADfd++DcOsh1DuMUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwjYrss64ZutJ80cO/RcAlQ9CCzyR2swKl42JRkMwbQWu3JIUPM
	z9EJd0jc7xxY4N5MBju8OcvrQIh07g89jR09EKJAM5ihCemjJMs7F00P
X-Gm-Gg: AZuq6aJtMD6q4AzYR7egTP0We/AOo7NcrUo1BhVfryReirQI/yn5uf0k1vENLV0Qgni
	LczQZZ5liu7x0LxVjAShG0k2hU2FtMQNL72y30yxwFlDhg5KzKtp/lZitOeHGuwcbsfkYLQnLfi
	uz/Zqjry9Gttm9diPYBk0jFdeXQHP1WW4dRLn4Q6LAPXE/9JU4MUHF65hIrAGMtz+wPgDi7cuEh
	U9DEshdaucYgakaw94CvJYwx0dvlUixczFE/0eXYRixERr2t2IU81GtXfRAJsauzivayMkg3JNb
	G7SfnowcRBUdX46rs/Ih2KrZ9FeeURJr5pWfxDxNsX2jBDUMngh08m39zkYsJTrwqzNV0JGnQG3
	DmOnvxVLFygh7HMyjs1DnXadZm2D6KAJTygYyGP6f2u8OjW2/WmcQnbezopn2FoyOyk1D2gB0ta
	RlSOXgSsUtk3HQkUaDaGBSGh1aqkPgO4/q/ec=
X-Received: by 2002:a17:907:8689:b0:b79:f984:1557 with SMTP id a640c23a62f3a-b8dab37d05cmr365383666b.46.1769599843232;
        Wed, 28 Jan 2026 03:30:43 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:43 -0800 (PST)
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
Subject: [PATCH v2 10/10] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Wed, 28 Jan 2026 11:30:29 +0000
Message-ID: <20260128113032.337231-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260361-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 66840A0A00
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Dropped scif node as it is already included in common platform
   file.
---
 arch/arm64/boot/dts/renesas/Makefile          |  2 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   | 37 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 1fab1b50f20e..0153e772c231 100644
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


