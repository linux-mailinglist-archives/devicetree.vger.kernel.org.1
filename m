Return-Path: <devicetree+bounces-238620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 02242C5CBE3
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:03:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4046E4ECAF1
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA34F3161A2;
	Fri, 14 Nov 2025 10:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLNQASvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17817314D2C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117536; cv=none; b=ZNSbeEnt7HozDBxRCeuW4H8ueuDiJGcZdhHEf2Djmet81PI8p3JwrVKZLYL0FKcjK8MDLXny/IR5LNAsl2OqOWdajaq9VMPvF/Op7BpiKzb7iP8tucqmsH2isDfLQYEVl7Qk6QhgRuK09ZjbQy+FVzAP+OGpGrbvKkkVY3C1TWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117536; c=relaxed/simple;
	bh=mv2mYdOg7LrC0MfHxAiJ/nb0yhCqexkBIc6K7/VaeZY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KRX5XRkO/hVNmAj4/EoNbSaAHBy6PsimmJ2KoM1n9yWZNo9Y8LzlLm3o42GQpnVcieQMs6wJF0b2V2GOyclE7zzULWg1U7JYoqAKdPxE8h9RjPe4zYLEmJMF4lwFQ4QqShxd3Gjj9ocrbBTUu2Y1RogPsZjkvXLdugWoZXqlojI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLNQASvS; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4710022571cso17546745e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117531; x=1763722331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oure4CGk54ZT9fjfLN97GsFO/opoaJIaOfBNUUyjY9o=;
        b=SLNQASvSnDd2uDeeYA+Ny+FWmQVj5sAbRjHv/P+oLVz2KDlCHwFHQmYWTmcHHffTVz
         8O3ssz45zIVLPZavfwFaetJUmYe4mX/V1wTTy/4I9Qx6RC+P0xil2neJ0j+1ciVsMebE
         2edYkzDkqRb/FY7yG5F1A/9nfFi2gleYUhObqncGxpcWdzp9DfscVxWeXcIaj+mUq0J+
         FINJGIkoMS9aIUj1OurPQYHmjN2HO0EAVZ5/ffMRjP0XqfhetFCKdI+DA2c0XuZzB77S
         xJu2AtKCLn/vHS1GpE0uBueGOPzNpybT5gjcuguieEai2UmzpmlOl2A5wALT1DvWDUIB
         TzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117531; x=1763722331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oure4CGk54ZT9fjfLN97GsFO/opoaJIaOfBNUUyjY9o=;
        b=XQCEvC4MDfffuBaSy7sVGrVbERvFAUGOZ2YxgUSYQj/ora7IPxOxsUEM3jrhPB4hw6
         QgrHR4FfE5MxtP/VD8PakVuxKxC1q6usG9Pp+KvN2hvfsJPXxrWOAjEiLd7sCLYWg/cy
         R0jJgG6ty3FRCbSTXuFSUzt3EvOKkhJbYjOwSZ9jij00hEUjjQpHjAsqsTOH4H5lfofP
         7m7VRcuyqYqUKNPE6VF3/pInfv28kZQev7MUFVjbd8DS/w1Gc/luTKp3MyAftp/RN5dp
         C0kIFj6p+jD056oUUNsqvrTaywUPa9bvGLpwE7BOJrre/3VMTg6sBPoq/Pbq8humUJt4
         bsKg==
X-Forwarded-Encrypted: i=1; AJvYcCV7bZBve9xNszl9JhPsvD7vonTr6EguPIR5LvISfxAS2Pfo1rq08p0LIQrDWIsPOm/asmDBKQnIUode@vger.kernel.org
X-Gm-Message-State: AOJu0YzTAzEbiyjxKRssbWflxZ53NgLAigz7q6AsGV80Rm3pBo8JUEqu
	3pWseO7wr90itT1XO11PxR6wGRzqnw6JbQraVnCQPQwoxLhiJ9FXyNmD
