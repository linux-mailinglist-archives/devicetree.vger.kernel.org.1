Return-Path: <devicetree+bounces-247041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EA3CC3540
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5923C306C2C5
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1988A3B1D2F;
	Tue, 16 Dec 2025 13:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xmJBiovh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737823B1D1C
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891977; cv=none; b=cy+5nIwJpq6HZW+D+YcqnQjPwp6dRCFPrgY6kehK8FeNQ7IMjsAS4SMm1/yHqHShJcgkgotvLDp8DvSpND271QRe0Dnfabe0Is4+0XupO5MzW31mxOQYk1Pyod654TJfy+Serk+jDk5cpsjajSHi+mLxcg9shM/X4qMqKRaFpt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891977; c=relaxed/simple;
	bh=pU0oP5/c/7ypY5esHJsYEwlRjlrC/o562rPa9fS6psA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p8fF/5KsjWqGJZ0bXOUJkTc5GdaWewXQfUb3eB55dhGdPCsU5FGpDDMeE40hy5HR5gGu31N4fxHMnW4O5ryu0ROEFHj9mqg0XsszMlEzrY/vYf+hYqaYxMj2eDdn+9//+gKaD/T3LBvKsSr1D5riji2KzJ8pGjc8DzVD+xPKL2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xmJBiovh; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a081c163b0so33189775ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765891974; x=1766496774; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g/JfJQXcFgX18niVnHrsIFrsFHpq0fWX7xoHVIFhehA=;
        b=xmJBiovhlF6wAgNlJ/xyglkPnnA+dECBnyxFoMVhdRWj6PWVJ9nbgG0ZJjwE7Iau9U
         L+agjAW02YptT6uSt/E2HJ2idL5yw+8ZOn4XRB4k1BhnErxZw+B3gHKhYI7zH4oM8Yu2
         TqQZ4s24PYYx2WwF2CEyYYJYd1NMJdjvLyGxZ68AO9GPSNhz7QFx9GxwmrRdwRw4yOpf
         vGoBP30K6XP8802QUDJuGahcbAnL+7ugPJ8kpnOrbgn+sokwcHz0SLwhH27JXO8ceoD7
         affumjNeAC/wOMFV1kdhiaWJAlwAAwCC3G1WqumIfw8RIBS1DxHoLrAtgESqKGPEsUjY
         q1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765891974; x=1766496774;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/JfJQXcFgX18niVnHrsIFrsFHpq0fWX7xoHVIFhehA=;
        b=DCTmD2loxGj7fuigO926WXKkcuPDZ90EhDzgqzdWNrGZOagksA2dhYOBoZUxlylr1P
         lyJgFdUvBCB37mY3dIEC4XSSTr91B0GXdXOxJKnc5jpWKzEJvAG1119zQimyF7ctfiav
         iGoiwnvLjt+nwc+nHDjMOkr1qHougc9DqB6cv6lCQbyQeznaP1w3GOeOXSlk6uRHeGfY
         d6iui3FF/5mod7BTCzC8o18ODxYvyRf/+6nMl/lRf63FUK3MO7bUOPSHZ68edk8RG0Ch
         zK+Xe5aGMKnkoLTrCMpWIG8Qh2Ebn/WVEqCCQjgBmd+RckvNaXmP3d011la0lbyvmdK8
         vUAw==
X-Forwarded-Encrypted: i=1; AJvYcCX474DFyEMGrB6eMFYh1iMxd4miXFBf1EDgg3XutV3ek1i0qTJ3E9f1d0okazNv00juaMdwJ4hZpPKd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmw0O+VgBwIwxGIXcuDaPDUo6DcHLH5Z1sj1BGWfq5pcZEEpa3
	tWIir6Bu9h1ex0ibxvImmc7skFPKZrCdb7uoA2X3lZ9rmoSHla6BgDuKsnmX9sGgn1c=
