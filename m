Return-Path: <devicetree+bounces-243154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B89C94434
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EEF734E6D9C
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DDF31281E;
	Sat, 29 Nov 2025 16:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y8yzr8WQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE2311964
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434624; cv=none; b=HboGE7LjH+vHkWTjKvYQcpI0dhJC1OLfijuRoySmnI7UzOIQ1+6K7YaCHY911lbYYQDUUQtPQz5c+WB6X8pz3yYLAm3/gxZ47Dt3h+pmxd7/hEBvNrtxg4n65yc9f99IeNxotd5KyqSviDr66LQuiRWG13XpdSOrfl8TdAmH0lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434624; c=relaxed/simple;
	bh=Jq4DzR2nF8JVJPcrTTPtBQgjyDb/tzWzsj/Oq8EmGgM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YXltxcN3TaRSJAlDX5SIPVFM0nufGypY/q2jrti13o2sWQgVX/SvTe/6l8V5EVM9eo2vkC6BiahNvVRpGGsnNH/NBgVGMCZhG/hx4mQ1btHQIpbFW9sQLNvST6fZezvm4V+RaPpj7mb3TK9u5aOlIedMWplNiCXj8Ubf2elgEtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y8yzr8WQ; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so1801463f8f.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434619; x=1765039419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oz8lzshiLfhIr9YyoR0EsychK0gfWivk4iudtcTulQ4=;
        b=Y8yzr8WQadG94WsqFg/LzkrSZc4prqtgrr1VbC1sLN+FxLKNoOPzkGJr0SvRnkW9ZK
         u5LOrAl3vIanRAQqf6FOV+KnK0GIZz2UvAZCxI/2pFSNvBFV0UDYlshhLxAYM9vU5a7p
         ijJpUg7KU8bAWRnQRmWjKymWuIDUNpYpNyTWQv/H1OWfDWVt42JdioyFCy7Zmmb7LNlS
         hLH+uQd3lpT0r6PRa8BnkrldQizK2pGxbK3uKGS8pxgIU2z9s210SL/JcnkiGgKyl/5N
         rXGl5ukTMNrEYqAmxlYRx2GcixvpoCPe6AegrvmVZ22U/0U8psFYkhL2KYCGYRq1Ypz3
         3HWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434619; x=1765039419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oz8lzshiLfhIr9YyoR0EsychK0gfWivk4iudtcTulQ4=;
        b=nh7Fb16wn3sjCyJ1dYD2BTcA5H/NOQbg1LNMkIY6+4gmDLR3eSPqT2WTywtf0Wg9vB
         44i4mratZ/jOps4mOJ11nwtCEAnMqPag3/KM6q/LH+ylRsisbEhDsjJF7oyFGoQBocoL
         5Jjt7xGeaowjRX+sCpNwB3HhKC7W+U0w6+N8+x1UPHNk9USS6fX+I+lz+GF1FelFMzUr
         GsbCyFMSWH396KTrgFH06Fkh75QF2+pEKR9UnuzpoxbNZ69UWOolTUMpW/UggTN6KEuV
         8J8l79owFNX1pG3LXoYVe5wfytFhih2Foessh0bM0VT/Q9lImpfHhN44UbYViozROLT2
         xsHQ==
X-Forwarded-Encrypted: i=1; AJvYcCV31sRQiSkOFVTcenRG4neBNVGmYdl52F6/fx/SCUFy7ZsGfmFS58uwcBbnIjJaRL3D/ckp/CaJKE6j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0/5LuVYy1eS3TiN10GGkqrwelWWLHeaxVLDkExe4jHiqmsO5A
	7VAKxxpzU/FiqidrJPlZpe3diLybLbhctbtk7zWzevgIQvkEdxkdwHSh
X-Gm-Gg: ASbGncuD5U0kwIUn668BoW1hwIkqSgEfQrbY61okC2RyugYfIayHcKJH6AzF58mpsE3
	Y1tCGj7KNfcAzttuWTwLAr1UEhw2PVDTPrfKGferf4eKG7qdI1LCKGPG88nYfRwM5XgyCFNHP2F
	wazmvFMxKCRufCshJLZ5ypv3q7BHjLySgmmcKyJa+eoO8IAwwa63zDTCQVhqyiOZ3WVeq+dtoex
	qk0khlMe8e0ZjSZdb4zXHa5Cs8X7ksOW4tgsrB8JXfRJFFgE43urFCpAiBGTxt9B0V6S1lLxHq8
	BJb8yIrpvxPYpgqDCV4/bCb/2PrhE+1pyoJNuaYTGAF2MUOKhcb1c9gxmzaLFuVP1vcTtLP0awo
	iIS8g2kruD4EXpT+F6p3ZhdnlWYJZBV5RbIMrnK71fv9DzJOKkrrBHwEXFskRMMMmsYNTc24bod
	gyyhb/QfFuvzvzcnsSK7UxMGVmQcexz4VoW4gk8b7JaVu02tpV9N9b4Da/TGUcfHdsQjgRWnLJV
	16tykc9+/HtUH+V
X-Google-Smtp-Source: AGHT+IGTKOF9egXfbF7GwmRO1cVZtZUUc1myX5k9E+wrVuHMQDbsQxPlgOUzpDT+sfnlU/JUM9vBcw==
X-Received: by 2002:a5d:64c5:0:b0:42b:40b5:e683 with SMTP id ffacd0b85a97d-42e0f2046c7mr21255282f8f.23.1764434618558;
        Sat, 29 Nov 2025 08:43:38 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:38 -0800 (PST)
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
Subject: [PATCH v5 15/17] serial: sh-sci: Add finish_console_write() callback
Date: Sat, 29 Nov 2025 16:43:11 +0000
Message-ID: <20251129164325.209213-16-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
References: <20251129164325.209213-1-biju.das.jz@bp.renesas.com>
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
v4->v5:
 * No change.
v3->v4:
 * No change.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 1 +
 drivers/tty/serial/sh-sci.c        | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 976e394ab968..f363a659c46a 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -93,6 +93,7 @@ struct sci_port_ops {
 	void (*shutdown_complete)(struct uart_port *port);
 
 	void (*prepare_console_write)(struct uart_port *port, u32 ctrl);
+	void (*finish_console_write)(struct uart_port *port, u32 ctrl);
 	void (*console_save)(struct uart_port *port);
 	void (*console_restore)(struct uart_port *port);
 	size_t (*suspend_regs_size)(void);
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index e2ba752f9c16..8f3314b258d6 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3431,7 +3431,10 @@ static void serial_console_write(struct console *co, const char *s,
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


