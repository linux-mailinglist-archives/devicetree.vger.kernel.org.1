Return-Path: <devicetree+bounces-242052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC29C85B57
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F34F14EFDF5
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AD532AAB8;
	Tue, 25 Nov 2025 15:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fBxfyV9O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD4C329C62
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083210; cv=none; b=PHjx0G+RNXFzEztn7tacutWng5JYEuCc7lDZJskBi4Svld/PFsuPE4X7lUiJsYQMYHq0pzeyAqJQDr6fQQLvTNr4G4C5cZf43Nli48sRLjhPunU0mwnW2IapTb8ME4LspVy7Jf4I6nXTrXW4MsSAs0XnA//EPBrfzUta8/z45sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083210; c=relaxed/simple;
	bh=Dya8gWk1Iw6ZdXZXCrtkfZKnIqtf4ATKm4fowSjNJkE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AWUHjj7IqEZ5Njkzjp6jTDA4xB3/toOmANOC9TBCFDL+SwfG4Yeph0t+WhGQgcLRfPa3242OdQfSl+oF2funZOfEICtts07j+GS8QE5DgLqHery1fZApROnzqjGWjuQFBik9w0d9BPYJtBhJwL/lMFvrad+YqwPMKKWQX1WHzS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fBxfyV9O; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b31507ed8so4770910f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083205; x=1764688005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FAPYdJB5mo/my8gVrUPoVKq7rkRWZ63E+ReOJRHKsbk=;
        b=fBxfyV9O3SCN/ADA63ZSP6Y6SwCInaUT/FBVGIjvDK5kmyUymKiEbp8erfgoAEPmsi
         ETIKZGhfX/UnoUorTPWIU43Z3z8MiCH7VzUL7ddhKWD5mdILPG4A0lbJfSOisq8n/aaB
         p0UCF/OpewdvdXt4KT4BpmUY/m8zSL+u2OfkJ9msT2E2CReqJaYdQaU/kXW7XRYnbvxB
         nsCWtbzAtfVOAbXYDZmFSn4hqPIl94MNbDntGj4Y7Me2qbm25O/Dg89BnGJNFO7FOhdK
         efD4RcOP8jTIfSdJ8ET72s+/hHdS3FsnxMcGqcprF5MJFOZy+D2g6c8hj29aEg+6MGEw
         1opw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083205; x=1764688005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FAPYdJB5mo/my8gVrUPoVKq7rkRWZ63E+ReOJRHKsbk=;
        b=XQ5l6CB461BEBS0/K8F6H55HSfv/DbDGiYYqInQwD7SnUg+4KwmIA/4oRCAuUCV+EK
         siE9pYnScNACusRrilMbDsOrCnpaPilYMLCpaTlSfP3PFzwWmYYde8NZmoAV0YPHqZI5
         A4IItre59dU0ZJ6Q71rLXBLgn3a2ZeAwYv03RoRl0F+yDBeQdwLWim4ANuI0AbNzRhz2
         aY3FYPiG9YIm8IynXNCuA3t86NbGFz9KDk/52WWj3Z35gY3usnnjr2xrKtBDNlJ3g0ls
         OhmmeUiF8X/EO8C+BcDbdcNPN5KyKrIhAw2wvqRBY82NfD2sd9DWzXiwtk9Vitw8NbCm
         f1Fg==
X-Forwarded-Encrypted: i=1; AJvYcCVCKhocrWmfPr9dQEmEdkCWcTT/+SDLea+9FV/5eBt/bTnLl93DN9rTDrwgx+m99XFSmq7WjN8GNVrx@vger.kernel.org
X-Gm-Message-State: AOJu0YzLS7wqeJ7MLiOPnp4guX7H2FS+eNbcdjPflS39/wjir7gf8kh2
	+tSntT44GrZC6oA6WFkbCSN/tzOljZW922vFvDCTPUi5kXCgwMFCVaEjg1fmfQ==
X-Gm-Gg: ASbGncueLefsy8bhUeXvt0B24c2Iu+mTHxYvfe5Uug++v4Z1WftVrz9RiaBvUCTOLn7
	qj8bmJsjTBNfNQjcE6pNcmP+ZSdVoV+KmwoUX7PC7rfmw82DCRumLmRim8XfZX+myNrV4Er0FXt
	CofDJ8MKe7u/X2o9bnYTt8LTa81LIMoGS0WqeNYIFhHknk3N388TibSjcEudq1n6eZLUdm3aqOa
	WK7ogVVBJbsppNZdU/uVsMlOGntZLUfLVxL/5NnIm/cdxNUfIDpj9cZSuMKm/zkf73zGnBywuJL
	E8QFUoXFYQZDvFWtWIMjCxIWYcmjxQc9Qbranar0iVZiV3HDUuPjzJyNoJMV0WYCGZR0u5NynUv
	nmfAJ870M9QzhrhlVIRpHpP2bNL3D+ceBxVWJy1ooOiWHoeNkwVq88GsXvt57zpphGbeL27EQGc
	Vh3YSy33VSTb3P0ot9ncqv6WXLYK+7ZcYQhwvR3ou8mNq0HgAB2aUZs0tq6X19u4KJOsMy4lyHE
	Q==
X-Google-Smtp-Source: AGHT+IH5ofL0Mt8WHMYnvjr07jc/P3mXQiVefrIUm5hzAc0jTSTDp41D+1dPa8OT9fxJWV0LbJR+mQ==
X-Received: by 2002:a05:6000:290e:b0:3e7:45c7:828e with SMTP id ffacd0b85a97d-42e0f3491ccmr3174984f8f.33.1764083205523;
        Tue, 25 Nov 2025 07:06:45 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:45 -0800 (PST)
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
Subject: [PATCH v4 14/16] serial: sh-sci: Add finish_console_write() callback
Date: Tue, 25 Nov 2025 15:06:16 +0000
Message-ID: <20251125150632.299890-15-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
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
index 0cdaed2e1b90..ee26ffc4632c 100644
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


