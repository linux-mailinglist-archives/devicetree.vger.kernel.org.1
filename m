Return-Path: <devicetree+bounces-138540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B89E9A10FD6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 19:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7441162F3C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD011FC7C9;
	Tue, 14 Jan 2025 18:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="oAg8XehW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA491F9EBB
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736878830; cv=none; b=aOb3/fmTgKM56z+1kw2quwqGxAlSp/OT3/vuwypKvPyTiBASsBV6yT70jaXqgbVHmUrO5p+e/fw9h++GjUEvqTr0G1hKH8qhAskb8FLU/cyKE6/+t2FRPZAPWcKvxuiYA/pUNmLYkGNJfV2cUhnVZiUpmHFFxbbcOp9GbCXP2n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736878830; c=relaxed/simple;
	bh=nHbDn2Xi0lDjIGgu65xWMeXJXaW+Z3RJsXJY85rSNNU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kg2NCWAFwbrfUvLaJYzQod/fecAqHcOu6p81vjdP/hLRdzgx6NnvFn/nXiHC+QkAzYjSVfhGI6+5obYc2nI03Amu1p+otLXYps4q+MMwoiAQ7xUo86W/3We19mLA1EuwYngFKBsC4zsUlvWkiqTXqky25vn6dXKvIeCxHcq+pWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=oAg8XehW; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso60420955e9.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736878825; x=1737483625; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GeNVBB/i2U4Nsgj/JNEuuNrVAFqI6yjOJA02Gh323ro=;
        b=oAg8XehWwaGNm/8twERK9HTNtpytRY1TCkY1vZNZpmqUHn6l1rm8TebPf8LAm9/zZM
         We/UHmoQ1gaCIBP0/Ahskx/jBoFrF6DdeCAFypFn3clsDlMvJ8I9Q05UprYDSyVABNKn
         wgQmSGH73t0HZSuRF2WoqzuF/f1oU5DS8GGak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736878825; x=1737483625;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GeNVBB/i2U4Nsgj/JNEuuNrVAFqI6yjOJA02Gh323ro=;
        b=uXGV67fDgYX48frKva5BJWM9qQLZCKB7R7bXyCWVNAl3iiSKSbAu1DFdCTQSFgK22Y
         /UFfm5c6ZpB8wO/knIQ1EiV0HeZCuG9MYMu+bkoDdKm/klG3j7b8ZBSQS3vlVmllVSUi
         155OdDjNMZAw1tQjThQwz6DS8rOW3x1xQDLyRcG3O5th0Aq8IbMnfKMHcGdo5Y7YFMNd
         fQ8grgkdXptwbj+URCHIQ5mW0SZxtqkoSwotnSesQcZmt+2xbzMv+7s2apcfcFVC3B5w
         3DD/GfVozlGAdSvv/z/o8/i2j5JGgXGhpMakr1FkIWRsuIbCZyrzM3nU4KAfxG5ty0TG
         tvlw==
X-Forwarded-Encrypted: i=1; AJvYcCUNZ5ySVLmMinZ8OealIgzqbhS3t4HNdXXCrkE5Z/mwHbP8Wmte63yI3jNkZBLoTeZlSaDBJay44Dod@vger.kernel.org
X-Gm-Message-State: AOJu0YyFrWbHkLCZDlyzWIEe0qltnS2m3hRCpaVcLAjxJPG2wJOqLGrd
	7zWi9Dclc0tUX5hPvKTfPXtyX6Sq7PKuit6RaQLriWwQJEFSTjvNEmG0Czp2HAs=
X-Gm-Gg: ASbGncvN1zbcZXKgR+GfmU4TbwMKbYIB0L4gUftUScT62nYvUSd1cYx3lEh/jpbJoJn
	DqBHxYde81qTgQBALNw8Uf8VELaXNC2p4PIimMlzCVXPEz4HhR1Pgdw4/PbUjrlKbM6JebbHWuf
	gvob3r/wl/AkGwHjdf24gs5H+xUqRa360Mgcjixhz8JtTfSNhClzqvzG3JdfY8qCw9GG/BwjQ3Z
	2VwCt8Lp0R7tSz4MsYwGP13x+h98chM9Mc0SUzLkBynlthb8s4qBpBM7mZvT4xqe7L7V5FIa9BF
	8cJyFd6uAvwwqFcbLeUpMg==
X-Google-Smtp-Source: AGHT+IF0OmB7x+n/pD4cD65liw1i2aC27PQyOn8ab2eaRaudsoa2gu0gSMltwYB/uF3S1FkWb2D2yA==
X-Received: by 2002:a05:6000:2a2:b0:38a:8906:6b66 with SMTP id ffacd0b85a97d-38a89066f45mr26441005f8f.38.1736878825526;
        Tue, 14 Jan 2025 10:20:25 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38be66b01c7sm278970f8f.22.2025.01.14.10.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 10:20:25 -0800 (PST)
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
Subject: [PATCH v4 0/4] Support spread spectrum clocking for stm32f{4,7} platforms
Date: Tue, 14 Jan 2025 19:19:45 +0100
Message-ID: <20250114182021.670435-1-dario.binacchi@amarulasolutions.com>
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

Changes in v4:
- Improve the compatible property in patch 1/4 "dt-bindings: clock:
  convert stm32 rcc bindings to json-schema"

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
 .../bindings/clock/st,stm32-rcc.yaml          | 144 ++++++++++++++++
 .../bindings/reset/st,stm32-rcc.txt           |   2 +-
 drivers/clk/clk-stm32f4.c                     | 155 +++++++++++++++++-
 include/dt-bindings/clock/stm32fx-clock.h     |   2 +-
 5 files changed, 295 insertions(+), 146 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml

-- 
2.43.0


