Return-Path: <devicetree+bounces-65306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E328BDA52
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 06:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AF8CB250AD
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554916BB54;
	Tue,  7 May 2024 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="X+oOh1x2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1856A8A7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 04:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057853; cv=none; b=kdHKH8uOIW9ZyUfwC2F2PTE+hyaxZOLzRjxmiVwGrsW3cQdpB0eTVBP36ARzIMCwTy28MH3kULRIxVkxPgVLErjgrWBqoyr1OHXdpdUTPSCBOMxLwzBMvLjaY3aCBt+7zjWD9+X9/zD1Wm3HjiDplTcMaXvBO80EYx+pcQjlAKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057853; c=relaxed/simple;
	bh=Kv/msdpJ1elnStt/Fuiw74roHrhOO4hA59fpxGbOOkg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=q5f5pA2CDCnsNH/kbTSsMre9eHqEcWNc/ZZmo1o1vHrgU++4CrSWviaTb/a7bDc7Ouo6/WdDI5RGmYu6wIvGpcYlsksMdqxbjtR7mUqcOQcaYR602ZlpTJqUtTIhGw2m6Trh9Jtu00LD2XOKwM0Kg8nPOwExwhEikDma8Ujwhx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=X+oOh1x2; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6f042ff9ddcso1236968a34.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 21:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1715057850; x=1715662650; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=waVLk68pwl0wnoLZMqeGSJBVn9GxZms6bUMETdjaegw=;
        b=X+oOh1x2Gl34M2EVSn/XbHPlVs4RVXaP+mWguuUUgiUK03pw/j5bk3+mwiZRCmn4Lp
         5Iu9sI4TpL21+23QTA3WuzzSsbOLsdullU/5RQXF7pM62D6OdlE2pbcXABvdTcXIVZH3
         vRzUfi0rB9btyFnIuS1jP7l2iH7l7NDpwgKlPKlkd0IxPiR9wknFXiU8uSJYZZVXMXwO
         95jTsQ7MnjuyqqiF9fK9NYhYqHfsrMtsMW+b+V/I9VVwA+mSWEoya2aFTd5aK9345ofl
         Ljda2ldGiNh2o2pxfMnrXQA/g5N6HzYFvV4LaLYvDicDYHnyVYuXtrsOm4r7fyLT4z7t
         Z3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715057850; x=1715662650;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=waVLk68pwl0wnoLZMqeGSJBVn9GxZms6bUMETdjaegw=;
        b=OfN/w4Z6UuUODpXc8p/BcLXk/+EViPB7JvWrLKwO0jwFoqvhkyB6dBeVvOmKg7u10E
         Xa9QtlTeO7cBjlNgofu9G5bY0nbWLycjj2alc+Uz3qA5xZuOEzZMfgdmqb8NUZsVKhUy
         6MvVKcja9oQp6HKIAYb/K3tc/7cTZdG5JBW3bQjmcUF/ABhhbvPFYMtX4qS1hrKYMysD
         EcIU8cbt5afgZKnPsfrOshTsze/P9p/oXXf268UQUpNAsKcVbiGQXjIr7IlR42wEZ0kS
         JKQ7DBWI89McTFel6swm46moHGv38uwDGLgAO+qTQwBGEUMtpr2UkJQVz7iFULAi2sYF
         9cLA==
X-Forwarded-Encrypted: i=1; AJvYcCVSdz5rRR4ab0eboT/r2Um2k8/U7yZX4Mhqy1hlNp6Jmp817Gmr+jMq3duPgZbyLJcs0FFsCeVNKGUXHY/obuhMF+tAojxHuwR86w==
X-Gm-Message-State: AOJu0Ywjo3Dyf6NvSSby1eNzbkX4VJ83xM7+zKudC4h2+Aj8ubYKtE8N
	+CDSmuHUlVlvWlVvaD9f2TaQBBXHfjvWQgVuNuSN+O0UD80Y3uR4yhUM4+CP45A=
X-Google-Smtp-Source: AGHT+IEdQBdDHh+kTKH2iegz5oZNNio4fA+PfCvxJrBMCJGCaCJIX70vmHdJ6AP/M5EO85tchFEWQw==
X-Received: by 2002:a05:6358:7242:b0:183:4336:b901 with SMTP id i2-20020a056358724200b001834336b901mr14530874rwa.5.1715057850154;
        Mon, 06 May 2024 21:57:30 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:6870:7119:e255:c3a0])
        by smtp.gmail.com with ESMTPSA id o14-20020a637e4e000000b005f80aced5f3sm8987249pgn.0.2024.05.06.21.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 21:57:29 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Subject: [PATCH RFC v3 0/7] clk: thead: Add support for TH1520 AP_SUBSYS
 clock controller
