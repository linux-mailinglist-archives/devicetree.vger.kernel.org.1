Return-Path: <devicetree+bounces-313554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ncjJEbsXNGo4OQYAu9opvQ
	(envelope-from <devicetree+bounces-313554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:07:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB49F6A1799
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:07:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LvVNtPgB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313554-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313554-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 12EE43050E76
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF59340A51;
	Thu, 18 Jun 2026 16:01:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71E63403F2
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 16:01:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781798517; cv=none; b=i2mhQu8A11CEK2AaqoxlomYmRV6h4tKJ7uU5B3vbw5kGDDr1Wj9EOogzeGKDUQcQOz5U6e8/lmPasbl3ZNV72L8oscpK6QjzlNXp+i4y7TVqIUp2p7J1uC4gVAl2iJGGJhYyCkTOBoiGsXI//p00+p890MgEy3L8BXiCabhO5O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781798517; c=relaxed/simple;
	bh=+ZfrwAlHc1DvcFEr/8rwstlWpm9IWgekDz2iNBTwKzQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nWq33lrtUV8qqZupqz41CGjLFbAaUQzksrvKpAXltnMOo2B+P7i6bHHrnZjRfDZDBM/dn5UGz9xv4guUBQngNKKeE1f3PteUrkiKSsHwctBqbq1ZfBeHCEcq7SwEfTZQlXDMDzdjAFZf6bqbS9zGYm+QPB2/S72xojz6MN9ncNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvVNtPgB; arc=none smtp.client-ip=209.85.216.46
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-36b900f350fso1312642a91.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 09:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781798515; x=1782403315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o9+PJwtSfKZ+xGloTz14vmNyTIImuf5/PM4ChtjIZSY=;
        b=LvVNtPgBSGSYPPZcZbqC7+gWOU9EsJfmV76IHmkQ6298gxcXXQ1xUJY2Zj+gRnrY3W
         MI0va8rxmkTSpx1HIM9HR+depjl364HNIasllkeSLNrO8ddT9AyIMZexfU878tK0ezT4
         szj1lkkAdhWxMq8g9JCwLh38kbI1DDXiNKE4EKW6H1sBKqZYcwiPcBhMYhOw+MVxytUg
         TUFvQbYcLEzb8RzleWNjkm7XdOUD9/ELGPzH2+D6Rdy8NgTeAYimrrLc/DR0LJ/Ze8IO
         jv7/TcKFQEn7sX73l7ZDSASX68+6QjFAxU6CXxIF2vAPgHcy3jsT6iOP55zJGjEYxirs
         V1vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781798515; x=1782403315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o9+PJwtSfKZ+xGloTz14vmNyTIImuf5/PM4ChtjIZSY=;
        b=JIo0ncDrqo3UovDt6MUYqZFOaPwoXU8YHzgr6xc0RW/nY4t7q7rTRgOiFeqyeLrn8x
         kyWJRcZz52on7g6itd01u5Ayv8vX5EBtjq7Id4l5Erc/HaG3DkqM0leTuB5fqUpMQiej
         e4FVKBAoCFv/niXeLcdpevt6R2rsW55YLtsYPU0mpTdOFl89WVhEid0HbX5EdrxRGMkA
         JdvpHDxZb474lArPDmnWO/E/xnBn6HL61OcI7pep1RpCfhjiTcFlH7zZ34FYicX5ym+B
         KrV7LpK/YEK4ZhgTBtlvyaXHaIlEdQ16xKqY72zprHuEQyTxyiJ4KCjrujtSKD8xGtpv
         2vfQ==
X-Forwarded-Encrypted: i=1; AFNElJ84YT3QuGWv/053QHPeFa4Eo94H2tFtXxNSQd1NuymiZyUHwZJ4b1Vl2JTduP8YtbVyYBs7f0hZH9/9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0G35zVZq24gNw75KMSPUrViRhmwL0i3UuNvZLqNmB64MjhIxG
	DkgcC2vpUDCr1qV+JP2bNJv7ux7ErY2BY16g4QH/m3oRsMNGKljnOT8=
X-Gm-Gg: AfdE7cmEOl4TjOu0Mm7EsYkwveujX+n9Oz3m2AO+fw3WCMVkckw1LuhCIZzmbFKMjD2
	j4TeU4DK2KFUjOanjWR/bxSlVDtp9Gaw1WHLP8nparHN3+o3/xpAW9U1ioNYFC6CtnFbkVsCXAz
	62CgmSPAV3Ugsr9dq/CXRVEzph+br3D32QGKCf0xlVt3WvrypNCb+ri/8Y16mmEGd1cBrEhGAyK
	YrPgRamtIlOIWffWhPhK8VFl/VHkG5quqp+Hw+DTmKrYpsgEjA7xrYi+Ts8+QVyLESFn3NqCrGw
	9mWmJJDsS2GQagm2oIsqzOh3Mqaa0KNezjJ24WgqsZXB5Qmx6v1pa7ss7VznEQlSWiRFwqeGmHz
	juvhWACcFzyZ16bNFLDdxRUudR7YC/0NWrZQ41CJg6hD2cT98fj48C2ud56I9tvpHYDJ80cdGz1
	R1wB1jyR+GkMj/P5UfYDi8Hxsj1Uttm4+KPQwW664qp+ka7CwGynzs
X-Received: by 2002:a17:90b:3a47:b0:36b:9512:871b with SMTP id 98e67ed59e1d1-37d15df8a20mr46056a91.11.1781798514599;
        Thu, 18 Jun 2026 09:01:54 -0700 (PDT)
Received: from localhost.localdomain ([101.0.62.180])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37d15361af5sm53807a91.4.2026.06.18.09.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 09:01:53 -0700 (PDT)
From: Nikhil Gautam <nikhilgtr@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nikhil Gautam <nikhilgtr@gmail.com>
Subject: [PATCH v2 0/2] iio: magnetometer: add support for Melexis MLX90393
Date: Thu, 18 Jun 2026 21:31:39 +0530
Message-Id: <20260618160141.11409-1-nikhilgtr@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313554-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:nikhilgtr@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[nikhilgtr@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nikhilgtr@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB49F6A1799

Hi,

This series adds initial Industrial I/O subsystem support for the
Melexis MLX90393 3-axis magnetometer and temperature sensor.

The MLX90393 supports both I2C and SPI interfaces. This series
implements support for the I2C interface while keeping the driver
structure transport-independent to simplify future SPI support.

Currently supported features:

* Raw magnetic field measurements for X/Y/Z axes
* Raw temperature measurements
* Configurable gain/scale selection
* Configurable oversampling ratio
* Direct mode operation through the IIO subsystem
* I2C interface support

The driver has been tested on Raspberry Pi 5 hardware using an
MLX90393 sensor connected over I2C. Magnetic field and temperature
measurements were verified through the IIO sysfs interface.

Previous Submission:
Link: https://lore.kernel.org/linux-iio/20260510191010.155380-1-nikhilgtr@gmail.com/

Changes in v2:
[DT]
- Extended the DT binding to document power supply regulators and
  optional interrupt and trigger GPIOs.
[IIO]
- Removed the RFC tag based on reviewer feedback.
- Added a MAINTAINERS entry as part of the initial submission and
  expanded it in the driver patch.
- Reworked the scale availability implementation to simplify the
  data layout and eliminate the need for constructing a temporary
  table, avoiding potential race conditions.
- Replaced usleep_range() with fsleep() where appropriate and
  documented initialization delays.
- Simplified helper functions and improved error handling by
  returning directly where appropriate.
- Reduced unnecessary local variables and line wrapping to improve
  readability and align with kernel coding style.
- Added comments for lock protection and command definitions to
  improve code clarity.
- Switched to devm_mutex_init() and cleaned up include usage in
  accordance with the "include what you use" principle.
- Improved consistency across the driver, including conditional
  handling, switch statements, formatting, and general code style.
- Addressed all review comments from Jonathan Cameron.

I would like to thank Jonathan Cameron for the prompt and thorough
review of the previous revision. The detailed feedback on both the
submission process and the implementation has significantly improved
the quality and maintainability of this series.

Further review and comments are greatly appreciated.

Thanks,
Nikhil Gautam

Nikhil Gautam (2):
  dt-bindings: iio: magnetometer: add Melexis MLX90393
  iio: magnetometer: add support for Melexis MLX90393

 .../iio/magnetometer/melexis,mlx90393.yaml    |  55 ++
 MAINTAINERS                                   |   7 +
 drivers/iio/magnetometer/Kconfig              |  10 +
 drivers/iio/magnetometer/Makefile             |   2 +
 drivers/iio/magnetometer/mlx90393.h           |  74 ++
 drivers/iio/magnetometer/mlx90393_core.c      | 681 ++++++++++++++++++
 drivers/iio/magnetometer/mlx90393_i2c.c       |  72 ++
 7 files changed, 901 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.yaml
 create mode 100644 drivers/iio/magnetometer/mlx90393.h
 create mode 100644 drivers/iio/magnetometer/mlx90393_core.c
 create mode 100644 drivers/iio/magnetometer/mlx90393_i2c.c

-- 
2.39.5


