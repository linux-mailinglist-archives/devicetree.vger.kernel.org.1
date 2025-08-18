Return-Path: <devicetree+bounces-205565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA83B2978C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B551203941
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB91625E44D;
	Mon, 18 Aug 2025 04:00:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F1422FE06
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755489608; cv=none; b=B32icd65PKB6T5/8mejIZMQtZaCGYtcvwiNzqN6+rb+8bjjTlPdhf8LSnyaN2zjtSvgVVaKpsUnhJu6nJzf0n6FUOLKqdUbTvpDYzUTssufHP+TEO0uFscSqWCeoAeyKxnSwDcSYymkpdIUr4lplHjqBI3lZTId+MXKjYUDTg4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755489608; c=relaxed/simple;
	bh=kc+VtVq4mXb6dGLxZKenFKrUWMqzyRC/UyfP8youVPs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nDB+JwoeToGSh1yqF+Zhz2O9moaJSwA0MQZIZY9O3QuxLlKuyA+ges5URMygEgc8RBglW68dFzXZ9xCAJqfbzqH7okuwV3e/dehBFccNMqKh0gL9pOiMb+SX/YM6+1IgSg6nnMmHr51eV6+PUMIvE09hD7TX/jdtvtkKdoqrx1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=linux.dev; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ben Collins <bcollins@kernel.org>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Ben Collins <bcollins@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Hepp <andrew.hepp@ahepp.dev>
Subject: [PATCH v5 0/5] iio: mcp9600: Features and improvements
Date: Sun, 17 Aug 2025 23:59:48 -0400
Message-Id: <20250818035953.35216-1-bcollins@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

ChangeLog:
v4 -> v5:
  - Missed a one line fix to IIR patch (5/5)

v3 -> v4:
  - Based on feedback from David Lechner <dlechner@baylibre.com>
    * Allow fallback compatible in dt-bindings for mcp9601.
  - Based on feedback from Jonathan Cameron <jic23@kernel.org>
    * Be explicit in patch description for fixed width changes.
    * Check chip_info for NULL to quiet warnings from kernel-test-robot
    * Remove "and similar" for long description of MCP9600.
  - Based on lots of feedback, use frequency values for IIR, and use
    filter_type[none, ema] to enable or disable.
  - Set default 3 for thermocouple in dt-binding
  - Rework open/short circuit in dt-bindings

v2 -> v3:
  - Improve changelogs in each patch
  - Based on feedback from Andy Shevchenko <andy.shevchenko@gmail.com>
    * Set register offsets to fixed width
    * Fix typos
    * Future-proof Kconfig changes
    * Convert to using chip_info paradigm
    * Verbiage: dt -> firmware description
    * Use proper specifiers and drop castings
    * Fix register offset to be fixed-width
    * u8 for cfg var
    * Fix % type for u32 to be %u
    * Make blank lines consistent between case statements
    * FIELD_PREP -> FIELD_MODIFY
    * Remove explicit setting of 0 value in filter_level
  - Based on feedback from David Lechner <dlechner@baylibre.com>
    * Rework IIR values exposed to sysfs. Using the ratios, there was no
      way to represent "disabled" (i.e. infinity). Based on the bmp280
      driver I went with using the power coefficients (e.g. 1, 2, 4, 8,
      ...) where 1 is disabled (n=0).

v1 -> v2:
  - Break into individual patches

v1:
  - Initial patch to enable IIR and thermocouple-type
  - Recognize mcp9601

Ben Collins (5):
  dt-bindings: iio: mcp9600: Add compatible for microchip,mcp9601
  iio: mcp9600: White space and fixed width cleanup
  iio: mcp9600: Recognize chip id for mcp9601
  iio: mcp9600: Add support for thermocouple-type
  iio: mcp9600: Add support for IIR filter

 .../iio/temperature/microchip,mcp9600.yaml    |  25 +-
 drivers/iio/temperature/Kconfig               |   8 +-
 drivers/iio/temperature/mcp9600.c             | 220 ++++++++++++++++--
 3 files changed, 231 insertions(+), 22 deletions(-)

-- 
2.39.5

