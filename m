Return-Path: <devicetree+bounces-242054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8CDC85B65
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8572F4EBF7C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F7132B9A5;
	Tue, 25 Nov 2025 15:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qnu1bQBz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AD9329C52
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083211; cv=none; b=t1rZwi4ms1ckBzpLi4wWYZbWJs9ja0+9SWDqNtDUmwD3nuE1Fj3i6Jd2GzrGSWIIknkZ/V/SAH9OZxk2FAuzFGl8LArB+LsLOJ34uMp2zE61Yx2O16qzaSt1GHVsL1Yt1ejfuHGCFMT+Zw0V818fkXep09IeL7SNyAVkxx6Lj9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083211; c=relaxed/simple;
	bh=Y9Og79ZAp1LzlNRB/+j1NPNbgm1v4IaiVXeLQZ1UcbA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qMBzAVqmNhfC54a9ExSCRs3bGB+cqfzMyxH95FD9xXoaJGG6E63IpZ1pO7hsotpNpn9rDXnqg7Nyk4fThvYaup4Y7laj+FwAZ+qGvOjPt5Nf0Z2WR/Lta4s02LN5QQhwKcrMMjgZAdBBwXaN+gL7RJ4bvp8UhS7JicAFpDc9ZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qnu1bQBz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b2a0c18caso3501778f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083203; x=1764688003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQBggaWsGLbsTfz97O6p05mhqq7oFm4UAg4lh0dmr5w=;
        b=Qnu1bQBzuBB+12kdzy/dmdvb/C+WXI2l6K30U/NZqR90pITourjJjnQH24cC3Qad96
         nnM4NucDPlRNDpybB5SJ0JxISJA2vSoE0wVRVGtEMbfZxXqnrVfHO6r0mKrCC/1sfKQ/
         GVUITp8fMv1ukAahFzOPFJe/flz/fxyc7lrPabkStc8cJksIEYye+dWTXxAzvkgivvRR
         WfxWDge9fBuZXTTjAMbMYgWA87aNAiToe0G0WocSnLA7BvlQIVAgL1jaZVus3WlgbAV2
         eZrqkjIGlV9FR5tKAWSPu4anugcVDWxFuinAqZEBBmEXRs6ST4F7MBXZbye1IpnVGyg+
         gA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083203; x=1764688003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KQBggaWsGLbsTfz97O6p05mhqq7oFm4UAg4lh0dmr5w=;
        b=hlZhrXaKI8CbdM11bkT03GY2n9VfQy2jI+vLAadospFTeBNk70CfBZ9DU4e8C0uBDt
         sXfreOFVNSneCMtxPgN91/7mqQr7g1Y1kwg0RyJLBZWW5PogplZCKNTudpGzS/inYGFx
         pmU/ZuAa9Iq6iFHbppz0+MDqjYYESei6QoZChiroPw5SOvHU2DCp6jf5n95xqRd911dL
         cSPGTFihQhxGhODKIXhrucx+vlS5iNRu7IHIiKT85AvaTGvJnvFHF0l9J9kHkEfE0G3B
         mNYV5ryIpsv6dkVsCnkqlpeABrguMs6uJGMt0eYOKEdrM9yj+NGspBbf9QryPJhL+icZ
         yN2w==
X-Forwarded-Encrypted: i=1; AJvYcCVFUmplZG+0jguqVtnJ3TqdMgAJ80IX9d6ovqGPHLC3wO9IdU78FEYQacNkPDcALyg2CHbKUk1RSfid@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsjnfm2dW1Q/dSDoo1ZrJUsK/Rb1/llxlR+ECDFkVFXb+vmHkV
	Io7hSrv+Mjt/qku37JWIEvKgCsspewabqedlPP0TlEkqvQvRMGTDw3CF
X-Gm-Gg: ASbGnctqv2oSD3zDHzHv8abbIqIOrOA9UfJ4YzxlLQEPUC8rWRpuEXQmPS1oXewqbCO
	rewAUt+KesV8N+kFhwjG0D9X7tA3oZlNqLoyTRbAdzqN3u5EQC+C97TxWwe6yrFTa+l3lEi6mBk
	eEfdBcKq+93PRDfIKZN7utCfYxe+LDWJcr79dp4UKC5u81Y4CpKuxjeD25mOiw4Y2tJjEHDWJwF
	I3tW8vZsXgxBqSFK0XD0wWhFz6YFBZtC5ozqww8dyK8hno4tU/4oFozI0gBz9rgvYFUkIbmkAuM
	WK2iIw5JNAK+zp/LR+Qf7dd90HHU+yA3U01yU7xxhesr99MLELseFnD4Kfv86cAkVo33INR070o
	vxGl71xVrjluQjbiA5iI7jivf6xLz6nYyBFr6GQ1oXIkOhM7ycfyOYCSY9orBSQwTV/f3qIJ4LM
	o/a46a2et4rcip8rDN81FVqRq7U2WK5jj5uW0Vx56aWSUJVs3yZlzN+jAHYwMppeMtW12eJ+hVJ
	QoHzusBef/3OYLT
