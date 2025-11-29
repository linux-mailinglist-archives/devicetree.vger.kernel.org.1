Return-Path: <devicetree+bounces-243148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BC2C943B6
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 17:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 159553A5EB1
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 16:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5C03112B2;
	Sat, 29 Nov 2025 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XDyg1B5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E64530FF3A
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 16:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764434618; cv=none; b=BoB75AsrcyYA2qSbqjTu23ZSDumeLZdd4O4m01gu95jbOEe1OUcmrN+wNHWfp5oa/BgiWXtUOWtk9FyzicEMlBLAvu8HGW0+I66yXhbbfmjdoO0awYA5Nth6r87SXnya1nN+dFU5nE5lTncLs2K+Z4HqAOqU5XUb9puRzZENl8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764434618; c=relaxed/simple;
	bh=Si3eRxLMBsIUtypstPKo4gg4caXALQjMtjyFcUYFaPc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TH7lNpfd3pgyBL7+V3KkLvKvYDDNY6e+y4X2sF9yTGieddIFtuBPDdJUX6U/kMKNZu0F882KiIIrqkBeXi0gYM/N3yDIwYK3QVI6QaLZxYTkeGhoLa3AFVanTfw7phG4OfQEycxCqn87VxzS8WOYDuSRt46XNV9B5PlI8UODNWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XDyg1B5W; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2e50c233so773f8f.3
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 08:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764434614; x=1765039414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8llTcmCK9a6FD/g9xdGfc5pfkCOk7WP/ST+c7y3cC8=;
        b=XDyg1B5WK3oxrcct80mVABe/Lmbb1VwZzyOlDdErvRQeg/F4R2UCfWWO5cQ9rNVbQv
         9XQRBnYqn6u0/xSO8NSwJBs5z+RTBXt3ZDM7m3wgg+x4+fzJ/4CoPE71u9WmSUXV0LDz
         jed5WUXD+Rqqx7G8MctI/KlgMdDc6P60+CJk5zvj4epWa/pm3ylKMg6rVpE3kxbYIm4d
         qkTFT9Fo8zAkHyOaofO6kMHfqlWgz8ywIONqEOk3NDC8YA6k+D3Mrr2Ae15Au2/sVp/D
         ffI72kdSSLTYm8vsI31jh90UJ+DZY87RhdUSpseZHwROxLfHb+ewaH32KK5B+hTKv9Fx
         P+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764434614; x=1765039414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c8llTcmCK9a6FD/g9xdGfc5pfkCOk7WP/ST+c7y3cC8=;
        b=q+8rIKTndH5tisd9brrvBklUNQiPf8fxNVA3fO6im+KCISHqLWVUvvO8NA1Lcr6kp0
         62F7ZRdLIXDfsg5ikMPDBf7tANunVvZccchfPV3PkOISPafURo+/qrsqGSmb66cLxklr
         4KCMh4F7RggRJ//hqlKQpudkyn7Rz1GYjABGVhD1nk+ZS0B2XRWXooT8ghFvbfdBA4jc
         7ckwy+b+62runHyZeR0Wh+ddMxATEiFqat263/vSSVjKqHihD7n//sHJyBukx1lx7q+F
         m0Eoo5p+kIZDE73iDsCDgEG7NnjN9QcBMJNlFlaTlKzzx0rrIIA+e8fGx6937+QvGvyj
         NwVA==
X-Forwarded-Encrypted: i=1; AJvYcCU1EefNW8m8ApB4TxVd+JrJLeBL7/OdnJDJ9SR478ijPNsWaGuKOrMpVPFvz5w8p7O+6X3AWwD8T6pW@vger.kernel.org
X-Gm-Message-State: AOJu0YzO22bchGsXTDMx4FH1sok5OuvV/5Fm+DkoreXMCN2ahvyYGMfI
	sBf1MkX2PtiLDP3rr+L1D6NYOE08zympwP5MjSGw6CGD/bv1A9XtzE5R
X-Gm-Gg: ASbGnctGKDD6Ed3RpK8ULcwjQy6ygTU9UV6ArHzm5ujLtwrT4eUiF5NqRmOudgshECN
	rQnUNpWlhzD52sJM7sS5WLuImHmHGk/XPkbAZ2lq00HUD6YCIVVC0OuhBRyms5m+smhVLPCBnsm
	RvCyOrcSeD8fSJxYl40pYy70QQFBUJWD0IxuHMuxnmT+yCmXvX05acVwc8IM7Sqo9X2ovQd0yI5
	fRsGWf9Ts1t3JMT2kAvhIm1ekG56MCVpOeIM3rzYFZ7K0tyaTzyyTFoX6bf8oFi6gG1Sgk6ATlZ
	pOS2sn6YBxzQDrEb6+vckGVZK/2CSXEEklpzPXk1rtT4joTUxXSwuKjFgM9B/K8wP721tTsb5NU
	QGw9CxXEPmjFjUH0RCEIydz+pg9RPDjI21naORHkXxzhOnzocGhRln29I9OZq4toXrObJs9aYrf
	9oRqBOoDRePRZrBBbIw8iQRcqzufKftIiCINL9dkaLqscfXyP8E+wdTGk8q9D0C6YCm7y0aXacm
	E+yvNzRsXFVxm1l
X-Google-Smtp-Source: AGHT+IHTGtxytaH7ZoRJ5GETUyYKLGtKoivIoyHmUivB/QIKqPw3rHB30Mk+K3Ls9v43O/H2Ao805Q==
X-Received: by 2002:a5d:5d12:0:b0:42b:2e39:6d45 with SMTP id ffacd0b85a97d-42cc1cbd047mr35853301f8f.15.1764434613887;
        Sat, 29 Nov 2025 08:43:33 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca4078csm15970060f8f.29.2025.11.29.08.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:43:33 -0800 (PST)
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
Subject: [PATCH v5 08/17] serial: rsci: Drop unused TDR register
Date: Sat, 29 Nov 2025 16:43:04 +0000
Message-ID: <20251129164325.209213-9-biju.das.jz@bp.renesas.com>
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

Drop the unused TDR register-related macros.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change.
v3->v4:
 * Collected tag.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/rsci.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index 15ed6cf5c6c5..5a58c783fe8c 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -35,12 +35,6 @@ MODULE_IMPORT_NS("SH_SCI");
 #define RDR_FPER		BIT(11) /* FIFO Parity Error */
 #define RDR_RDAT_MSK		GENMASK(8, 0)
 
-/* TDR (Transmit Data Register) */
-#define TDR_MPBT		BIT(9)	/* Multiprocessor Transfer */
-#define TDR_TDAT_9BIT_LSHIFT	0
-#define TDR_TDAT_9BIT_VAL	0x1FF
-#define TDR_TDAT_9BIT_MSK	(TDR_TDAT_9BIT_VAL << TDR_TDAT_9BIT_LSHIFT)
-
 /* CCR0 (Common Control Register 0) */
 #define CCR0_SSE		BIT(24)	/* SSn# Pin Function Enable */
 #define CCR0_TEIE		BIT(21)	/* Transmit End Interrupt Enable */
-- 
2.43.0


