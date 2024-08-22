Return-Path: <devicetree+bounces-95866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7865E95BA23
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5EB91C230E9
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80FB11CDA04;
	Thu, 22 Aug 2024 15:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mKqg1pt2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDED71CCB34
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724340505; cv=none; b=fZ4yh8ZpxFUcRG62BkYaD7r5mCFFwg5MqpkpBT1PTIgYNEUAcLmWF3DNLiTiqkBlsYFeluLzDGYqP/1jBWaBXrOOYLD66rlFW8RohIydQuLarK/4/hFCbL0Tfnl269N4NiJ7H38trz1J2iR6Vks6hCcd5/D0yeNhAe1ApfUaWAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724340505; c=relaxed/simple;
	bh=oUH7C74aUXg4d9WGHoMwZhQPfePjjTPQlokmfgZcYd0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o3eeDuiby6waaKb/JGoJFdF0TPUUoqc4W70v+E1ly51J6dwxaoWqsRudTsQd2yx1KVKpHw1Dps9hnRC57cwgNqSjvknmBAfa1CaOF2f2qBnITcN+k7ksyNJ3NrWFbOJvIu6gV5TcLrOUNWC6AwzyU4bj+2JPmBhGG5jXoLgWeZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mKqg1pt2; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5befd2f35bfso1329530a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340502; x=1724945302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3txPUwxmR4fX7LzFPWhcfk9alhQ/U1SsqoBALbg0+o8=;
        b=mKqg1pt2CZoeMwJSMruM8a17QtgxTEL/9SW2A8WWiIiBytZ0TE5SJFBmXExsU4b4o8
         5Jj64i2giRaz7mnQdzHI09fR0Xud9AmUB/N9Y23AHXTLJm4K07WksJgUel67snJUyzGf
         6KQ2ZjTI/fn3x2zn0nopq8djlkXlLb5H6Auw/+qSBpCY1SpfggSL6T42xMfl6X3eQ2lj
         MPJrPPW/USTI1VdKjHYf8kqSwYKlLKK9W27sVOkrJd+O9RejkWYYd9W4Istu5XKEv2kW
         7KOdagtfDbjKhdOdPL9MMSGu9Kdnf/wIWHHo4XVXy+r2W/ZpgcXAelfUdATU+P857P1d
         9g4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340502; x=1724945302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3txPUwxmR4fX7LzFPWhcfk9alhQ/U1SsqoBALbg0+o8=;
        b=S7C0AaU9oJH47+Thl5MITUEakPZuJF34clabDTw9YaKE2K6JOqZ2WSlDlAPIK4PY01
         X6tUcnZo/Hjv4hsyRtZiXd14ppTu8nXJ2u+zeXFresmt7rNCVvqQfHMRRWlXt45Vkrve
         +pMhMBeAyqZDQO20YWYEFiRFOm65NID8Sl4AmBoiTeT4K7fh8bspBqnM2VxOQ/ooUUID
         ucRgYZxIDmwR+b+rfc1qYeP9qHqctfG0AQE8m02kBqxTuSCSsNk9Yr5QUdC7oYwm7p4Z
         emNhau8HhZfrm6aNu/cQ9BgpB5PBmM//1vG5PcRzZY+XLZ1wnT3jPBIneWUO3qXggchD
         xXNw==
X-Forwarded-Encrypted: i=1; AJvYcCV5+c71YsCQHRyM5GzjViNfmqJM5lqlQJgR+RpX1+ZSGoux3mx+0TQj2Me8J1zskQUwGxVLZeRhcvN2@vger.kernel.org
X-Gm-Message-State: AOJu0YyWrKHmVIVLDoWYS24FIjQS1SDLWYgx+5vC4E6aHNvqI/ZQqpnm
	n5Re+PcSiiF4W2ms8JKf7R+C8pfVA5oukRm8QLYvXzsVdBmccmtLjNt3K0cwDTU=
X-Google-Smtp-Source: AGHT+IGwmGUufY0I/wXnuKumGBXx6MTOJSx969Oopy4E3RE8Z417JclZShJ68eMp0wCAWKbVhUr4SA==
X-Received: by 2002:a17:907:efd2:b0:a86:3c01:cf08 with SMTP id a640c23a62f3a-a866f705025mr477276566b.47.1724340502213;
        Thu, 22 Aug 2024 08:28:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 03/16] dt-bindings: reset: renesas,r9a08g045-sysc: Add reset IDs for RZ/G3S SYSC reset
Date: Thu, 22 Aug 2024 18:27:48 +0300
Message-Id: <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add reset IDs for the Renesas RZ/G3S SYSC reset controller driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 include/dt-bindings/reset/renesas,r9a08g045-sysc.h | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 include/dt-bindings/reset/renesas,r9a08g045-sysc.h

diff --git a/include/dt-bindings/reset/renesas,r9a08g045-sysc.h b/include/dt-bindings/reset/renesas,r9a08g045-sysc.h
new file mode 100644
index 000000000000..675872a32121
--- /dev/null
+++ b/include/dt-bindings/reset/renesas,r9a08g045-sysc.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_RESET_R9A08G045_SYSC_H
+#define __DT_BINDINGS_RESET_R9A08G045_SYSC_H
+
+#define R9A08G045_SYSC_RESET_USB	0
+#define R9A08G045_SYSC_RESET_PCIE	1
+
+#endif /* __DT_BINDINGS_RESET_SAMA7G5_H */
+
-- 
2.39.2