X-Google-Smtp-Source: AGHT+IHY3RAScU6Nx94JkJj3C7pct+wKtm7jPjdtRPYHB33Drum3deOmgXGvKEWzPIL7rdg62WgVbw==
X-Received: by 2002:a5d:5d02:0:b0:42b:3339:c7ff with SMTP id ffacd0b85a97d-42cc1d19a16mr17579997f8f.43.1764083203179;
        Tue, 25 Nov 2025 07:06:43 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.42
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
Subject: [PATCH v4 10/16] serial: sh-sci: Rename port SCI_PORT_RSCI->RSCI_PORT_SCIF16
Date: Tue, 25 Nov 2025 15:06:12 +0000
Message-ID: <20251125150632.299890-11-biju.das.jz@bp.renesas.com>
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

Rename port SCI_PORT_RSCI->RSCI_PORT_SCIF16 to differentiate it from
RZ/G3E port that has 32-stage FIFO.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4:
 * New patch.
---
 drivers/tty/serial/rsci.c          |  2 +-
 drivers/tty/serial/sh-sci-common.h |  2 +-
 drivers/tty/serial/sh-sci.c        | 10 +++++-----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 5d43e8cdbc0d..c5d373ee494f 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -445,7 +445,7 @@ static const struct sci_port_ops rsci_port_ops = {
 };
 
 struct sci_of_data of_sci_rsci_data = {
-	.type = SCI_PORT_RSCI,
+	.type = RSCI_PORT_SCIF16,
 	.ops = &rsci_port_ops,
 	.uart_ops = &rsci_uart_ops,
 	.params = &rsci_port_params,
diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index e3c028df14f1..1b9480c7f4cb 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -7,7 +7,7 @@
 
 /* Private port IDs */
 enum SCI_PORT_TYPE {
-	SCI_PORT_RSCI = BIT(7) | 0,
+	RSCI_PORT_SCIF16 = BIT(7) | 0,
 };
 
 enum SCI_CLKS {
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 914bdb41ccc6..08a1898f14ea 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -1184,7 +1184,7 @@ static int sci_handle_errors(struct uart_port *port)
 
 static bool sci_is_rsci_type(u8 type)
 {
-	return (type == SCI_PORT_RSCI);
+	return (type == RSCI_PORT_SCIF16);
 }
 
 static int sci_handle_fifo_overrun(struct uart_port *port)
@@ -3178,7 +3178,7 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 
 	if (sci_port->type == PORT_HSCIF) {
 		clk_names[SCI_SCK] = "hsck";
-	} else if (sci_port->type == SCI_PORT_RSCI) {
+	} else if (sci_port->type == RSCI_PORT_SCIF16) {
 		clk_names[SCI_FCK] = "operation";
 		clk_names[SCI_BRG_INT] = "bus";
 	}
@@ -3190,7 +3190,7 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 		if (IS_ERR(clk))
 			return PTR_ERR(clk);
 
-		if (!clk && sci_port->type == SCI_PORT_RSCI &&
+		if (!clk && sci_port->type == RSCI_PORT_SCIF16 &&
 		    (i == SCI_FCK || i == SCI_BRG_INT))
 			return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
 
@@ -3328,7 +3328,7 @@ static int sci_init_single(struct platform_device *dev,
 		else
 			sci_port->rx_trigger = 8;
 		break;
-	case SCI_PORT_RSCI:
+	case RSCI_PORT_SCIF16:
 		sci_port->rx_trigger = 16;
 		break;
 	default:
@@ -3548,7 +3548,7 @@ static struct uart_driver sci_uart_driver = {
 static bool sci_is_fifo_type(u8 type)
 {
 	return (type == PORT_SCIFA || type == PORT_SCIFB ||
-		type == PORT_HSCIF || type == SCI_PORT_RSCI);
+		type == PORT_HSCIF || type == RSCI_PORT_SCIF16);
 }
 
 static void sci_remove(struct platform_device *dev)
-- 
2.43.0


