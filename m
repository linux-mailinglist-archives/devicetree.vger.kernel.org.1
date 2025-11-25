Return-Path: <devicetree+bounces-242156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F106C8761D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:45:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F10554E6503
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688A3252900;
	Tue, 25 Nov 2025 22:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kqOvMUkc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18B321D5B3
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 22:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764110752; cv=none; b=Kv8wh/cHt/3okr0cvKDnhoof1LWKmCtSuE+oWqC764JtmgUpusghnQd8ap6WhTY9DsvThodkrfp1EwGXmk/8n737+uBtTluSuA4jL21F4wRjzJO7bPUyF9OpC9uv11Vt7Re5+GbLCaSdmBdUII9/Q2XC9404vPyZcd9S/yJWaKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764110752; c=relaxed/simple;
	bh=w8mNRAeLKha33VFGvL1XvP8M4nXjp41sOz7XYvZq+Y4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tVwhPnRjPMwgIThK0NeBUAxk6eqd8bY2U3YQSfsNmx0W7df8rSknJM4+IHO0hXJckAF8scwN4OttTJ0d52SwRMim5k5rBWxnjnEXUXgi0ko6qPxxGy0oWMuLOsfjwrAzFkDc1J+qWJj6O0vd0mXWZqhawiW8gMo+GGg0fVgiTRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kqOvMUkc; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so37770595e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764110748; x=1764715548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V0KAk0RzOUIX6B125q7+2X09rFqLxaF64bhSJF+hv48=;
        b=kqOvMUkceKMaBtfmz9XRrRAj7Ih1MNHz2sPiG6krKQzXKMSuwZ8WXu2C6uSP0fjgXf
         Wbe5vBg9BHWZ/rzB8uNkPygAbXRB2S56psYAXvFE+Z6KuSh5VL1Xx0p+ymHXrJzL1MUH
         zEID6yaiXWGC+caRFZK+n2i7ox2b533FO6paA+umYyC1ASHS5/OUf4Dm6B0KQP0b934+
         q6PUEkgJzUmpux38+iWSvw2FCIGLD8QAIAokGHN6MtGxc+8pIOnGBOnS5wRGJKzL3017
         Y+VC3X+oF7dVF93lu/hW3TdHH5HPuEQ0OkF0rxP229yjPlenHk9j+c9Kx7JX2FQaR0+K
         k4Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764110748; x=1764715548;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0KAk0RzOUIX6B125q7+2X09rFqLxaF64bhSJF+hv48=;
        b=YZ9c8j0RL87FFrI7Q1ikXfNIX+iEKjZcaKMMeb8fb4wr6Hj6Jw3Lj+OrVMHlFDf2Gs
         7tJm7GKqWZ5jtt0vE1SVFXbt0gLlDbKV1hYGrUEpSumv28Ba925FK47OwtEUeI7vmNW5
         k6Q+o90Kzo1XRg2MHonKdUfHuYtWV5u0ECiznUHbRJ+kIih1LUnx+r3x1VohMXMqdmn2
         lwjO0SVfOaD5qLCzFmn5tYwe7/ynoAcn9UnJPbcDXSzJ4CvhA/WtAA+ZiqnwO59f74+f
         vEwqlGGCLvCZ6WcgRhOVmunLB5DqvSnM7hhDh/itrqtOzssSKn1CiIUkfXqoyziBpb+5
         YJDw==
X-Forwarded-Encrypted: i=1; AJvYcCW5RbY1v45D64tCgiDuzmV/KTq5xyO7jKfvYovpDdmwKrW3j2gw7tXV+O969sLE+jSiW/XgCY0aZ+WB@vger.kernel.org
X-Gm-Message-State: AOJu0YxynyPymxIIXO0p2l2tIA4TQA9E1W6GIjLRe+1KUHn5rPQRTYPZ
	xD96vUl6v1ZSzTXQuCBeDKwRc4lWg9DwEqlc9drdPn2tEnL7BJ9mgERa
X-Gm-Gg: ASbGncvvcy2eZkbUNpQ6UB7Yt8hhINihj8E7v9qZDhnn9a6XRyzoXd9TyfQAPP37Vgi
	b33iLu7a3J/IK+zNIY1RT94gzXfKX9h9zyCfiN8ts15tJUgomAh5gS0W7pg6fyRjcKS6pmoZC8Y
	HZRV9sBVdb/z+bKpOQHjTCRTZZzHRqdWA41k4YgkrzZAOgWKEnVbBxybHM6JMLEY44Xo8tKQp7l
	NLOOmJopSe4QSqLe2JHIkMhxmMbIsmLCJIJaXxK1pWn8tmYDWGrGfV7YD14UaU/BQW4PvGEi80s
	43MlxJZRt2UQfv5Dx93/txVtpaeyVoj77mEBxT9R2b8x7p++qDHokEsNs1uOBwjrxvsNQYK4IvV
	IYq1s4aVWoFTbq/hZA9PDka48opUcRUl4bOeVVl3zgqfXnMrjqNgeuZ1eUskvZRq3YrDeHtoabc
	nwmIFvZ/lfx9ao+zAjmRl9YpLr6GhNliIfsw==
X-Google-Smtp-Source: AGHT+IG9SgbWz5dsRFc+pdK87KRnRDY0uLHyRj7mcEOhq7+XRO0EpZAtynsoeqnsGhkoLy4CapHTjQ==
X-Received: by 2002:a05:600c:3146:b0:477:df7:b020 with SMTP id 5b1f17b1804b1-477c01b2211mr170722745e9.18.1764110747920;
        Tue, 25 Nov 2025 14:45:47 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:325:d7d3:d337:f08b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790adc5ea6sm11683045e9.3.2025.11.25.14.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 14:45:47 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] Add ICU, DMAC, RSPI support for Renesas RZ/V2N SoC
Date: Tue, 25 Nov 2025 22:45:29 +0000
Message-ID: <20251125224533.294235-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds support for the Interrupt Control Unit (ICU),
Direct Memory Access Controller (DMAC), and Renesas Serial Peripheral
Interface (RSPI) found on the Renesas RZ/V2N SoC. Additionally, it
adds support for a NMI wakeup button on the RZ/V2N EVK board.

Note
a] The DT binding and clock patches have been sent separately for review.
  - [0] https://lore.kernel.org/all/20251125212621.267397-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
  - [1] https://lore.kernel.org/all/20251125213202.270673-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
  - [2] https://lore.kernel.org/all/20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
  - [3] https://lore.kernel.org/all/20251125221420.288809-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

b] This patch series applies on top of below series:
  - https://lore.kernel.org/all/20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (4):
  arm64: dts: renesas: r9a09g056: Add ICU node
  arm64: dts: renesas: r9a09g056: Add DMAC nodes
  arm64: dts: renesas: r9a09g056: Add RSPI nodes
  arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Add NMI wakeup button
    support

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    | 320 ++++++++++++++++++
 .../dts/renesas/r9a09g056n48-rzv2n-evk.dts    |  13 +
 2 files changed, 333 insertions(+)

-- 
2.52.0


