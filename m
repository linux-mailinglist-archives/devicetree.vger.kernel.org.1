Return-Path: <devicetree+bounces-277773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WH87JInxu2nkqQIAu9opvQ
	(envelope-from <devicetree+bounces-277773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 088632CB671
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:52:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 835633034CA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709A33D5240;
	Thu, 19 Mar 2026 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y5KXFCM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7B3D4134
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924717; cv=none; b=kgoCiQro7S0YkPSvbgzlDs6QLJLAOOdyUxtTLgrdxQ9+u23nEcZn64FluiXxjnpozYr11PPsAxZFS4HG0sQgAUQAhSx8T7yibApqgW4SGFEFxYXXV2KEn3sEpVmbK+KvSMFIRWFxX24ri4Jmb8EsIN6oyxnoauv+GZUYjZryfeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924717; c=relaxed/simple;
	bh=LevxXURpPzJOaITa7BGvTKgfq4o6eNnyFtOmf05Mt34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WoADXmo/RRMV5drklFStB3ajHLII6quXYRIy7e5cd5m3IMOuR7XfvWy0Hn4q1IhVoJMqhXKEE6g/ege6BuqHU/7bkFxOJ57sb9ZLjQfucodTppznW+Rc+jfEwD68xbl+j+9X9DJfjxCjiXGxctqeETX9FYWh9sKOtS/LiN5V8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y5KXFCM+; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-485345e1013so14528175e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773924713; x=1774529513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hJKg0slM50LN5uE09f/0IawUr3dynYwf/JiHcuulwAI=;
        b=Y5KXFCM+llHw5aB3Z9LC39Emre1D1Pjd1kkE4RqjglUTVfRUEMqC+C3WTSh8rSB7Xo
         o6v3KLZ8S3oIiu2UQSRUK3osVzE9sb8NtoSj54b3TxitsOEttyIzNTgJSL+Wm1fVH+g/
         vCK3M8KCQbq0XKfvHO8cSpzfw0gdes+DTaoO+V3zV01AhksstPfIuVK2OacRDmSktrRr
         HVFAa1TVrLlpOWsfNiTzihgiIMh4I77eLAKN5GZishYwgI4W06f2h+wYF0QlP0LPNXi/
         z7b9K0l10+gj/9pF64uI2c9DyYeHGHvHP9sPqm6CU0QLOq4O3dhBK2bKNthZdV9DtuZP
         xRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773924713; x=1774529513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hJKg0slM50LN5uE09f/0IawUr3dynYwf/JiHcuulwAI=;
        b=KfqynzwkdO/D6r6SYJQ37z9bVrqduzb5EqqH7DYbdgLifFpYlmasTkpOpEJpKLQqkQ
         eSqUq8jvV/7DJpE6Vf0Tkd0O1IBF36PcWvX6ZLH6e+t1nzOn3VH12gECPvAM5sIY9NRn
         t79KQqArQnL9QGTjDi4hBGnvc52113A4EThtTVZy0j0sF6Ie1cwD1u+hk3aAel6IHFJG
         zJncrjgRxEwe6eLVa6EU4/NYE/9aJDGl/WfLiGx8ls0T8e4/MEXvSL1o1cw8U3S/8flV
         EezgJzNZsbDcdL2wvJHTetLiqfk3qVbJ8sdpljPWkUw0MlUjL8PJlywld7G0sqNRF29m
         P52g==
X-Forwarded-Encrypted: i=1; AJvYcCX/mQA7fdjWQaIMXAiUyI2OUG+5v0JY/xeBnISErxEQyPLmFCjqX/QMxfutxVP/SiPxL9HKJ95FT3nH@vger.kernel.org
X-Gm-Message-State: AOJu0YwSBgWZPKKsWIkD3gd/FjC9wB7gVy3WUau4vDMVisfsR/gIP7PV
	Q3M+0Bbr3JQLU7kvGeDeRQCm+tJzaDjRqgx3oD0t3gDT7DlzzeLEOBiK
X-Gm-Gg: ATEYQzwGFAXjHurhKuu/byQhS9yLgoveEWzOMVFKD0I0vIw9NyjUmkvwEyw3o1YTP/m
	B4N2hR0djRGn95duxbB9yIVEXIdEmEtb6dLfxIevsssV6TfDJK+yGu7KwPaduzFq1j5+4BCIJle
	lkD3mDo0gzFqwSSRoDVS/4TetWUlKVM46dKnYciQfbMiAzjvkYwrnWxQAE/lupNf+S+JxE9tiaX
	Jw6sZb0CZtwGgOu3SVjgDFGG22/BnjzgGsk+mWHd4FjrTinjd8h4dWKbN9iMrdIl6GJb0ODFK7z
	7L1z3Sv1+ovDBmOgfcQLUG1gk3Lo3oFxHWa7CUdpQWeGH+jQpGvJmqUCI3IQsH+TDFg+pg8awLc
	NDeiXkGG07IUuDOaSLTrz+MinQfvL6izCkneGyaL1jmU2cQhX0u3g8riVGdC1C7wbwlPZFXa0oG
	OqELe0nvbpsH7fBoDjQrHHZCIhdDdJ0gXSm3nPaDDREQ==
X-Received: by 2002:a05:600c:5487:b0:486:faa8:9e4 with SMTP id 5b1f17b1804b1-486faa80af7mr37971415e9.12.1773924713232;
        Thu, 19 Mar 2026 05:51:53 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:8326:7b31:bf82:d2d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bc96c6sm72382035e9.5.2026.03.19.05.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:51:52 -0700 (PDT)
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
Subject: [PATCH v6 08/10] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Thu, 19 Mar 2026 12:51:32 +0000
Message-ID: <20260319125143.230377-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
References: <20260319125143.230377-1-biju.das.jz@bp.renesas.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277773-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.957];
	DBL_PROHIBIT(0.00)[2.220.108.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Queue-Id: 088632CB671
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v5->v6:
 * No change
v4->v5:
 * No change
v3->v4:
 * Collected the tag.
v2->v3:
 * No change.
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


