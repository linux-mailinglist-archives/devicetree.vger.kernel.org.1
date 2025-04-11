Return-Path: <devicetree+bounces-166161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 256F6A8675E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 22:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE1689C0E43
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 20:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A870290BC6;
	Fri, 11 Apr 2025 20:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eDwCSKKl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2A62836BA
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 20:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744403919; cv=none; b=vD9Ai2OqEkVvZlusYM8VwXOavOPGjrwl5Cjrl8leM+25rIfhgcQDJmVw/OM4X61lwDhWO5psld8BlXxoOdh5axhkHLEQENIwOjeveQV3oowEwv2r614f4MJzZLiRdd0gaVXzDwFzrd/g9xGokG0oiH5Wd8Bdi1U0k2ODn0oZXFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744403919; c=relaxed/simple;
	bh=35gorawSDcrg8QbS+s+M/Qi8sq0tSP1dR9KzDN+4gxk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qwv8RPNNzZQs2GIG9FlgeXOr8F1eER0+f6IYmLVlwhH/VoVZFezmyFE+1JpFuoapXffi5et0svbXiUc8jUQuF5GzHVAp4ZGPx5mEdFupo4N+aE3kzmBzfdgy+qohtoti6ytYK3L7y16ThTXDLr68Q9ttRrz/kYjuogjWahXs3Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eDwCSKKl; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-85df99da233so217535739f.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744403916; x=1745008716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0009F5O9wljpHFhP0qBedRkQq+IjHXl/vgFyYcghGBI=;
        b=eDwCSKKl/5z8nIEBA/pV1BfH8SeYUk3ObUlKL4xujOgbaJRP9qho0RlaXicddqh+GQ
         5vxEDS4ErnL5gXD957jHRgN8BP+Y4GqAWb2iAFYenhL4IO4nDSbHJqSMVvcBAzZFjROE
         fArPH4wS8xz/TZcU80V02Nrb7myqz+b2roQ1Na3HFIFwjC7NIzVc6S888rfccQWA7uI0
         VNuHmmRemuUysfFQjq9TE7ebzWE+Ye9NO5pcWX7QbZD4WFNz2U1mBinx6Ti1UBqzZkzu
         sMQmKpTdzpkp1sjjv90/0iso8M4pDKn6I/+AjGJ+4yp4dJYKpqkfviz9gZK0TEjcOrRl
         L+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744403916; x=1745008716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0009F5O9wljpHFhP0qBedRkQq+IjHXl/vgFyYcghGBI=;
        b=HA/ebn/u2Bd48mPzdVnQrbhMHrOoJ8HTzFKH6EirbuzQA3ZHoG+lqeoksARspyEYgO
         /7KIdurfpA00Bce6Dki0e3vJuG9dmUL+iCCwAO5aM7+cXo3l2Do5qdMhbhUXu6Eblxej
         Zu9S0PaYdeiIZAud2wU0ilz/851M9WlWJQCy9t6fHGbt8xeGN/vGteJAWAN3Kj40xs2p
         Zdh2ddZpn5RcaDjFl8jqWuQBoQOn3GOF7BpAflRBaF2o1yLr2mqyFVMOImnGV51U/Hup
         33uU6qV+m34uIT5L+FgAoLqkejbB8AojqwQLLhHAZogGvbtzGYGfhBRAVNue43nyLtEX
         BjAA==
X-Forwarded-Encrypted: i=1; AJvYcCXT73fdnEAi/r4yI0aY6DKQXqAYt65/WO0QU/9C3BcqBGGU+16fWystdX/2sOj9G/oc2G2kB3AO0yYm@vger.kernel.org
X-Gm-Message-State: AOJu0YzCFJrRyxJL1N+4lwFogunCKslL9/X5HS46cgJvjpk6KqUjLPwo
	mhkGiPsmCHEw7Qi4CM9GKZdu0qCgoXuGBT3yUpV/0mkRX3HFeKoXgbku/BGtOJs=
X-Gm-Gg: ASbGncsCEjgxGWQvExMaY3Ox8SIJosWRpaFTKkKiH1ZCmWvwD3PCzioadgfu4dVQh7y
	eCS5wGmUXbeUWYrDBi9gAzsIoNjRzMM3lhN2KzE3pHliJDXpYsC/+5iIW4FjiwKDdNRCblt84Dx
	f97ARhK9SncjQm8CCtd8JuZk0YnV1nztGwAPYE8lTzroannupqNPpuX5+WXcG2xSrh5J3SbND9n
	nt3lLNyQCdxklK/eSVVDeNe1H5SQVt+5uSWiBq/OgcxJg7tCk8swyv76U2oDNvgkf4b+Y1Idkea
	SLBn8D067MRH+HJVfA9OvGgzXcLg4XSgS9Q2kVZ9CL9jde3rS+w/23kLrkrq88YN2baYI8OrCDk
	xQhomOq/aITDXQQ==
X-Google-Smtp-Source: AGHT+IGqHP+A8bUdxXLeOSya2xG9dcuQXpXzTMzOhzOj4n3d6/OcbE382cLJQUug9NIF/T7vU4ELFw==
X-Received: by 2002:a05:6602:4816:b0:85b:35ef:b1fb with SMTP id ca18e2360f4ac-8617cb63bb2mr542148039f.2.1744403916511;
        Fri, 11 Apr 2025 13:38:36 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e2ea1esm1420787173.123.2025.04.11.13.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 13:38:36 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andy.shevchenko@gmail.com,
	dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] serial: 8250_of: manage bus clock in suspend/resume
Date: Fri, 11 Apr 2025 15:38:27 -0500
Message-ID: <20250411203828.1491595-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250411203828.1491595-1-elder@riscstar.com>
References: <20250411203828.1491595-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Save the bus clock pointer in the of_serial_info structure, and use
that to disable the bus clock on suspend and re-enable it on resume.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/tty/serial/8250/8250_of.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
index a90a5462aa72a..d178b6c54ea18 100644
--- a/drivers/tty/serial/8250/8250_of.c
+++ b/drivers/tty/serial/8250/8250_of.c
@@ -24,6 +24,7 @@
 
 struct of_serial_info {
 	struct clk *clk;
+	struct clk *bus_clk;
 	struct reset_control *rst;
 	int type;
 	int line;
@@ -138,6 +139,7 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
 			goto err_pmruntime;
 		}
 
+		info->bus_clk = bus_clk;
 		port->uartclk = clk_get_rate(info->clk);
 	}
 	/* If current-speed was set, then try not to change it. */
@@ -299,6 +301,7 @@ static int of_serial_suspend(struct device *dev)
 	if (!uart_console(port) || console_suspend_enabled) {
 		pm_runtime_put_sync(dev);
 		clk_disable_unprepare(info->clk);
+		clk_disable_unprepare(info->bus_clk);
 	}
 	return 0;
 }
@@ -311,6 +314,7 @@ static int of_serial_resume(struct device *dev)
 
 	if (!uart_console(port) || console_suspend_enabled) {
 		pm_runtime_get_sync(dev);
+		clk_prepare_enable(info->bus_clk);
 		clk_prepare_enable(info->clk);
 	}
 
-- 
2.45.2


