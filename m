Return-Path: <devicetree+bounces-248828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAF8CD6153
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C3FC302F685
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D7D2D73BC;
	Mon, 22 Dec 2025 13:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kHFpYTF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5D2D46BB
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408775; cv=none; b=El4c6THN64G8Dl0xPcn3jshy1hddGy/0jmZrmx+qinKnsOHYUFBLWwpz7M7+iyUmqdJ3pikruMwSxI/gca6c8orLAJFwksuXVlPzfhAvwpWKf5eAa0Bf3pdKwdhIZbHT2+k4MIzMnyZwwhyTefShZP4vIm26OObZfmpc6vfH5Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408775; c=relaxed/simple;
	bh=6X67lCmir/2S11a1n7DUM2/s4Tf0fqpcdoiIQ36e88U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=G7X8fuBuKgiC4V4/JBAPWeR4GUmx0WxJFqN6E91bxWa8yOgTOI8j6TI3nSSpPNuWyhl6qwBupeOWZuhZNzA/xqwEW92l6DK35xF1z97d82E68K0yabj7rfTftBxCNes1QFEl0IKZ5YO+rgg0yCIa/v2jYhnARWrulqkIoTzmfNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kHFpYTF4; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-34aa62f9e74so5199127a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408772; x=1767013572; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gSLBcbUhwlgDEaLrs1/PzmUOuvFFTI4tz34GWoit1b0=;
        b=kHFpYTF46RZSFDHHPaqL5AFkShfMAqiQg2ktyM6gaYjMeIFtyJft2qOW8BmkZ+IK4B
         MslR5UKRf7a2euo3D7WfyiEsDZIGzaoapmuUlCcSAb5HXhNNbtgSt0sqUYP3W6NftWaf
         OZ51Dre69FhhlcfQphmCbxVw8okRgUcT1CRJlsa/FGd2PH9PtJ7q7tBBRS3Cvqol4FHk
         F5nhS42Uq5YrRIQSgqlwTSh3g44/lJVE4A6B9lLD8dZgNMyVpchf6gBtttEQ0ajpFWVz
         UKuO2jSN17E5yCWc6xNNwRtqO2aHkNQsfQvHMp2IM4fKHfHwl8H2O5K1ydP1GVZnn8ll
         kxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408772; x=1767013572;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gSLBcbUhwlgDEaLrs1/PzmUOuvFFTI4tz34GWoit1b0=;
        b=iaTgIuBQHkcbwP7g3aD0eq0VkN45tM9hBfw+Y4gsTtw+vYxqUr0XJICg2iGQwz/tn0
         oY2dg3WK+uHLD6OFNEsn/2GumY+ePiWPpZf4WpB1xrrEpc4Sx/tSiakRd/1belCx8ptP
         vDv6HiHj1WbNkMRPWfySSe92QCRPHrJuTF6sHpFrSlkzzjK1PiognJLBlryXn7rW4zEx
         DEPCLp79yxOIaAGjT+FemBZGhHxw+csLUvr0VIKh9HOKIDqZl/piW6/ktQBTcmvNsDYP
         wZUYSyLjhccXIVE58vlNfOK5KbVkZe1dk1FL668Sc6jDCqF0FlcjwKv1M/fp5p/TDDzL
         oe8A==
X-Forwarded-Encrypted: i=1; AJvYcCVODE5p0Wz4HIynLhUWY7j1aZa6GODJDNAv/jM0uZtRdvzESwW0lZAYUTx44t+IT9iab7/BnofEc2gY@vger.kernel.org
X-Gm-Message-State: AOJu0YxClt2P1nmr0AJir0sAyJp5/qmWc73ClfACKPtF906yLqXGjbjM
	cK3OXNBe8+E0Xr8W5qZ6S7DCKa1Uaf3DhzasXFrJE9HtIpdVvFMBxkqsahraWKcaoyk=
X-Gm-Gg: AY/fxX6To9aR+X7MXBhLNANyNHrxJrg6czcs83ux0c6XAVUgLVsoQu7BkZiEBDYch96
	grfTVl73zH68DrYO4dvnc2C3X6Kst45eRJf0WmeHwEBtrc5Ztd9tjXMO6nj7ESA7EnNqn2EJFOE
	+FvrSdk9sYIhEJySuzezTUCisRzFVcV6I5TTxf6mBrgQGaahi5fd4AGrdY6jLH/NvYHTmz8vQNE
	CvSLeNs8BTUI3G0TDzFhBCv3DxvaBcJpxytQjIn6MigGss1jYz2wBgqfGLdmQDhv54arGHvxl/K
	UxADhamp/Chsl54AY835s65WrwOcN8N/DhhU5M/kPogOVmv4rW/MSGvkoo9vZW4xWheNF4v+MQc
	pC+++/RS2yL940HPzR7/kDDMyKOpoD58GIO25AIcY5vPWNCqbc5oOIzSSQFOXgXOA9C4NevWLTZ
	XgxmcGM3RTAUtZg2cYd5110qUUfdbVg91Zx2yiNRT3Gw==
