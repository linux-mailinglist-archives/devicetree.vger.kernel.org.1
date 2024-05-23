Return-Path: <devicetree+bounces-68587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B98CCD85
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 09:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AC11282F38
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 07:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63DF13D274;
	Thu, 23 May 2024 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FVHI0EGF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D0D13D24F
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716451113; cv=none; b=c7zX9cUEzNbA5BCHDL0v2CNTfjGrKYbOf5J+zPgOiLqS4oNMdFH/uaBQ/m4b8EKbu8mKe3gL6v6g2gI1kO4i3YQJaa+svIUF1WIB7CjSGHtcrgcaW3a7esOL3OGOBlyokecq3MhZi8JNAXTqlUGNnXsXBZNMtLQ9k24HPpwA2wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716451113; c=relaxed/simple;
	bh=GeYcq7hifjt1OLF0wnkQX/WSgPVVPHA4Q3hJVp/5Vi0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A0OVGEQMoRQZftQX4mecN9N8QNR3p8gvbmGOPB2zbQUOvu+3NaVodQuw8zV/pM4O2JjM2V1DqUHf+3lkcaUELKI+2iqVDkvDNab/lufQLlceXB9AtdYxr1+41neWosZxuwSnk6jL7fVwn9B2I3MrpcxjfU9G2JtDek6Qit2Iz6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FVHI0EGF; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4200ee78f33so17515475e9.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 00:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716451109; x=1717055909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnsvziUa618dnnoBP9xDRE/1PzDppW/Ko7YUJL6XyH0=;
        b=FVHI0EGFmQ9BIqm4FKanBf58RVhii9cB8Oi+i/5UStV/dFDDo7ZL++KfIt6ew8+9V7
         Nxmwl7CbrsssR3E+VcOZ1OFHspC08wDTFBDjzltlu1YXSwgiHTWyMp0gbW5opyVOKu6L
         RuLO1dlgsxPXe1pAt1Bbuy3480CMX76ASHzNpVsmKJCTnbH1idJ9sIeHVn3IC8puX6V9
         tJ9XA6qCLaYVFw3Dddi1qu/33K5+zBEfPvUsXyTPEGgwRDgSRUQkJtE8fMYdRP8lBZqe
         IdFhMdZAKWc4druy9yU4RdngNuC5YDN3anbbCCsi7ovUhR0KMqbt4EE35BE26VQvBnm6
         NIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716451109; x=1717055909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nnsvziUa618dnnoBP9xDRE/1PzDppW/Ko7YUJL6XyH0=;
        b=oWqJdylA5+130nt+RUqiIborjKGJthMXlLe0X08T14CmRsSqbt8tKkeognbOUoTphE
         Kos4ELV8PSeHqzDsm2Qjr8ZxVyKxqivFTLXWNNlLbnWnJAOAcmCYxh50t9uqmetifh+j
         tszzAAIM0fTPSpUg9xN1A47fTQ8nL4P9XxZvl8qKvNvgAZqcGfrZ+AnNzxg9WlsKFMPk
         +oyXL5VErS2GzZMAue1U6+snu2KPk0UVBwE34NSf2gRnvxStDpnu9ODmN6td2qNw8xhA
         W/k9YXr2AUzJdHSr55R7FnE7azUrSbVzw3eWEXN0log9u5XylrsJJAkkqmtRUquGwyYs
         piXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8NiIJ6B1CtxqaJAFmcqAXq2Vl+M8sFFZM35BO9ZCLTsLdELzyx7N4onueii2UsYF01QaBrWqkWjWF0PuxrDbxsmOnyfHgNbMh8Q==
X-Gm-Message-State: AOJu0YzFmy9A5/mZ9HGIrmpK6eI7qSxNMVUWjT8rA/D9zyC8OOt4Vc07
	rYmz345h588vURHB2r9Q+DvqvDk+W2/tI/LuLd6f3Yvi2BLbTiJjKgYMWcyi/OA=
X-Google-Smtp-Source: AGHT+IGc+MunU1oSZSugH61FPZEMIvettC8j8J+MkPor20SXGxRrNqr01E38oCLB5OzrMNXFDVl0cw==
X-Received: by 2002:a05:600c:1386:b0:419:f3f9:8ed6 with SMTP id 5b1f17b1804b1-420fd2ddf9fmr39635585e9.4.1716451109255;
        Thu, 23 May 2024 00:58:29 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f01d7fsm17359125e9.1.2024.05.23.00.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 00:58:28 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	John Ogness <john.ogness@linutronix.de>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Ronald Wahl <ronald.wahl@raritan.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] serial: 8250: omap: Remove unused wakeups_enabled
Date: Thu, 23 May 2024 09:58:16 +0200
Message-ID: <20240523075819.1285554-3-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523075819.1285554-1-msp@baylibre.com>
References: <20240523075819.1285554-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This field seems to be unused for quite some time already. Remove it.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/tty/serial/8250/8250_omap.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index 66901d93089a..ca456ea23317 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -141,7 +141,6 @@ struct omap8250_priv {
 	atomic_t active;
 	bool is_suspending;
 	int wakeirq;
-	int wakeups_enabled;
 	u32 latency;
 	u32 calc_latency;
 	struct pm_qos_request pm_qos_request;
-- 
2.43.0


