Return-Path: <devicetree+bounces-244211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3FACA2788
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 66BB53004D2A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B702FD680;
	Thu,  4 Dec 2025 06:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eiOjI+M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD2E42048
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828548; cv=none; b=C4L+JcrkV6Oy7haNh1v4FTTD3mE/h/s5lCMkOio9SloGx9EME78z2Q5Bj412mTYQA+NPPU6cSXXi2a76HuAPwFH4BdQKlbjXJh6DFchC2YOrT1rIjk6Teoxoo1B96llPq5MZYkKCZAZoGuwfz9Y0idzQEmXMDXMkCcg0wPbgXLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828548; c=relaxed/simple;
	bh=/Iii+N1pB+IX8ozivJEIczKINrVHiSyEufjWtYoS9l0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dtb/GzT4S9FxNL9v6A9soUg8szwSUpNjs/IZzFacAG9FtV3fkuM6axwnrEdj2pa6iv3CvEXePvM67ZF5/D6019Pcov+Y5cGHayQX3utuYLTSwH9JAdjB2PBqSFXo9IblZer+L3IZYxyZs56CPe9fpoiU5+RQViy2dB7BwMNHtj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eiOjI+M1; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b713c7096f9so82582566b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828545; x=1765433345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=eiOjI+M1BGoqJgy1CJ4507ouG1x9t9M6CFJ0sQQojg7qg6rwtwL7PSQIEfml5UgPru
         1c2jdNnm1akL0ft2fj0MRjuyM4I3T7DfipY3Ygwlw0mHEfESEcl8bO70uQoEFVhnwvDP
         EsdFNAfhopzYEQ9WN2JIv/65kIXBchewnl4D2Ex0LYNGQGXbaQfsQ3wwUO6Sd54Qhqys
         d2rXYI7lAT5fc1Du1M6TN6eNWgHU6vDjzJt6/RRsvQMohKQhHJ8mszetDAbu24ET9ySl
         lp9+BgNw/VoGXe9jZEmj7Bn7uCg5nCyrCiiYyJ+3vKHalmjxE3Z+qPvNRPUtsliS+dTw
         pwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828545; x=1765433345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=rQvahv39IO9zziWA01anGf5/4yZA93F5fg5nfmeHAJxlv+3J4Pz5Bh+57Z+dFK5DlY
         PAAMrSPYrIzDn0Ad78yPLOqd+6dMj1le94Rm9HH+CDPb6l6ew4qhRiZnsitmEtTjJ5hS
         UmmpxvWJ+AbWbiyJy+w5WBt4UTZRuiWGOLnjs6Oej5kXp8bUKR0AqSLI/TYRsqp9M96+
         ZJCOqPYi1nChUUeR1SZeIT+gKJiIZAMClx3MQFpzIDRJB/RuRPr26IdgHXxyo+IJ1z4q
         az6FZAL8Q3wSM1Ru+5aZ5VjBEwVMN9bRxP9s06nj1U1JVZied0abyQyChWX2QCW1tK5U
         NAEA==
X-Gm-Message-State: AOJu0Yyd5LDuAHEQNCWJOBSbBjKrX9oeyR0X89BfJxX3CqR517Ooe2NK
	746gnmwMNTCw7E95RFJKsEhrgVTUTWvXr79PRxICRSgd6pUFnCSm1eXE
X-Gm-Gg: ASbGncsOS3zdoYrp8iQ+oEoW3/xbw/cr9jxHkuQIQ/Oqti/G1BZ6Ix0nvlMx3EJd20k
	gb02mI94FtheGeaw0YH5x2CkpYkXcL1HvsPMwWJz9aUieTXdeHi+/6zLtNLf62gQCQZkRt85fp0
	XQn+WxyBjyFrIJOu13ffRvDkCdBzE7M9oIFl1SHLOY4viOFm7DbS0dT0IrksN6VW9SOW1jLaCAm
	ncxM+4ld0V0toKcun50ilYDyaQFcea6wa0n78unDfHqxeCp5WzwqaOc3mGtqgklP0z/SejFjyQC
	HHTzkSW6uNpfbc7S9XM1E8mTBmBBEZLWRBduH5VkKpFdnYOtx1ZnnXK7+kb6kvwjbVGYGYzRgYM
	T3S7vQCelfkzFtxmARlJgcNd7EXx4gHKV60bMApTzpw6lPyDm2sHrjqu279Gn5VNc7icyLNt1Wk
	c=
X-Google-Smtp-Source: AGHT+IEtiyDTZN6LnRtbNE3Mn8gfWY6RUZTUtWYufcRr2H1vB0fzeYUu0tLeBvciQw/VcgvjNvI6RQ==
X-Received: by 2002:a17:907:3e14:b0:b77:1233:6f32 with SMTP id a640c23a62f3a-b79dc777fc2mr546815166b.48.1764828544846;
        Wed, 03 Dec 2025 22:09:04 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f445968asm49619166b.3.2025.12.03.22.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:09:04 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/1 RESEND] ARM: tegra: add support for Xiaomi Mi Pad (A0101)
Date: Thu,  4 Dec 2025 08:08:55 +0200
Message-ID: <20251204060856.4994-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Mi Pad is a tablet computer based on Nvidia Tegra K1 SoC which
originally ran the Android operating system. The Mi Pad has a 7.9" IPS
display with 1536 x 2048 (324 ppi) resolution. 2 GB of RAM and 16/64 GB of
internal memory that can be supplemented with a microSDXC card giving up
to 128 GB of additional storage.

This patchset includes some schema changes not yet applied. They can be
found here:
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250909143432.121323-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912065146.28059-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912064253.26346-2-clamor95@gmail.com/

UPD: patchsets above were accepted

---
Changes in v2:
- added fuel gauge interrupt
- added CE gpio for charger
- removed always-on for vdd_gpu
- improved pinmux configuration
- added camera regulators
- removed usb@70090000 (already disabled in common tree)
- set correct modes for mmc devices
- removed thermistor thermal zone (not used by mocha)
- fixed pmc interrupt polarity (removed interrupt inverted prop)
- configured OTG support
- removed bluetooth reset-gpios
---

Svyatoslav Ryhel (1):
  ARM: tegra: add device-tree for Xiaomi Mi Pad (A0101)

 arch/arm/boot/dts/nvidia/Makefile             |    3 +-
 .../boot/dts/nvidia/tegra124-xiaomi-mocha.dts | 2790 +++++++++++++++++
 2 files changed, 2792 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra124-xiaomi-mocha.dts

-- 
2.48.1


