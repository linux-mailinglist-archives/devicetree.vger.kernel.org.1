Return-Path: <devicetree+bounces-238551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B92C5C595
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:45:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7B6D54FE7DA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002CB3064A7;
	Fri, 14 Nov 2025 09:20:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D3730596B
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763112008; cv=none; b=aAQagSkwdJrDSnPJXz4Ggql4kME+Goqp/Uz2tqmEULMZSI3rJJ6zCXUtSKIk8iaBrnOq24nXfRK1zP5M9UROlOGTZIdfa96T69rq3T/TfqmiAbK0awHhErhijaTnhM5HQhsUsYRRcOUE+z76qYqOPDXWMAzQtHHvjzieHqaNbns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763112008; c=relaxed/simple;
	bh=uX/W5jHntjYIMo4OFOyM2FKLYbCE0eIpoU56+D+TmUo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EFFkxG7BX3zoCmKZetoZmklvRSrizmBpDg7F/eOLauS24b9qKVIFDyucv28gaxww8zqPTwEETsFaVlHC2RNMXmmriPQhYhRCI1JSHB/ZJoPa79WTXYq3GPxeqQjwzVaieyanNVXzP1lsGij4WPZ3woH/OKUBn1Hia21Woez6Ajs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vJpyM-0004v0-Ak; Fri, 14 Nov 2025 10:20:02 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vJpyL-000OhM-2Y;
	Fri, 14 Nov 2025 10:20:01 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vJpyL-0000000H1w3-31ix;
	Fri, 14 Nov 2025 10:20:01 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
Subject: [PATCH v3 0/2] iio: adc: Add support for TI ADS131M0x ADCs
Date: Fri, 14 Nov 2025 10:19:58 +0100
Message-ID: <20251114092000.4058978-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Texas Instruments ADS131M0x family of
24-bit, simultaneous-sampling ADCs. The first patch introduces the
DeviceTree binding, and the second adds the driver itself.

These devices are not compatible with the ADS131E0x series despite the
similar naming.

David Jander (1):
  iio: adc: Add TI ADS131M0x ADC driver

Oleksij Rempel (1):
  bindings: iio: adc: Add bindings for TI ADS131M0x ADCs

 .../bindings/iio/adc/ti,ads131m02.yaml        |  220 ++++
 drivers/iio/adc/Kconfig                       |   11 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/ti-ads131m02.c                | 1053 +++++++++++++++++
 4 files changed, 1285 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads131m02.yaml
 create mode 100644 drivers/iio/adc/ti-ads131m02.c

--
2.47.3


