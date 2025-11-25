Return-Path: <devicetree+bounces-242048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB2C85B33
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5B5264EF2F6
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636AE329C57;
	Tue, 25 Nov 2025 15:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NyiXADg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A334D328B66
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083207; cv=none; b=PvCvXhgbq9VaWKzwqQEWio5YAFi1i/wTYeF1wXBYPHNHhfHwzTzAMkcpWe2k4WZlvTfobHZDsM7+ZLgU2m3ZIyzm4WDJcKlZssK9gm6ZJriR4ThOqnkuBotg6mcbhscf6IrvjhQ8H2wCPbPnhy48+RIhsrt+07ztE1J99Rc2iOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083207; c=relaxed/simple;
	bh=RqWNr+J2yXgOsuO0923Xd+N0rvDeRRxq1yU1YzPrTew=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmdEUIBsoXu/jqVbjcI3sGCWtvT2Ke8YEXog/AqyqbwAhOLXlJ6GpFPeCGL3MmsCm7XSHXS3oiyroHsyr4FyGEkqflZkEPiaJOPeE5jw1eYbCI9cVCcQ566Rgpffa7wTEdHa+qfAduZqavmnY5L9j/guXX1uu+c+XiMZCIhMz5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NyiXADg1; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so3190195f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083202; x=1764688002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6jX3LIbgY2Qs2rnCAEJyiR5LJ9WWfAcTghJovwqWhk0=;
        b=NyiXADg1wq59/Lan29YX1N8/NiYv3ArDTmDW/KlGMkWdJ823QpatOmkCrifAUpZUNv
         RrLjXJeWRiQAQRmvN9dbkE3jJTuqp8IxxmGQXgaDRxEodApiUNfwCKF0jHtPI4X5kMWG
         ejTG9/Ufl6zNYw4LluBWjmj86nJaQvqXoWszyJmMQmpEK9P77n5CHazyO0OBAUspGdlX
         1SdwmXcxybU5hBMjS96XhSXHWiqqHfuuTsMGHVGYrXOpbNkJ8rFzbS38hjco7GhY3tfs
         W85keXXDRKB2EGTZa3ulvg99GnZOwI8UkkgIYP38SIibhracFA7eNaYWLueRLVEMR6CK
         +Euw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083202; x=1764688002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6jX3LIbgY2Qs2rnCAEJyiR5LJ9WWfAcTghJovwqWhk0=;
        b=JVXjVnmoF2uf1dAvrTFDWh8mGtVLdDJr9CKTYJnyjjuZ+gz89vRc4a/l9IwtY0ZUCh
         IW4iLBbE3k9bKoFeF+pO3t70M0uea13XBJ8gvwT0Fz2xn5T6LelOn7tyHJF0Gx6VG/y2
         X4eRcWfWy3VxDtuTyriKMxpwDEVagNtZzlukEv1eudzzpO0WyeMbhyFseQzTbJCDr2h1
         cPZj/2utng3qXuzGkI3a7tpVYFj8ievWN3qOZxFVb3M9NfY5mnr64hAwEuPjON952mRz
         FH0W27rX9tjaxSEFaI57ucFioFm1NW+z6WouhFehlaZgJ7/YIe7Ydo924RqSUhSORi4R
         oVaw==
X-Forwarded-Encrypted: i=1; AJvYcCX6r+zoK5t3hOtEpMaVPZ0C6FH2d8/y6ixBNPpW9zOBiPUnOQFf8Cxr7LaLFex7sS5bVkvuESJY2efy@vger.kernel.org
X-Gm-Message-State: AOJu0YwOm2spfPS03sZyQ6zBgH7w+eKHgjfEfFkFRfSEbB+R+6istQvn
	qUIaB4jhq+e7j4b90eAx2EzfmZAnzd8KZxM1xO1mWsVCu7WeM0rkO63F
