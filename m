Return-Path: <devicetree+bounces-138381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D983CA102C3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 575237A237C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 09:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24C028EC6B;
	Tue, 14 Jan 2025 09:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dJY2RMK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13B622ACF7
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 09:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736845895; cv=none; b=K78fGUsBwb/qmIxO3R/MmnI3TzGrjOhZwDSBSvpvTMpnr9jLomaMTkvkM01z1geikMRtu1cf14uQNeSK0l78FN+Hl0JIFdZW0bNRTP8YlpSmWVKLvTdfCdAwJG4vbGU52vuInq3cRq2QQ9QSPKOxYmmZeUbcZNdsk+R7LPhjjho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736845895; c=relaxed/simple;
	bh=nAUIhH40V9b0M+O9A10WUps+rpYZiNa1arFJMVCaiDo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XDHWp95E3NT5vrh9QR3aAiiyTYPUQCoVNXE9NG4ZwDNDXks6VEyETFo3VUVNwcAEC/Zt0aCv1VYEp84YrDGuskzQ4+XHfy1tIkgU1cNB5gJe/CybJjkVgsgT9erxwJAT8VpaPExj5zOJGmZXc0SUT+3NihtfVsCKy+Fmrec1SCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=dJY2RMK7; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa684b6d9c7so916241766b.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 01:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736845892; x=1737450692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tBJtngiebfYxaY6Xsqyz7X62QEYJt/s8BWutCfjsmVg=;
        b=dJY2RMK7hHjF89YobKcYPvnCJZcJwxKCocWvJnxf+ve5gP4LLz0MgKCubCN+Fsshxz
         Wh6L7Kz6IhUpqN2AmvGcNYJktHxF+qK2tnZ3yOOPPO86VhCcseeR8eWo6MY+6kghWEto
         7sKuNpWylU1FHd4UxQYAquA75/dZr52150H10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845892; x=1737450692;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tBJtngiebfYxaY6Xsqyz7X62QEYJt/s8BWutCfjsmVg=;
        b=C/4h/GFIhT3aYHXHN4u/g3lqzXYJe0OgvwwvZNQL43a2mqf9gpyQxhZ4TDgujQ4F7A
         LR0JCXlkqhugPP/BfMfNVATJFzfNk9+Kg+NjNVGstF4titx4Qcq8D4lUBsASIw04u6Wo
         U5ED/WhG7wd058kuHySXcAG8x4CtvOfw6BtuIir4OQUpgb6Gi8OX03lJ7+RiP91BbMky
         at88YViUenHQJHIIRUJlNM7z4E7eXiht9iWBPKyfB97M/W4K2jnSebYAx5qnp8teCo2O
         URQT+LEwpu0O6YLRUf2kHcW+Fs3LQQJIONQSructRVR+MHiSrOCaE0a67AxdYZITWNHT
         gcbw==
X-Forwarded-Encrypted: i=1; AJvYcCUkUFFAU4/dXMKTZAhYBMdbbVErqI09+ILPJ8s+Zi+5Y51n/yG5lCaMO9lEbrcMgr1dNAhg0PHM2CBb@vger.kernel.org
X-Gm-Message-State: AOJu0YxPOWt7I1rqj9CXmqWxsWZkdUzc+58acZgyCHbnZLdMVpCQU0pg
	KczrSNR9ABBHc0VRgfZfRPVZBve3qj5xq6XcI+E9B2T+1hBb3nHIirxzZmZrM9s=
X-Gm-Gg: ASbGncvklS8Pgf5EEcQ/fJ/gBxEaEw8HcKl1pqxLT2ocIPWkcrGLXZdSbsAj3Lzev8w
	USIqEdQHKUIxkm/6T4HDyHl8shSY5EOGoO3COBnMvHI+G/YnDkvZIFEHhqcOvTM38K00LTjfaIE
	KTahDLr/y3CI78UTKgx+2xf7BMOosqkqIrZWulFhrFtTKPnRnU37nb9bQHTqu5sGobD3g0+snRg
	nMNlDIZlqttRFU0gOUS5z/MCDSZyB2UdhKzMj8NNDSYUwr5s3YbEGgdT2X1zzS6RGZgY96BxLN7
	AjNPQpizofWnF1tpMptuoA==
X-Google-Smtp-Source: AGHT+IFP0NoB1nleymlyPhioCTpMBb5sIxJwE/HcZBxgMFsQqKGSpudKtOUDjpU6FXv2wGNPs8+Egg==
X-Received: by 2002:a17:907:7e91:b0:aa6:834b:d138 with SMTP id a640c23a62f3a-ab2ab6b52e7mr2115633366b.19.1736845892238;
        Tue, 14 Jan 2025 01:11:32 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95b7317sm599640766b.154.2025.01.14.01.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 01:11:31 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 0/4] Support spread spectrum clocking for stm32f{4,7} platforms
Date: Tue, 14 Jan 2025 10:11:12 +0100
Message-ID: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for stm32f{4,7}
main PLL.

To achieve this, it was considered necessary to also apply patches to
improve the documentation (conversion of `st,stm32-rcc.txt` according to
the json-schema) and the code (use of FIELD helpers).

The series has been tested on the STM32F469I-DISCO board.

Changes in v3:
- Changes to patch 4/4 "clk: stm32f4: support spread spectrum clock generation"
  according to Stephen Boyd's suggestions.

Changes in v2:
- Fixup patches:
  2/6 dt-bindings: reset: st,stm32-rcc: update reference due to rename
  3/6 dt-bindings: clock: stm32fx: update reference due to rename
  to
  1/6 dt-bindings: clock: convert stm32 rcc bindings to json-schema
- Changes to dt-bindings: clock: convert stm32 rcc bindings to json-schema
- Changes to dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking

Dario Binacchi (4):
  dt-bindings: clock: convert stm32 rcc bindings to json-schema
  dt-bindings: clock: st,stm32-rcc: support spread spectrum clocking
  clk: stm32f4: use FIELD helpers to access the PLLCFGR fields
  clk: stm32f4: support spread spectrum clock generation

 .../bindings/clock/st,stm32-rcc.txt           | 138 ----------------
 .../bindings/clock/st,stm32-rcc.yaml          | 147 +++++++++++++++++
 .../bindings/reset/st,stm32-rcc.txt           |   2 +-
 drivers/clk/clk-stm32f4.c                     | 155 +++++++++++++++++-
 include/dt-bindings/clock/stm32fx-clock.h     |   2 +-
 5 files changed, 298 insertions(+), 146 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml

-- 
2.43.0


