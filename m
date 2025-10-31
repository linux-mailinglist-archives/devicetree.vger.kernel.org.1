Return-Path: <devicetree+bounces-233600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C2EC23DBC
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:41:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C9B13B11E4
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22B92E9EA1;
	Fri, 31 Oct 2025 08:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="UiyKz3CI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4641A9F8D
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 08:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761900098; cv=none; b=fV1x1ArnTkP2DbknRZsS/XXcfvQ9GK7T8cQUbHEnJOABLEARIaMSJJRmkLjkdUrVUVT2+mFEolK619P1HNkxOdmu/e05gOP0PeSoI8KOIYIuj4WuKMwfAxnYInxvLhHASJawTYlnefxc3LM49+bKpG6PqsfHKFld3Lxgf+HZSxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761900098; c=relaxed/simple;
	bh=CYRQF63TmSj0kIvLdKDBtxSpPXIpRL8qR0vZ1dpssRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BUSB5Vv9OLPQwQUZJwsaMmMvttP1XR4KB0Bpy1j0FZ7rY1ip/Ns5PzpVY65rFY3MW+AbQRK0FeKk0p0WDAqDeqAhzUStq70GAazM/DGthpbv0CIw6v4iY4HDY+sTappIj88mck9087fNK5frepIOEcwtuD4NYwaV+5qvbUuH1JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=UiyKz3CI; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-28d18e933a9so2511505ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 01:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761900096; x=1762504896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yPyVbe7btBrb/kbufU+DTPGJAkd1ax44z1PEdLO1daY=;
        b=UiyKz3CIWB4wR1fBW68UFpx50nP8DeApfppEbWuMCkNvDiBMA7sn9DtQZwTsSsd8LM
         /MdxgOKSNbS5gioExnQnOFbLR+wyUsHZ7T2jIBgpMquvnVxh6lkTwC9Ucu+Hou7+AlQF
         2D8iC5TRB+Y/qBhzN5e2Mm3Ts962yJZ/5J625Q1qhYpOgZeF/cYo+zLg6OuhTnC2s05N
         R1jgDABNQBRuUgu/DNExwv4v1u0xK4k3wWWyzb53XqCi7/LzGxkjdZkmB3HxtYCGOjlk
         acgbQM2ptbRE5r17llESnThHSTc0atEGhFmhpv0s4cxw5b1WNHfu4M919sHnuXKJnSCz
         /f4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761900096; x=1762504896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yPyVbe7btBrb/kbufU+DTPGJAkd1ax44z1PEdLO1daY=;
        b=EiqF0m0vpeaGX0llc6mwVk1f9zAZ1c98RoDZzYIrDYKXF4lHcQ8jM934heV23gI800
         swxj/fVJHvZPzqsWMD9LI7TSRpGadYdVoQ/8bcfTGABwKvTiIVZDPwIhSuKXEq2fL1o4
         WUhoAyNRR/a3IgwuDSAH4jg5YQ+k++2KxJGai3756ejxBO5WO3YOJ1vEwEkqygWeLoBc
         GKhszPSbkYqecNpg/C11P4QFuwFW8uZonwA5QoS8Vpn81JVGzjjYgQozePm+VrejR7x4
         x7SVUmr56WqkSVMBHlvSX6eyitRnInkADa3rOtk+y1EgrwJ7MSU55QmcFoHHnnW6rrUz
         cHrg==
X-Forwarded-Encrypted: i=1; AJvYcCVdXq7VStaatmyj59jdfRYlbGFSl+Pbc14KWyJ7aSG0zlWjs19yI3BYrWSTmFGPmQL0WZB0byUApDiA@vger.kernel.org
X-Gm-Message-State: AOJu0YzuxR1JytFN9liKLJxE51SkiNJLFiZXF7JdzNN+l24YebwNASMm
	FFzJP9OmVwsCgmCd4PsZlQcbSBrg09B539IAvjJlTU5UqEc0FVG53P51wRQW7yoFxQ==
