Return-Path: <devicetree+bounces-242812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C54C8F7F5
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 643043AAD2F
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97CC52D3EDE;
	Thu, 27 Nov 2025 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="deAjZ1QF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F362C3253
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764260694; cv=none; b=Cki6qcoXocfHeff1SUpUGAokewYNx9utw+JDKcIovQiQt4+v5r5pzu5m5CG/eqWI/8EWmMBR35/b/VmgOUMpG5/FT15WDn+BAL0BacSw36Kbs7aHrlYn3W0gWyVo8giXtQgUtYO3RXGdiG0dWlyTx4pQaZJkiI8ovkx316zHOd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764260694; c=relaxed/simple;
	bh=e/Pl8gPJeRgvwhXLV/XhycyxN+OEC6dqAt0LI286kAU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EDdQ2HnXWcy6+cYqdTREZxusylQ0dzPK7/E5wU3V0U/kkadNbukAfgOkC+4wAR5PdAXsvO3sdIZX257QJaw+ZuS9JLLTViAn3C0NE2iqU0TrV9nUwLC24V7kOstfZTFNemsghY/a2rgCCioE+yg0lTeW3Syt9hliCYIqMpfxYxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=deAjZ1QF; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4775ae77516so10353565e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764260691; x=1764865491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tTuDofZ/dpgnTKp8dEB3WWnHumrubQoNy1pQF+WHUkM=;
        b=deAjZ1QF5jflXB/AnOGEh+GsfGEOy5QIBsAwaTULEktUYYokc2K0223F3SxEH0LtEI
         7sH7Go54GYgdjdsNN8JkWDkb4WRp6SkMX+rWG3o/LqvPE5yc+jTR2eUrb+yeEYXc+d7O
         aN3pK33FYHhtCHtx9cEKOPKpwa+phCbZ6i0IXKULMVLaPCqT54u97YIAh8Ro6AT13/er
         F3VM9n3X7G7f1oqFbHge4kb2Pts6fwo5i7335TLxDfKrSz4A4EmmkvzKnz/Fz+72tskJ
         F/k2J/QEH0pOP6t7IHrSXf0OEHn/sj7O4TCovABy5TVAx+SBMOFBhGNtBjlHVLxvf5HQ
         Wh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764260691; x=1764865491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTuDofZ/dpgnTKp8dEB3WWnHumrubQoNy1pQF+WHUkM=;
        b=JocndRC0JG/U1uVGOMzXXX0WFanlnpGEGcRnZGpVrOGgTehXeFW+VP6CgCSrfBrNfu
         DmCs7/93HnabLLebL38uTUafUHP1EAeu/HVkm4prJvS6/v+mUTU8pn6n1qAhPvmRLh1U
         nQjs3iXOkXqarIl3KzZEWDBzU7ETqsGu+FYTz4rtK5JnWaa4TmEKrazVdVJRXA2VrOy4
         wdyPncZy+c9aH9qZBzgbxVo1nnY5ohrIyJJ3yzhHzxOoB3Huj/+jkg28Xw0pCUQ3je0c
         OcD49BJG43JqRChszjMWMaqxViwem+ZMCvzfz+jDADu5/86dLmswC0DoYfhL9x9+ZonL
         U+lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYzM/+2nVZS9RPcKPkBNMTOFvQ9CF49D+F6REOBgkwCOQeRIRgHfaO5ACKFkIqrXAxI7+iQ+D1IFi6@vger.kernel.org
X-Gm-Message-State: AOJu0YxhzvIVCm2SM/hfDCe9GaNU33IOcqtwhC6Uq8MY6qfhp+Z2dEpf
	ZRGhSHhoM0FLFplpQ8Fks4aI2aH0LfQMXIgVIZtTX9QNV790cFuJBxbj
X-Gm-Gg: ASbGncvltPc/+yzqhYjELwEz7o/UMW1PAEk0uqpcqRr+jBZleRBByHf1RiuGCNfhzVL
	RTkupMoO+x/CeIHuvvsOXABOvHHnLi/3/gDb8Jrj6BaxGMxIBBlz6U6uCCzFIb6eD3eDOXz8qQX
	/h9/B2/YlNtAWeh6qMbUib8jSiOREYkYO+LARI+vXkQChO4XhQB2er0C4UXmRi0iDgfTM8zH2So
	/OiF948lqpgi01TS25kBm/1HJNSsOaMINzo5gP5ILkzneiqtmCI5qgCg1ei/97MduS3ZW1rfpnl
	rwRDDe0ZidI9gzZUYKpJpKw1bFhyCrOBq6HsvAb8LiSfph1EA8R/J3TFUUa55JDuOZqzwwF/kpb
	2PK+TV9I+aZHBfbCQZvN8IM/ELwHqgbiKwgBYGck8bO3HtUZlzZgOo4ZbIIIqTBkd4M9efJxNj3
	JGcqs1SUodFQ6H1+sfDwQgRRtcv9jhsEh5ZiG8Xmb4cmQD
X-Google-Smtp-Source: AGHT+IFq9LHNEfkuv+wmHM5cOoro8YICUk1Dn/GDuqG7DPnL1vUlWtkf5nHAOa5x9M5ou3zEUEvztA==
X-Received: by 2002:a05:600c:1ca5:b0:475:dde5:d91b with SMTP id 5b1f17b1804b1-477c1115ff6mr282457745e9.17.1764260691031;
        Thu, 27 Nov 2025 08:24:51 -0800 (PST)
Received: from iku.example.org ([2a06:5906:61b:2d00:4f24:123b:7b7f:5ea9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479111565a1sm39163795e9.5.2025.11.27.08.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 08:24:50 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/2] Add ICU support for Renesas RZ/V2N SoC
Date: Thu, 27 Nov 2025 16:24:45 +0000
Message-ID: <20251127162447.320971-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

This patch series aims to add support for the Interrupt Control Unit (ICU)
found in the Renesas RZ/V2N System on Chip (SoC). The RZ/V2N ICU shares
similarities with the RZ/V2H(P) family but has a different register layout,
notably with a reduced set of ECCRAM related registers.
The first patch documents the RZ/V2N ICU in the device tree bindings,
while the second patch introduces support in the irqchip driver by adding
a new compatible string.

v1->v2:
- Dropped using RZ/V2H compatible as a fallback.
- Patch 2/2 is new

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: interrupt-controller: renesas,rzv2h-icu: Document RZ/V2N
    SoC
  irqchip: renesas: rzv2h-icu: Add support for RZ/V2N SoC

 .../bindings/interrupt-controller/renesas,rzv2h-icu.yaml         | 1 +
 drivers/irqchip/irq-renesas-rzv2h.c                              | 1 +
 2 files changed, 2 insertions(+)

-- 
2.52.0


