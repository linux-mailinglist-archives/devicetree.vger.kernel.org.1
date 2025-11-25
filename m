Return-Path: <devicetree+bounces-242044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BD4C85A5E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AEF2E351A36
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80505327C1B;
	Tue, 25 Nov 2025 15:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JPvjpNL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D604327C1E
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083204; cv=none; b=ragHlL/567u5Zzga2gVt3O9Q4ZYfrjCfPHV8eTD8lsoiSo2AN5Hvchap1jdoXuqEgKHJMX+6GosfWq4k3WsAX/rclpUcmFup9wKfXp39X7zenqZaIigWjfLMBThkzX5UXCaiSaJNK7p5fiVu/InQAM2roMFO/VLsTiQbAfgG8vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083204; c=relaxed/simple;
	bh=0XQJSgadsToJ4b5yIqyUB3R0b6zEChYhyXBoI9Dp4m0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dm87K85jrTyhKg20Uiq8CQ0KLTt+E0JA+r11k+ygPeM9BOCYsFSxbcslXFpgorx1klM6pZHRsF8h0CEqeXurZWJvx3QvXf9aaX52Mv1NpXvyn5QsSRMKAy4J2t1NS00OmbMX+69YNg9n1329QvUI1gHl3vaDlYUqU5G8Ldt07uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JPvjpNL4; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so3190154f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083200; x=1764688000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0NtGTkOpvHiixTJXzZ965OSOKBk0446FybRMcINNKk=;
        b=JPvjpNL4jNABCe40z6llPVEQExAFh2BVbkWsgagjeJL6Qv7i4zw0/yuhMGp//dbOa/
         rawrc5rGOniMYg54CXNi4YayVEroiaAq0/C42x7Bvph/hXssTkrDJPxPFvxJB4oNNImt
         ycqm+Z3Bsn9lc8Tzcp9zqjM3InFIZftPgHzQ7ZM+R38CGn5d3/sLQWYQaN+b0Xl9spnH
         M+o2G9Al9XFrjhom1JaQma0QvU/tBhyfh/2nUJaMbn/EjvB+2dWeHoNzCrYB8WG0Uv1K
         UFU4CEHQGdYyA00/tfc1Sll1537e61dt2/x90Y99mArDoQUJWqn6f/IFLU4n9H+KbnJ0
         pEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083200; x=1764688000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w0NtGTkOpvHiixTJXzZ965OSOKBk0446FybRMcINNKk=;
        b=BYDuRuYeHJT9bsSGOeh0J+TYLW+Sp4GXc9260J2R8iQZHC2cBBWPFcMMyEdhJjAHmH
         kuLO+PWq8A3/Iye7Cg8XB/cuSwi/FM7acVkBXpci41aPCVOgWg9rxi/TkYH0oaXL+0HQ
         SitAWwzQ2fT4w8gSnmufq9V5fMVQLe7Cyk/Zrhfxi9Qgkx858wjsH7GfsR9+gGfa6WV0
         Mse3YEV2gMGFnugbyUPi/fZzfGZS2EN6utFO1MuTMaPMJila7XMYDoqouMKxb2E42FCV
         oYN5eA2KN7RAH5N+oNnlg+aZ3JK2hSO6jD/XIfj5NZ8K43qjF3KQnkVmLrMbKy4WKgHO
         /9BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUF82ucQWLZ5m8v9dWnLVfTg2Zg2wL1h9dYo7POBkUUZVhHf6i7GkFxGls9gw/hoLvOyQoWTCqmEq/A@vger.kernel.org
X-Gm-Message-State: AOJu0YwnS12eeb+oCaJBY+AsI72weHMkGfM3oElfLtWtGOTLXcRi1nt+
	SHEOM4kmI9zGt7ZF0gR5PZquX6jIwJ3F/yI8o+ndBEAK8BwNgqqY7zff
X-Gm-Gg: ASbGncsPb944RTwuhZHvRN6FIbCe5s+9tz/VhBrj6QnM+ql2LP3PHQw/cnazGF18Gz0
	thbhtEWjaKDsHMTeQGOVdR0kEhnfZtQ3CNDbRiTIeQ42H1WKNbWLf8YOxIAomxR8id72iQpKyKp
	7cL+V/g6NR/9P+SQvsh6l0rmY8Id79V8hAvjJEZj2kG2gT+6ADHXKQTchcd9o5iaycRBhQ1U6ro
	r+uIzmFwdeN3di2GVWh/GSUBaUznb/vWAkjqie0N16MOzZT+eQz7U4hikhiumKmGC9PWXlUITjp
	EKAl6so+8gw8pTdtuOdsVa5Vun/Fuby/tq5YKWL1pJsKv4irg+qrt0OpOWgmkmATN65dTbEaflI
	gSK1O52l8RnHgnzbF0xYWgY1JIDogfUo62eim841dX3TR8/pHF9bZvDZowHO43Xv6QAQY1IJQmY
	Fl311IB9tgpe5PjaAdMW9FDBureEOEs7FmO7Q+W79sWaCvej8DkZGWnButqPgnWA94XXe4c9nzo
	Q==
X-Google-Smtp-Source: AGHT+IFo0OhinOAI/UzHdmsqWHopeqG+0xTMeUG/vYAaZONgIemRGTkV9J/yAwaStUhaaQyLgihjhA==
X-Received: by 2002:a05:6000:4012:b0:40e:31a2:7efe with SMTP id ffacd0b85a97d-42cc1accff0mr17229344f8f.14.1764083199477;
        Tue, 25 Nov 2025 07:06:39 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.38
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
Subject: [PATCH v4 05/16] serial: rsci: Drop unused macro DCR
Date: Tue, 25 Nov 2025 15:06:07 +0000
Message-ID: <20251125150632.299890-6-biju.das.jz@bp.renesas.com>
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

Drop unused macro DCR and its bit definition.

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
 drivers/tty/serial/rsci.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/tty/serial/rsci.c b/drivers/tty/serial/rsci.c
index b5afa7b2a4a8..3ad6cb8e1d18 100644
--- a/drivers/tty/serial/rsci.c
+++ b/drivers/tty/serial/rsci.c
@@ -24,7 +24,6 @@ MODULE_IMPORT_NS("SH_SCI");
 #define CCR3	0x14
 #define CCR4	0x18
 #define FCR	0x24
-#define DCR	0x30
 #define CSR	0x48
 #define FRSR	0x50
 #define FTSR	0x54
@@ -119,8 +118,6 @@ MODULE_IMPORT_NS("SH_SCI");
 /* FFCLR (FIFO Flag CLear Register) */
 #define FFCLR_DRC		BIT(0)	/* DR Clear */
 
-#define DCR_DEPOL		BIT(0)
-
 static u32 rsci_serial_in(struct uart_port *p, int offset)
 {
 	return readl(p->membase + offset);
-- 
2.43.0


