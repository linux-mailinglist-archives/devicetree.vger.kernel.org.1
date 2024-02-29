Return-Path: <devicetree+bounces-47356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D57C486CF1D
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 17:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 132411C22B65
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C4E78279;
	Thu, 29 Feb 2024 16:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d4UIcvL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4775818
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 16:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709223985; cv=none; b=SK6k1YABEavghr+qNCkIQ1blxaIhQlCcxADW7Hv/D0SBtX5tpPCvrNB+kYuReJr7Hr4KSkiNYswcv9SFqCZrspse84Ay9Uzc/aPkqKd1d4HW28Pyo2G/sOfp62ufyFsct0miejX52l5wHqLJv4SQGBDT+XzjfegKslGPTyk6fnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709223985; c=relaxed/simple;
	bh=v+uT1av2sl88VR1dO/eLr+o2H3H+rOGNPQ5vM4PEMvc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bPrDla1d1sc1AmDEz0FZ61EX96MA4sOgU8mgXVWd52zeYvRW29KRLYkSIaQq7EVrcnigVYibsCj/GPLUdz077FQJ1YLdhW/k6TZP8Vaw4UFcRDkLOzSpA19f/b5RjTHtBCgjMVMHNhcCG/cg1SxHIPfV5UwNt4hiLqfhmlhRG9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d4UIcvL+; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6e49833ccdfso454938a34.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709223981; x=1709828781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=isdRJ2LkpZPWbdYtwV073amQlPEG6TrmA4+SClB0Ykk=;
        b=d4UIcvL+8oq/Tw3dG0BEwbObiuJbBaCnXQQ4lu9ZSJkAu1plu/dv2m5AeTTt7OTIb9
         niv3abFuOW2Fxa9qqTaRhUNpsLtfka9rYHkfGkBm6a+6z3u7FHyIRpG9wIdCrogDIkV5
         QtSiLzFmiQ9KQHSdiJpGxBrFbFy5owzMB2F2TBAhb/+JprMr1lJ3nkPoUXEriABqakYm
         S6YHuAMU7Y7bircD1yOlglctlhnS7kzsCAW2u9QFONEz5lpTvTsSBpiskyLpN2bKGmDy
         lNXV9YdHTYcFrDsdUQFXZt33/DBrbqqXe5zVaE+rEfJZoq+bmVhuNXAO4JbSjsqXdOmK
         JtyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709223981; x=1709828781;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=isdRJ2LkpZPWbdYtwV073amQlPEG6TrmA4+SClB0Ykk=;
        b=T5cKkLdFwf1mcoylbIUSq1rpeqlAgP49LTxBg0DVaRekw/G5McENppo91PTVpJh+mF
         zJmmnNO8RM+NhO5R+7nV9rYqLeINKEM3Imem3qpM20wDdPNNfwpNAEhIB4lImW8rezlb
         LN4fUpQCQuS+94RtZKyTS1fA5N2ngUQTFw0+hJkWxN0YrPs4N0t6sOMYhc1MS2B1OXZz
         lyJQF/t+rRUufYz+lh/yUWzTfuUrcl6QeNYfuK5Y+xEtFlYfZZv8TgGilKY63ju8u0V5
         vC0Upht0BqQy+WUJ1EsuvjiId2A+RgquAdVzAAe18zcn0I8X/SOYz8dI4Tduk0D7EuWe
         wODw==
X-Forwarded-Encrypted: i=1; AJvYcCVAHTLRKZJqQrsW283rhALG7Iglyl+BIi/G4YV7+8b5wNYVM79+cqzOtzx0kAJJANwEtpj7MHBmXOXNotqXkJmJYEiLaTKT8Y+iGA==
X-Gm-Message-State: AOJu0YykmzkY/DWV780Q0s7bLlgXL+vp4sylWLb/PECYuPC3/fhpDe3D
	DWau/I99rZIfLb38AHooV60y4nzYRg0W3XTbbXLtUMhz4Co9E0vtfnPaVFWzpH8=
X-Google-Smtp-Source: AGHT+IEcMQZwAjFh0kFWEBihkV0hd95rT42OUpOFtVanJEFzOw2Zeq05gkLXsiC2d+xonwkOBzAEdg==
X-Received: by 2002:a9d:62d4:0:b0:6e4:a1a1:8d78 with SMTP id z20-20020a9d62d4000000b006e4a1a18d78mr2543228otk.2.1709223981289;
        Thu, 29 Feb 2024 08:26:21 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id b7-20020a9d4787000000b006e4ab46ede1sm325141otf.2.2024.02.29.08.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 08:26:20 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] iio: adc: ad7944: new driver
Date: Thu, 29 Feb 2024 10:25:49 -0600
Message-ID: <20240229-ad7944-mainline-v4-0-f88b5ec4baed@baylibre.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This is a new driver for the Analog Devices AD7944/AD7985/AD7986 family
of ADCs. These are fairly simple chips (e.g. no configuration registers)
but do have some unusual SPI configurations. The initial driver is only
supporting the normal (4-wire) SPI mode.

This work is done on behalf of Analog Devices, Inc., hence the
MAINTAINERS are @analog.com folks.

---
Changes in v4:
- Fixed broken DT patch due to misplaced changelog
- Link to v3: https://lore.kernel.org/r/20240228-ad7944-mainline-v3-0-781b922334af@baylibre.com

Changes in v3:
- Removed 'multi' value from adi,spi-mode property in DT bindings
- Modified driver for above change
- Fixed spelling of 'conventional'
- Added '#daisy-chained-devices' to DT bindings
- Added comments explaining that '3-wire' mode is not related to
  spi-3wire/SPI_3WIRE
- Replaced _sign with _diff in chip info struct to properly handle
  pseudo-differential vs. true differential chips
- Link to v2: https://lore.kernel.org/r/20240216-ad7944-mainline-v2-0-7eb69651e592@baylibre.com

Changes in v2:
- Added limit to spi-max-frequency for chain mode in DT bindings
- Added spi-cpol property to DT bindings
- Renamed '3-wire' mode to 'single' mode (to avoid confusion with spi-3wire)
- Renamed '4-wire' mode to 'multi' mode
- Dropped adi,reference property - now using only ref-supply and 
  refin-supply to determine the reference voltage source
- Fixed spelling of TURBO
- Renamed t_cnv to t_conv to match datasheet name and fixed comment
- Fixed wrong timestamp pushed to buffer
- Fixed scaling for chips with signed data
- Make use of sysfs_match_string() function
- Link to v1: https://lore.kernel.org/r/20240206-ad7944-mainline-v1-0-bf115fa9474f@baylibre.com

---
David Lechner (2):
      dt-bindings: iio: adc: add ad7944 ADCs
      iio: adc: ad7944: add driver for AD7944/AD7985/AD7986

 .../devicetree/bindings/iio/adc/adi,ad7944.yaml    | 213 +++++++++++
 MAINTAINERS                                        |   9 +
 drivers/iio/adc/Kconfig                            |  10 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7944.c                           | 413 +++++++++++++++++++++
 5 files changed, 646 insertions(+)
---
base-commit: 205bbf0d2dd2e0fcd6bf2a15b7df6fc570967e3b
change-id: 20240206-ad7944-mainline-17c968aa0967

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


