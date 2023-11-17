Return-Path: <devicetree+bounces-16731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B08277EF841
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22CC1C20835
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7299A37179;
	Fri, 17 Nov 2023 20:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="f48DKjAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D02E10D5
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:53 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3b3e13fc1f7so1496344b6e.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252033; x=1700856833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=daUtcUgvD3JlASmZskT09A6jBu8ff2l03YGGYSvkuOo=;
        b=f48DKjAEIQUdrbqTo8CyXZNyvcYeKbLZzgsbK9bp6xrsHmzxpAXHkNPhWNfRkTSaLa
         0S/L9/iwFFvnwYMTjARBSJg3tj8Nb4n9UYVr9cQ0+/A7YKRIr8xhMD34l/INVH9noRdv
         9sOMzurGwze+y4Z16rKZnoMzqdj7ZsHnFWAFZsmIJPnZM5Ysl96ymCgwGMcU+1Yo+grr
         R2BMwrIsnXk1o7hHcd4VHpErxPyU2y242szks8KOljLatQlm48qqF/67x7UV5cEjzZF/
         DOtJgqQZNeC9twILU8f8qd/LocFsJI1WtV6R6aSTts6gmTUm+Hj8/l69wZ17ldD5twCc
         xi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252033; x=1700856833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=daUtcUgvD3JlASmZskT09A6jBu8ff2l03YGGYSvkuOo=;
        b=lLRqkT/87rdFm6LBX4cqs7v6ip1K3tAH3rZK5pVLhsJg4ONbdxsYOSNHqOnTk+N9wO
         3Zz07AE+bfR9Jq6hbCUwgtWo7OH3wsOa7YdfX5FVd72TA7AwGT5L7OhQw5O3yNzsYioT
         krTBx0TMY7O6XV6kra2a2cim57x9IL7FH/khMCHip5BhPTEDT9JA+BLvbq6Q3//ArVPN
         Bkt+x0EjNOYen/MBEyASOjWZUXxMWbWx94fH66lPA57E5uux6fzEfCWhglex7gFLSCaM
         /B/JTJ79QxKGE1+R5VMI+hwhxEIbdzd5d0BJqxCf65ZOmGI1FJGJQ8QXybXgipPeCTpJ
         59/A==
X-Gm-Message-State: AOJu0YxNEW78QhkOewltZiRCBAD9Qn4jqKJhc+HQC1S1bDowEhQ/zpzp
	XkdWCKiNLaBfqWdyXkulc7RxhA==
X-Google-Smtp-Source: AGHT+IGupY9tgQkSOvQ1he/qTdneFPbPBSmCn8gJ3wctSyTP/DRvtzXTw5+16bwfGWkofb9g09taVw==
X-Received: by 2002:a05:6808:1704:b0:3b6:d617:a6f7 with SMTP id bc4-20020a056808170400b003b6d617a6f7mr595509oib.3.1700252032911;
        Fri, 17 Nov 2023 12:13:52 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:13:52 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 02/14] MAINTAINERS: add entry for AXI SPI Engine
Date: Fri, 17 Nov 2023 14:12:53 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-2-cc59db999b87@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

The AXI SPI Engine driver has been in the kernel for many years but has
lacked a proper maintainers entry. This adds a new entry for the driver
and the devicetree bindings.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

Note: This work is being done by BayLibre on behalf of Analog Devices Inc.
This is why the maintainers are @analog.com rather than @baylibre.com.

 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 97f51d5ec1cf..a40f61ad5843 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3415,6 +3415,16 @@ W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
 F:	drivers/hwmon/axi-fan-control.c
 
+AXI SPI ENGINE
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Nuno Sá <nuno.sa@analog.com>
+R:	David Lechner <dlechner@baylibre.com>
+L:	linux-spi@vger.kernel.org
+S:	Supported
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+F:	drivers/spi/spi-axi-spi-engine.c
+
 AXXIA I2C CONTROLLER
 M:	Krzysztof Adamski <krzysztof.adamski@nokia.com>
 L:	linux-i2c@vger.kernel.org

-- 
2.42.0


