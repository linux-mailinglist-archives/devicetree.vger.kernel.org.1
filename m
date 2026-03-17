Return-Path: <devicetree+bounces-276861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOw4GeSzuWnJMQIAu9opvQ
	(envelope-from <devicetree+bounces-276861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:04:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6FB2B1FA5
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D842308D3FC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF4137F001;
	Tue, 17 Mar 2026 19:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gF3bSyF9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6EE37474E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777424; cv=none; b=qeZo8NVCpgc2x1rjGoe0dKLLs8s5L4riouUOLYhEu5wHGoo7psxrHVK1wpiv/9deYa11gXpnxiFbFF4I5EpLT/cXeQB8xueZdXUNW7OJbbYaLPdCxgod3dulgqioc2rHIQYrOaH3HSgEhxffbysrUcDhTmbm+p6A/OToIZG8k+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777424; c=relaxed/simple;
	bh=V35ZSROqFHPsxUn0UQZAdtyz2COVANXh3RKNF/nXfG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U183PQu3JyiZQ1DLbfrLyu4/5RcTOi20C8996qVhTkoDGcvkUE0oBfU/6boiRkQiqEQQbFAMmf+GlwWSYNNeHL81AIZQ2JqScweSNYP4te883QjcaRssO6fQlbLa22lULh5TbJFZzIync5AluShCFm5cyfyCNqvU/+FSdmN9tnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gF3bSyF9; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso56201365e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773777421; x=1774382221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfVd05T86E2iD7eB+6k5IuN6fQ/IOoAsLYVMqJWoOpE=;
        b=gF3bSyF9ZZ313FicUU4r0Umwa40oK2kn00pvBT5METnclm79twEomG7q34wlUYTHpW
         Q5qqhN9JeeF59qWjWF0vvCIQQYwUnC47Ds3VD/6UkV4157YNDG2tEEM/SoNt/YehRbFn
         fnP8PsDYr7K81GSaDihkHFTjqt8enfyvEk0R9P3bawE+67xSU5VGuq+S/98WrkmBk7aY
         E0xFT2iwxSLlJ9DK2QMIKiEMP8GPtEeSLlIUanOcAz0Y5Bj1ueBT9hT/4Ku59o6F+qmU
         UViWM0zVJxAy8rr6Y0t9sL6BLj9etc9eQKxHenqWEyTWyzbQVP22NimNymJCrXEYOaBI
         0Sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773777421; x=1774382221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JfVd05T86E2iD7eB+6k5IuN6fQ/IOoAsLYVMqJWoOpE=;
        b=nkIFp7jXLqnTGx8gsl2U2vLjNfgbRfamwu1e/kG0O6ob9QrT62ehHCuDVrluMTWzbg
         sZ28bR3zXR3jHWtcikLVZDzsOb0sY8SLKdiXpM7sCOxfg9u53Itvod6HUehXsaj4fcYC
         RSEvu41DhR0puPP7YuEFkl+U/mOVg0Ob99DuZpCswKqk5LLcPaAvdQOMGKa8cAPpKw16
         lhL+B2cgrLW6o7N1tL/Xyo9njcmraEawuz2BK/C2F/KFwUlYss6LgBNUHQqB7/AmeQp+
         yWAXwV7Tfhpd9zA3oMZlCcjzJJsM4ZdwiXDRwR28Bxg483HdGmzbajTzCeC4io5lsxM+
         p5qw==
X-Forwarded-Encrypted: i=1; AJvYcCXQPRP149Pa73MGkStuuv/HIAkkv1BCNntjf0xDe8Thkjz1hDPdybDzS81qCBl7QRhsRUJZH98TEysh@vger.kernel.org
X-Gm-Message-State: AOJu0YwJtQLciZNwd9Y1rVwvEKxRBfPMlUhqviC07i+/iav4bK8+Obcc
	R/UlTmWPd2v5+lhbLDeSmFb7MHP7CrqOvEg7MrycHf7onYJpsvxDr6Vo
X-Gm-Gg: ATEYQzw1y+fcllNELMGrRoVCeQesTNo1vkN8GEmjHp45xXLNpbYkVVAqDbwsQcvwCuV
	pLkqR6Li0muwDut6ZNHuvM1g6o4BdbYvSdO37plij44OE7Xa6RIdlg07PxCGLOK378WJdAXlRLA
	FYsagSI49jUl5uzvAeMaJ0NNtGdYV1IZEZIBZ+pU/rOJH3V/FEMKDhzsWTU6o2ReQwaqWbZxvI5
	bYNgpSDegUr43HTwkZ2tETGMQKL34t3rFz4T3sW63yaBkkEKQjgdHaNuj4WBhQSP7i6ak6v6XK5
	ac8Z8DXNXysuVVsvHyEgPX9p5D3xugyj3sb+wZA8gTLguar/aQzrCt2om6A0waZkbX481SS8Dbc
	ANWjgxgnNa9d+Pqwq8/sHifY89oT7FfPI89vR4LSVcDpN/ZZ2kpfKlZqguV80KOeY5mg80TFX/P
	fcS9ljcVrdqvmrGTdVyr+Jj9CGQn0morFgtE/mReqHr3wu3TuY
X-Received: by 2002:a05:600c:46cb:b0:485:3ff1:d5c5 with SMTP id 5b1f17b1804b1-486f441fa89mr13955345e9.7.1773777420967;
        Tue, 17 Mar 2026 12:57:00 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e16b:fc56:e220:9aa9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5189221dsm1339217f8f.23.2026.03.17.12.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:57:00 -0700 (PDT)
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
Subject: [PATCH v4 7/9] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Tue, 17 Mar 2026 19:56:36 +0000
Message-ID: <20260317195650.468330-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317195650.468330-1-biju.das.jz@bp.renesas.com>
References: <20260317195650.468330-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276861-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid,2.220.108.0:email,renesas.com:email]
X-Rspamd-Queue-Id: BF6FB2B1FA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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


