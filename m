Return-Path: <devicetree+bounces-228227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ED97ABEABA7
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 03F2D5A77EA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FE928312E;
	Fri, 17 Oct 2025 16:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZeBBw3s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A5027A45C
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717659; cv=none; b=kQJWmE7LRV/D/OttLmWK2YVNrXMEkJLcLSj5rv0GU/gQXbOHeG0fW9dOtpCpxP+OyaivRLS2YeaMiYJqA6VtO110e0O+ATJE5RsAxXf/S5KhMYJazx4Mt3CX46thc6QIJ5uXtncWwuKu4DNhe7REZe6mp+KeElC7iB/KbdG5Xv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717659; c=relaxed/simple;
	bh=CZmROVfTD8u1AlAo33CGWQ3lRipjkitrHczW2VKKWkA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Am0KIWTRFOrI/ttDsg3/QFXm66unsH6ScpoJi1bcMDSPCLX+UGq89dR0QzMX0uD9PJkHEN7HutK2UI0sP6tYK8dLmURxBtDxJxauB9ElsatbCukpCeLSimlPkK2hblJ4xqoxR0Qzo7rXj07KdGYEC0TyFfCDTSdYVjXKFmuyp64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SZeBBw3s; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso386038366b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760717655; x=1761322455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uDBtrf04QYUQbsiCFswby2jYYDrs9vGFSiZ+aqY91Ds=;
        b=SZeBBw3sMoXBlUBjq3xUWrLzHSBBv/FVyG1mT4NQ1ZS2SvoeoqFlJoXJmOc1esevyg
         Ymlcr02CdW7mOxEdd8FGAon1BBRu0wFJth1QZXKnzUUhEP2xHB4AyhA0oF+EoD5GDvh/
         roknxByFG9ye6pZQGV4td0lOFD6ZeKK1jAE/r1yVY+LF1U09K4oLs6PorpFBu1NeLJam
         dLL0aM8f+BpJvhqvMAV9qB8YOj2rl3Ip1HVi3NUv4qrplJll0SciTeWCMuhT1tqYHu14
         gRCEEwNPaGZo0Lr1hIGO2Yhrhue5aNjgBQXRTM433NTHSqwnwmni8v6n57P2kJc4VDa+
         onmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760717655; x=1761322455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDBtrf04QYUQbsiCFswby2jYYDrs9vGFSiZ+aqY91Ds=;
        b=eMq3fTTW9ZbDfDPGfcpkikBqZuawpg84fGXvPtp4WkFplLV+VSiBWy6lezxoMnby+U
         XXCfgIRZpj5c8nBzd3VtU9HQ7+OkBMTEdjhLdJtmOt98U2BYVp8xizV73SYsVAuqgDar
         lMnahGAvySoeT61W4x9FadbBgOzUjCJxNB/6io8QVIfVBwj/zg1SfLeK08yvZju3tMz/
         khXWjHG10wQMFJxaWGf0LZc3T65qhP2zZIJr17wkpe0CXKHHWR37b5UrCK0HGRs3rzEH
         oOWrtzcLxkjKfbXssoeTWS0zAIndiVBVZHL+1jI1QipKQp2Md2vwCaKGsl3zIEUo1ISq
         Wxtg==
X-Forwarded-Encrypted: i=1; AJvYcCVSoorNalsYG1corlPg7j8ineVYfxTsewNCk3ncT7VescVdxJc987JepaUCQt708j2W+G9CtSTLUrHp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6ObPBqRzHKxXWxAVrFM38YJ9swuTl1S2ofZC2QtbAPyEv01Rh
	o6VG6dUufzgkq/+hhQ9DD1ZnljKsOBWT2aWoguA6v7hqOXqx5XxhbshL
X-Gm-Gg: ASbGncuXMtQQQ5tOH4Ewece/J8jOyFmtE63qE1P8R3NHPNK5aIQxascBjlbJNGiznQN
	J7lLCyn6XDdtKRCEPjwo8p5313ajqIqA2HxdxvUrLy9k6aXH4HyByeIVvHtHFfIIWkaeLaLVLCI
	DbL/CkgR1be4Mxpon1RSEXbjKN+Q9hNclFV9pwqDqUmz/rvQtKx03W24pH2UAPdVZ4rncwZB/uZ
	epYh7MqlKN76ZcesYcRRnxLrKSxrK2rkQA1ghaq93EDmz034l306Tax1jZnnvtl3Q5O3Q51NAvU
	/j38VNitmwfFVnzSfogZBCcLMXJVu+Nk5G0GEN1l5IgWgqHlVr14HEVePtR/QX6ESwF9Zy7yn7b
	k6dMOrkgTKH1Y5y64X4b+gdv3a/fqqrIjixynNzn5dbhw1hDmtSGb9iRrizO+p0UIvn5fW1iIKr
	b6kwT3oyXKXAPQAQz8vLvc3iZEaFA+fyRm2t+jme1Z
X-Google-Smtp-Source: AGHT+IHK9WQ4a0UK8NwMypKKKManCE9AjC6PIzjyVE2Ox3e8SVeVLpu0Cb9a9BFD18dkt9RME7LIHQ==
X-Received: by 2002:a17:907:3e1d:b0:b3c:8940:623c with SMTP id a640c23a62f3a-b6472a6a114mr519013666b.14.1760717655010;
        Fri, 17 Oct 2025 09:14:15 -0700 (PDT)
Received: from ivaylo-T580.. (79-100-18-255.ip.btc-net.bg. [79.100.18.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036706sm9606466b.41.2025.10.17.09.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:14:14 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] clk: samsung: introduce exynos8890 clock driver
Date: Fri, 17 Oct 2025 19:13:28 +0300
Message-ID: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset adds a pretty much full (except for ISP and camera blocks)
cmu driver for exynos8890. It's configured to run with gates in manual
mode, which is done differenetly from other exynos SoCs.

Best regards,
Ivaylo

Changes from V2:
patch 2/5:
- rebase on next and drop the unnecessary new line
patch 3/5:
- rebase on next
- add r-b tag from Peng Fan
patch 4/5:
- rebase
- add r-b tag from Peng Fan
patch 5/5:
- include bitfield.h to ease the kernel test robot's pain
- add a comment that specifies we're disabling hwacg and change
the commit description as per Peng Fan's suggestion

Ivaylo Ivanov (5):
  dt-bindings: clock: add exynos8890 SoC
  clk: samsung: clk-pll: Add support for pll_141xx
  clk: samsung: clk-pll: Add support for pll_1419x
  clk: samsung: clk-pll: Add support for pll_1431x
  clk: samsung: introduce exynos8890 clock driver

 .../clock/samsung,exynos8890-cmu.yaml         |  477 +
 drivers/clk/samsung/Makefile                  |    1 +
 drivers/clk/samsung/clk-exynos8890.c          | 8697 +++++++++++++++++
 drivers/clk/samsung/clk-pll.c                 |   12 +-
 drivers/clk/samsung/clk-pll.h                 |   12 +
 .../clock/samsung,exynos8890-cmu.h            | 1279 +++
 6 files changed, 10476 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynos8890-cmu.yaml
 create mode 100644 drivers/clk/samsung/clk-exynos8890.c
 create mode 100644 include/dt-bindings/clock/samsung,exynos8890-cmu.h

-- 
2.43.0


