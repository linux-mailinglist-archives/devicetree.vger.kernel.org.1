Return-Path: <devicetree+bounces-164372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F7DA80C35
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 810EF5057EE
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E577580034;
	Tue,  8 Apr 2025 13:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="u8/j49+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA64B288D6
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 13:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744118501; cv=none; b=n/43ffAm8hK7No7m97ztfcvgXP2RdffLqMupkU4NIEdd9m34chjp1u4xuPNclPnOzXjJ51HniPH8kGYlIkMdafJfDJt1ehNrJoKAdH+A2zXafCo8NjTDfxCTIPKdvspXK/rogU2iGCekX72nWaoc6+8smkzZUjVQKzc4LtfmBiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744118501; c=relaxed/simple;
	bh=JykIIwYDCyjawEXtijT7j0iU9oc/WpKabWh3X/j+B8c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UVacC6Lf8JeK8K22zujFG8u9pW8DibutT0igZTHhF3eTDBYcw8A/HJXNxppgjX9B0naR5IEJOK6rO5Ac72Hao9FldEHcLh/ewtr44TVTl9GRRmUXJZ/JDrjiutGvrt3TiEx4POV/MTgSihxmzWgr9J/j7m4p1gsKcuc7f4kQWpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=u8/j49+t; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-736a72220edso5620114b3a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 06:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744118498; x=1744723298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OXhow9G6LfPKft7ESsFuZneQo6aQLWh4r6wFJN4PTzQ=;
        b=u8/j49+tB2P4ZzBEY+z9VjkIrsEIyBqQaqNSXCzB73jnumnX8eJYaceXCkjSS7bV4S
         JJuKDESQxB1AV5Zc69Lj9C0y4Pi0b4Q7K1qvWLoMUD0+paomls/RdfDsCSeL9LHj+Dq6
         Kp40G6fHhlTYdWvandxI/Tcyf8c6pR3lk+/BCFYTuIv5VzOl/v7W6y6Kmj4ZZ97g/MrP
         nDK63pPdc07c+0v0qchcxAdE0UU10qaCh0L6vnZkQbk56gHcEIsnHIYpwHenhuf96lzh
         zKCQ1vBhPu/BKcMNp1GpyyQ+DzIq7EXbb9WmnL2j4ndrHHtDrKxLOfqquRp+i2W9sHF0
         eVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744118498; x=1744723298;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OXhow9G6LfPKft7ESsFuZneQo6aQLWh4r6wFJN4PTzQ=;
        b=V/K9OfSUby6togqwrXsmyHpQsF6HBVItbGA2WDVoL3GaVuHCzQQ85giESj8CLLauU3
         zmMslM9ubwaDlUCs1iO4yk14bwDGsQ3EVSEt2mIT9Ip9v/OTffN4nfAe1sIetSfX7UiE
         Ejt9ruVXKC74b9AKJdgWcbsW7AiigxlNh8SCzk0HVxala6lFNP8INZq3w0XoATQZzSZ/
         XlMHnlPwngpqEbvvETPojnGX1N6wikvh7Hq7ZcVI2V84rkSEB2dAh75a1Q/WZQlaMb9D
         3d3yKOAxu4txyhXVOKfnPnLHUcKPx4/rHCTogXkxUAydnO0jnADuBzlJU40SyPkwKr7d
         IUlw==
X-Forwarded-Encrypted: i=1; AJvYcCVekpc2Ykg7kI5B8lgSXsbP+U2Nd9ETPCgWmHxfQm9fL3Lm54cHjBIz0VGPk2FityuX99K5E9gU95xN@vger.kernel.org
X-Gm-Message-State: AOJu0YxRk2dvcVah9mTH7rIOQc6UIGyWKXvvbLvfX84qRU/4bzlhcd8O
	2kplLtNGG6CG4TkWJuj33JPj/kpaIYm975qn/C9JsPH7onaG1e2y45RnKVburVA=
X-Gm-Gg: ASbGncvb44UWFxckaCKPV+DZgZdLklgeqvyvC1nUu4DbEkiCISFEck7fqiGQhDChK0/
	Gy7O3DecjlO1A7ysHSsO3EnfLuK8GU0J7UTMjIIElyNjHfvqC9l5bg+T3/rT5+GAPcUaJOtirnY
	iLeraDMLHE9hCT5OtsE8zzkx3WHQ1UJHGr675dNz4vSWLAt/xw0XZd1k9F+zW1WdNbKcQ4rRPo8
	RMbtdZ5y/cZZ5UNITc0AqjiHefR0dWCip3+u9sQ7cXyCDgAon6BrRMX4pS51Lil7ZC8i9/eJBEc
	kkHZEDRa3YYXS8rzvspm8w5rLLkd99U5BePGmiQwIosoL0MkEzZa6roJIREvkBK+DmC/pK7eG3B
	IlkqTjwk=
X-Google-Smtp-Source: AGHT+IFz565EmwdZI6G6fqS5eARGKS6h/lUhrUYOGgeKnNkpmHWtd/3dLP7BxOpQYwBvP6XvleclEA==
X-Received: by 2002:a05:6a20:9c88:b0:1f5:70d8:6a98 with SMTP id adf61e73a8af0-20113b1a932mr18860716637.0.1744118498123;
        Tue, 08 Apr 2025 06:21:38 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af9bc41af71sm7439565a12.75.2025.04.08.06.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 06:21:37 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Nishanth Menon <nm@ti.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] iio: adc: ti-adc128s052: Add support for adc102s021
Date: Tue,  8 Apr 2025 06:21:18 -0700
Message-Id: <20250408132120.836461-1-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch series adds the support for adc102s021 and family.

The family of devices are easier to
support since they all (no matter the resolution) seem to respond in
12-bits with the LSBs set to 0 for the reduced resolution devices.

Changes in v3:
	Patch 1:
        - No changes in dt-bindings

	Patch 2:
	- used be16_to_cpu() for the endian conversion.
	- used config index enum while setting up the adc128_config[]

- Link to v2:
	https://lore.kernel.org/lkml/20231022031203.632153-1-sukrut.bellary@linux.com/

Changes in v2:
	Patch 1:
	- No changes in dt-bindings

	Patch 2:
	- Arranged of_device_id and spi_device_id in numeric order.
	- Used enum to index into adc128_config.
	- Reorder adc128_config in alphabetical.
	- Include channel resolution information.
	- Shift is calculated per resolution and used in scaling and
	raw data read.

- Link to v1: https://lore.kernel.org/all/20220701042919.18180-1-nm@ti.com/

Sukrut Bellary (2):
  dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
  iio: adc: ti-adc128s052: Add lower resolution devices support

 .../bindings/iio/adc/ti,adc128s052.yaml       |   6 +
 drivers/iio/adc/ti-adc128s052.c               | 149 +++++++++++++-----
 2 files changed, 118 insertions(+), 37 deletions(-)

-- 
2.34.1