X-Gm-Gg: ASbGncvguogsFZb83JGF1xZVMFQwg9MR+Vzc8R7rA209Oz6Nd/ZkI12v4GP0HrAVJRh
	pkJ+6uKTT0wc36u/PBVSzVIbg09nJdpqf8MdFKQIQk018cqgt9IBIp6mOg7C+OR5Xv8bItc72fD
	gdWwi4niD7Z06Ep9x2ma+JqmGYK3/DAJckN5GjcG9mqyoZcYMfd2Jq+1EcnX50t6CGHp3EwM/Fc
	ws1PlNqT7XFX2aQDZF0MXJkgaMBQv+0LWl7oiNIURLQGcJOytEDPUnaQRDdWQCws4RBeEy2mFJ2
	9QdZnOQX6/5ogwr8c1WfIrct3Oh/vsTykbCVexFsyHYLLRlnR6W/u6ihT9TB7Jyk7SNCSQlaYrt
	yFOF+AEo8mQgjNZO+WcTkzjwn8+nutlNxc333S0WlWTfaDempSZE3iZ9t/5PrhFESeP/P9Ash9Q
	Xe1GkvAWHZwHSpqpG6MdW5FNudJjhf6kfHtLMFIcId8MtZXyg=
X-Google-Smtp-Source: AGHT+IFRjA11KiQtuDLyXpyzr+cH+MBZZXOEiapTRE2mqruvh26mmlGWuUYPHkHWLSUbX3DkbIXD+g==
X-Received: by 2002:a17:903:38c8:b0:295:37ac:8d54 with SMTP id d9443c01a7336-29537ac8ec7mr1773595ad.9.1761900096398;
        Fri, 31 Oct 2025 01:41:36 -0700 (PDT)
Received: from adriana-dmi-upstream.sjc.aristanetworks.com ([74.123.28.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952699c9dbsm15333505ad.84.2025.10.31.01.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 01:41:35 -0700 (PDT)
From: adriana <adriana@arista.com>
To: ilias.apalodimas@linaro.org,
	ardb@kernel.org,
	trini@konsulko.com
Cc: robh@kernel.org,
	krzk@kernel.org,
	jdelvare@suse.com,
	frowand.list@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	vasilykh@arista.com,
	arm.ebbr-discuss@arm.com,
	boot-architecture@lists.linaro.org,
	linux-efi@vger.kernel.org,
	uefi-discuss@lists.uefi.org,
	linux-arm-kernel@lists.infradead.org,
	Adriana Nicolae <adriana@arista.com>
Subject: [PATCH v3 0/2] DMI: Scan for DMI table from DTS info
Date: Fri, 31 Oct 2025 01:40:59 -0700
Message-ID: <20251031084101.701159-1-adriana@arista.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251022114527.618908-1-adriana@arista.com>
References: <20251022114527.618908-1-adriana@arista.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Adriana Nicolae <adriana@arista.com>

Some bootloaders like U-boot, particularly for the ARM architecture,
provide SMBIOS/DMI tables at a specific memory address. However, these
systems often do not boot using a full UEFI environment, which means the
kernel's standard EFI DMI scanner cannot find these tables.

This series adds support for the kernel to find these tables by
reading the associated property from the Device Tree /chosen node. The
bootloader can specify the physical addresses using "linux,smbios3-table".

The first patch introduces the device tree binding documentation for this
new ABI, and the second patch implements the driver logic in dmi_scan.c.

Changes in v3:
  - Removed linux,smbios-table property, only keep the SMBIOSv3 property
    (Patch 1/2).
  - Search DT for linux,smbios3-table only, removed the code searching
    for the previous property (Patch 2/2).

Changes in v2:
  - Add missing Device Tree binding documentation (Patch 1/2).
  - Split the original patch into a 2-part series (binding + driver).
  - (No functional changes to the driver code in patch 2/2).

Adriana Nicolae (2):
  dt-bindings: firmware: Add binding for SMBIOS /chosen properties
  drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT

 .../bindings/firmware/linux,smbios-table.yaml | 26 +++++++++
 drivers/firmware/dmi_scan.c                   | 58 +++++++++++++++++++
 2 files changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios-table.yaml

-- 
2.51.0


