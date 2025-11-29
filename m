Return-Path: <devicetree+bounces-243143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A9491C94395
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BC857345FDF
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9933230FF23;
	Sat, 29 Nov 2025 16:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dNsTJgl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A5830F804
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434615; cv=none; b=b0v9zmPmE1xZ2roSYpHylXbA6As5YVK1mKu+ByOc0bw/MsEqCxFFR4Av9UZ4pha9r3Si9A8b6mZLRLKj9DBu92AsnlL+h6Dr85YC6BOXnJxFDtLzgHwRG+WfpEndJZM2U/aejAT9+0Zy5/G4PCEpZEhoT37ewl5IS94XcuWLeTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434615; c=relaxed/simple;
	bh=7Gt1YgAJEEGKJpT8m2zJjrNGSESqnzyY5pcLamcAVl8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fGZsaHkv8ho0D+X76YhnBoWQ8u0O3fw0t/KkNI8Oon/B7qZ0l7ViLaO2vbzOjGa9rG1FRUrD/0QGo6fmLxpOJBT6N23nq9d3SXy9l4C2bkwgYCLtZShykSUMNY/m3pSqom8BtVJWFjpsfYaRuC2aN/7gOpSdGEA2J7VXac0fxqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dNsTJgl2; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2d44c727so58316f8f.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434611; x=1765039411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C0GL9llKMJnY7Y99yoS1OtzGt53dvO/rcRpUYrh4ZOU=;
        b=dNsTJgl2gQcLyP2NMhqyEPOUB4/8Xj0OPLHMzeig5M9x6xzHFagHM/P7e5EIVeaWfs
         uQr6KaYSNdshiTGSeccOxTPGer8jc3IUbJly6UIKNE9DY7NwxYNQS1whXBHQjtYmFxN/
         FtTxrlLPUs0XI5XymM5ZoQqtC99I6kYKRV5opb3vS2rHOKGd+ADbLvT7q1FX2VaL2Ndw
         9ar+0IIZt0whfz/+Mr0SMV6QlvqIT7+0ZPUYWR4xiYrKv/eyDE950GWDxu9jwc2OGeRn
         kKo2iKY2SIhngtQB2MFGURlbBHxdas5EZJvMPnPrwqbYEP96CflgtfBhsTfMiBBYcKMs
         1SJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434611; x=1765039411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C0GL9llKMJnY7Y99yoS1OtzGt53dvO/rcRpUYrh4ZOU=;
        b=ttNHBNn8sTE4HkR8wy1NnSFzK/vnQ0s+SLgb/RXlr7gTqr7Y1ips49PhRxWCEnUW9s
         sGewAvMIHKn8keHRIBGQKLmZL3pTYs71Ggf6jka9CPWnBBGh7FXp4FE4pYd9ArkkJC2m
         Z7rndOnNrU/PnS2QsmM27CiXGXycjTgczdasU+iGhFQVk/VBrV6uP4FoMiQvc4CLZowD
         Xf+CTIINnpfeNa6J8rWgR5jLu2m+zYQViXXWLEouwhfsZsyfy3EzCWzqvBxyJ4ag0UUn
         3YYaOnfZdFZFk2Vgrf3pMqQbIm2h85YXqmaw3AN0IqvJKZ4pcsTwx1bI8JTLunhcRK1A
         M0lg==
X-Forwarded-Encrypted: i=1; AJvYcCVHMyJBiGeW87h16SK+o9QmYBq940g7BFnaQMDf5TADyY+Y5BRxsSYd7PayBlcXv2oq333cFdOIs4hY@vger.kernel.org
X-Gm-Message-State: AOJu0YxyiSjXYL9su38twzuHlox7jHyMuHvp0xIEhu4RaUkrHa7wxG5u
	FaEAM7js1b5An0SVVOcTQtRFkJ27V93F4cFuy6esGtwwyWmxFyeCgcrG
X-Gm-Gg: ASbGncvVaQRLYENk+rh+SKOjxhjSeIVAta35g3zIYlbooEHBBp1e/sHk2Uu2Px7r9kd
	zuepdTbFHuCGXElC/1rbh0rIbGdCu/IG70+mAJG7jtvFQz/d5MfPvVOgLH75UYfUJ0RqQzlngLw
	OUNnylz4xnB1g9+PHtcAZHgXhlTZnw/Z1gAK/5yZgqAFCJJdP6qTgt8KG3H2+gp/PgPPJkVw5MZ
	rB/tNvqJFiEHNQSkcg57dHg+oCPamE37KsBzbockIsfTTVRUNULw091Fgv3vtsaKuh2jeCr60e0
	DhH1N1LOJZ7hlAX0ZkU0XhN5gWAmNpNGTtOXZscH26yTQ4JK9V4Lijai4Yz/vRuIQDtodMqnTHs
	xwDTCsddiHXw5e+g9rZyEbGnio5/LZ/fj9t877KXuQa0blXXSv944kxfFfgb8Tbc4N+trZ52cNj
	NOJyxiiedz1N+yPzJ49JkKQWmLGPSxEKYZo84aSkOPQerCBvLVMvr8cFL3ZoCG+RU3RIvVDA3/z
	C4CE3tsc6nWMn+T
X-Google-Smtp-Source: AGHT+IGFqwL4XFsyw/yn7ECVh094qGGx5ZT2W+oo9SwUYcceC9Ev9EXxvf1Vzo7j4HTu73o/KVJ4vw==
X-Received: by 2002:a5d:5d86:0:b0:3ea:80ec:8552 with SMTP id ffacd0b85a97d-42cc1d196b5mr34934825f8f.57.1764434610612;
        Sat, 29 Nov 2025 08:43:30 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:30 -0800 (PST)
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
Subject: [PATCH v5 03/17] serial: rsci: Add set_rtrg() callback
Date: Sat, 29 Nov 2025 16:42:59 +0000
Message-ID: <20251129164325.209213-4-biju.das.jz@bp.renesas.com>
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

The rtrg variable is populated in sci_init_single() for RZ/T2H. Add
set_rtrg() callback for setting the rtrg value.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v5:
 * New patch.
---
 drivers/tty/serial/rsci.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index b3c48dc1e07d..0533a4bb1d03 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -151,6 +151,22 @@ static void rsci_start_rx(struct uart_port *port)
 	rsci_serial_out(port, CCR0, ctrl);
 }
 
+static int rsci_scif_set_rtrg(struct uart_port *port, int rx_trig)
+{
+	u32 fcr = rsci_serial_in(port, FCR);
+
+	if (rx_trig >= port->fifosize)
+		rx_trig = port->fifosize - 1;
+	else if (rx_trig < 1)
+		rx_trig = 0;
+
+	fcr &= ~FCR_RTRG4_0;
+	fcr |= field_prep(FCR_RTRG4_0, rx_trig);
+	rsci_serial_out(port, FCR, fcr);
+
+	return rx_trig;
+}
+
 static void rsci_set_termios(struct uart_port *port, struct ktermios *termios,
 			     const struct ktermios *old)
 {
@@ -454,6 +470,7 @@ static const struct sci_port_ops rsci_port_ops = {
 	.poll_put_char		= rsci_poll_put_char,
 	.prepare_console_write	= rsci_prepare_console_write,
 	.suspend_regs_size	= rsci_suspend_regs_size,
+	.set_rtrg		= rsci_scif_set_rtrg,
 	.shutdown_complete	= rsci_shutdown_complete,
 };
 
-- 
2.43.0


