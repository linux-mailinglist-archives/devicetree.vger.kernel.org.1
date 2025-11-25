Return-Path: <devicetree+bounces-242042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AEC85AB5
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28D613A3C1D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3CC328275;
	Tue, 25 Nov 2025 15:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l90jiu4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FE53271E0
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083202; cv=none; b=VCCOVpYPRfOtwDsin41A7Kb8+0Dmz97WVQd1r/slWl4TQaJVoVTbg9eozzWjCgMc0DxZnRL9QYr3Z1uaO+/XDRjLgII/wxZg6SrYjR6RR+MihTav6I9ly5qTn0JtQPIFycG5eR64i2yaceqI2OPX6jguV6b8INXCo+G03O0CClw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083202; c=relaxed/simple;
	bh=oUVlAnpiKF1Pm6FuP938DKT7/iFOmxYSFR7wJ4R4/u8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AFTiA5rrJM8cBdCqdXlNIPRV9AeGPESNz6ekt8GG766DGA1bRQRVJQQXJi5Fnyd24++rhYdPL0BWb+I55Xj8KJh1KeHyHPVfNiAdzmPUZs+0l8PnkKqD2GOsGMDNLb4iRS4QeP5zAIsg9/NyI7B0mLj/kvwpM7r0TpreY9Wegbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l90jiu4F; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso3501698f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083198; x=1764687998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8Vy4foiqKrCWE5vi4KIrqrTOPxlJurxB7w7FOVWY0s=;
        b=l90jiu4FNpN/K7qsBYqo95Sh0KTXGVQWGsl27Ii9MJ8RdILt8uHMlVMNhw5AYnxw6R
         Zff9QuOpjikATHP9+PwtJ8JcOqkdsCZo3/JBqAu/lN63bhba+V0eS9epLEGAIs6x3sVu
         lf+MqCqmzrv9E+Equ3Mzuv8oSHqr2UltEAFyNBWUlx4wz7JcUbdC+zU2CbfCZWX/ElJV
         kepY5jD/N7rg2iaylgiiE3OMyZJJZgKSmNNHmqyM0zfrS+UtCv8g+d+OIELjvlGin70E
         vSxpf4lahTansycCoC3VH9NtElYlu435n0BWkYwNy62ywsDqWhiJRd3I2IHAhcjqv0Na
         B91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083198; x=1764687998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d8Vy4foiqKrCWE5vi4KIrqrTOPxlJurxB7w7FOVWY0s=;
        b=OPZ5x5VChG+dPKhVqgU3J3yJiitThPyCBswxv7vaHh5Kp9Qhh1Y3zBOgBM+LvIohaW
         UAiERMAe8xMAFN6fiPSZccXTKfYLurZF9YHxJT/59UphL2kCAxn4T4mfyEc7HGXiTX8W
         CIxGu2NYzOPZTjqRGY5Wx1g+zdszwhwelUXMQ2/diH6+iDJeiUM1UNfv/cv/iMnTb+Ii
         T600J6huE1cn5iSz4WY+CZCpr1+f7vlljah3FPOPBMK1nyfwFNd/gUEywo+Ctk0UsDWY
         TAarQRTy9duNJWK3tsOWwFGCGMlxQ95C0PJHYXBlwnfta1uqOTEUfOd0O5tD/ixALnw6
         ad4w==
X-Forwarded-Encrypted: i=1; AJvYcCW8ROjeQ0eq8snxdljsQGQ/UWoJ99DHKidpDWQZ/sLM68ZHhlFhItdaeNJ5xyAE9sd1Sm3yehODKIW4@vger.kernel.org
X-Gm-Message-State: AOJu0YxYH/tJGq3Mt6fPqK1ZGM/XmmC254rQjxiITvN9X/eZy1tWtSBH
	XvuH2ZhCyjMg1YsJT16klM3X4/QJFtuCReHmOQOt1CQDsWGwHx3lL1pJ
X-Gm-Gg: ASbGncuUFpQ82mbnrjj+jmwqtItEq7mI+WpieQpRaWczU7GeCoLVbdiaptVOCtv37OM
	9MWy4e2YlRR82V/kLtj0skPceET00zmBPnA8xhB/CGhgeNWpmGKko90lKcR+M4ttD7x4JFX+E3+
	eVOhzaVKou8quJv0ODEUskE4pCz3C6YIDcZTYggT043EQJOGYs9c+a8P95WaUl4i1TOxdnw3e3q
	g8XL7tH6iLMvblhIwkZtxeR/5E63uAK18oOW2EAYiCJe8972zJZH4X2sPBD67yv9p6/c5MeO/qH
	jjbbs2cVpPkx4AOKIFV0lFO6OZ10HhipLUg7+lEqOp2RzeYZ4KSWcqYTkcFYcfp+Oxg028EjQ2K
	TeSmqnH07a7Rgm1OWw9iCz286dSVBNSA+Wf2uPbhrIbPldGPrpG77a3zy1769B7zbgnDnknbXBs
	v6C/NCiCbmZTtdMBjjyBwo/wGAA2mVpNTuoHSPxzh8IwLam4NHwAin/LwF0DAe413eIL4/vzQyi
	S1xN+dxS3Bre3Dh
X-Google-Smtp-Source: AGHT+IG6ixLkzz2qdg5wshNHg6Bnc3eFDwK8wBvdOmM8fHsmmuCE8HAQERhUmowkosTlJBvT5KBa1A==
X-Received: by 2002:a05:6000:2881:b0:42b:3dfb:645c with SMTP id ffacd0b85a97d-42cc1ac9debmr17211462f8f.12.1764083197726;
        Tue, 25 Nov 2025 07:06:37 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:37 -0800 (PST)
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
Subject: [PATCH v4 03/16] serial: rsci: Drop rsci_clear_SCxSR()
Date: Tue, 25 Nov 2025 15:06:05 +0000
Message-ID: <20251125150632.299890-4-biju.das.jz@bp.renesas.com>
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

Drop rsci_clear_SCxSR by reusing rsci_clear_CFC() as the contents of
both functions are the same.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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
index b3c48dc1e07d..b5afa7b2a4a8 100644
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
@@ -375,7 +371,7 @@ static void rsci_poll_put_char(struct uart_port *port, unsigned char c)
 	}
 	rsci_serial_out(port, TDR, c);
 done:
-	rsci_clear_SCxSR(port, CFCLR_TDREC);
+	rsci_clear_CFC(port, CFCLR_TDREC);
 }
 
 static void rsci_prepare_console_write(struct uart_port *port, u32 ctrl)
@@ -448,7 +444,7 @@ static const struct uart_ops rsci_uart_ops = {
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


