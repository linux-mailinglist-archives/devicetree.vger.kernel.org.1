Return-Path: <devicetree+bounces-257066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43507D3B6E4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 20:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7614730471BC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D143904D1;
	Mon, 19 Jan 2026 19:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HuCrCjvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD95364E80
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 19:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768849694; cv=none; b=M64/0pU51OnGKAIGYQaxz52gjY2PHVwkURuXO4GF69pOcaseDASQ70kN+1S4sI6H7FmD0t4CqhpvQvfKZTd4VWA/r4qDx2bZoRqMT59O8bZyd+rozcWISlF2pvx0YC/+hovsihpzlRrnHHhAS4MBPnxpfY8EookKmt+0fbCL81E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768849694; c=relaxed/simple;
	bh=qfpFdkLsBGgGANgj9kVGeqqpnQlEiiVtS8yzlZ97yaI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NHObg+LDIhk9mYv9WlaD4tUPrnti/C6V6HPg+Zv5N5238yKzGpFQX473c+ofQRj66axdXgOZdfdVIccTFiqt0JZJYZGHv6CP/V59nTIWR/2zJV9sGpcmPaZ+P+HotZYrk2cC6nGQiVV5TdW5C+tW0he4R6nRf21l8Pr3in3uvEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HuCrCjvX; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso8152009a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768849691; x=1769454491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ML1udjI5WsKTlsN81qTjNJ9Oi94uiir2ybxpHYc2O3U=;
        b=HuCrCjvXgxQVAys9CwNo2hJL7E0gkBRzr19p8/s5EgzsYwjqUeKzaJ7VuH4QRi75t+
         TbVwtt1UJXhVwWn2v38ZkgGiO0jVLDJkeKgN7UMcvbrf2LqECRIXGmFnTUYGw+Pfposi
         1as+kWnZGe0GRArBoXVQo/8W6v6CIbKhLiAYMaZAvsIA+fiY81xdQ1wwYak9VwUB93ia
         jjXpTR+/+9sYl4xnTzWvguiWqp+GbkTwVKz9jaBLYvVTvBz/8p9oln8nXDNR+ouLifO6
         VK08SWaLYDuI4YSWPLq1q/3sCP3as5YgG7Cyx6YBqSKVN3asPemvE/kzLyduTZzSZnJm
         w3cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768849691; x=1769454491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ML1udjI5WsKTlsN81qTjNJ9Oi94uiir2ybxpHYc2O3U=;
        b=u49Zc4Brty8kKac+MVmNq5IJXEWptDtLqvuC5aAWYNX1uoZKSXdxBbyqOpw+ghA8ny
         bwvDa+uJ6JWbqx5+sjYqiT8/OhCPxSdAQi6YFcTvUvjEBCVlsl8o95W/Kn2CyK6PH3SD
         0ENUqsGv3RFQEyy16USA/y5aD+HKCnDextJfK0Sohl3VmQ5C1B7V1T3BuGXMCLL2UfW7
         kfGBAXzdTgo1g19kfxoK80/doHKzvbNPlIcp4pi9FJh8F1vZizzcMAGTi/BJFSTlMQaV
         GkhlpdzFqnzARQgXzerkIiiwn8EfeQFqMHu00iD0cPL0V/Yf5Bml+YhBM/S/7Kqz6adc
         FuOw==
X-Gm-Message-State: AOJu0Yz8pj5QygHsP01uwCRXgynh4ctBYNzWsT4AP3qAMM/AiRPXjg68
	tQqdZQkjHfGYxWpQfJWTIW3g7OWqogD8AN4BuZQmVENjhMZCL8aCnJCy
X-Gm-Gg: AY/fxX5sMARsG7AOzE99UiJOi0KIWzKlRu/bEO73tiVOSzpkocxQX+bVLGBPx13lV+O
	yJqXI+3QDEQux/f2+fhX8aoQ52KQBjhue+/z83QBklPfH8cc9ylGEKvCyRgAplc5RYDMpKNRnLi
	pytT9rkMbXWvvJRB7Kp/sHF/9M0emY/nnQdJaT29KCfpRz4XM/VjF4bdfWwAcX8kVsfOx4iR7Rz
	vSWlvCkGzuToWjuqDHhabirPYt8bUbosG7jQ/nkyBEttZDfhhIB9PqcKJiM3OID92KqAD5JyNi+
	qL2vLEG51lq0fFCO7T56xKtK7X05D0h7puhZ5CKagStIxL/ZuK/RaRFS83kRpb/GYyV9+XM3o5l
	AVNDOlT3Ju2NEBOUD+dxve5UZTc7Xewjwp36PJo1Gu6AqacvpBqXS+OL9OTsItezlqhSG068TaK
	tKLp5nK+7H1EWB5EX+bQ85wXg=
X-Received: by 2002:a17:907:da16:b0:b87:6:3727 with SMTP id a640c23a62f3a-b8792fc4039mr1177830366b.48.1768849690452;
        Mon, 19 Jan 2026 11:08:10 -0800 (PST)
Received: from vamoirid-laptop.. ([2a04:ee41:82:7577:a4c5:86fc:3b16:bc0a])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b87959ca32esm1193767366b.41.2026.01.19.11.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 11:08:10 -0800 (PST)
From: Vasileios Amoiridis <vassilisamir@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Vasileios Amoiridis <vasileios.amoiridis@cern.ch>
Subject: [PATCH v2 0/2] Add support for HiTRON HAC300S PSU
Date: Mon, 19 Jan 2026 20:08:04 +0100
Message-ID: <20260119190806.35276-1-vassilisamir@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vasileios Amoiridis <vasileios.amoiridis@cern.ch>

Changes in v2:
--------------

Patch 1/2:
	- fixed type
	- Added Ack-By

Patch 2/2:
	- removed if statement for VOUT_MODE reg
	- device specific read_word_data function reads only affected
	  registers and returns -ENODATA
	- fixed typos

v1:
---

Add support for the HiTRON HAC300S AC/DC switching power supply in
compact PCI format, with a 300W rating. This is a simple PMBUS
compatible device.

There is a small caveat with the internal registers of the device and
more specifically with the PMBUS_VOUT_MODE. As it is already described
in the driver, the device does not support the PMBUS_VOUT_MODE register
and at the same time, it returns the voltage output values in Linear11
which is not adhering to the PMBus specification (PMBus Specification
Part II, Section 7.1-7.3). For that reason the PMBUS_VOUT_MODE register
is being faked and returns the exponent value of the READ_VOUT register.
The exponent part of the VOUT_* registers is being cleard in order to
return the mantissa to the pmbus core.

Vasileios Amoiridis (2):
  dt-bindings: trivial-devices: Add hitron,hac300s
  hwmon: Add support for HiTRON HAC300S PSU

 .../devicetree/bindings/trivial-devices.yaml  |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 Documentation/hwmon/hac300s.rst               |  37 +++++
 Documentation/hwmon/index.rst                 |   1 +
 MAINTAINERS                                   |   7 +
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/hac300s.c                 | 132 ++++++++++++++++++
 8 files changed, 191 insertions(+)
 create mode 100644 Documentation/hwmon/hac300s.rst
 create mode 100644 drivers/hwmon/pmbus/hac300s.c

-- 
2.47.3


