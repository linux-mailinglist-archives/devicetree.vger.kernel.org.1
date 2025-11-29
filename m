Return-Path: <devicetree+bounces-243145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D9C943F5
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 660284E5A6E
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6C0310652;
	Sat, 29 Nov 2025 16:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rf6pxYcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E630F95B
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434617; cv=none; b=eefSV2Bkj/HbWQD6zG4J3eiL4HMz1T/izyCCxfOjCUteVNzjrYwmGvZd1llx3g8p0XtZmgh2/EROStG2uNgho8+2Zvq4n2ByQ/qWxGzVnpIjP+kYF1n+K0nlg0X+GB307aCWBDqGF9W3OnxXPd63akXhXiJyDkGyRSESlqsd8M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434617; c=relaxed/simple;
	bh=JeGL3ElzjhFDe5gkRo0pGSJ9Zmn7qOBrKpWwqsVnGOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kh2o+u7GgPQS8f+N+6mKvebAIxl28qJUr3IeY/ZK1C/yIG3O14ds9O/FPmsdd/NGn4LXe1LaE/UQ6X6UMnjEFrj7GqK0gciOFK8P2IgKdTZ+cozYlphQTLJ8SkFflqEtOC2fBhW829EvVh5T4PjZMAMnPz61XrQOTDefOr9+7IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rf6pxYcB; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47790b080e4so12522195e9.3
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434612; x=1765039412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/i48prZesR9jVGUqmsTO5g48NzR6nsuZnqBSo+p3l0=;
        b=Rf6pxYcBswQmmNP96A8fqQxB2W47HX6VdfT8SCyY07E1kdbf+mXzr2ii93TfRoPvGF
         6sXmuW1bFKWiPp83idWq6zu3kgERzegLfrFNp/KLjg3w+JttrQsrek78ZP/8YqvmSd90
         0izN1DqgrH84reAYh4xSqXzsk8xqF3L9yxxLuNsJlMaqrHqrU/iJkwaQv2jv6XPE6d2B
         yGSZ+2P/x4x2F7+HstsnNsoo0WoLooB/NXtI9xVl/1+p2PrME13ZPf/qhOpf23riIOMQ
         32NMfE1binuqcUXkgKbbsogevODSr0lKCzs+/yS65c+IABWk0IiDNnGWKGq7ClP4iF1z
         BAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434612; x=1765039412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/i48prZesR9jVGUqmsTO5g48NzR6nsuZnqBSo+p3l0=;
        b=KbWer/eDh569DupGcbow6rtwRUcxZk8QQiDZnx5s4fl99iA62N1Ir2ja34JU3L65WQ
         HkAm/traxWj1hnY1kptp3S7oQwfcf+Y4rH7CQtod859obUfrrJaofHy/4MAnh7Wfr5+n
         Uex2gEaSf0He31aXGF+JfkjD7PnbqzFPIRtaS0iglBT9VbbU7u+4w1etpvJmfCibHZId
         TFNX9OspDC687AFWX+SpEDmXpvAzwZ+J8ED9uhGgyrRUxPmr+VT1sS7aD5c1lVjFIRZ6
         ljo4+q4euAPoreKVxfJt6iDZXvwEVMB0JrBai3jEhKnnJEQgoyhIdJ8QXIEYHfTzpXBn
         wbXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwjhlnxrAykQEFbf+4sVcA/zCaV+/XBEKWTb2sispULC9IAzIdI9NaYnE0OuVjqSxKQyDO6OWC8W1a@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2fsxe42kzSmSBBvsx/Jr0hOLOVDyxXcFFENVatoIKEhjAWNHQ
	U4UQbPEzJnXFYBUA9Ac519KuJvfh6BZ+yhnZLheBNVuZjS5wEwyX6Q0I
X-Gm-Gg: ASbGnctBQK0EEiL8/hJlAgLnT9JxBq6TuRiOvqRz2Ho59Xj3rf4aY9b7VMvwq1ODGBj
	giJZjJmk7LCm/6PqyYnfIQF8Lv4s1nayrfctCKVnHsQVJSk4CXDfBG0DgB5WIYJpeYN1wdbUssg
	e/GBugcPscM28yEUGKSpic/qh4WHkJVegcRdiwyGhOrXigayMDfemPGFFTcGOMd2225srWGuQTu
	oyroo9gqwPmeyulP/9L+SJeBOQcPmPMDP+dfxaNwqtPtzVilKUDey2SIGYNVwupxahC8qUekaqz
	T7xrtO5mvi9gpzzmEA73N9lJKpT/RejyitZ+8O7Nhp4kvxHfKRu45w4fZ11dT60mMKaO3OPhqTE
	EoL9zcjQm8h6M6XszLu8FWIhwvyiUfU3pL18tXd6FIlxQrVeFVsJI16iSDDx5Y1cmCQIVBSH5f/
	+rapG4ZMRSzHoi5Ug4FqI/ZbkY4va6Z58fsPdZN7Zq0Uf0LdibGfQmcchlOB0CqUJPWEBY14GRc
	JRbUZgLb4DRTSN1
X-Google-Smtp-Source: AGHT+IGxj7ba1E5miOzJbglHbxcrQkMvdt74dqab851RnPSR9g9DUqPe7xC8ewgDMOgqKUhpJj/iqQ==
X-Received: by 2002:a05:6000:2c0b:b0:429:d391:642e with SMTP id ffacd0b85a97d-42cc1cf461emr31964337f8f.30.1764434612125;
        Sat, 29 Nov 2025 08:43:32 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:31 -0800 (PST)
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
Subject: [PATCH v5 05/17] serial: rsci: Drop rsci_clear_SCxSR()
Date: Sat, 29 Nov 2025 16:43:01 +0000
Message-ID: <20251129164325.209213-6-biju.das.jz@bp.renesas.com>
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

Drop rsci_clear_SCxSR by reusing rsci_clear_CFC() as the contents of
both functions are the same.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * Collected tag
 * Updated commit header and description
 * Dropped rsci_clear_SCxSR() instead of rsci_clear_CFC() as it clears the
   CFCLR register.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/rsci.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 0533a4bb1d03..158173077c2f 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -137,10 +137,6 @@ static void rsci_clear_DRxC(struct uart_port *port)
 	rsci_serial_out(port, FFCLR, FFCLR_DRC);
 }
 
-static void rsci_clear_SCxSR(struct uart_port *port, unsigned int mask)
-{
-	rsci_serial_out(port, CFCLR, mask);
-}
 
 static void rsci_start_rx(struct uart_port *port)
 {
@@ -391,7 +387,7 @@ static void rsci_poll_put_char(struct uart_port *port, unsigned char c)
 	}
 	rsci_serial_out(port, TDR, c);
 done:
-	rsci_clear_SCxSR(port, CFCLR_TDREC);
+	rsci_clear_CFC(port, CFCLR_TDREC);
 }
 
 static void rsci_prepare_console_write(struct uart_port *port, u32 ctrl)
@@ -464,7 +460,7 @@ static const struct uart_ops rsci_uart_ops = {
 static const struct sci_port_ops rsci_port_ops = {
 	.read_reg		= rsci_serial_in,
 	.write_reg		= rsci_serial_out,
-	.clear_SCxSR		= rsci_clear_SCxSR,
+	.clear_SCxSR		= rsci_clear_CFC,
 	.transmit_chars		= rsci_transmit_chars,
 	.receive_chars		= rsci_receive_chars,
 	.poll_put_char		= rsci_poll_put_char,
-- 
2.43.0


