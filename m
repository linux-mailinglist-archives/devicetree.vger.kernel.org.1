Return-Path: <devicetree+bounces-33177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 468448327D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2963B22287
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA96C4CE05;
	Fri, 19 Jan 2024 10:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HyCBprv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5C4CB2C
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661136; cv=none; b=t00ahqfjmkx5Q72Bu3fl5QXcFnANYHxWRxG1VIK+psB16sNMlNWXjh8/milqQKULmP8ETK61eUvuD/GM5rrHNFLYJjA0uqsewKGQLHUS1bAlAriSrmqpZwX0VIC4BKAHsXgXMjKD+cXdYYem7KBN7HJrgDYv5sGZ/tnxqjVegY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661136; c=relaxed/simple;
	bh=kuYDD5uxgaAqiPArwaEVu4dV87lteqd14/0vwTxY710=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lr9VzupTTz2feoRGZdxIyLemjbjJjCIk1a4w+aCrDhHyDd2hY0lkCiv9vDnfji2Xkaibs0BZR5EmQt+Ez04r7TW2LB2d67A6yNTEjmSHCJstjnKLGNHXapDrXoY+OmF4bM54UxcLPynsIkGCeoPkiLB45sVadAT+nRPolbg6L/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HyCBprv5; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e884de7b9so7947955e9.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661133; x=1706265933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2al3iBNQhWlEPx3zO71H97w87oPbBhC1wsAJyE/YV+Q=;
        b=HyCBprv5hj1T3vMbgBjHtlb2CTbcrtZMsEXtSdPFtLEEx4ZZFqkGHMbYkOa1mQNG7Z
         EBALnaaspBl7HA1bvpn1qN6szerWEIYciGc8zqScRvq3+GGQYUFmE3WMyK55xKm0oRu6
         cad1IDrU081KHxtalNev3KIXopfkWyA2tze8Z2lfD73e+MQ6jSujtXVL8sjcyfzhHuNY
         GoQBbUu4LuC14bsCtp4RRdDCTIiyKI4yFWg0m1N+P4rT32db4hExV7I0mBwZKe7Z+dbb
         bi3g7r+KPzInc8vCmSmVfk/+AfeHQTBv9+jxtDUamuWnNpjw90O+1Q4wN/TAJDSx1wKx
         GUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661133; x=1706265933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2al3iBNQhWlEPx3zO71H97w87oPbBhC1wsAJyE/YV+Q=;
        b=cuyQnx/jzx3IXwoq2TuTbP6JFb6D5INGf+91efjlANtBCBviGu3pk9P6XreLvryYdi
         6qAqjpxv8QMuBE/Jcc8cNhIdyn+T5MNJTkh0ptIhkV9wRUnRWLPXTCuj12RIhU/eijMt
         D+ZGU7LsvokThk6pvgqnwvRMzpQkHRdrBEyFRzuCa5xmDjFzL+ICWLfFbYeii+qefMWx
         RGBYMDc3E+74ea7ZhUxLCpyyxRkdJOUHDC59NmXUY/QvMBd73YCvAJ/+KuT8ev5lreAH
         4BhubzvDD39snlFhqwRo44BVxrJxoqlfYnUt1rYM5pY19g9cjTvISvDBXSSf+5MCZRWx
         y6FQ==
X-Gm-Message-State: AOJu0YyQRe38O0UBNfiWwde1ILIZpDxCZEjqdAw/uSLsEujtRMV5th2A
	DqQBrmC1ATZYT4ihtGGIEUd0dthqr3UNuUWtPhFrj6KI9kOFuGUvirT0DhaxMf4=
X-Google-Smtp-Source: AGHT+IHXRVDj6Z2rHedmVBuRLxryu4//t1M2OscXjxE5zCpuJxJ49smSeqRP5ESmOv4g6vvM9Ij/5Q==
X-Received: by 2002:a7b:c412:0:b0:40d:7d62:80ab with SMTP id k18-20020a7bc412000000b0040d7d6280abmr1306238wmi.117.1705661133590;
        Fri, 19 Jan 2024 02:45:33 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:32 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 05/19] tty: serial: samsung: add gs101 earlycon support
Date: Fri, 19 Jan 2024 10:45:12 +0000
Message-ID: <20240119104526.1221243-6-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The entire bus (PERIC) on which the GS101 serial resides only allows
32-bit register accesses. The reg-io-width dt property is disallowed
for the "google,gs101-uart" compatible and instead the iotype is
inferred from the compatible. Always set UPIO_MEM32 iotype for the
gs101 earlycon.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 7a1b1ca82511..80b8fcf9e025 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2809,6 +2809,17 @@ OF_EARLYCON_DECLARE(exynos4210, "samsung,exynos4210-uart",
 OF_EARLYCON_DECLARE(artpec8, "axis,artpec8-uart",
 			s5pv210_early_console_setup);
 
+static int __init gs101_early_console_setup(struct earlycon_device *device,
+					    const char *opt)
+{
+	/* gs101 always expects MMIO32 register accesses. */
+	device->port.iotype = UPIO_MEM32;
+
+	return s5pv210_early_console_setup(device, opt);
+}
+
+OF_EARLYCON_DECLARE(gs101, "google,gs101-uart", gs101_early_console_setup);
+
 /* Apple S5L */
 static int __init apple_s5l_early_console_setup(struct earlycon_device *device,
 						const char *opt)
-- 
2.43.0.429.g432eaa2c6b-goog


