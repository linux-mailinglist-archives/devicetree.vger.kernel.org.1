Return-Path: <devicetree+bounces-228467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F95BEE21F
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:24:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EB744033AA
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 09:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DDA2E2286;
	Sun, 19 Oct 2025 09:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SzMaVwpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB7E2E1F04
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760865848; cv=none; b=nUmI41EL/07aUvHgKi2KvqBpplalSLwPpEdl25a0gUl6R3fX6JMRQjtb7geH5Wd/UE/S/7T0HJhOCx1G1d6RPBwYQ91HJjumblmjq88xxann+2w4MdYKJhGDSa7sIIge1T/WIR9Z4sxJ6UgzyAWhS2spwXZHsdu17qZJBt8i330=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760865848; c=relaxed/simple;
	bh=YjKH19Yq3Fp9AlljIlHbdYrwAgfw//vNWx0Hx8pBaZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fsvesxgXWgBRdknDIIKhXq0Flg9q8JCmfmgqddvVI7ugD7r/sAex5dKYASSgeRFO2/CpzIionVSTlKQJqascYMmesnFODOBt4oseh6kKa95GIt2ZkmIQ7IFFWb9ndKd0VWxpv1rn0WRZEPSo7xDggmwfYRIiEkmhJJ2ZvKzW0Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SzMaVwpb; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29292eca5dbso704145ad.0
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 02:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760865845; x=1761470645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3ldueyFiuHDHfmUi6yqXFVlVFpGrU406mJEGOuagBkc=;
        b=SzMaVwpb2D17HeZ6iCGJLU+0P9FpslkEBSwDz/ZymA6/MpuZOETTHuUtCslTff/tdr
         oKViPqQ0OsMznSjcxB+C9j563IQrM7Jhk6AQmgQTgAvyW72recZiDWuJ8R21vw8ZK33f
         sG7eoyM7bhev3buD6ErV+XlgJOgs3CkPmG+fGjJabH4oI/ue0NCUZb9nR8PEtEQQ7B1J
         1vONNFgaCTbIlzwLfbMs3Dd8YL7MqUmJ+Mfq7hZdeh7npq/0tiI0tFl7CgaYKRKXYm9K
         ebhuD6aE68b4GdVvcSxxIMW2O/dL8RKAfxJwovV6h+7qnMSNKHhOBPsI+WhqSkWYfAYz
         H2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760865845; x=1761470645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ldueyFiuHDHfmUi6yqXFVlVFpGrU406mJEGOuagBkc=;
        b=CYz9ULVqkXIJCCiEYl036FJo5k5jYQjimnQIU0JAV1YFG8xzBR4AXM8lV/xtyHv+bV
         oj+fjh+wNsIBPLgxEWqxo1jfBodtgKE8+Y/lPD+T1kHbFgNHtOaEqxlrOGLv6p2JDYqA
         iBmwIY92xJ4J0KInZVAPNoto633zXnROp4t4foiJzE5EjXkFvDL8BC7XGtREUfNhyEsC
         jxgYu02J7F8Rrm8buLIDo81K+qXprVlR+epTcLJQThA3tVFsaNd7Ykhv/ZwxiNldZQFy
         G2Cpq+p5noX3L/+iYLKe7sP5jyhIP0OZZzoqCmwUgv3q7NpCaopxUH41KLZgY8xipCq6
         UlLA==
X-Gm-Message-State: AOJu0Yz8HPbv3ej3vxg0b0tNlNj1sdVFKG3zzwgSb1UUZNvcY2ksmW7X
	xq/NdxjykZ/Wgu6nhqoloZozFwHKM/V/wbtaMq3V6dLP82sUcNq7BSsy
X-Gm-Gg: ASbGnctaROKt3+m+L3aOf292IwkHYE5s9R/Zf7x1Re5iek8Yz5/Josy5QEjE2tPKWSN
	BQMI5D/kQAR9B9VijJ+n5YPxWcK9JQqoZrWx63bTYmzcDWey6A91m90gOxBMeeSBs3l5/nL3L4j
	HM5fJV7TxjxghhgQHwC3QYCys8fByapVnnY+4AXUYCD6WHzpHNCKn+HI16b2KBuiBD0lyL+BsaS
	fGs4v2aFjQOHKT2PL0o/m5r/hHVADY2Qk5wPkMWZljr4NhpOpMpKiizz4bGqsGxz0LSxV7/w4fK
	6RLIrWhJnAfHh62FbJgX6Zns2L4dla17b7sFHWwcTbgonPrC5FME2oHYoHCFg6WkBUNKR4la28r
	jMQvVp2W2FC4vy5Hvw4kG5lz4rMKEpWxLBMHCMPsehW8dlUpU4kzb8DYLSd+COt8oGH+iuFxp+r
	oYFz7UwCtDn6KavX+7sp42W8ra7Hmd3Q==
