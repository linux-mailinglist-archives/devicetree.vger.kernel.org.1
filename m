Return-Path: <devicetree+bounces-122264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 993479CF5B4
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 21:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4149828355E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629C31E3790;
	Fri, 15 Nov 2024 20:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hleUTxoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7111E2848
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731701936; cv=none; b=Un9TN6SbWM/92nTZH2UvyR700QjIS7XY6scgGEuiisUGT12hlbjZJ8iKrcKcdM6+9lBij7tVhgvbqnUoAWlEmoRB8iEh0JOIxwFx7UxXfj+DECH1K1fUwjuGSlKxQhJudcrssR8hHfeZYHdBIAy8I7nCcV5zySsgt4HSYo6qR4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731701936; c=relaxed/simple;
	bh=/brcg85kbnd2G8W/XlwOERT7c14hy3w6WyG/qyK3teM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DpcMRZmtPx+6RmsT+aMQzLouE3htKLoY0adidDCp0cUnwe7pABHMCKQAPIr0hcDYsmQ9ksCGELdqbaIEzsTPCVxCeEuivW1JxKJ2S7BdL+FJycxdTJO/tPWhwlhj8uDsUl93wY/tp2DVcM5aRM1rtAgMniALOobOm64iAfuS7Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hleUTxoT; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-290d8d5332cso5072fac.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 12:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731701933; x=1732306733; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mRU4AU2p10ANc+DkhnwT4CXPMLQZx70yMguYOCpfFSY=;
        b=hleUTxoT1VZU4cAgMHLKRXPdHPg2xv04kUBAv51NpVmEObB8PM0ApWZ4NZZ4kz1tX5
         Wm67MnmAiJYgZVLkrcrrUkEiIM0XrfeRm0HYii9qRUYiNHWOzm7RfJcVx2ijoK4dEyNW
         9DnLfERBZ56Lr20mMv0izH8om2eSTbU+W+e/Y9nWFSFAnhy6IVDcfl0v/Y6twqBBNjhJ
         aFdBu3U7d/jiollqz+W5nP9L89N1RcbJEvOqhgOBQELrU4gSaOu3h3Ves0C2wWW3b1P1
         kVENjuDeG8dgjXcCfMKq+VOPLskrpX6yq4ZcWi9Lzpge6NltfGnLahseieiSrlYs3jSP
         0urA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731701933; x=1732306733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mRU4AU2p10ANc+DkhnwT4CXPMLQZx70yMguYOCpfFSY=;
        b=uzhMJXlhVl4arDl7MIJXf+gztee3PCHQArfk1NY0eRF53XfrEzfEki9xEH67FbWKxJ
         E9tl21R6vdf8RFT0cDmkKKkN95hqxEn3jmsoWRztBN3lOp2OC7E7o6b1dxFGqJYOrmJy
         5xfZZM/wO2MvFuoQ+gVv/ygRVvspf40nWBblA2AVAHgtsNcZzUfV/LCewDjqycMAjLjB
         Wg9c2jQz9EaO4BAQlCBJelpHLye91AVabl+VMG3pwrXpdgJxopxyjyrfTN1RdmqZ8DvU
         ENrar+ZwSyhVC2pqsJNYjxpDgfV32e86PVBxJyms5kAKYwlgb0SBOhfP8fK/16s7qUg4
         aSiA==
X-Forwarded-Encrypted: i=1; AJvYcCVsuEt5XUuZDIOh37SswzC457l2KjyJdPm4eHmHT33ev8ZnO9oJrYEXS3x/nhsBIodX/BupuoNX3vK8@vger.kernel.org
X-Gm-Message-State: AOJu0YzfuCJ0cRljERYHqYBTzO23sv6lyevg876Hgh5ZVsrUqhqEARre
	uwCfAECFtvnc+99iKbdQiqQEKGHEbr2mdTG+NXjGKWMDh15nCfPsrEzSfBVGjbg=
X-Google-Smtp-Source: AGHT+IEq4dvxzsxFEL++1N4Levf1DEfOWHAxo1ifVYZbayZTOwOVP2E9GaVwjZAe8BvQjJvrahEhEQ==
X-Received: by 2002:a05:6870:96a2:b0:287:0:9ecc with SMTP id 586e51a60fabf-2962dfe8e32mr4184189fac.33.1731701932849;
        Fri, 15 Nov 2024 12:18:52 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a780ea62esm748978a34.5.2024.11.15.12.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 12:18:52 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 15 Nov 2024 14:18:42 -0600
Subject: [PATCH v5 03/16] spi: dt-bindings: add trigger-source.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241115-dlech-mainline-spi-engine-offload-2-v5-3-bea815bd5ea5@baylibre.com>
References: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
In-Reply-To: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Add a new binding for SPI offload trigger sources.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v5 changes:
* Add MAINTAINERS entry.

v4 changes: new patch in v4.

FWIW, this is essentially identical to the leds trigger-source binding.
---
 .../devicetree/bindings/spi/trigger-source.yaml    | 28 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/trigger-source.yaml b/Documentation/devicetree/bindings/spi/trigger-source.yaml
new file mode 100644
index 000000000000..d64367726af2
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/trigger-source.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/trigger-source.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Trigger source providers for SPI offloads
+
+maintainers:
+  - David Lechner <dlechner@baylibre.com>
+
+description:
+  Each trigger source provider should be represented by a device tree node. It
+  may be e.g. a SPI peripheral chip or a clock source.
+
+properties:
+  '#trigger-source-cells':
+    description:
+      Number of cells in a source trigger. Typically 0 for nodes of simple
+      trigger sources. For nodes with more than one output signal, the first
+      cell be used to specify which output signal to use. If the same signal is
+      available on more than one pin, the second cell can be used to specify
+      which pin to use.
+    enum: [ 0, 1, 2 ]
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 75c8ca9a8584..91a4a7eb6194 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22021,6 +22021,7 @@ F:	include/linux/mtd/spi-nor.h
 
 SPI OFFLOAD
 R:	David Lechner <dlechner@baylibre.com>
+F:	Documentation/devicetree/bindings/spi/trigger-source.yaml
 F:	drivers/spi/spi-offload.c
 F:	include/linux/spi/spi-offload.h
 K:	spi_offload

-- 
2.43.0


