Return-Path: <devicetree+bounces-245069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D10CABECC
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 04:08:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA5943031CE2
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 03:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F8D2E283E;
	Mon,  8 Dec 2025 03:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B8aO/gJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8192E62C8
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 03:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765163142; cv=none; b=KHIv4nGg0WxU/+04K0cTPW5mYxVdnJt6VlPiBWOjEyi+RTzVzRQKVgH/iLp40PD3+clRlmI+/Y4DTnvcqAJF7t9xTdwmJjggiwSchdt/iA3xmg6JM6BW5KNdDfNqOZb9RbPQPJy2aL2SfiCiCxShFdfB/XwMKv5Pd4sNEh64ot4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765163142; c=relaxed/simple;
	bh=lMvSPpB8Vv95fX0FpZsQPojRHFxi8E7FRZ+xvt78Xys=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O0GrZ37LBfd2vFwb6S4TrU/7k05jsxK/sbhF7eMjGHQ3zXGp1NWfEHCTovw28tqv+j4qRaf8VrBI+DaC/kUPQUuxXFO9EPNGqvG8aEJwbcOpL2fYX3cq6QngmGZx001sq1/ZBUfELm8b0V7tHSVUg4aIjdg0v635QlY8eTS+Iwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B8aO/gJk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso19381135e9.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 19:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765163137; x=1765767937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EKhZ7G3GW0DFRJFSIdIV+O43giXCi62vxwFPCss7rgw=;
        b=B8aO/gJk7LHmIjerlL19Ku0KsGJk3d/9AYOmYWnflUDKYtBUUG0XzD+a0gKjuu3896
         MV71Pblp7yRNqGEwmldP94HlMXM8WPZrnoMOZuLF2A6jdNC7PB5sy000KWR+dRX+iq5X
         agORx1G4sc2jkdHf7n4CJTNpLEBG9VxrSimpNnfVDyS+nj3OPLNuq2xkXdLUYPhEYPb8
         aF60KfNY2xkg3VsR2qbonEDveYtzfiUJxpZvYwT1gCJxR0K6Qn+q2KwJH+PNWAfKYJBY
         jg4XFwxPjoQ16KwfwUMmpPawc9r0tbOKMDXdQNlUfbzTpfshn48eOo9g0tXPdMGKiEJ+
         w+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765163137; x=1765767937;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EKhZ7G3GW0DFRJFSIdIV+O43giXCi62vxwFPCss7rgw=;
        b=JP6Jjo1HqTEymc3ZYurlpeYqyhu5xP4nSoLiVycWTK5vlbBy44uIk5gSS7fuvVyZ4/
         esBlc4MIN9RTYej9YJWg956LoqU8lOd+jCIkYOjoKizwRYoUJsGib5seBSDGJIOXJrk6
         4Wp9xnjnB3ObuK8uBeWKQZxLKrYlhZznzLM7Bl2c5DqNB91h1lXFscIMYltQ2i9T0UqC
         skIClUNTvRSPlfm64guuROyF19NXBQVoZRGNmmIEy8pbf2EinbG7UdEvvTvqVt/Uehbg
         WZbfrUoeGFmfFgeUAx304+q1ati0DZZpj+lllQPtWYxcYxxYXo66xwKGOikC7AzA/Z7G
         PsBg==
X-Forwarded-Encrypted: i=1; AJvYcCVH17/SwIbHx3MLmzh/S4Ild/rWJl+vz8Pg5J3rz6FWm5Jcnve0dAuvZtSYLvl100C3W9EfxXKC6gjR@vger.kernel.org
X-Gm-Message-State: AOJu0YzBFeJw2wHzgfEKelubZhfKoc4NtXXziu8UiEOXNXxwFMdHaGFW
	pcNs86z/xe2dP4ZFh8yEJkHnH/TRN+OOlK2HbmUfegJkHbUUnbIjhOD3AW/Hn15VIyDtJq6ajsQ
	R9gxvfoZ/cg==
X-Gm-Gg: ASbGncv+s9uOBzSnxF9eqFmLH4L9M9NUf7BEwHsld9tJbfVniXGe7s5GM1tlEzfh6qv
	KkmOeKl83OWbv6EmR/10EYsacLsCS9tOI9YGnmKxvMFEp7oc97LzruCkCdppePtPCpsjtQ8YicR
	xtKhOa9j2kO9YdAo/KrXsa+GN8ZCD5DjjWvmTmexnMRanqJTF0t6LLMC9yKaiSXSI/jvxRPNVYY
	iDWpYyQMsBMpDZdEMrdzbTJ5UHPGQH884sAUnHtpziRjYO9Un/SC677F0xkkdRtg6DOJIdyDate
	hVQZN/erU5DCTZFjKkCXuq4yhzEA6/MGgn4o23HXyr+8qol0c64JXnWpjpokox+1pPIZi5uTP+o
	R7SndhSDMpvT40SPhSxqS4X5sksbcCbsfXgqlxZkvRUj7PB4+5cXapmxoxUn8iOeyKPHN5XqK7g
	P07vo2LhUSuiD7lS3eKDYQrIpSIC8EbDM=
X-Google-Smtp-Source: AGHT+IEQCLOq2/1sK8NX0XucUzWnYwfCgUyh1rJobD6dEzmYZm5ecN3/RJhrEuxs98QHQKGgjvqAbw==
X-Received: by 2002:a05:600c:c173:b0:477:632c:5b91 with SMTP id 5b1f17b1804b1-47939e24841mr83142175e9.16.1765163137251;
        Sun, 07 Dec 2025 19:05:37 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310b8e70sm220564885e9.5.2025.12.07.19.05.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 19:05:36 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Cc: s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v1 0/3] Add the System Timer Module counter
Date: Mon,  8 Dec 2025 04:04:10 +0100
Message-ID: <20251208030413.3117660-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 family provides a System Timer Module (STM), a 32-bit
free-running counter clocked from a peripheral clock. The STM includes
a prescaler and one or more compare channels generating optional
interrupts. When used as a generic hardware counter, only the main
free-running counter is required, while the compare channels are
typically unused.

On S32G2 devices, the STM is exposed as a simple counter block that
can operate continuously and be shared across subsystems such as the
Linux kernel, firmware components running on Cortex-M7 cores, or other
co-processors. The counter can be read atomically and provides a
stable timestamp source to correlate events occurring in different
execution contexts.

The Linux kernel controls the STM through a memory-mapped interface,
configuring the prescaler, enabling or disabling the counter, and
accounting for wrap-arounds. Other subsystems access the counter in
read-only mode, making it a shared timestamp reference across the
platform.

This driver adds support for the STM when used as a counter on S32G2
platforms. The device is described in the device tree using the
following compatible:

compatible = "nxp,s32g2-stm-cnt";

The driver exposes basic counter functionality: start, stop, reset,
prescaler configuration, and overflow handling.

Daniel Lezcano (3):
  counters: Reorder the Makefile
  dt-bindings: counter: Add NXP System Timer Module Counter
  counter: Add STM based counter

 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   |  64 +++
 drivers/counter/Kconfig                       |  10 +
 drivers/counter/Makefile                      |  21 +-
 drivers/counter/nxp-stm-cnt.c                 | 387 ++++++++++++++++++
 4 files changed, 473 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
 create mode 100644 drivers/counter/nxp-stm-cnt.c

-- 
2.43.0


