Return-Path: <devicetree+bounces-257408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NLcKqVVcGlvXQAAu9opvQ
	(envelope-from <devicetree+bounces-257408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:27:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30A51019
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:27:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 044966A9A18
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B3743C069;
	Tue, 20 Jan 2026 12:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dc4aCsMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BD5428835
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913569; cv=none; b=bIE7IikGVGXaaN+vUdHMTzIB2AHPenf0idgXcOx6kVjgl6PuWNaAx6IpUprjJqVb9HMepQVcHNKGuTqlBZ+kfQ2nJ9Kk/N+KcY63eR5gUBcqXitYbKQwCwg1t+ug6THeBIFLr2jd4cAlqsdDzLOKCfQXwukD6bm/znAxN5SwzeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913569; c=relaxed/simple;
	bh=DNvCcHyX7sPj2C7SJV8w7x4hYFhROp6KSWlENSBsykQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=exmXuA87NYUDME+D2+9IEsC05/9xEcNoS9cN6bYUgc/7PxTBPFI1wqiXB2ZzhdHWZtuFA2ObeXyfOyM0vlhTpnr3lbmaR/RJhuQ+9eMsAsfSAUlmzlxfv/vaNz1sg62FMUCgi68swGTEORKuUlmVTFIgqS4tY+R/wD+GKaJ2hdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dc4aCsMX; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b79f8f7ea43so1230954266b.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913563; x=1769518363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A/PatGsOkc/gWR4SN5iTW0uIsVTQmqps+7Qt5H3c+lw=;
        b=Dc4aCsMX3rX68isTyXrN3dNmT2TFYB8ohaOh2LSWnwVqhai3ah4XwFteWr792HK6hT
         TtEt85n3iL0XaFfHiqH22F/QZmC+Q98XyOAQWCKo4yNyE8ffMVDg4+SGheZaqAapHwIY
         nJDscf0JIivAQ8tP2h7pgM1pDnrtddxq/Kt7xSRQIAtn3KMRelQoOYoqlon0+zlyesfo
         1v3sWOHsod0TujSLJW3/kXmOjtsYvD27Q/muDGy9ci8zRPbrFD3+pcNdW27rov0YNg8W
         zc0VJFVmvuC0WgefRyOlS5cJNTQ5bx3BokcDzY9JL/y86G/qDfmhbA4SlwXQFPLixAZX
         al8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913563; x=1769518363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A/PatGsOkc/gWR4SN5iTW0uIsVTQmqps+7Qt5H3c+lw=;
        b=mxPzShdJzZiimWV5PTkTJoveH1Y3JIcSKH/sh0zdJ/8zIcn7fENUo00CY2Pzk8dyN3
         zMyM9E5kQAQ4p/wucweviAFxJqsWV9u6qSaJDi0pw8iarSHrZJIsuPT1c8bEC+ycEfcd
         4wFLQHgOkHYGjxOu6FHusp6oYp0SqmO032EOI0twOPg0IB0u3ssXmvIRdjX/N0nvwLyC
         ICwfO2pSehNNXbRhhRI19/xxub3hAQ5+aCv5rhYXz3TaupLOrGaaBFE9anccBMJ9APqj
         xIsoJJTjcXE2QVWhASnYjKTYo6XhGrYkl9bBuALSdgX+KOI5htVaNvazxXgaofLlWyxE
         R9Bw==
X-Forwarded-Encrypted: i=1; AJvYcCW15VSoDmRJA6IyBmIhGvAX4WTAt+6IdbCMzU/RzFcPlMS9zTkJlGsZQuO80B+17PhlFTWilEq/iCS9@vger.kernel.org
X-Gm-Message-State: AOJu0YxfkjtOgFYO2tRUBrutaIbaBAxpJVcX/eKl/CM1TtHO125L+ob9
	0tMi27fosXiWWAkXLyNN5+hliFkfvbaCB5aiis0s094mNe6q8yVMbZzT
X-Gm-Gg: AZuq6aKdVISQ+onz+saPlSBDLmcfzXR5IBaXKBxHQ/sfjAMTvaLd4yzQL5wuM8jdj8K
	gncwM2hSXzfiDLsot0dNBBUyLlKp1Bv7vYRMJuImyWFpW2hfc3egg6jRKzu+ylu9L0yUJjWdpgu
	MSCIg/su99m0jAbpPUD8jSxw3SkVLlWows557Kj0wOImRqEn6DTDNPPd9m7lCJIzN5Sw1OaP87v
	JOsJaF8osUfGLYebwpsgDPpnBf5KWxVjI5W9FRmmGtMm6QRa96ulxgnnUf4+oLW3kwm1alXKHZr
	IgZ/SXwiYR8x8iwE2ZnxvRJRMiaSERW0BtM3ri6ZbHlLc4K205Wh5NIvgDG4HM0qdy608+q5/0j
	7nxlAEvTvYkcw8sqOvcqy+zZwzeRksIlxat31q74u+YseOma6/1UfTbBfVs0hrkZdHbHOaOlKNr
	3klGLhaELJpjG7CG7iMyJwYKEtbKzJxOZ/+yDgEhpi6Yv7Ww==
X-Received: by 2002:a17:907:60ca:b0:b87:d09c:182c with SMTP id a640c23a62f3a-b8800262de1mr164787366b.21.1768913562510;
        Tue, 20 Jan 2026 04:52:42 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:c8c7:2ef6:8ac5:5556])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1420626066b.41.2026.01.20.04.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:52:42 -0800 (PST)
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
Subject: [PATCH 12/12] arm64: dts: renesas: Add initial device tree for RZ/G3L SMARC EVK board
Date: Tue, 20 Jan 2026 12:52:23 +0000
Message-ID: <20260120125232.349708-13-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-257408-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4E30A51019
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.

Added placeholders to avoid compilation error with the common code in
renesas-smarc2.dtsi.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/Makefile          |  2 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   | 41 +++++++++++++++++++
 2 files changed, 43 insertions(+)
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
index 000000000000..988b1f96228f
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -0,0 +1,41 @@
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
+
+&scif0 {
+	status = "okay";
+};
-- 
2.43.0