X-Google-Smtp-Source: AGHT+IEeXDzz0B3Eqj8HAvYF0QY4EuJNocnSfMyJANzR5gjTAyXUlR98V5VjK0fEW4mKbvUoBwTmMA==
X-Received: by 2002:a17:903:3d0c:b0:267:af07:6526 with SMTP id d9443c01a7336-290cb65c541mr124630905ad.55.1760865844691;
        Sun, 19 Oct 2025 02:24:04 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.99.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebd215sm48313115ad.14.2025.10.19.02.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 02:24:04 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 0/4] leds: Add a virtual LED driver for groups of
Date: Sun, 19 Oct 2025 22:23:23 +1300
Message-ID: <20251019092331.49531-1-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Introduce a new driver that implements virtual LED groups,
aggregating multiple monochromatic LEDs into virtual groups and providing
priority-based control for concurrent state management.

Existing multi-LED drivers are primarily intended to group monochrome LEDs
into multicolor LEDs, allowing per-channel intensity control of hue and
brightness. However, they are not designed to manage grouped LEDs with
independent functional roles or shared behavior.

The leds-group-virtualcolor driver allows arbitrary LEDs to be grouped
and exposed as a single logical LED representing a fixed color, status, or
function. Properties such as triggers and brightness are applied to the group
as a whole, rather than to individual LED elements.

This is particularly useful in consumer devices (e.g., routers), where a
single status LED must reflect multiple device states via color or blink
patterns. In such cases, simple device tree bindings are insufficient,
as multiple triggers may activate simultaneously, resulting in color mixing
and ambiguous status indication.

To avoid this problem, the driver implements a priority mechanism that allows
higher-priority LEDs to assume control of the group. When multiple LEDs of the
same priority are active concurrently, the most recently activated LED takes
precedence over earlier ones. If a higher-priority LED is extinguished, a lower-
priority LED will become active.
If an LED is set to blink, or is controlled with an on or off delay, any time
the LED is inactive but still triggered, it will be the only LED in control and
will be extinguished during this time for best contrast.

leds-group-virtualcolor can also enable decomposition of multi-element multicolor
LEDs into individual virtual groups that can provide individual virtual color
LEDs, supporting flexible trigger assignments and precise status representation.

leds-group-virtualcolor can join PWM LEDs into the group with their own bindings
for each primary color this enables per channel dimming and fine tuning of color
of the grouped PWM LEDs.

PWM and monochromatic LEDs can be joined into the same groups sharing the same
grouped global brightness controls.

leds-group-virtualcolor can also expose a singular LED as multiple virtual LEDs,
each having individual triggers, timings, or other properties.

Additionally, traditional bindings can only control individual LED elements,
making it impossible to represent composite colors formed by combinations
of primary RGB components but this is also made possible.

Originally intended to be used with OpenWrt for controlling RGB status LEDs
so control of power, reboot and system upgrade cam mimic the manufactures status
LED mixed colors.
Often when a device ported to OpenWrt RGB status LEDs usually became a glorified
power-led instead of a status led because user scripts or binaries would have to
be implemented as additional packages to control logic.

leds-group-virtualcolor is designed to allow LED behavior to be
fully described and logically controlled in the device tree, enabling early
status indication during system initialization—without relying on user-space
scripts or custom binaries.

Jonathan Brophy (4):
  dt: bindings: Add virtualcolor class dt bindings
  dt-bindings: leds: Add virtualcolor group dt bindings documentation.
  ABI: Add sysfs documentation for leds-group-virtualcolor
  Subject: [PATCH v3 4/4] leds: Add virtualcolor LED group driver

 .../ABI/testing/sysfs-class-leds-virtualcolor |  89 +++
 .../leds/leds-class-virtualcolor.yaml         |  90 +++
 .../leds/leds-group-virtualcolor.yaml         | 110 ++++
 drivers/leds/rgb/Kconfig                      |  17 +
 drivers/leds/rgb/Makefile                     |   1 +
 drivers/leds/rgb/leds-group-virtualcolor.c    | 513 ++++++++++++++++++
 include/dt-bindings/leds/common.h             |   4 +
 7 files changed, 824 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-class-leds-virtualcolor
 create mode 100644 Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml
 create mode 100644 Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
 create mode 100644 drivers/leds/rgb/leds-group-virtualcolor.c

--
2.43.0

