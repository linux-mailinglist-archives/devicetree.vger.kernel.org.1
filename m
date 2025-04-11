Return-Path: <devicetree+bounces-166160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF4AA86759
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 22:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1FD93AC1D0
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 20:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4D428F921;
	Fri, 11 Apr 2025 20:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="cXU48zgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5166D283C93
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 20:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744403918; cv=none; b=EEuxfDD/7/eJH/0zrNa15x/J0aEwpOF0EPone3u3lQIoKU0YM8fNGwK6Z0BCd2xuE6f+uECYh359JvvKSXYaNT6MKutlqJfCm3TNWLg5XzTtKItkprPEzl81etBeN2bLHMCGfWxvbVWnIam9LP/icKqw8blkC0tFJBpEzP3hNws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744403918; c=relaxed/simple;
	bh=ucvbVh/yXALhRLORxO86EDtcUDjhXV2k7FhsHq1IhHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D6DxdEMxAGv9HZN/zKnBq7RHKSqg6rXokmwbuX2/9aGqIocMgVyGpV7sIJwiMHkqiVD/tdxnHJ/A/2PwtXgr6F+LcUHfw9gys3KnjtlRR4MLs/Xc1s5dhQsKGZtIY90XQBadO3ZNoumKKBxQS+3ZrFkBcxklUKEGKioSltIELW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=cXU48zgF; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d4436ba324so19203465ab.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744403915; x=1745008715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+No0irtswkb42oZgjOuCr5NaquvvHMgg0F5193JRX8=;
        b=cXU48zgFWzBRuyaJqPSQBeudmkNcwJzmyHVLUhiZ1tbYhSwFqkga+JDpmeJXgbUC2H
         87zLgsjwR+fwg9W162QMDCtNdGoUEH+Pxle+gYmig2qUIIB2Cn7geZ7BQ0mV2ZA64L2x
         vCbBm95xcBs7zspdNi6IKGYCZcYnIfl5XDZ7Qq2oIEk7LhoRa5yb9jf0gTc6hz//hjXd
         71Qw9mkDv5UaooqQTqSRRSOMozh3Ge+Kc+cnMkbmafAXgIx6PfThNUYbp3/+5Mbx2znY
         CQQc+0BipcYgqRWpY3otAuWEumHd8vigCbubJerkibN4+m7+Bd/4ILqqkGp3t3tcb83m
         sdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744403915; x=1745008715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+No0irtswkb42oZgjOuCr5NaquvvHMgg0F5193JRX8=;
        b=cieHPqWJC8tbhwUYUj76FWPgS4nv1XH2k9iNwuf6EaLU6lMP5yY77qAZK/feiaKhRS
         d48OL356ws9jY8oC9WNHqvpYOojH3oVCT72/V2MuT+VLsf8ztt2a2ZxO64DZkjYWmdfU
         ZMA2k4+AAoGwZnFde4bqv4qpaOSTyhP72CibtpucNCLl3iycDQxBOaogPRPNPbyf3vn/
         K/UVLG+KoXy+lH24L/cvQ7HckQbzed5s9kEOu802xnRoAPUWPLGTlXIdtN9uaN1vnUzB
         5U9lKDVJfzuJxghuRBuH1leP/sMnJo6wodv46LfzKKxr1KfvzI3C+BcUty9vDSatZ6pV
         G4WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBEIPuorYBNSQMCrgQLx4gTlmvjFUzj4NTmFm/MxUO/+jY26AsU467vRxFxRuicffVH/1Lb9hy83Nn@vger.kernel.org
X-Gm-Message-State: AOJu0YztozQjGMFWVGzwRLTL3gWNkd/r8/2Zv1/ajXzWtUkMk81cfjgr
	GuA9GCbbPvyS3ibV8nOE86ubv3CFfRuZMSH39xZuThSOaA47oO3/ovgBOhgbuZM=
X-Gm-Gg: ASbGncvXyPUBz364id82gDAWLqSCf94JCraq1JbRwQGBducdbiOR74eUEcS6KPrFA5O
	J6HEE5GjoAYs7aatgbO1QfN5dwLSuuxBtx6T5ueVp6cYOFXB2OBh82ZoeUKuUfhll7/+0wr8a/m
	1hrR0Ef2z23EIpvaU171HyDrw64wBbv9ctiM23vhs1yI5OsCNJ7INfGK3TotLWsASG6n5BVO8kF
	0itK6RM/1beM7E59qTZhhat40Z/yx6FTFx6E0oYt0BudjuYR5OmOhkyTCfeHkbwmXDQHByLlaHH
	M/YcPBxlpi+3sYUemUJlKA934l00ozmNJeL1Yjb0hJ6+/NBw8GV/AFmPqJ4URDBHWt7UURqt106
	TUtJPIaKoHCvwGjzPqW+jdPpX
X-Google-Smtp-Source: AGHT+IFI78Dq0uhLXGQ3VPmWnhBpX7t1jvh+2+h32uhUwjru/tDqrj+isW0Bsi4fpyNX4H8KLkVFTA==
X-Received: by 2002:a05:6e02:258d:b0:3d0:237e:c29c with SMTP id e9e14a558f8ab-3d7ec21bdfamr43241385ab.12.1744403915441;
        Fri, 11 Apr 2025 13:38:35 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e2ea1esm1420787173.123.2025.04.11.13.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 13:38:35 -0700 (PDT)
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
Subject: [PATCH v4 2/3] serial: 8250_of: add support for an optional bus clock
Date: Fri, 11 Apr 2025 15:38:26 -0500
Message-ID: <20250411203828.1491595-3-elder@riscstar.com>
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

The SpacemiT UART requires a bus clock to be enabled, in addition to
it's "normal" core clock.  Look up the optional bus clock by name,
and if that's found, look up the core clock using the name "core".

Supplying a bus clock is optional.  If no bus clock is needed, the
the first/only clock is used for the core clock.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/tty/serial/8250/8250_of.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
index 11c860ea80f60..a90a5462aa72a 100644
--- a/drivers/tty/serial/8250/8250_of.c
+++ b/drivers/tty/serial/8250/8250_of.c
@@ -123,7 +123,16 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
 
 	/* Get clk rate through clk driver if present */
 	if (!port->uartclk) {
-		info->clk = devm_clk_get_enabled(dev, NULL);
+		struct clk *bus_clk;
+
+		bus_clk = devm_clk_get_optional_enabled(dev, "bus");
+		if (IS_ERR(bus_clk)) {
+			ret = dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
+			goto err_pmruntime;
+		}
+
+		/* If the bus clock is required, core clock must be named */
+		info->clk = devm_clk_get_enabled(dev, bus_clk ? "core" : NULL);
 		if (IS_ERR(info->clk)) {
 			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
 			goto err_pmruntime;
-- 
2.45.2


