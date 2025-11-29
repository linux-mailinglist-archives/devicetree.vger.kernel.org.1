Return-Path: <devicetree+bounces-243152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C31BC94413
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1B8434E356D
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B41F3126A2;
	Sat, 29 Nov 2025 16:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FaGc2Ion"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F39D3112C9
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434622; cv=none; b=TRVqjeXYDpUEqfyLLrFfaCz91JyngpWSdtruzFn20UPlMmbWvQdfEywRN/1KJshYuSv9VdGEnUXUBOFDXXCjCXhD6auxyXwLJGEf9uQazS3ojOzM5uF39kb0U8tmN4K8k3I4B49JCv626V1Luss6URFGy+8VTDX7RJkMAmyhV24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434622; c=relaxed/simple;
	bh=p1WYEv6A1wFU0XW9CE8LVYfeNV+9/VBPGL1bg8wroOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aJc48lcF3WbuXVdleV8b0X7SD7HuZuM7fW1Vo8qsJaemioWyJyl5VZMsaOwoMuqeI3EJVCaRfGvFqMxGarHSmPz/pE9I+99AnHHhgJyrTIyMK17o2jYGoYWnPxhxuIQZ0tSQUI64kt2QEBvCIVkIiZzgoiNq58Gysh9kCxBU81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FaGc2Ion; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477770019e4so22028395e9.3
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434617; x=1765039417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sV/phN61ONyLTDZca1RG2tB5jror9Wjo3bt6PCNvA8w=;
        b=FaGc2IonMgOC3NKAyIFg5urqx4KR7cT1xrVEwhJZwXpEBOKeUKzvA20tx440D/yH4F
         wvTIMyT8B+L5FPTXc13JwBtO2iIL/63tsbP7yKRB9qYE3JpjDezarIWC0py3TgtJToor
         dTED++0iGF9MiTTxIFmtJGPjbIifFaaWs0XKA16ru0WZYYQInKR/mmDUvphz3yVmhCRK
         eScIf+VWMfejWyCAq1Hha82jBr864n1Yzm79vP3wGW4FOacE+g9ibnBasSSCfk0ANqhW
         gYC3CxhnW7Wl6dcLXITCnTpeHnsm/Qv4ThmhJaNkFcc1t0QhefWeFlZC2QXOfYRxFFCC
         Lh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434617; x=1765039417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sV/phN61ONyLTDZca1RG2tB5jror9Wjo3bt6PCNvA8w=;
        b=YgcQsdgFmw9MnhA7Ez3vYzywz5vprysOwLjQSuCOgDy/kBMLffvv+ewp6xOhJ3M+NQ
         0dQmLWarjGpwv99baCs9dF4RvuZPO2Lx0Xo1Nsza87OIfgDv1HGVVtbMg+HIzqGm9NjA
         qu/0KcmBdh2rcmBrZBTLlWKWztAUW23js89JmFeE4epegbqjGvM4wIMJUi+mzam7mz14
         J5NkrYRVM5xtsjYVFB/acKpxKAwUaYl9v0M66e/mM3q93IohJyXC1sSyLZCVfqsez8AN
         8DjYej1skVlUF/dmNps9kDMBo02SJtH0AE1wp0TZNqQgVY6LTEwDjrkboXMVjPcaanz7
         uLnA==
X-Forwarded-Encrypted: i=1; AJvYcCU8S2IcUGLzgbM8MHfZKMu1z6f2StWXt8rVudrvqmsX839H4B2vp6cjdguJC2TbMH3+/+cR/s6riel9@vger.kernel.org
X-Gm-Message-State: AOJu0YzidAs8INTD5eTKIIz9CfiJ3u6auJJWg10pD1sUngGKp+UlCZrf
	Muvf6p3jVVLYYVvf5JB2kCobtXppcaCJjYoKzCX9EM7REA3JSYW05Ejj
X-Gm-Gg: ASbGnctTaaFh/dvVylMznNxl0qWXyHdw5n9GgzmGblRZ37eGW4pIs0I8yXtPhrXjYnF
	h3XgqJnfWrivU1IMxUmdHaQ7tJo10J6Dze212yzXTAE9X2nDZ34loiTDSLUWD1VScU/DTtmLdbO
	9D6W58yD89AJaM5FNnABpUCIZMG7zb3c8mB3KhlRMNB/RCeMFz971AC4FLjeJDwXNNksn0DRHQn
	zfgntZheEGCZnl5X9tWuIcR/oUTw2TYFkkCVC2wLustaTEjzPS7cucxnLb1O/E9bo7LlEowNVDF
	OeJjI0swY+80ZqNjmVoNccdVe/AIO6FxKS/jceow0/Dbmb3X9FDoiyUY3gESYxlg0JjEGy9XpDR
	UbNRyYEgpuouBfpthOZrxXgZXXu20c+n5LlF7OKACKMC4saxmbGVs8mSu6061vjnamYyX1zTXfZ
	Gq2jfIv5bIJDaVi/6YvNSxmirGDTInoPQBRBJPUcuWOm2n9dNR1efaP+9PN8FIOTkBT7fMphqv6
	lYD7KdsFr5O9VWB
X-Google-Smtp-Source: AGHT+IGzNOuP5I+gYgfGj36btSZCyfRIbYTuTX4epxDNVcEZ+n3U8KnYkaRTC3aJ8GzwGl3RatIGvg==
X-Received: by 2002:a05:600c:4e8c:b0:477:8b77:155e with SMTP id 5b1f17b1804b1-47904af05b5mr211140525e9.15.1764434616629;
        Sat, 29 Nov 2025 08:43:36 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:36 -0800 (PST)
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
Subject: [PATCH v5 12/17] serial: sh-sci: Add RSCI_PORT_SCIF32 port ID
Date: Sat, 29 Nov 2025 16:43:08 +0000
Message-ID: <20251129164325.209213-13-biju.das.jz@bp.renesas.com>
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

The RZ/G3E RSCI IP has 32-stage FIFO compared to 16-stage FIFO on RZ/T2H.
Add RSCI_PORT_SCIF32 port ID to differentiate it from RZ/T2H RSCI and
update sci_is_rsci_type() and sci_is_fifo_type()

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
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
 drivers/tty/serial/sh-sci.c        | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

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
index 624ef41701f2..a63370f22574 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -1184,7 +1184,7 @@ static int sci_handle_errors(struct uart_port *port)
 
 static bool sci_is_rsci_type(u8 type)
 {
-	return (type == RSCI_PORT_SCIF16);
+	return (type == RSCI_PORT_SCIF16 || type == RSCI_PORT_SCIF32);
 }
 
 static int sci_handle_fifo_overrun(struct uart_port *port)
-- 
2.43.0