X-Gm-Gg: ASbGncvDSwZFEZpS1bFVAjwZvtJkeB4WRF7bbv079SXlX30Hxsis2irETI2ioDMkyj3
	OLOBBLsJjkRDRsfwuEgMi9LHLBb02I/mZP0QTb5JPQODxiNpdgB7Rhpdmkn0rMVUPBLYDcOO54Z
	LO4NaP+s6SUAPqfctC7eXaggWKg87WjsKtjHo5B52vFfRTuwf7Zsmb7czH99K8KY+hM3724rxEj
	tXsFQGmukeSWWbfvc+/EIijCPAgmJOXTuCqAMSAH9i0fTpQhyh92qYGbgb2zdefXZF+m2Z8nBl5
	g59gRSEbXVbzW54Eh5yI8JEvjLa7UmRbTdhyKgVH8jDrKJebiEN0LqXJYzuR1gX6sct17W2Ab/Q
	dELvV/+1+sbW2bKgq76KLdGUJ1cEUbHPxxScu134m9yhZ+tb8nXRj/1qq/vbhumYIpkaqVEKUlW
	kdEiejfpyics7yLa+pKKjfCQlzdT18yKHDWKEGrNEZ2XnDcTwxhKey5H1rlX1IQvWhY70ANAMgb
	c3ZWHtolAhLgoUK
X-Google-Smtp-Source: AGHT+IHyh9+bCTJgLOvK9EK/d8+FstS+PNLykYKfr5zqimCLJC1FA+ELYVlW0o49D5QHxK8wWp+yvA==
X-Received: by 2002:a05:600c:1f86:b0:477:7c7d:d9b2 with SMTP id 5b1f17b1804b1-4778fea17bemr28907635e9.32.1763117530874;
        Fri, 14 Nov 2025 02:52:10 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:10 -0800 (PST)
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
Subject: [PATCH v3 10/13] serial: sh-sci: Make sci_scbrr_calc() public
Date: Fri, 14 Nov 2025 10:51:19 +0000
Message-ID: <20251114105201.107406-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Make the function sci_scbrr_calc() public for code reuse to support RZ/G3E
RSCI IP.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 3 +++
 drivers/tty/serial/sh-sci.c        | 6 +++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 6c849757119b..41a437440dfa 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -170,6 +170,9 @@ void sci_port_enable(struct sci_port *sci_port);
 int sci_startup(struct uart_port *port);
 void sci_shutdown(struct uart_port *port);
 
+int sci_scbrr_calc(struct sci_port *s, unsigned int bps, unsigned int *brr,
+		   unsigned int *srr, unsigned int *cks);
+
 #define min_sr(_port)		ffs((_port)->sampling_rate_mask)
 #define max_sr(_port)		fls((_port)->sampling_rate_mask)
 
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 3b03d3d3f2c7..c7f8a9b470fe 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -2573,9 +2573,8 @@ static int sci_brg_calc(struct sci_port *s, unsigned int bps,
 }
 
 /* calculate sample rate, BRR, and clock select */
-static int sci_scbrr_calc(struct sci_port *s, unsigned int bps,
-		   unsigned int *brr, unsigned int *srr,
-		   unsigned int *cks)
+int sci_scbrr_calc(struct sci_port *s, unsigned int bps, unsigned int *brr,
+		   unsigned int *srr, unsigned int *cks)
 {
 	unsigned long freq = s->clk_rates[SCI_FCK];
 	unsigned int sr, br, prediv, scrate, c;
@@ -2639,6 +2638,7 @@ static int sci_scbrr_calc(struct sci_port *s, unsigned int bps,
 		min_err, *brr, *srr + 1, *cks);
 	return min_err;
 }
+EXPORT_SYMBOL_NS_GPL(sci_scbrr_calc, "SH_SCI");
 
 static void sci_reset(struct uart_port *port)
 {
-- 
2.43.0


