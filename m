Return-Path: <devicetree+bounces-242041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1C6C85A88
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B641F3A418F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD20E327C05;
	Tue, 25 Nov 2025 15:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KITUXPaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EA7326D69
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083200; cv=none; b=dIQ2Ikpc4GA4aqMmjp2f8YbIxXJi8MQSPqsjFk5Ga4zwgDK2HxOAwRxZcxsd9ej2u0Hu98/gsZvF/bWZOHVBBK3/RS04GsgT+exlaZm80h+2uzOimtQzySzhTxR/tXTp110a9pqs8oKjSvTXGkfWf0N6cda8we3Z+uGArM/6I/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083200; c=relaxed/simple;
	bh=Nh3Ty6TiX7FCEIz6ikF19spmIxiE8SBKU0CTyBwe/s4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R992hKyXxfPtJ96VZoDRPaZimD3dQlEa2W6V/8K3O0IVlTjAR2Zk1QVUd4CWe4+HXPpb24L7ANJi69y+WjxUPUQdMQDVpa72sENnY+vzWgqENo5xp5Y+tFdfdSApxjUqkoVV4YtkN8XYn9bGLZ6QB0ki3lGhGdX7rn1tx7vbL8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KITUXPaA; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-429c48e05aeso3470050f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083197; x=1764687997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LsvzpDdHuaCCHjJpYBsgV96uU86b6iPp7/i436ekO/M=;
        b=KITUXPaAPaNEjZuoZ9vUCvYuqHolUJJqjZI/47FnxXC+Ecl/tBc/RPSMEzm4eAVHKq
         jSWTfQ6kt8kMYIByk96Fb6b04yJsd3jvOq4aCCJnUMW/t2owUa3ubP4zcZMAtzS6l0pW
         ET9fvxoB6E+Jx4btB/otiTfhm9Q2TLK4gk7x/iZBv+yqXyquH+64H6uicpC8M9j6kYPA
         LmKlPdJXZXfT23ktaUtLtTqmC/Uq0zQg7sC+5XopPU1s4Y8WB9dX0aqeDJTxDzca7Qxj
         SuTAOHNkFx7L/dyxAB4sRx20a+xBE7bN7+o7z8uF5D7vUArfQQTNdcukuycMTq7s8vbE
         1F2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083197; x=1764687997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LsvzpDdHuaCCHjJpYBsgV96uU86b6iPp7/i436ekO/M=;
        b=R1T9XinW8Zb7vcyfwTL1jJFtSuOf2uwjHFYCppgtlZ5ZA9RoAB0rVKqc8G2qdw757a
         ds6a9Sq99SXNVS5me0VSa4f/yTwWQfRCYUF+UWI2SinUcArKccfNmEQBdaPFtYXJ3g87
         ie4mYhUHKeklP0IxSq6t8M5o3dhj2afx3DbeJQ0eC5vegXk55ChskLVria+0v5Y4TUIX
         r1hEDQKv7FZbHhulf1Umo+R2SqkwV14JCt5MX0a1Zoxz+ZnZ+uXHZbsib706zlm7AB5L
         NMyiDgfSthanV7pELbI1okM18NQpps/RxZpbCJPFUiPxewUB93uLNBGjelQNe1v0b4D/
         hOHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq9X3A4ALxGjwwTv2gBmLF8XXRa5H6euNrnQzZkfW22ihjMtKuYUmOJ68cOXm0q3FTz6R6FFt2Xpry@vger.kernel.org
X-Gm-Message-State: AOJu0YydH+Pq49Qwt24dya9ydZy24okVBO6tgsMMEORM2475ZT+A8BUb
	M+1zvedet7JomsQPxrApr788sKkUHaigEjZnCkE2HB9D9+9/U+ezhYjn
X-Gm-Gg: ASbGnct95+YcV1EjcLepokAsqrr2LNuiFmvyr6VEOoFhsY7UaMWuG5Xg5YtT8+4YsIG
	CDSmhFS1eoPt9dF5TAl65mpafwEbyTmSbwb/gqaOuH6/uWXXZniiOTR7I1SLqn30hb0CX57Nl1n
	pWh4HvuJFjXMvw5L9nBMTuUIryRSkrXx3BYXxFAMBMuc6pXX7j4yKxTntRZ+BQAdpYQZUZhkL+1
	CYbiZ8tyXhz8zGgK5jk0pgf9B19tvNqCl0wmzXOszLE/rNpu8UPrURws8R/R8o1P5FQvBZ+ZtnR
	lxq6lQ2wRAxCVn/dsxY9bVg2a19ORqJwWV0XU6fKvt1935tYJlDujoAxPFHUWPekTH9uqGhBXLH
	vdkSivHXlw50D4yuMdc4ij8mC1Lf85r/hQ6c2+y901DO1ZCyV2/AT7ursYZfXQJ2Xlf4JEgADj1
	esMiAYkGbmsIsj10xHC9W73+ZcKTMAGdkZQ20fOv9SGqs2j6JZxgiajn3dFqpqh0/+3AjsIIg6+
	A==
X-Google-Smtp-Source: AGHT+IGQ2lrJjpd5A0Bi98GjwpO8U0bS/285r/RkgU2XPW9IQYDqpZ5dHzIRnpjdKjTjaKMviAxfTA==
X-Received: by 2002:a05:6000:2508:b0:42b:39ee:2855 with SMTP id ffacd0b85a97d-42cba6528a2mr21269154f8f.8.1764083196944;
        Tue, 25 Nov 2025 07:06:36 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:36 -0800 (PST)
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
Subject: [PATCH v4 02/16] serial: sh-sci: Add sci_is_fifo_type()
Date: Tue, 25 Nov 2025 15:06:04 +0000
Message-ID: <20251125150632.299890-3-biju.das.jz@bp.renesas.com>
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

Add sci_is_fifo_type() helper for SCI operates in FIFO mode to
simplify the code in probe() and remove().

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4:
 * New patch.
---
 drivers/tty/serial/sh-sci.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 53edbf1d8963..56d6489b2a7c 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3546,6 +3546,12 @@ static struct uart_driver sci_uart_driver = {
 	.cons		= SCI_CONSOLE,
 };
 
+static bool sci_is_fifo_type(u8 type)
+{
+	return (type == PORT_SCIFA || type == PORT_SCIFB ||
+		type == PORT_HSCIF || type == SCI_PORT_RSCI);
+}
+
 static void sci_remove(struct platform_device *dev)
 {
 	struct sci_port *s = platform_get_drvdata(dev);
@@ -3556,8 +3562,7 @@ static void sci_remove(struct platform_device *dev)
 
 	if (s->port.fifosize > 1)
 		device_remove_file(&dev->dev, &dev_attr_rx_fifo_trigger);
-	if (type == PORT_SCIFA || type == PORT_SCIFB || type == PORT_HSCIF ||
-	    type == SCI_PORT_RSCI)
+	if (sci_is_fifo_type(type))
 		device_remove_file(&dev->dev, &dev_attr_rx_fifo_timeout);
 }
 
@@ -3918,8 +3923,7 @@ static int sci_probe(struct platform_device *dev)
 		if (ret)
 			return ret;
 	}
-	if (sp->type == PORT_SCIFA || sp->type == PORT_SCIFB ||
-	    sp->type == PORT_HSCIF || sp->type == SCI_PORT_RSCI) {
+	if (sci_is_fifo_type(sp->type)) {
 		ret = device_create_file(&dev->dev, &dev_attr_rx_fifo_timeout);
 		if (ret) {
 			if (sp->port.fifosize > 1) {
-- 
2.43.0


