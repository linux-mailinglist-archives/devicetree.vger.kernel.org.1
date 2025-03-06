Return-Path: <devicetree+bounces-154786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E06EAA548E1
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:16:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AF397A5731
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0641B209F22;
	Thu,  6 Mar 2025 11:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iptpuS4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD9F204686
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259760; cv=none; b=Unn42uVMGpw3Gv3IVWKf8NQ02AfuYVl4itdHVi/8M+4uk0GRnAJoH+L2wkdHz54H5kpx5b1YP5a284voC9g4mg1MHCUtO0CERkw/TKqA73e6U0bma4rbqc1ZR5v2yN/BtXZEJCTgPyX46x4FdLeUfaDRlgERz8011FjDa4hZ5LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259760; c=relaxed/simple;
	bh=oOMPzH4LdaksoCbIxuNdPeXLXt+dMP0qmI97tgFNQuY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eJ9Sr126vag0uTnqhKLYufSFNflLc393BNaASjG5yhTj/7tmF14b7kD311MKwCCg7ja8YxqT5Xxo2VIKtwwh6gGIMeS3k6+LnLmHN+mlXFA2dVst2jsmnd4NQtuyD0MfQJ8u3K/o3xYRT3Dssj+ln0NixCkohUDQ8aaWNScBf60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iptpuS4D; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e539ea490dso781916a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259757; x=1741864557; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AD4+541pvr0AchIZJuu3S8UqRaWJvIBsW2zPu2lnUwQ=;
        b=iptpuS4DKDG2TSqLVH3IxvemS64ByotsODplLL8XyVHoYvkwzAAZtojPIvELItiimP
         ZcBKQBgRAjr842IeoxS/sW1FAupS7y120kDn9S2SM6ARRYR2sPHAwkthvuuRHyEAvfsb
         0ikDsEnmCvtQYl9swarygDdGaYiwXRW8ybC7KKlMAIgM9b4+3NXgHNSGClrtRz0uDzhN
         mg8YG8aJuA/qfLF/Hwlqot/Xahu+fgEAKcAIdv/BtnRUlAybbkmGUuOvoBVGJ5ypXRZT
         ljuk1UapcZ/QrcbiQBZnYFdDyUI4afooOBwL7BnaDaazg7Vi/ESx9EN6uyBW++ibGnGk
         b1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259757; x=1741864557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AD4+541pvr0AchIZJuu3S8UqRaWJvIBsW2zPu2lnUwQ=;
        b=kZCYj2EepWT4IGusmIyAP07oNScU92sGU6dNTdrgj99IZrqMUWwzUbIwjdz+W3X8LQ
         KsED32zBWGVGLtPX9PEN+1Ku4/SEpalF9KOhz0VeIQ8dj/hUXli4yh+RvSmod8pWXLXM
         lE9wBf+mqYqwlRiDLcXSZaW3JVDiRAXH9uIxWtK2ndymX94mApvOHQWpE4eXC40uxRz6
         gZexT9oKcE5NbpzYejywAsVR2gBgJa9aXQyDuQVTdX1UrHAU9dzORSRIPtH3zSSynL3J
         RUHtDDk0TFEXSprK4UcB8/33ye1OEalhE/+B5Q/7iu4Sci24S1eWz7w2FwJB74ozKf/t
         o+SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUSbrncAiDs6gEnw66HpBteE87XPysl2Sk1AHuvMjmBU9hCmH3PO4VVy8tWQTv1uo1R9rQv/8m43qr@vger.kernel.org
X-Gm-Message-State: AOJu0YzWD5JX43uP0axkTSJaQd/NXPc6wFGfVIyNPTBkrxxCF4hKcPzx
	b8PTkeUODeqFKBy6eq3iCNqWQQsac4uWcpLYweLADoEJGwdws2UoXr4wdHrQ2io=
X-Gm-Gg: ASbGncskBaTZSNxlVySBscw6hrTl9JA32nJ5l8tgTKP4LC/hsBHcdepAWeoOXOs9YYk
	wKKMzwz8vj1vDU6KIcqskH5dx4sFv3koeJ8Yyoo4RkmFrRizPamRLNEcEOf488CwRrTsTQGf4iC
	0fZ9yzt0PP6z6JjBrcvVLYEyPqxygq2hTcf26lgqFaC6HKD0eYykoEO76DhVtL7G9wOKgakbgpT
	/18oTyUXQ6ec1yFLXiJuokkD9DWCPVEaPYcMBH3tGmbMS7CbgPbkj7+XD+l1uPEv2BuIK/szypW
	RFV3EW0ZYyM0ZDn42c6zDQnhdsHV9o3siVNhr/1FeA==
X-Google-Smtp-Source: AGHT+IGakkDRo68IlrFBMJ0rTm6jyQBbovkArr+qu4dyz6/GSFx4+sETc8W/v1I3QTmizbzR3UPY5g==
X-Received: by 2002:a05:6402:2712:b0:5de:dfde:c8b1 with SMTP id 4fb4d7f45d1cf-5e59f394cc4mr16158716a12.4.1741259757166;
        Thu, 06 Mar 2025 03:15:57 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-5e5c766a194sm775352a12.59.2025.03.06.03.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:15:56 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:39 +0100
Subject: [PATCH v5 01/13] firmware: ti_sci: Support transfers without
 response
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-1-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1642; i=msp@baylibre.com;
 h=from:subject:message-id; bh=oOMPzH4LdaksoCbIxuNdPeXLXt+dMP0qmI97tgFNQuY=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNq9bO/exe8L37NsnKybG2lxeyBZxyt1PWpP5WPyCw
 sBnG1lXdpSyMIhxMMiKKbLc/bDwXZ3c9QUR6x45wsxhZQIZwsDFKQATsYhkZJj917mXS//svgkX
 eSRMP2mwhD8SMjryb9pKueW1zZxa728z/OH+qnz2WYBp1+SuFXzcET63pbX/H5ga+r7FvmRlhv1
 ZIXYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Check the header flags if an response is expected or not. If it is not
expected skip the receive part of ti_sci_do_xfer(). This prepares the
driver for one-way messages as prepare_sleep for Partial-IO.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/firmware/ti_sci.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 806a975fff22ae00ecb88587b2c47ba172120bc2..09d11e75e14e6a6a82f6d99ab1852c142aeb7e5f 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -398,6 +398,9 @@ static void ti_sci_put_one_xfer(struct ti_sci_xfers_info *minfo,
 static inline int ti_sci_do_xfer(struct ti_sci_info *info,
 				 struct ti_sci_xfer *xfer)
 {
+	struct ti_sci_msg_hdr *hdr = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
+	bool response_expected = !!(hdr->flags & (TI_SCI_FLAG_REQ_ACK_ON_PROCESSED |
+						  TI_SCI_FLAG_REQ_ACK_ON_RECEIVED));
 	int ret;
 	int timeout;
 	struct device *dev = info->dev;
@@ -409,12 +412,12 @@ static inline int ti_sci_do_xfer(struct ti_sci_info *info,
 
 	ret = 0;
 
-	if (system_state <= SYSTEM_RUNNING) {
+	if (response_expected && system_state <= SYSTEM_RUNNING) {
 		/* And we wait for the response. */
 		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
 		if (!wait_for_completion_timeout(&xfer->done, timeout))
 			ret = -ETIMEDOUT;
-	} else {
+	} else if (response_expected) {
 		/*
 		 * If we are !running, we cannot use wait_for_completion_timeout
 		 * during noirq phase, so we must manually poll the completion.

-- 
2.47.2


