Return-Path: <devicetree+bounces-242050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B5FC85A94
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 79389351E88
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD5D329E69;
	Tue, 25 Nov 2025 15:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DQWPqBOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D241F329381
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083209; cv=none; b=jVx5w0WZqkErH72YGHmGUfQe/JFBXvaAty38l+WeujG2N9yqQXqim9x9YiwD89Pu8f+gnxPRWT5FubDosWH5o+2oIbu1xI01Agx/Qkgakkxgt1CM62fDleVI9EnRnkCS0gRP7YdtoHV6PWtylhT50yBRG9tnddN2Lv8RZcdvafM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083209; c=relaxed/simple;
	bh=Et690Nyk+pHGvb5l80zTzY2XD8G7Ab7SHaBdICOlCHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b47CTCN78GsEjwVAPvZAt0trjCHaxfz+DtsyF/ywUtEI0E1yIaVN/XELTXIRzLmroctKFNowZKVWYJGgxLbbCXy2hbUhdPAOUz3xqVu90hpgFEq6ZO96HNdG3zUXiGMyaM4wkmq2dwU9eCkC3jbeDK0Jz4RQIa1WqMc3C11rtbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DQWPqBOo; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c82bf86bso3305628f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083204; x=1764688004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uBC2MlE1HUaPDZb990/KasBIbCj5RriVOgSLly0aqY=;
        b=DQWPqBOoJqbCl4InN4YsYk4GG0gcpbFXaVbWrzpY70oq9QWn6AC9I4FcdYmSQ+PHUI
         TVHbi+1DzZVhuSyo1p+fg3ft6Bd3YeTyB2LadK1U/LFnRYIh17RhQbBHujgpRwiEIi1Y
         grzcuPydxVzW/1dsBBSIQbSjmzOMCL8PbTvwbuyrPnC2GRTY4wCJI9XYO8qnn/AlXIG4
         8moDXTCUvyZYGmlboBT1Bi5rTSLqDVw7N4JlZviAGQIPHb1AtLP9NkWkOJdUN9P8m9/4
         eJZzGCS7vhz9IBkMx4/z6dP4X+8PTHs9XpHDiu0HM+dzyZGnp/XsGndA/Brdd523hi1m
         SX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083204; x=1764688004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7uBC2MlE1HUaPDZb990/KasBIbCj5RriVOgSLly0aqY=;
        b=UQgYKFewkmMpFGanrm7zthdq89GXkG65u7OzwHZ9O1FhurlWREDwXNanMVtLD8qg1R
         p4OM6asaxfJPZ/jPfby+iIbX+RQHuvDYZLe3LSOsP+XMGgtGK0dyfMyfqXbqqK8g4gA5
         Q64l4cN93QA3GVK/K9yKctGL4gT9RdUF6dfgLLjHJkPC1/UO/SqDeUORrDbJfJ91B+Cn
         M0S+V5enM3nw1I4Lkqw2P6kRi/YF+7XwzZuFUHdP566NUpbaTMxyXn/3BVkfpzTIt5RA
         OH+AnYaC2H62xGDM62AZZVK53RSL3/5eoF24gkqaVvWdEoIupj10hfYqfayIpsoWmHdn
         xS2g==
X-Forwarded-Encrypted: i=1; AJvYcCXGXr2eipQhfrfuganzgGtrXg+813TVsRRYwKKwNTzBUtBqipU0nDXRL1wPW/2TiLh8434n+dAjXjvV@vger.kernel.org
X-Gm-Message-State: AOJu0YxIfCvEwbDBa8+aBJP3Wmwd3nXcRr3VucUTGEmW75yJthPk1C+W
	E4NYyq5LJTNQ/omCa3nww8I1f0n1x0Z3hVeyI8QiwuELOB3RgSGrlUYv