Date: Mon, 06 May 2024 21:55:13 -0700
Message-Id: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADG0OWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUwNT3ZIMQ1MjA93knGzdJIs0i7Qko9TkNCMLJaCGgqLUtMwKsGHRSkF
 uzkqxtbUAWlphu2EAAAA=
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715057849; l=4980;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=Kv/msdpJ1elnStt/Fuiw74roHrhOO4hA59fpxGbOOkg=;
 b=y5ZAyWsd6EbHRcRpmYTlHiOaNM7wWAYKf19ARGrR1YmgZxDuVewz6AxKgNoDaevHGWQMTaFAF
 QWD93cAqpnIBRmvRk4UPB8iBdYWDDHlQNs2QympbvZUdLXm+LvLREVz
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

This series adds support for the AP sub-system clock controller in the
T-Head TH1520 [1]. Yangtao Li originally submitted this series in May
2023 [2]. Jisheng made additional improvements and then passed on the
work in progress to me.

Changes in RFC v3:
 - Drop redundant new line and unused clk label from the dts example in
   the DT binding which I failed to fix in v2.
 - Add patch [3] from Thomas Bonnefille that fixes dts node ordering in
   th1520.dtsi. Conor has already merged it into riscv-dt-for-next so
   the dts patches in this series are based on top of that.
 - Remove fixed uart clock and converted uart DT nodes to use clocks
   from the clock controller.
 - Remove fixed apb clock and converted the dma controller and timer DT
   nodes to use a clock from the clock controller.
 - Made ccu_disable_helper() and ccu_enable_helper() to static functions
 - Follow the advice from Stephen Boyd in Yangtao's original series to
   not use strings for clk tree topology. Created clk_parent_data arrays
   to be used with CLK_HW_INIT_PARENTS_DATA instead of parent strings.
 - Rebase on top of v6.9-rc7

Changes in RFC v2 [4]:
 - squash the header file patch into the DT schema patch
 - describe the changes I made to original series in the cover letter
   instead of the individual patches
 - fix my typo in my email address

Changes in RFC v1 [5] from the original series:
 - corrected the npu_clk enable bit
 - deduplicated CLK_NPU and CLK_NPU_AXI number in header
 - fixed c910_i0_clk reg typo
 - fixed checkpatch and dt_binding_check warnings
 - rebased on v6.9-rc5
 - revised commit descriptions

TODO:
This is still marked as an RFC because I still need to make the
improvements that Emil suggested in v1:
 - Input predivider is not handled correctly in ccu_mdiv_recalc_rate().
   The PLL multiplies the input frequency and outputs "Foutvco". This is
   followed by a post divider to produce "Foutpostdiv". However, some
   clocks derive directly from the "Foutvco". These should be modelled
   as two differnt clocks.
 - Use devm_clk_hw_register_gate() for the gates
 - Use devm_clk_hw_register_mux() for the muxes

I'll post a v1 patch once I've addressed the above issues.

Thank you,
Drew

[1] https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
[2] https://lore.kernel.org/all/20230515054402.27633-1-frank.li@vivo.com/
[3] https://lore.kernel.org/all/20240425082138.374445-1-thomas.bonnefille@bootlin.com/
[4] https://lore.kernel.org/all/20240426-th1520-clk-v2-v2-0-96b829e6fcee@tenstorrent.com/
[5] https://lore.kernel.org/all/20240110-clk-th1520-v1-0-8b0682567984@tenstorrent.com/

To: Jisheng Zhang <jszhang@kernel.org>
To: Guo Ren <guoren@kernel.org>
To: Fu Wei <wefu@redhat.com>
To: Yangtao Li <frank.li@vivo.com>
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
To: Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
Drew Fustini (6):
      dt-bindings: clock: Document T-Head TH1520 AP_SUBSYS controller
      clk: thead: Add support for T-Head TH1520 AP_SUBSYS clocks
      riscv: dts: thead: Add TH1520 AP_SUBSYS clock controller
      riscv: dts: thead: change TH1520 uart nodes to use clock controller
      riscv: dts: thead: change TH1520 mmc nodes to use clock controller
      riscv: dts: thead: update TH1520 dma and timer nodes to use clock controller

Thomas Bonnefille (1):
      riscv: dts: thead: Fix node ordering in TH1520 device tree

 .../bindings/clock/thead,th1520-clk-ap.yaml        |   64 ++
 MAINTAINERS                                        |    3 +
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |   12 -
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |   12 -
 arch/riscv/boot/dts/thead/th1520.dtsi              |  118 ++-
 drivers/clk/Kconfig                                |    1 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/thead/Kconfig                          |   12 +
 drivers/clk/thead/Makefile                         |    2 +
 drivers/clk/thead/clk-th1520-ap.c                  | 1074 ++++++++++++++++++++
 include/dt-bindings/clock/thead,th1520-clk-ap.h    |   96 ++
 11 files changed, 1310 insertions(+), 85 deletions(-)
---
base-commit: dd5a440a31fae6e459c0d6271dddd62825505361
change-id: 20240505-th1520-clk-b8f8fb2ecf28

Best regards,
-- 
Drew Fustini <dfustini@tenstorrent.com>