X-Gm-Gg: ASbGncuPZIgD+6Xu63kO0MkOBUCjTRN7LzBvMhl3O0/LLj0yiv+NIlbIM78gL3+xb3s
	5SaYyFgZ0ud5V3Q0iPH3r5kxKFRJaiQKgycJHgsLm/JDRwXA2Ypp6yUXF8uj49qJFpqcl91l2dQ
	kixxGykQ/YQVVZAm++ICIymtku9piHTcx1nUwFw6rDeJuJ/dgwBonVwfme4Xvxp+CyHdJNQ56DJ
	yR5aIS+J/jyIFItHK6tv5pyc6fCwqyL/PE0s4IshlNQQR9aUZsVe5KYz5ZIf5qXYmheUkwCTd3U
	vpeUuItA6qBSPwVxmdlByTN2kQwPadTa7VaHUcmyRJiPghJEQ4O041RCe9Tf4e7f6mIFbTgIrLa
	w8JbxYtJvRaDF5jcoqmcySX7zAbaiq77PGmEAvpuMDojwpRKn8xxEM7KRClZxIs9sm0CkWpVB9H
	Dg0HEJlTfZZ+WWmWPzxw7cP8aLrUEpSEIP5qrv+XjmkE0ODDxlHyuZ1i0xaS/7UwqIMZcE+5JPX
	w==
X-Google-Smtp-Source: AGHT+IHJ3f6R4O0T6ProSqd6CgB0eBY01jmedSgsJF/qjxeGwfodfwrWbqyZIRq1uJuQdty6QtAvRg==
X-Received: by 2002:a5d:64c9:0:b0:42b:47da:c313 with SMTP id ffacd0b85a97d-42cc1abdefdmr18028213f8f.3.1764083202442;
        Tue, 25 Nov 2025 07:06:42 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:42 -0800 (PST)
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
Subject: [PATCH v4 09/16] serial: sh-sci: Add sci_is_rsci_type()
Date: Tue, 25 Nov 2025 15:06:11 +0000
Message-ID: <20251125150632.299890-10-biju.das.jz@bp.renesas.com>
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

Add sci_is_rsci_type() for RSCI port type. This will simplify the code
when the support added for RSCI_PORT_SCIF32 private PORT type.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Collected tag.
 * Updated commit description.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index ae76705baba9..914bdb41ccc6 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -1182,6 +1182,11 @@ static int sci_handle_errors(struct uart_port *port)
 	return copied;
 }
 
+static bool sci_is_rsci_type(u8 type)
+{
+	return (type == SCI_PORT_RSCI);
+}
+
 static int sci_handle_fifo_overrun(struct uart_port *port)
 {
 	struct tty_port *tport = &port->state->port;
@@ -1190,7 +1195,7 @@ static int sci_handle_fifo_overrun(struct uart_port *port)
 	int copied = 0;
 	u32 status;
 
-	if (s->type != SCI_PORT_RSCI) {
+	if (!sci_is_rsci_type(s->type)) {
 		reg = sci_getreg(port, s->params->overrun_reg);
 		if (!reg->size)
 			return 0;
@@ -1198,7 +1203,7 @@ static int sci_handle_fifo_overrun(struct uart_port *port)
 
 	status = s->ops->read_reg(port, s->params->overrun_reg);
 	if (status & s->params->overrun_mask) {
-		if (s->type == SCI_PORT_RSCI) {
+		if (sci_is_rsci_type(s->type)) {
 			/*
 			 * All of the CFCLR_*C clearing bits match the corresponding
 			 * CSR_*status bits. So, reuse the overrun mask for clearing.
@@ -2015,7 +2020,7 @@ static irqreturn_t sci_tx_end_interrupt(int irq, void *ptr)
 	unsigned long flags;
 	u32 ctrl;
 
-	if (s->type != PORT_SCI && s->type != SCI_PORT_RSCI)
+	if (s->type != PORT_SCI && !sci_is_rsci_type(s->type))
 		return sci_tx_interrupt(irq, ptr);
 
 	uart_port_lock_irqsave(port, &flags);
@@ -3289,7 +3294,7 @@ static int sci_init_single(struct platform_device *dev,
 	 * The fourth interrupt on SCI and RSCI port is transmit end interrupt, so
 	 * shuffle the interrupts.
 	 */
-	if (p->type == PORT_SCI || p->type == SCI_PORT_RSCI)
+	if (p->type == PORT_SCI || sci_is_rsci_type(p->type))
 		swap(sci_port->irqs[SCIx_BRI_IRQ], sci_port->irqs[SCIx_TEI_IRQ]);
 
 	/* The SCI generates several interrupts. They can be muxed together or
-- 
2.43.0


