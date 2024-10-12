Return-Path: <devicetree+bounces-110652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F4499B58F
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23D7BB21513
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CAE19755A;
	Sat, 12 Oct 2024 14:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xLNkyHLW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748F61925A8
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 14:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744022; cv=none; b=Lf73b0LVuwBVpvayp6IbN4h8nhPY4GxnzIKmuhYe4Eb9T4ggOqVDm5h5cznty92TdUZfCLzIbZnIFVvjFRXdujb7SvYIAj+UFR1vYVIIA5UT3w8BfdyIPMcvuHJKXxfP/cluLIhyJ8uig/B0ky4A+Puu/uPJcL/XuLMgfVMnUB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744022; c=relaxed/simple;
	bh=gzvHCEERIFSUE2/l9XVq++gH4WwGcviKuuBBdUnSMcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gYa/xnB0r/kizxSpf/J+MyOWZYgQ1ErgXRmpa9GH8LpdsKDiNUNtq0vK30iCNIAJfItGO9NOhgfU1T+nu4qCzHZfYSyKJ6ZByyFT6RS1efR0rZblLF0DlU70ErccHii+fLQJQ6WdDqF6Jo5krfe7534Sf7Nrlw4D3DJZEnv7Tdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xLNkyHLW; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9943897c07so401840566b.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728744019; x=1729348819; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+V4+PzZtNi7MIeIEF0+JVFMXtIpzK+7/ZpBXRsobCbY=;
        b=xLNkyHLWiMfYeNm093Pr27OqFaOVCUnVtu0RBZJk2qbLoW9Yluq8M37iiVIQ4iGcaz
         JokH4EdgSHJHmvBgGNNq3vzXJs9ow6ZV3GsVrsYFV/Rl4X4p6AsFMHwu/gOh59IHsTyO
         fYeckbUha91loUBgAfMztVF1vGB08vynZ7toY9O+U+muFijZDV3feqA58C1w8kfwi9Xi
         dif0IySjhMacyva5otbkNfYKtPf54cYXYOkDOD33yJtLdy7zQXF5Zu7nDsKKxckpyJSl
         X2o5fOGaq/3FuaJhlnrAkjAUM+O1kSXhNwmfgNVN3yxzAo4IjiS+w88NKqlhXpOPshEm
         CLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744019; x=1729348819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+V4+PzZtNi7MIeIEF0+JVFMXtIpzK+7/ZpBXRsobCbY=;
        b=AowWpKfL8JGCmSUGQ3C1fGGyTLwypu6Her3K+FsJGlvH6Nngg6uehDU6uChQczpd98
         RONW9ZpJXVO1RMn3F4mSmJ9KOFOcGLJ/kXUCLT0nq4XSbawVs4CKazkw5NwWymIakLGv
         P/0/hsTGGOQu2ri570yyXbDj5MtGH9pjdq4s4Lt7QP2u3EJtccq8ebqMVCcctgaHpdgj
         bmSzlb09So3+rF63EltCodElvpT+CgxR32rdplzDXWZIKI5St/Mtr08jRADQWJkz75Ta
         BJFuGULvrpSADTncl/PUcoirA0ha+L6Gu5LEuFzMEJ1PdloYGsSJR2twn/deZbY/9HFz
         92oA==
X-Forwarded-Encrypted: i=1; AJvYcCX+QvA7hMY4qbUUVOggGqNwDyM7OneBTeT5LSZXS1rqbXvGu4Mi8RnB1OwvXBBJzZr+HACYMB522tK9@vger.kernel.org
X-Gm-Message-State: AOJu0YwkgutGwwB/BP1kn6VtquSkxUrYRuS4rwrGFMHwDPPv5fAF3Qzo
	dbp6M30+KfIfB6qGcJq2rlhopQRAOkowXaOCYFy0USPB4O1A4sgl2hYbhqcl7Mo=
X-Google-Smtp-Source: AGHT+IED80b4AbvloJuTe1bZzV8uPZDsuxDtElUD5sao7Y4gzMTYG2NdJpeqQ+ZAJDYGrLU8wprhgw==
X-Received: by 2002:a17:907:e2d0:b0:a7a:aa35:408c with SMTP id a640c23a62f3a-a99e39e4fbbmr281594166b.8.1728744018451;
        Sat, 12 Oct 2024 07:40:18 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99f752b7d5sm29972766b.217.2024.10.12.07.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 07:40:18 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Sat, 12 Oct 2024 16:39:27 +0200
Subject: [PATCH v3 1/6] firmware: ti_sci: Support transfers without
 response
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241012-topic-am62-partialio-v6-12-b4-v3-1-f7c6c2739681@baylibre.com>
References: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
In-Reply-To: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1782; i=msp@baylibre.com;
 h=from:subject:message-id; bh=gzvHCEERIFSUE2/l9XVq++gH4WwGcviKuuBBdUnSMcI=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNK5uoxOfru8ZOs2+7jSxF3bFZmrF7YalPlJGrPc/hj3K
 aruoZdXRykLgxgHg6yYIsvdDwvf1cldXxCx7pEjzBxWJpAhDFycAjCRABeGfwZc5gofIxMDjolP
 CAkTkF7DXGznu2PHilClUKXtHx5Pes/wz3Bm4WNJbbE4JTuVbxUR5ctXbm0Q/7yAveK55dEnFXf
 ncgAA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Check the header flags if an response is expected or not. If it is not
expected skip the receive part of ti_sci_do_xfer(). This prepares the
driver for one-way messages as prepare_sleep for Partial-IO.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/firmware/ti_sci.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 555e41cc08080c78b3991a8d6c06f5030a576d72..9ef86ea27a3c9ac6b9aa4a838a4f5e9fc09a81a9 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -398,10 +398,13 @@ static void ti_sci_put_one_xfer(struct ti_sci_xfers_info *minfo,
 static inline int ti_sci_do_xfer(struct ti_sci_info *info,
 				 struct ti_sci_xfer *xfer)
 {
+	struct ti_sci_msg_hdr *hdr = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
 	int ret;
 	int timeout;
 	struct device *dev = info->dev;
 	bool done_state = true;
+	bool response_expected = !!(hdr->flags & (TI_SCI_FLAG_REQ_ACK_ON_PROCESSED |
+						  TI_SCI_FLAG_REQ_ACK_ON_RECEIVED));
 
 	ret = mbox_send_message(info->chan_tx, &xfer->tx_message);
 	if (ret < 0)
@@ -409,6 +412,9 @@ static inline int ti_sci_do_xfer(struct ti_sci_info *info,
 
 	ret = 0;
 
+	if (!response_expected)
+		goto no_response;
+
 	if (system_state <= SYSTEM_RUNNING) {
 		/* And we wait for the response. */
 		timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
@@ -429,6 +435,7 @@ static inline int ti_sci_do_xfer(struct ti_sci_info *info,
 		dev_err(dev, "Mbox timedout in resp(caller: %pS)\n",
 			(void *)_RET_IP_);
 
+no_response:
 	/*
 	 * NOTE: we might prefer not to need the mailbox ticker to manage the
 	 * transfer queueing since the protocol layer queues things by itself.

-- 
2.45.2


