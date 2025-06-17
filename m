Return-Path: <devicetree+bounces-186608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 415AFADC851
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 12:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EF251899008
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D24D28D8C3;
	Tue, 17 Jun 2025 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="sJyLcvb4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7582C2147E6
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 10:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156267; cv=none; b=lJQDZm79dG6o30a92blBCPtdxwQDgk6sx+16BdDd5yVMvcr8wA7fHiPYQJKkBH5oUwg2r/r/o6q6krW/aPcV+27ZW9W3wDX/JeN/9HWCtNRIJLccmXbJ6q94vhGSVFc0YoUkySoPfOJxA1mzmLlikyaoF7MUIDo4tV/o/3yu9Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156267; c=relaxed/simple;
	bh=w2W+a7ZuJe8FPbpYaxgD14dwPzRBuZguXtykQbsnYXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gh4lwXIsZNSqG1n7Xu3z3Et476MLcqhcr37nECvE3F0bzhti0CZoh89296i0yFYlviDGaVaQLmw8TQMEgx5Gy0Yk+Hig/+QwNXd8L7HrZII6KkL6LmUc6k2BOfOH2iPy7aKgATaWbFH0MbmGrcNcItepoiFXaCuxedTKQWPU7vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=sJyLcvb4; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so40805565e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 03:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750156261; x=1750761061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hRfOEu471ZP+Fq1dUltM36H0O9UoIGuBZtAP9JnR5qo=;
        b=sJyLcvb4HjB7Lz9+CZaQEJ8rvsyNptSn634Q/6qhTQZj5DISeOtO4uVEvzNk5i4z4p
         v0g0eLVu7mvkySSifLef0P2M5eCJAaFANwOhLq9R63Of2AXjZk71KO1dOz41gMNb0nxy
         UCDXeDMxUDCKg4EYV0y8hUbdDhr5sogx+VHDBUz0sRzjYS+7k/BtPY1lS37hPrcwxhlY
         X1rH0e8Ow+FpX6n29MppMFbkoWO0Gcz+m2LyY8L2eZB2gwGs9X+QSRJ7W+dlhGICnPWl
         wDBidRO25V8cpBODZZ9OW63DJWUiYyTSJQ7ZQRD6R1zaIho+GrkJZHPpHLu/RxGnzBwn
         2Nmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750156261; x=1750761061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRfOEu471ZP+Fq1dUltM36H0O9UoIGuBZtAP9JnR5qo=;
        b=iSOCecVTrMOl7c0qepnrCaGWjBbCYkSPY/o2C22glMESqW1MYdJXSn474e5E3Jy2tz
         wMlgVMkAhKkAV/CU0fyevbMoN4WLtvJpg8QpxFj8JnNKOmS6aDRAly+h64UIxM2Q6BRW
         fWzWrjGat1L9IXOAGE4+DvzLr7GQhIWjunGaoPNkhbAV+O29zYnIi4nYOXdA2xVWMlyl
         ZBTLqnAUL1sGK7vAUgP4ItI5RJI5riKKHGiwvkqDQm6H4pLZNRr2OFZKILvVXrrW2bFT
         idmlp9iiYjUaEc8zGDLrqIFhwJp3E/e3qU2qvEMe6lToBDcDZfieCiZTbRXoL0itLEsF
         h3yQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7iF60T/wai/wL/hp9QSsVvJDJVGQUPvNUj5kAg+9kS4sCzV64suvxrT/eSE4Le7I02EfJ73PMy7qx@vger.kernel.org
X-Gm-Message-State: AOJu0YxAHMyaTE47mhK6hTzsnMvWG4XkIiOpLkOay/cynwxr0msxj7Qg
	05zZU5hzOstSxgmgfJeBu3QfliwJVLqXc9ivoF8tfhydoQZ55RuxNgQPeVSQunrCWYk=
X-Gm-Gg: ASbGncvl3e4YgD3A3kjzxyIWoMSbopQu08Y38SEBPGmmvlugFVWrxOG4CcUrHw7mtBC
	5FPw5KeQzjRcR+BMCUdn/tq/u+dEGBEd7t3k2GYR/9jOrehKagJmXnQqBa6+DA3r+xIh7kGEO47
	zG03nho947QSaaqAAsvyUGO51UiWN7MM7FEXJUbQi16mxVpug18/tTyS6MxrvNjIF87rDcZh4Ch
	WN9juyJUzMCSGrIY4wWKFPbQ4GMhf+J5F97VqVJjXeT1Os2qD4rYHTdkv4SBgovmWGWyya42LH5
	ffVyXqLv4Q3BMoZjncm0FEI6HRTRJ93xZ69sehEjEDvw8CWZc78l1eWIrHw=
X-Google-Smtp-Source: AGHT+IHYHG8cndqPwafpQjRD9EUbG2L/pxbFOAX4rToacEG9GSUaTz4CsGD1Gpyjxtb1SkOeS/X27w==
X-Received: by 2002:a05:600d:11a:b0:450:d5a5:e6c5 with SMTP id 5b1f17b1804b1-4533ccbd60fmr58601615e9.26.1750156261024;
        Tue, 17 Jun 2025 03:31:01 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:b1a7:bc8:262a:3102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e16a097sm176749215e9.33.2025.06.17.03.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 03:31:00 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v2 0/4] MIPS: dts: ralink: mt7628a: Tweak for GARDENA smart Gateway
Date: Tue, 17 Jun 2025 12:30:54 +0200
Message-ID: <20250617103058.1125836-1-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Various devicetree changes needed for the MT7688-based GARDENA smart
Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
Changes in v2:
- Add patch for mediatek,mtmips-sysc DT binding
- Add Reviewed-by tags
- Link to v1: https://lore.kernel.org/20250611194716.302126-1-ezra@easyb.ch

---
Ezra Buehler (4):
  dt-bindings: clock: mediatek,mtmips-sysc: Adapt compatible for MT7688
    boards
  MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
  MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
  MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED

 .../bindings/clock/mediatek,mtmips-sysc.yaml  | 29 +++++++++++--------
 .../ralink/gardena_smart_gateway_mt7688.dts   |  2 +-
 arch/mips/boot/dts/ralink/mt7628a.dtsi        | 11 ++-----
 3 files changed, 21 insertions(+), 21 deletions(-)

--
2.43.0

