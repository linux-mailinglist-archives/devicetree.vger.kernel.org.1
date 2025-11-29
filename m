Return-Path: <devicetree+bounces-243151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA7C9440D
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E8A314E6969
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44277311C1B;
	Sat, 29 Nov 2025 16:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dYI4GNMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB4C310764
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434621; cv=none; b=Lo4gLD/WE0nhJ+KuF7nWfUlHOzl2m6Vz4W5TpOpchubTsqnkfb4XZWdwlTtYPdnVkg1TFs7zB6Qn17G1Xy0XpBRkBc5bO42RV8JQOPEpqs3b+25awg/JaB8H83ut+uvoUxG4t7VmuryU4CxkCaSDTHiIBI7sKip+TXwFdctcVhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434621; c=relaxed/simple;
	bh=XBCrxsQYf937Ejr2N6MWvDWdvNJ4u/5LwtUrX9xN2ns=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m1Gf5SeCbLTs6jK9le97aaYoo43jBmW5jqtRDz7GFkNJw15T5aoqD0hutcHFHkOt9EPc+xc+pPU41BWjaUTatIKGsp0I6Atb04wyyttkbYWXYKJ4QO9JlzOHPHVs2+cunR6Yhc5CBIrjgpJ+plHjHhr5fu2mwybPbh73EFHQfJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dYI4GNMr; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b38693c4dso979270f8f.3
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434616; x=1765039416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDyWAV+ePALrOqExfIXtV1JBjB1ek/toSMQSyUnW1y4=;
        b=dYI4GNMr3A76XDJhbPAt4GOBUnB1ia9zWpmdfMt2kkwn2IeBi1r/nFKCw5pCq1ULTp
         I4DBVYj3zhrn1BfjDyFUahB7qGhKo1mkbsh33CGwLJH3T8Wlg1N8PDg2EOb6P+LeBT/r
         IfkcwU4Pj2NoqtMEjuh3UWr+UU8OkUMYKCSoLdFmInfKiRVxnuDIkcwK4eK+le3He6gh
         Io+4Ck0zSeE3x4e7T456FZUkKHpkdFxDcIXsy5pwrWkr268WZmOFU4jxiLP9YcaXGdnd
         2HvF2o+z3TFITrRBDU9nX7PJeBzwA5QdPWZ3nlFjZbTRvxwsbzxb7/EKfUn3/hCt8PPS
         weEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434616; x=1765039416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wDyWAV+ePALrOqExfIXtV1JBjB1ek/toSMQSyUnW1y4=;
        b=UsJpDiTrstFZxH6h/zZb7ZtIoLlTPxl+PHPkJFAa7ILvEDDD44jj1BJXK4qBMyavTJ
         wyVK8EoyspyTk8XvJOxu1Wh6VNOJQUvZL2abXsR/AKsNVFfEEVBMTiAnBnrkgEBK+EAJ
         MAAkIlYSWB1NG4Dnn+PDBEZW3Z0DH+a05ggS50BiPXfe6oTP14svIQ7M5CVfBQ0GPQyj
         0f/Uj30fhAyRC0PwPITVRhAhEpiGcsGxABoRhl0raeZdvCLgfn0B5v+am+Kb5uAhP1R2
         enMi1j4HZZOxORYfV+ldM4V+D2UqPZj+BTGOjvz7zp+G8SvfP1RgiqXYf5V4+LrjhzMK
         QhSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXY3LwA1UZ6nyLkDzeg58TYFxakm7FfDvYoHfAriCz64JN2L8aII+AcX6T4SobEUA7Znauah+jX0e0g@vger.kernel.org
X-Gm-Message-State: AOJu0Yygwt2N0X9A2HE2+JIttAQeYAozREjKBaCMtDgR9fIpumoD9W6c
	YlwVCPCwLYJ3iuNRpzCOdvlZLKenoRjL+k+qP623/Yr4y5LvQJwTBRtG
X-Gm-Gg: ASbGncv5Goo1sbbzM5ld0NHryMNncjT0YZ9/wtVUngazsvqtv7XDtzku5nt3V/jh6yn
	YhvocGAX3nBULvVYW7G3ufG9Uw0gXe2eLx5b4QeQgxKit8R4KHT0sda+KRKppD7E4S9oliAnLYu
	0k4h6BoBwC5c0VT+TQim+YpEIM7EffG6kNKi7KJS48Oc8hEcJ/9eKVO2SejPuKRPmq9KuOE3qxh
	WaolkcK7wnGjD6HE6xgAdSyWZ2lT+4mTOtyYB3HSmU/YXB/WldsrfO3LMTzj+sHOmpoSDCXiIA4
	zunpuKGjqAqnFsGfL9ea+5QftS/3T/xF1Ml7h3xLeKhLEyjn9yRwWDy1z3Ihd3EfvlfEnW3Wdon
	CF9BZpRisACkZQrAXzGTvWdk7UHPpIUTt2ZRObA7UaxfX95n9SkxbXSEIG73cYJ7OGZEz9ZsjFY
	96lhsuS9799QtZNlxBc9Z/s3QWG5qn/nFuPBhf9OfmSmWJBXTjTiyClTMElrRAckDqbh2pPXNyd
	W2M8YIzyb7kbY6D
X-Google-Smtp-Source: AGHT+IGl+JVajCZzJ02y35VEOUIGeotZl+/jspEr+qj7ieMX6RPsv2bm5PEY87wgkTa5WXNtbjIdxg==
X-Received: by 2002:a5d:5d85:0:b0:42b:324a:b9c8 with SMTP id ffacd0b85a97d-42e0f1e3610mr20339350f8f.3.1764434616034;
        Sat, 29 Nov 2025 08:43:36 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:35 -0800 (PST)
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
Subject: [PATCH v5 11/17] serial: sh-sci: Rename port SCI_PORT_RSCI->RSCI_PORT_SCIF16
Date: Sat, 29 Nov 2025 16:43:07 +0000
Message-ID: <20251129164325.209213-12-biju.das.jz@bp.renesas.com>
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

Rename port SCI_PORT_RSCI->RSCI_PORT_SCIF16 to differentiate it from
RZ/G3E port that has 32-stage FIFO.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v4:
 * New patch.
---
 drivers/tty/serial/rsci.c          | 2 +-
 drivers/tty/serial/sh-sci-common.h | 2 +-
 drivers/tty/serial/sh-sci.c        | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 5a58c783fe8c..7f4cb04daeeb 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -462,7 +462,7 @@ static const struct sci_port_ops rsci_port_ops = {
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
index b7fef518a2b8..624ef41701f2 100644
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
-- 
2.43.0


