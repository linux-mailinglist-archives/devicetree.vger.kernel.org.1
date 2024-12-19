Return-Path: <devicetree+bounces-132857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2CB9F8564
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BAEF16C543
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670AE1DC990;
	Thu, 19 Dec 2024 20:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nGat3Ra6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7233E1D8DF6
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638628; cv=none; b=c0NXBTWbLkakbaJCUYVnTQeVtDh6nscFnk7djpCeuCHQnnGsq1HIuM7yYx5z87DmCLOJyo18qqB2gHXGHZr5vO84JvGfNnikt5U4w/UiUIewpbEBW3TAsIRKsyLxECiQ/d913+Ri2A+BqYUDYi4Rrmc57qnOUkN7wap/nywwx0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638628; c=relaxed/simple;
	bh=r5ZUm8egrlEYPDoShASduxwkqRTGU1fuNRSx+4vY6C0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q/BrzgPc+IMU6XoCwywLiwenWrto+U6tWnUPkcdRCWMKsRpnM184swT0Q2qwcU1w8wDNOS4lq/yMlbfbnUw6GaplmZOWQPqyD4Jq2d+oWbVOpykL+DswQXejITBXwuZTVoXmlhTn/eEvhEqE8+4l3Ms6K8j7ncJWFSqaSTchc3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nGat3Ra6; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aabbb507998so223872866b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638625; x=1735243425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P7TbOAl0J1+553i2D7Hvckux88gOuL0DZy0CmTdqsmc=;
        b=nGat3Ra6sX9drZ64x3kTYbq7yqu3+MCTrWOzKKXiShaXOCBGZyYTofRxMmFZ5lEC5m
         +xAuIeGj1a9S2vXy1ArIkDmU4Xih/fUUKOyFZpLxmHHc0MpeBi4t3k3s9yWi+i4pGlsV
         WJwpOS1z3IUBqAqqcqDCx8pRLe8YC5Jx+RF6laOoGKzm9me/HX3bRGc5ARfGLIJm3jn+
         Upwrjam4uOGzTPGyvLWo+f8rpWh8pa4IkNEcRgMn+0K8y5Nog/I9MrDr7A9479fJpHXl
         fDB1/Y7u1wfRLhIFUJJo/KDmkRx0ARpSRqC+630ztuGtbHSLAYyk79NA4IIjBkWg3Wjm
         us5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638625; x=1735243425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P7TbOAl0J1+553i2D7Hvckux88gOuL0DZy0CmTdqsmc=;
        b=s9nPlMpr+VDiI/T8w+M9KWb6TR0gxoJDNeYa6zir3A4hdwymYet0Txz1LTRlIrDI2B
         tORgRU+EUqHTVh0F0Yh8fSdd2LDG0kzD19H4huIMzQ/JkZPqY+mMWBJaoNJH1tizdI6a
         bg6jY9O7w6HHpI7wMRMnbWhJ12e8zEKTUVT0NPelTnSaW8+MHyXxWCp7SMyz95VsjeBR
         8GZKuNTbPhb94kOZ2RXVSS16qUXTXVYXo9k+TyDkV020/FkB9LZjJncWLJtg0AlBGlQT
         y5oe3mD7Z+9QyZKWTQwOiW9BoztV1TzkLF3KTEsoBvE53Fj7kVN68fIsTB1HFEMMRp6K
         Ye9A==
X-Forwarded-Encrypted: i=1; AJvYcCVfoDNYZFsf0NZc8mDw1mN+g4OhGMJFGRsQ1sd89hilzXNst+lzeFUBa7Sd8UOxw5/cOq1XUSytwlaq@vger.kernel.org
X-Gm-Message-State: AOJu0YxO63C8cV46L0khCluAXjG/z/jwylu4JeikSpjltiyc4bt5qPV4
	n4+cq9SixM6cOqGu126TmHWhB9KyyjP1XeTSXC7y8vTRc3ZBfpqiiCmtWHIOh48=
X-Gm-Gg: ASbGncuZwBD2a1CFQu0e8k0JPrmtPmz6bN+doXyRcPOqwbSxOhamOJA9OrkwlyKXK8M
	1XaVoU1zmOX/fVwCLmPPhGF1zauIoaDIc9SWML6u8SvvyP4HdBE8QI+q3aM9rX+1iCELfTVMI/y
	A610epUr5PM/IAOrSfwggh41wpwSmq0rkKhuQF2PLsgt0P6lxzJh0ULGGOZNnQDUpOEVRqjnjNR
	3rXuV0RirFDLI7T5VvDg8BZ/UyBF0PdIMYihBP7hZ2umghrpw==
X-Google-Smtp-Source: AGHT+IGUjzXtWgTATIKd5bQdVHnA1/eo1JxNSwRoyL3yoIMsS7bxhfApz1VdWzX+tRETXv44jWlE+Q==
X-Received: by 2002:a17:907:3e8c:b0:aa6:abe2:5cb8 with SMTP id a640c23a62f3a-aac3366f16emr5355966b.60.1734638624897;
        Thu, 19 Dec 2024 12:03:44 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8954adsm99935266b.64.2024.12.19.12.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 12:03:44 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 21:02:12 +0100
Subject: [PATCH v4 1/4] firmware: ti_sci: Support transfers without
 response
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-am62-partialio-v6-12-b4-v4-1-1cb8eabd407e@baylibre.com>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
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
 h=from:subject:message-id; bh=r5ZUm8egrlEYPDoShASduxwkqRTGU1fuNRSx+4vY6C0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTarj39TIrHVuh58/m8JBRxrr1qJ5uREmCxJxbSsaiq
 ZwXu7Z0lLIwiHEwyIopstz9sPBdndz1BRHrHjnCzGFlAhnCwMUpABP5tJ6RYZPROX8WkaCDr54v
 ar7xNHraOY+HXUInGqX2H0xJm9e4Upfhn+otye2fkkWaw2PnSnS2aloe7Hv+uyqESeRU+tFuzap
 8BgA=
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
index 806a975fff22ae00ecb88587b2c47ba172120bc2..ec0c54935ac0d667323d98b86ac9d288b73be6aa 100644
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


