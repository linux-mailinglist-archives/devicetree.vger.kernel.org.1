Return-Path: <devicetree+bounces-243144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F6C9439B
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22ED83A5B12
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1AF3101AA;
	Sat, 29 Nov 2025 16:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m77s565E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674B930F938
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434615; cv=none; b=aGYrM82DjyZ7/L2wSpIYZkZ0Ng4eBoZQ3wo6bkgW/wDwPCMGBPtbWYEs2Z60KQNwVMIPsX/wvskHBJuP+rhv5V2X5NQ3ikbHWIjrDgHDdSXrIRGpvXtde6VPZNdfTp1Wc1X5aJ4u2FaNrRL666ty8Z4wEpJ0pG+gHWOGwl91Q08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434615; c=relaxed/simple;
	bh=Jyr2CHVhr92k//wyRYmvtRWJKSE0xW9i+OMuWE/VQ3E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eqVSgVGqVdOse2q8i8vG3FVhBTKHM+pVOf17xM3p7FSglrwmd1zc7lSIJgQPY7cOirqrss//+UrLlzWw6lrL9MtUEyKKOc957Sxn/9wmQAiXDEem627k7CcwkgS5tHzSNT9rLISWRMGLodDoBTvZ0geS/dCE/rIMKcqE4/3MJu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m77s565E; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so16203135e9.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434611; x=1765039411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1laVFJ5J/2PogvGPArKDBntximPg68iaWIWh3V2PMC8=;
        b=m77s565EkotB4BJCJQBhXEToYm61Mb548kx8KAOur8XI9cBMIFz0ccOG8A1bkMhR3b
         5PEzEqj2s6Jb2whhBZHncBXkrNZVP6HouqllVTw3ziWTV6I+ehlKWkLuGtGFSDF4u+FQ
         nCcAF4sqU9NnrBQMjZQJPmZNnRyhdGtK9jW6D5LigoZ36EvPs4AuAzFlUaSqYdPL9jxB
         Gt2XzZZFUeEl2LGb/enVROVp6NbsebuwUSenRGLc1erbSZ2mokwxZ8jghauzWodB3veR
         JK1puyZ0dCqwlnmHPSd3fqMdxooLvEMgtWZgneZ05Pj/KPGoOa2H8Z84jn4fulKo2PJC
         Ep8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434611; x=1765039411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1laVFJ5J/2PogvGPArKDBntximPg68iaWIWh3V2PMC8=;
        b=QnC/jO8ZIa3blGdGdJudBjknPJPVx+fUzix47p4JzI0WDLoEzSO00hrytGmpZOtCHu
         BsNFYNYzA3T7TP98cm9Ke76ynTJa3na8CozUIv4VT1E6ZWkW98QTEk45wT7UV61/udHA
         SSaAwZiLnGtdTsXf1bpeLk0qi4YzyBeTpPZuHAFRH34aHap4J9DnU1QnpQcIOD1VL5z1
         PZx7plAaKtgrAsj5+iREIlJuOfMDE7ZbvCRO7aP/U3tATObFtdghfafk3Kdj8A0DEmJ2
         1C4QAec+pHve5NiwGrUdfx6mFV8ax9pqRq2WrMsrgJKag3N762qtNIsD6zGi69cv2TWF
         zLsw==
X-Forwarded-Encrypted: i=1; AJvYcCUs7jQ2x1257l59c8jAwVRAOH4ACuN3I6f2HkPDT8WXsoezcPXdUaCEPr/Us+cMh23IZZK4ecKYDGir@vger.kernel.org
X-Gm-Message-State: AOJu0YyGa4hF237tO8pLXcYV1g5hSgPxlpPRb210OYYpu06HXsiaoh3Q
	6DjTD5vG7kEzpYxcmbd6MHvvM/nTCk3bEuQ7MZIEDzdck2Jb26Benjoa
