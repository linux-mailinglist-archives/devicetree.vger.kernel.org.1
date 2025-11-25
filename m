Return-Path: <devicetree+bounces-242045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25472C85B1B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D06D24EE50C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A0D328B73;
	Tue, 25 Nov 2025 15:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KFuC4iL5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3989F328260
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083204; cv=none; b=bN0Yut0O86DgtV7mlSO5JWWlnHKAAQ0T8z7OaT4wVBcLkyKgFpUOyEY6lM64yoBnryCv/7NH5fFob/aOCqLtRn+lDnuu7MnD1uXQBbRscjHrTLuQA7iN1Mhv8FqfGFJMB63R8AYvUm8G/Z3qPu4/+dp4AutBV4cDp7B7uufusqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083204; c=relaxed/simple;
	bh=DlZPe72ydNmFt2C1zgFZyeOqdvbjTYNvnFfXWDM4wm8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gttezdzqxIWQvpzPfSSxTDvo/o0PF1uR5jibTOGPTfDcx2jMvxFBRyeH8UC0HNQ/TnJzRgscSR59fW7tGA0exQbQolBoIJqthTUUvlPH0bYRuthEzCsJutb2GnOlYSxvQdOG/IrZC12vPudKKIODqBhkbiCa08szUsg/sQolnbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KFuC4iL5; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b31c610fcso4826793f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083200; x=1764688000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Rlluzn3/8wzTLB254D0PoF4PW+CvpntGETCkInCEuA=;
        b=KFuC4iL5dCo1diehnQGoNC7lsrZ9f/bGj753YyBfhKxWwN1up1H2aye736zmY9sQpO
         boH7kfYgqOXKQFYQvTgPwjOC5nRiN/zzqmBvNLymLzJx0vd0VOIwRyL4gAPtaWyS8lyZ
         J9fJ2wenEXIOjIU2If2/YdI3+9f5msTQvryBB5aDbD68tNdKHVh+Rm8rDeoGC6RbnMr/
         NZYmyyQo/652U7XhljHTkEfsIDOhaua/ShguZtF9oGiGImz/jzuYIiyKwMuTe8bwwU69
         vkINYHRvlyIdj2IeFegI6N57TjyR8jZmAuTkV41JFY82Qh5aZprWRgMOYzIFnS6667EB
         8BaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083200; x=1764688000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3Rlluzn3/8wzTLB254D0PoF4PW+CvpntGETCkInCEuA=;
        b=fGq/ok8V7P3XOhN8oAhoivEE7pypaVs3G135QNfrPSbtFByxEGCKrF/hROzTyZwXCk
         EM7Wx1LpIuMKipXH/chXiiSWAars7mrbjUdxNUNFQF97AnOBCHV/Rhbh4P5Zfg2HjGsL
         R65XJtf+gDe6ApxdcBIXtnGI1Ou5pEdRN6GC+rt+IRZwVJuiJTW/gbbN0nD73WjEzb1c
         aKlys5Nx+xJlZA3wiu9Rc2XXb4tF6f/ogx0W4gRpoFungi1dsUS5CjWmYhGewK2H3FVc
         BQG4aJ8CoEgRQKfFHvZqTbMh6kd9ZABt1VecV2k6nocvo9IsqlIg7HP47vGAoVNkI/Rx
         8cZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMXrxbl5zReHO0yGqKadRVEWaJS6aNBhAxjtnWi2ji5JKdPxUA091Hkh4UtqJJHIxatYznexDMqEec@vger.kernel.org
X-Gm-Message-State: AOJu0YzH+P5raizP/5typQkaTIC/YLLzLoOfOPgu6/ka1Xnk06imp88i
	qUCRY5Viz+YDYMVVo9t+BPuj2/TKf6cVjFm6/mryRSz90kXAtP9eZQTUUv/W4A==
X-Gm-Gg: ASbGncux1Aea1SPlAAwsMdSRAIxaZ1eFwuSus/565DSrqr5TF40Tb4phz68NEmBK6kK
	i8kZBaLgUIWbOK4XMnIYKr+BeLkYwX0IuODgeX74wfWv0+axx2UO8wqu1bMf8n/9q/yNz/Zp4nz
	Dv6RFXeAJpZzigpP6X+FL3TWl2GSK3EUM/hL5rKs+asSZcyYHCUS7OFRO5IGKqHhqsZFyz52OLy
	YlxWEh+S08HM2YAW2LHNgCApx/DRTM/sJUU/ViEUuEp4jDbRbs3pCZEKs/SA/CtRuS8Vnp0ihco
	WMrc/YV7gPaN/cas4D14ZGsU9Gx9GdBVND/UYug7wR8fwHdqJTPPdiqtNtLzCg9VJuJTNq8GFJk
	zpO8LzKtxrgdAU+h03SIPzOelrS7LWbSUJ+rgvSN6lig9m/RrV4a2P6R1fn7ULqSIDTCUgXxqd4
	oYhtvSzOwtWdpsiHaiHtP8t9E/izTNSdBiwgpUwnXOZ9UotiICzH7jWjmgdAbKHicrpLb+j04V7
	mc9+fRCj/Nu65Sw7H9k
X-Google-Smtp-Source: AGHT+IEYuuqBJt6IQ5SKugNqfguxbkVvrDhQV7s8xm7GSKb0ozEZv3+VMrcpsMtScekHxRwh+8JtJQ==
X-Received: by 2002:a5d:588c:0:b0:42b:2f59:6044 with SMTP id ffacd0b85a97d-42e0f21e9e4mr3204631f8f.17.1764083200346;
        Tue, 25 Nov 2025 07:06:40 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:39 -0800 (PST)
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
Subject: [PATCH v4 06/16] serial: rsci: Drop unused TDR register
Date: Tue, 25 Nov 2025 15:06:08 +0000
Message-ID: <20251125150632.299890-7-biju.das.jz@bp.renesas.com>
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

Drop the unused TDR register-related macros.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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
index 3ad6cb8e1d18..5d43e8cdbc0d 100644
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