X-Google-Smtp-Source: AGHT+IHXI9Uk+L57JPJ2MjX19LtjvDYEjxYY7iQ/11Hl0xX72T2G5hRIIcsMHGDw/P1z/NE6Wuw7Mg==
X-Received: by 2002:a17:90b:3c4e:b0:338:3789:2e7b with SMTP id 98e67ed59e1d1-34e92139f2dmr9527010a91.13.1766408772522;
        Mon, 22 Dec 2025 05:06:12 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:06:11 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v2 00/13] riscv: spacemit: Add SpacemiT K3 SoC and K3
 Pico-ITX board
Date: Mon, 22 Dec 2025 21:04:10 +0800
Message-Id: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMpBSWkC/23MQQrCMBCF4auUWTuSRFOMK+8hXcRJtIPYlplQl
 NK7G7t2+T943wKahbPCuVlA8szK41DD7RqgPg6PjJxqgzPOW2dbfB7wFpUJU0FKwR+NaW04Bai
 PSfKd35t27Wr3rGWUz4bP9rf+d2aLBqNJzrcUEgV3EVbSEmVP4wu6dV2/t9tfw6kAAAA=
X-Change-ID: 20251216-k3-basic-dt-cd9540061989
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

This series introduces basic support for the SpacemiT K3 SoC and the
K3 Pico-ITX evaluation board.

This series (starting from v2) also adds descriptions about ISA extensions
mandated by the RVA23 Profile Version 1.0 into riscv/extensions.yaml. These
additions are implemented in Patches 7 through 11.

The SpacemiT K3 is an SoC featuring 8 SpacemiT X100 RISC-V cores.
The X100 is a 4-issue, out-of-order core compliant with the RVA23
profile, targeting high-performance scenarios. [1]

The K3 Pico-ITX is an evaluation board built around the K3 SoC.

From an RVA23 profile compliance perspective, the X100 supports all
mandatory extensions required by RVA23U64 and RVA23S64.

This v2 series includes:
 - DT bindings for SpacemiT X100 core, K3 SoC, and Pico-ITX board.
 - DT bindings for K3 integrated peripherals: CLINT, APLIC, IMSIC, and UART.
 - Initial Device Tree for K3 SoC and Pico-ITX board.
 - Add DT bindings for mandatory extensions of RVA23.

This series has been rebased to v6.19-rc2.

Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]

Patches 7 and 8 from the v1 series have been renumbered to Patches 12 and 13.

Changes in v2:
- Patch 1:
   Fixed alphanumeric sorting order of compatible strings (swapped x100 and
     x60) as per Krzysztof's feedback.
   Update commit message with more information about X100 featurs per
     Yixun's feedback.
- Patch 4:
   Fixed the order to keep things alphabetically.
- Patch 6:
   Use "one blank space" between name and email address.
- Patch 7 ~ 11:
   New patches. Add description of RVA23 mandatory extensions into riscv
    binding YAML file.
- Patch 12 (Patch 7 in v1):
   Removed aliases node.
   Updated 'riscv,isa-extensions' with new extension strings available
- Patch 13 (Patch 8 in v1):
   Updated the memory address to the hardware truth.
   Added aliases node in board dts.
- Patch 1,2,3,5: Add Reviewed-by and Acked-by collected.

Link to v1: https://lore.kernel.org/r/20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (13):
      dt-bindings: riscv: add SpacemiT X100 CPU compatible
      dt-bindings: timer: add SpacemiT K3 CLINT
      dt-bindings: interrupt-controller: add SpacemiT K3 APLIC
      dt-bindings: interrupt-controller: add SpacemiT K3 IMSIC
      dt-bindings: serial: 8250: add SpacemiT K3 UART compatible
      dt-bindings: riscv: spacemit: add K3 and Pico-ITX board bindings
      dt-bindings: riscv: Add B ISA extension description
      dt-bindings: riscv: Add descriptions for Za64rs, Ziccamoa, Ziccif, and Zicclsm
      dt-bindings: riscv: Add Ssccptr, Sscounterenw, Sstvala, Sstvecd, Ssu64xl
      dt-bindings: riscv: Add Sha and its comprised extensions
      dt-bindings: riscv: Add Supm extension description
      riscv: dts: spacemit: add initial device tree of SpacemiT K3 SoC
      riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board device tree

 .../bindings/interrupt-controller/riscv,aplic.yaml |   1 +
 .../interrupt-controller/riscv,imsics.yaml         |   1 +
 Documentation/devicetree/bindings/riscv/cpus.yaml  |   1 +
 .../devicetree/bindings/riscv/extensions.yaml      | 180 +++++++
 .../devicetree/bindings/riscv/spacemit.yaml        |   4 +
 Documentation/devicetree/bindings/serial/8250.yaml |   1 +
 .../devicetree/bindings/timer/sifive,clint.yaml    |   1 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts       |  38 ++
 arch/riscv/boot/dts/spacemit/k3.dtsi               | 548 +++++++++++++++++++++
 10 files changed, 776 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251216-k3-basic-dt-cd9540061989

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


