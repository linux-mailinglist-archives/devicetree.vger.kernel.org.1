Return-Path: <devicetree+bounces-243149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B1BC943CB
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ADA90347496
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24FC1AA7BF;
	Sat, 29 Nov 2025 16:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OK8KQatb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF4430F928
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434620; cv=none; b=AXDFOA9aV/XtLea9P2hfbv+Rzw3zbxj4N7s4erbTq+t8/dDUjPFaBv0PesFhzUDOqqfWphSvrv8eSGw+ied93xL7vdmZljBSAjPKvyMHFagJUUgCC9odVPUHTawI9dztbfG+rAmnrLnuS1LDcaT0qkBsnEofYum9C4yivPQJHOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434620; c=relaxed/simple;
	bh=g7eagy+PpaIq9mY9rUDS/ea1R4Zj9Oy2om8jVH92e30=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rpp8l6nhVR3iDsEEZ1CwMHv1q1EGeu4RA6s1GORC0cZ+HAlrD+60rzLaFvxjASrHXZPYjwMvj5lJPaMBz293cDDbzp6QnBGGLwpEgbhBglP/eVQVEtcfX/uSILGBEsPMs5BENXQnqMjoWvYzx822FfY1yC8RenXZthlm7UyQsO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OK8KQatb; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2e47be25so3686f8f.2
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434615; x=1765039415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wzbFxtV/Yi+durONt0GWWiE+qMxddalAl0BfmYSp3AY=;
        b=OK8KQatbeGEt/8zhEQV/mRllD/jHiLN3cc2M5wHUX/tBOYZJvMOoEgYKen0BHXQJ/O
         lg60MLx6HNC+KSXQw69zjPwoH+QJ49qQJGzznrch+VbXMSRuRD6NeEdIH8gLITQinIMw
         lOCXFzu4Ev9qFIgk2Wh/jIs2SNvVcwcyFBlcTJj+CFycfrh6YHGsdjIbEuV3tkefG0eW
         K7DNglMmmQnGLUrN1iTkQ1cw8eOkqw/4D9ZJGy2iBZ1iF1dh7T0ySCEUdyYkxd5aw/7D
         QCSECKSzC9dLubWOEzwIrDGYNg/O310E86SaeQJq/1A98cqSwrbuezfJC+qVgS9NdO0A
         dGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434615; x=1765039415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wzbFxtV/Yi+durONt0GWWiE+qMxddalAl0BfmYSp3AY=;
        b=OFXp9Jff5p0DxCe2Few1aM8X/QHRYYI68w9cSvCK34ut+xqDWPD2Rd3OVjSi/ZOIbm
         A3AAN3V0RBNlS+WAOEFdztrbeYIL7R/GKKS+Uh1xyRHymyBCCvCjdSePNBpJ9jBAJyAu
         u+OsoSvwbV/6WGP7Ywg4LQsB2YtU32SRwNGHQf/exIDZC5oCoAIxqOP9K9OyVSTSdFzg
         ii5pErx0M9DxPEuWwq37Tmu/3wbjPQJ+krVKX5Bj6aQ3qhzMl3HZdCpFBtmP8W5nEqpe
         UsqBR09JsvX76EITDf/nV+ZKezxoDDRdfzYzNpoKspsHa+1N+MDOMFS2rIR75Z3UK4iz
         mHfA==
X-Forwarded-Encrypted: i=1; AJvYcCXSn7WfWxsi7CimOKsXItKcnfYrywum/xoBBhk2ghJP+qjRI0geYn25bZqu/JshGESMQBejAKdy9bDD@vger.kernel.org
X-Gm-Message-State: AOJu0YxNMLovUXWH5E3w9SENrQjvKnpPnbOkgnqwQfz4EX5QXMJEU3I0
	k0mNRH0FMNPvSFTWRmSbMmigLaI3gBRJQsCYrk2psZt01hrMjT8aTeki
X-Gm-Gg: ASbGncumu8X6fX9vCfFZHVw86EEG4DM32ZPycEv8uDyAeBQ7pIyRed8Y97lC07/PmIO
	NHLbhNeZ6OTavrjj9dlYssKkXGTmWuxUIupZtYRpzgNWu+d0JZ+AVWvU8mLk8Mn0a48TgxoxfYn
	/W2UMPd9YzKnaqaScYke4LF5ra5FewKf63qoeXrXhKfhxT04xLcYFVxULxLYflVDQUem47RlhKa
	nWDPWv96ysGrtuttY7kY61cpOsbYktnA3BhrwcG1d2YzC515X4f+94fYvhxzsqsmwlpP6lYxdlj
	CqXGCTz7Wik5A4gU+2fLUijAa7e3WLFqMe4ajzC4ewewHhDmolmVPsfXTIa7x6p6uZo3WUFGkNC
	pDM2Jdpq5ykwjVqEQdUmbEVKpQJkvFu0aforCSXmu/qdRkRpUXpoTwdJlcBzLsJPrKkWS5xZtP5
	WnSf/YrJdA6IETlym95U9e4WDHEwRyd6bWqv3ZemWOHH9URJKdQKZd/jCiOuzxGHy4dRC8ziJtC
	7V9plAPBgoTheD3
X-Google-Smtp-Source: AGHT+IF6pzZC8Gkj9csAykb8avHHf17SJMVDRgNZQphKqTS9b+/Tvp2qaiZkWVBITrdWpS+t4PJB9Q==
X-Received: by 2002:a05:6000:430d:b0:42b:36f4:cd24 with SMTP id ffacd0b85a97d-42e0f204b52mr22082263f8f.24.1764434615165;
        Sat, 29 Nov 2025 08:43:35 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:34 -0800 (PST)
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
Subject: [PATCH v5 10/17] serial: sh-sci: Add sci_is_rsci_type()
Date: Sat, 29 Nov 2025 16:43:06 +0000
Message-ID: <20251129164325.209213-11-biju.das.jz@bp.renesas.com>
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

Add sci_is_rsci_type() for RSCI port type. This will simplify the code
when the support added for RSCI_PORT_SCIF32 private PORT type.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
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
index 704f175b14e4..b7fef518a2b8 100644
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