X-Gm-Gg: AY/fxX54J5PO/jEuBNjc1P/hXq22h2YUT+sSZLlkf/clUuXlObFNUg6LGzqabvTt4EP
	7SNyf3CBuPjLbCkymVTlRuJ7DRUQDyZBS9Y/earu7Q1jiQ632OY6lhEollxfWq5wppkAzA5pK/G
	+2ELMlRri36aLEZH7TV+TcFiNb8YoanwIdmc75WyIt7uI1wykYbwonjmeNBtIl5P/HTYtfOXABI
	zu9LsXAUpo1NwSbAFI5pQhoBWOyWjJKE7lJ0iusZPI4s/7hwRKIGWURkPBpbaimO61R8iw5DQdV
	u4/hfKngRFgrIRq/NSH+XGEWfxv00g/ICNtTqXlu++ACmFlmAqdSxEia6BzeujsMem/fqS2dUP5
	Rr/gd4tfWPTgjlUOzOFei2CsdJjJbVj+cYsRxBDPVHoAJUl5s1vEpp3DkoBNzF/C6f5DPz+qxeH
	qpuyE1tN8YVu6whYj33OcDEOi9NPlrOOJJzXAavC3j2w==
X-Google-Smtp-Source: AGHT+IHT8YPzl6f7Pnw8yu1d9OLksn7u1Cax08hiwcjf1bsYEfnVPO1K1qwPGMHdLgZugryriieEFw==
X-Received: by 2002:a17:902:ea0c:b0:2a0:f47c:cfc with SMTP id d9443c01a7336-2a0f47c0e76mr73502685ad.34.1765891973637;
        Tue, 16 Dec 2025 05:32:53 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:32:53 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH 0/8] riscv: spacemit: Add SpacemiT K3 SoC and K3 Pico-ITX
 board
Date: Tue, 16 Dec 2025 21:32:24 +0800
Message-Id: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAGhfQWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI0Mz3Wxj3aTE4sxk3ZQS3eQUS1MTAwMzQ0sLSyWgjoKi1LTMCrBp0bG
 1tQC0HgM4XQAAAA==
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

This series introduces basic support for the SpacemiT K3 SoC and the
K3 Pico-ITX evaluation board.

The SpacemiT K3 is an SoC featuring 8 SpacemiT X100 RISC-V cores.
The X100 is a 4-issue, out-of-order core compliant with the RVA23
profile, targeting high-performance scenarios. [1]

The K3 Pico-ITX is an evaluation board built around the K3 SoC.

This series includes:
 - DT bindings for SpacemiT X100 core, K3 SoC, and Pico-ITX board.
 - DT bindings for K3 integrated peripherals: CLINT, APLIC, IMSIC, and UART.
 - Initial Device Tree for K3 SoC and Pico-ITX board.

From an RVA23 profile compliance perspective, the X100 supports all
mandatory extensions required by RVA23U64 and RVA23S64. Ideally, all
these extensions should be listed in the 'riscv,isa-extensions' string.
However, some mandatory extensions (e.g. "ziccif", "sstvecd")
are not yet supported (listed) by the upstream riscv/extensions.yaml
binding.

To avoid validation warnings (“Unevaluated properties are not allowed"
when make dtbs_check W=3) and to prevent the kernel from silently
dropping unrecognized strings, this series only declares the
isa-extensions that are currently supported by the kernel bindings.

Link: https://www.spacemit.com/en/spacemit-x100-core/ [1]

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (8):
      dt-bindings: riscv: add SpacemiT X100 CPU compatible
      dt-bindings: timer: add SpacemiT K3 CLINT
      dt-bindings: interrupt-controller: add SpacemiT K3 APLIC
      dt-bindings: interrupt-controller: add SpacemiT K3 IMSIC
      dt-bindings: serial: 8250: add SpacemiT K3 UART compatible
      dt-bindings: riscv: spacemit: add K3 and Pico-ITX board bindings
      riscv: dts: spacemit: add initial device tree of SpacemiT K3 SoC
      riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board device tree

 .../bindings/interrupt-controller/riscv,aplic.yaml |   1 +
 .../interrupt-controller/riscv,imsics.yaml         |   1 +
 Documentation/devicetree/bindings/riscv/cpus.yaml  |   1 +
 .../devicetree/bindings/riscv/spacemit.yaml        |   6 +-
 Documentation/devicetree/bindings/serial/8250.yaml |   1 +
 .../devicetree/bindings/timer/sifive,clint.yaml    |   1 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts       |  25 +
 arch/riscv/boot/dts/spacemit/k3.dtsi               | 529 +++++++++++++++++++++
 9 files changed, 565 insertions(+), 1 deletion(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251216-k3-basic-dt-cd9540061989

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


