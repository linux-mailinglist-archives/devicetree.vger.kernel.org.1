Return-Path: <devicetree+bounces-238621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AC969C5CB95
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 144134F6931
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0AD3164AB;
	Fri, 14 Nov 2025 10:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iW+hYQiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A48231576C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117537; cv=none; b=lkDKzbeJin3VszbSVkiQlxOYluR98hJHfIg7uiSnjd3Rpjlaujb6kpZ7CIfZDZ7mRheM4IvppFW4eTSCCNwknsY6jZBI3b1JdvGpXP1WSZqDtJdTL4E9x2x3qYJ6pCT/xXEiPS4acyCBZumn+rFqP9koODuXK4NbKH6NwV+EoEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117537; c=relaxed/simple;
	bh=kZoNkXgOK5bPCHyxt2VA23mgi202ylSEj8OjJso4u5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kqiRsP83kjAgRvgyK9MAY/rbAJ3XNq4T15A76UmaLKMRgugh1YOnlmr0iNaiItVpMmk4tOPSmkcFgmaqSKJ7oM4oiUMTYJDDQok7A2yzjV7RA156nbN+d8miLUpkgehIkPWMTsIc/eVmJ2PnqLJexJAhuFxrGiCKTRWuR9XKy9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iW+hYQiM; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42b312a089fso1053073f8f.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117532; x=1763722332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f1hrtdOgHB+cZ58s64lvGyaNvO528/Gm1Zm08fZHhY=;
        b=iW+hYQiM0VI29XaBpOdWMOjjdcEz7jbe7ITD1MRjo2et6SSiE5VcApPT11nzxiQujJ
         Gi6GDWPY4NicawZw+SrbzfYJRC2ORwdLDiVSQ4vDwCYJVe/OD4W9MS6kVsvqRSas9kL3
         WcJg07tmQIguelcnNeOfHZYLrPQV3gbyypbCNfRd7GCvHtPk75Dooc3SLKTVTZETHc+s
         g6gOU2CGAvsKY3aJ8FrrhDq2HIXc7TB8ohhnCCrQcTHXGdxaUXI7IoubgrCBKOju0d7+
         S0nZPqpqI86UbAAGO29qnBVHabth7kbjXBZmTIdvtIyn2UNjaKvKP3R55QHd7+e6j6It
         QbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117532; x=1763722332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2f1hrtdOgHB+cZ58s64lvGyaNvO528/Gm1Zm08fZHhY=;
        b=pDfEak/xGWKYBsb62IroJPnvjaGJLHWvC4sbY0GA3hVNAEI0WSNyGg9UedX/ZjWv5y
         szzBAdtOZoFT/AmZC5k3z9EQClyuqYUVKOkdPFeot5FzAQVCmze+Xy9rNmBUyS2V2X9R
         yhWtXGpBi1nKP8WlE+gCrMjVu2RMwmNoZjPNehKiELY/6uXNZqSaZaAKmVcSd7i2/zrA
         5j5H7GqIi4STM+/SP7IHBTf3N6RAUJ4PBamXHpPD3McujXYI+yztS/GHrMfyL45aW9Jy
         LJ6yCCNhCaY8RrJRTgkcr4FClOVJih1Q8nHLc7xt6WW73/0biW8midPkq8ACqEPxoal8
         8Eyw==
X-Forwarded-Encrypted: i=1; AJvYcCVD8TLlFM8p5+KjtDPSIDdnImAqRePLVUqu2DEFPHj7h9Up4HhsRDO1mV9s+/diZiTqkPFL+mTIJosq@vger.kernel.org
X-Gm-Message-State: AOJu0YyKDTXqbys5yJEGY06QTRgBycZFnKqz3/gStfDIEAdP34fsYif0
	YRvHTk3L/GYeU+G1V+7HNqj80NCh0RDtnfHL67HYXjdr9wcqWoDinz/r
X-Gm-Gg: ASbGncsTF21whgRthUXrHhD0prqGMaoH6J79YIWBAk+P5ArMuwsTfLi4lTzrfzm6QLt
	B3aecPafeWxL5JEW36vjmRe2ZH0zALPgAfTnDzBTQAkTq4N1DIjOQACNZOZetWBn57+6lavMMlD
	BOYLHERhBs8E60xt85zPXopcdACZT2yPRJfNXCRRBqxLfCIu+1gbj6xSTeXat4HSsT0rP53FOKC
	hT7vO+08ywLXvdScqRuNXLB8wyiQ7ea6rmtebcwjVtVMDmySgo8vVuBc9jfdzoyqLBjf1J1rnh3
	5fWOMkZDIBMXsPqbSpsDeYyKERMYjMV+8rFkpJ9+3JYU6vk1OjVEIl9+zZWraWYNEYbzbQY/jBz
	JKz9PLPaENoWFLyE+Sa9AM0MmWGfkLy98IoBG/mc0rXyRVGkTYeTi09cJMPKl4F4Li+eqJEuBQ/
	P7swtl5Inhvvs9l8l9GKU3zppLiNipczgC821qfcVEkRYKsUCdGXn0vxVJB5eOnWGsK+C118Swq
	od6w9CfptxP1z7K
X-Google-Smtp-Source: AGHT+IHc+3zQOPHYh27ICavvHRoLPV7fV5gAdj66PKngODYp6s5toJxSvaZhvEzRDtYaUaQmY4XPGQ==
X-Received: by 2002:a05:6000:288e:b0:42b:3b55:8927 with SMTP id ffacd0b85a97d-42b5933919dmr2175294f8f.21.1763117531526;
        Fri, 14 Nov 2025 02:52:11 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:11 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 11/13] serial: sh-sci: Add finish_console_write() callback
Date: Fri, 14 Nov 2025 10:51:20 +0000
Message-ID: <20251114105201.107406-12-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add finish_console_write() callback as RZ/G3E RSCI IP needs special
handling compared to other SoCs.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 1 +
 drivers/tty/serial/sh-sci.c        | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 41a437440dfa..4e6fee828243 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -94,6 +94,7 @@ struct sci_port_ops {
 	void (*shutdown_complete)(struct uart_port *port);
 
 	void (*prepare_console_write)(struct uart_port *port, u32 ctrl);
+	void (*finish_console_write)(struct uart_port *port, u32 ctrl);
 	void (*console_save)(struct uart_port *port);
 	void (*console_restore)(struct uart_port *port);
 	size_t (*suspend_regs_size)(void);
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index c7f8a9b470fe..e269f4f9edd0 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3436,7 +3436,10 @@ static void serial_console_write(struct console *co, const char *s,
 		cpu_relax();
 
 	/* restore the SCSCR */
-	sci_port->ops->write_reg(port, regs->control, ctrl);
+	if (sci_port->ops->finish_console_write)
+		sci_port->ops->finish_console_write(port, ctrl);
+	else
+		sci_port->ops->write_reg(port, regs->control, ctrl);
 
 	if (locked)
 		uart_port_unlock_irqrestore(port, flags);
-- 
2.43.0


