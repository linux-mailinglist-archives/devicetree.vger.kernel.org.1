Return-Path: <devicetree+bounces-110392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CEF99A4CA
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:20:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B584F1C22F7B
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0975621BAF8;
	Fri, 11 Oct 2024 13:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="joKSJsQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31E521A719
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728652689; cv=none; b=SCSnhnSgHLxPTww9EGHWFir5SOvx+MydM7rUF+BxrDPJEtwiKtxUAh973rLoiQ/dt8qwKvb0LxHiyfZ4fCYgQ3y1P3l7ZgN5P79PiwamLVstKgHZpVz9p1JmcqW/nM/95Mgb3VOEhYLnmdOmEZ8ipscejN4Z34U7p2ulnhyQpvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728652689; c=relaxed/simple;
	bh=ulDHdao8BTiFyv+Pi61bMFlLk5gdDHQrGY9errmbLQE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cm8i+uYfA0Ge57ap1otptYtzdUJuILJyRc1vgvdCTO5TC/okz12F2Pe15aTdYTJtZwKi14NQB4vpQvUSZFjB8rtQOzGKZX3S3TjbJl6WmUAthVKUqGI+y40VYPHg1WNZmQqmsw8Og0lkiz+EFeDjIQOrYb6V/eGJIBUxMEFzhHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=joKSJsQ3; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c883459b19so2352062a12.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728652686; x=1729257486; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vga3MOZfmZ29kxHJN0FdVgZZZBaaChAjrwFcDU1qvO0=;
        b=joKSJsQ3f2PEheIiVeVWH0KTDGiWyGtKXcKrSFTcaAFRog5XZyf4j2dzakS9ox/e9f
         37br6Zi9Mgk0bIQLCxuU1n2sNNuztbaZUPrup8AJooqtZDHvZ2U2EYXprlqeXb2YVcFf
         5XiKolaOFGReUPCIsNTsKQhZapOyzFtMw6MvQeTNvrSREBJ+cH933E1UmonJ2ZIPG0tD
         JuMAVnfFe+MsdsSq0fpIx448Y21uKjO0wHwsrvVu9wEtDaeRicsK93spHzRjPpWzJ6N/
         FgWCGMUInY463BW8/k2d2rsetGeMgEAB3wn1tqCE/yvw7kZ+NXl/FpNKhEQKtxveYIKj
         a8jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652686; x=1729257486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vga3MOZfmZ29kxHJN0FdVgZZZBaaChAjrwFcDU1qvO0=;
        b=eEpL3cT7pukj2+P/za0muy/3P3ep2ZP1aIv3IcaNDOAEeJQy22MNtPIqE1xlwSX8TY
         5Okpt8Lgm+nQX6kjNGxnFkIMkQl/l/Tb5FmcO9bdreikp4QaQHYKlyXdPgUby1cL20gE
         EsmXJ/3neJ3zxk7WdVo8hEpfrswyNCHSmQ/pX77bzGbI0kqfMS5LOPRR3bgtF6l9cVbR
         9uufch7KczUeaM6kQLkIPbRnh0OTNCjzptAbSm8oyQ8B3PVS4puxL6sOOSczjQzGk7H3
         SdXYuF3lR0T9o0TaSgUT7EU7zSdJEMOFk5WeX1Evy5o0ewMveG0y4qD8u/6jes2sfRD9
         T9DA==
X-Forwarded-Encrypted: i=1; AJvYcCWtlsrq9Tp2+nmMIP49nIvdaPTv0A2ne+1z5U/CYGqnKGTZaoaoX4Em19PWFjV/i7gtDlUcsbPeNV/0@vger.kernel.org
X-Gm-Message-State: AOJu0YwzN5/isSOWz0YIUKoEgbbQom19FTayhmFKeZNVoOQZzjup1Jy0
	fdapxW7583v1BNYU/FRyL208iNb3vYJKjf1AoYKE2p5f6Kw58sYQvcufCQdIFmw=
X-Google-Smtp-Source: AGHT+IGgoWPy1ViOIak8PVBnyQlhX6rbT31r7c6raHYXCjGwe6/3JiHlA5M2yM504nFnhQ1ciPMqXQ==
X-Received: by 2002:a17:906:d7d4:b0:a99:75bb:a37f with SMTP id a640c23a62f3a-a99b95a5e37mr203682866b.54.1728652686348;
        Fri, 11 Oct 2024 06:18:06 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c0133sm210634266b.114.2024.10.11.06.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:18:05 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Fri, 11 Oct 2024 15:16:43 +0200
Subject: [PATCH v3 6/9] can: m_can: Add use of optional regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-topic-mcan-wakeup-source-v6-12-v3-6-9752c714ad12@baylibre.com>
References: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
In-Reply-To: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1195; i=msp@baylibre.com;
 h=from:subject:message-id; bh=ulDHdao8BTiFyv+Pi61bMFlLk5gdDHQrGY9errmbLQE=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNI5VfP/1iQ80tPZ75Kx42dt2JHw94lrkh/uVZa2XML99
 v6+rWd/d5SyMIhxMMiKKbLc/bDwXZ3c9QUR6x45wsxhZQIZwsDFKQATuVXLyLD4/Qamp91bjJd/
 +bJx67HC/O3nY4zkqw39JwjdjzgdN+EBI8PuazdthD6er/qTfdYjL+jLCa5HcY+VO9/fKOCSXMS
 s3cwMAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add support to use a regulator for the core. This is optional and used
to register the dependency on the regulator.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index c56d61b0d20b05be36c95ec4a6651b0457883b66..b009575354cf5f19e93950bb17d448f81609aae4 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -23,6 +23,7 @@
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 
 #include "m_can.h"
 
@@ -2383,6 +2384,11 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	if (dev->of_node && of_property_read_bool(dev->of_node, "wakeup-source"))
 		device_set_wakeup_capable(dev, true);
 
+	ret = devm_regulator_get_enable_optional(dev, "vio");
+	if (ret)
+		return ERR_PTR(
+			dev_err_probe(dev, ret, "Failed to get or enable optional regulator\n"));
+
 	/* Get TX FIFO size
 	 * Defines the total amount of echo buffers for loopback
 	 */

-- 
2.45.2