X-Gm-Gg: ASbGnctTrs/zs6G1oB6+oXY4qnF7lFGCP0FgnEXeals2euxR5dwBnT5XOJQy03jBgOR
	YR7EraSk+57GfKkvU73DlVbW1fy5867Os9Zf63U5IQ7ZWU1vXnyWEgW+3bepEp7Oc7dPhn6CLZZ
	M4wYVkZJ3tFrPKZjULMjSvAruEHIgubZpAEax0TjDtntIRQ7SJyeBmudkq+jgQiP+TmuUrY2zk/
	Jy/UU36hX9G5eNNQ74sgOiHWSqFs7EI9fHd5NnHnPg5si5xez0SgyEqyOrF2z4apOjdSB51bQb5
	Ru48unaEFe6F/TpJLuE0Uh4fT4JRjqTmrJGA2Z8KrZc83IzqCTnZ0kPx1uvgfoJWcyhtTkBolJl
	hJe1b5I7BRQt9hMgqYpniLqMSThULVSS4xYL2Bg7X+9JmeTnFN1t5DWxubjfudr8jhUYYrsjEmm
	CcWSeb5xMaxNKwgD+BD1ksIU0d+0Lz3T7hOcbWrrYD38sshDBRyS6Sd1PEyGw0I7mOkZ0WGsPQC
	OrXeLGN59v7DECw
X-Google-Smtp-Source: AGHT+IFOOPMW+EuE+WoBWDENaBFiI9rdwCgXZ+oiJXrJkuUjq1n/4uLYNcYjwXAPQNmHWmA+/475eQ==
X-Received: by 2002:a05:600c:c8c:b0:477:a9e:859a with SMTP id 5b1f17b1804b1-47904b1ad30mr172572825e9.22.1764434611363;
        Sat, 29 Nov 2025 08:43:31 -0800 (PST)
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
Subject: [PATCH v5 04/17] serial: sh-sci: Drop checking port type for device file{create, remove}
Date: Sat, 29 Nov 2025 16:43:00 +0000
Message-ID: <20251129164325.209213-5-biju.das.jz@bp.renesas.com>
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

Ports that support FIFO has fifosize > 1. Replace checking the port type
with fifosize for device file{create, remove}.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * Dropped checking port type for device file{create, remove} and instead
   started checking the fifosize.
 * Dropped sci_is_fifo_type() helper.
 * Updated commit header and description.
v4:
 * New patch.
---
 drivers/tty/serial/sh-sci.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 28d665a9861a..ff5459c449fb 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3549,16 +3549,14 @@ static struct uart_driver sci_uart_driver = {
 static void sci_remove(struct platform_device *dev)
 {
 	struct sci_port *s = platform_get_drvdata(dev);
-	unsigned int type = s->type;	/* uart_remove_... clears it */
 
 	sci_ports_in_use &= ~BIT(s->port.line);
 	uart_remove_one_port(&sci_uart_driver, &s->port);
 
-	if (s->port.fifosize > 1)
+	if (s->port.fifosize > 1) {
 		device_remove_file(&dev->dev, &dev_attr_rx_fifo_trigger);
-	if (type == PORT_SCIFA || type == PORT_SCIFB || type == PORT_HSCIF ||
-	    type == SCI_PORT_RSCI)
 		device_remove_file(&dev->dev, &dev_attr_rx_fifo_timeout);
+	}
 }
 
 static const struct sci_of_data of_sci_scif_sh2 = {
@@ -3917,15 +3915,10 @@ static int sci_probe(struct platform_device *dev)
 		ret = device_create_file(&dev->dev, &dev_attr_rx_fifo_trigger);
 		if (ret)
 			return ret;
-	}
-	if (sp->type == PORT_SCIFA || sp->type == PORT_SCIFB ||
-	    sp->type == PORT_HSCIF || sp->type == SCI_PORT_RSCI) {
+
 		ret = device_create_file(&dev->dev, &dev_attr_rx_fifo_timeout);
 		if (ret) {
-			if (sp->port.fifosize > 1) {
-				device_remove_file(&dev->dev,
-						   &dev_attr_rx_fifo_trigger);
-			}
+			device_remove_file(&dev->dev, &dev_attr_rx_fifo_trigger);
 			return ret;
 		}
 	}
-- 
2.43.0