X-Gm-Gg: ASbGnctDPN4tbzQrMTa7I4Zt4/uNAsXSYJRqUrGKRG75Jmk69tofYJDkrcAAuOwjEoX
	6mSExmKtwEY5qRmP+k96pJf2y90bfvB08OTUorFBDmj62cgqpwZ8bl1sDT8MzjbtEcVdslXEF1T
	+N3Za8EdH4Sdm7xzaYRKElaHUgWDe3S/sVQtiM9WDQA9jaRojEZ2BUDtQ4XuWzgY33Su1O7Yd8X
	403MRnPBRfBPnFNfNur43Zgo227R1x1WpZ1tCOZC6yqkgjwmbYGMjO71y6lfFV1qtdHQgAxOzjv
	O4V4GtIkVKDxCTDJPsnd3dCmnFsEhbVVcJegSqXpNkG39rggSu1Jwe4tXxeqv7yj7xfNMP2Ncut
	MO9JaEGSmZ2SfNF7pezZC9SH5oFKKSL9d3X8N/IDJuQeq5cBpFwRFh5T1CKwkvd8Ve9NnUwWpio
	pRPeVDa9MmFavR3z/gXMqPReOJBGUoiqJVA1YZYbgZgajBhEsqRMp9KZ2oU7qRy7wgKjf4t16Z6
	Qifkwa+6me54LLsTtwH3TY0YAg=
X-Google-Smtp-Source: AGHT+IGhwA2qdHgjK6YzJJeEkagwt4swWh4uBsW/k/KPMyocV9syebEZD5VRePRYGEoDb7M2JT1+hg==
X-Received: by 2002:a05:6000:1866:b0:427:580:998c with SMTP id ffacd0b85a97d-42cc1d0cf60mr16904982f8f.43.1764083203740;
        Tue, 25 Nov 2025 07:06:43 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:43 -0800 (PST)
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
Subject: [PATCH v4 11/16] serial: sh-sci: Add RSCI_PORT_SCIF32 port ID
Date: Tue, 25 Nov 2025 15:06:13 +0000
Message-ID: <20251125150632.299890-12-biju.das.jz@bp.renesas.com>
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

The RZ/G3E RSCI IP has 32-stage FIFO compared to 16-stage FIFO on RZ/T2H.
Add RSCI_PORT_SCIF32 port ID to differentiate it from RZ/T2H RSCI and
update sci_is_rsci_type() and sci_is_fifo_type()

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Dropped enum RSCI_PORT_SCI
 * Replaced the enum RSCI_PORT_SCIF->RSCI_PORT_SCIF32
 * Moved rx_trigger update to later patch.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 1 +
 drivers/tty/serial/sh-sci.c        | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 1b9480c7f4cb..abcd5bcc7c36 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -8,6 +8,7 @@
 /* Private port IDs */
 enum SCI_PORT_TYPE {
 	RSCI_PORT_SCIF16 = BIT(7) | 0,
+	RSCI_PORT_SCIF32 = BIT(7) | 1,
 };
 
 enum SCI_CLKS {
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 08a1898f14ea..9afc3b8aae91 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -1184,7 +1184,7 @@ static int sci_handle_errors(struct uart_port *port)
 
 static bool sci_is_rsci_type(u8 type)
 {
-	return (type == RSCI_PORT_SCIF16);
+	return (type == RSCI_PORT_SCIF16 || type == RSCI_PORT_SCIF32);
 }
 
 static int sci_handle_fifo_overrun(struct uart_port *port)
@@ -3548,7 +3548,8 @@ static struct uart_driver sci_uart_driver = {
 static bool sci_is_fifo_type(u8 type)
 {
 	return (type == PORT_SCIFA || type == PORT_SCIFB ||
-		type == PORT_HSCIF || type == RSCI_PORT_SCIF16);
+		type == PORT_HSCIF || type == RSCI_PORT_SCIF16 ||
+		type == RSCI_PORT_SCIF32);
 }
 
 static void sci_remove(struct platform_device *dev)
-- 
2.43.0


