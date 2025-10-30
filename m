Return-Path: <devicetree+bounces-233373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B38EDC21939
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DF8F4E8D2D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA3936CDE3;
	Thu, 30 Oct 2025 17:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cRkeRV1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9BE36C250
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761846933; cv=none; b=eSYxtxzmjAS5jEhzsahS3kzI0XQ4IyhsMT4AwVmhmioA79NgoU0mMvDKVAA+54T2GQiFi4tjBjHVNTgITXDdYATCy9cwbxIL4mTtCj6AUcKfn2DZRxQqZ2PbIegGz7+BJYzpRy7YAAqyArOTMgYlXJvjfopz2hbnhZ+nz2CpJZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761846933; c=relaxed/simple;
	bh=E38nvu7KZl9ndawJz1k+ZLfO2UIk6shCOOTboPNO/UA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YDxliWoZZXIRUschJRlAIWiUARjskU5ze61QFRelbx+oxw2wXnI8LRujvHStuj4Y9S9DWhC4BJUHmBd8spuosLnNuz1SxN5Z27/6ly0M39FQyVA+cXzyGm/zKh3wrQSLJLxwfD93Y7g77VG0njG07iLSFWznyoEUHGd0kXOvolY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cRkeRV1T; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47728f914a4so6452025e9.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761846929; x=1762451729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1gzjCSWSDa5dSUjUZXovzi8Fx64Uy71ap0+jFlPPV2w=;
        b=cRkeRV1T5aFp6KPNiZh69cIJ8Kc8DTiNNNAn+YjTJlvGD82sQCnWquAAqvJUhUSWeq
         /MPtMh+uCAzNi5lOgP3gwQMeXEX2tIb6u17t3a7iohPBJ2lsWPSBvqVpgAnV9jCDsOBI
         VP0l+T6/MGrA4X8WCjop1uv9hctGon1gcYFUc8C1eyCS57AHo7Ewb+mNmA7+g2qExbbn
         vcdI5wHLUtCd3Id1HvcXYB5As6or42bk57xIOjSPYoQdobpWiLmGNfq/gnQhlEis5NfO
         ByX+onyrwszfNHaG3RXHb/2gNMPdjd/zpg2tEPH0wQs65oLZCNGBpwF8+qhTfddhBWcL
         o7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761846929; x=1762451729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1gzjCSWSDa5dSUjUZXovzi8Fx64Uy71ap0+jFlPPV2w=;
        b=RNDI1sgf+iX1Nyq241YnUrL2zWmMCLNUO1y4xRSA71qF3taTu1uoWDm7gnp8fUB9QG
         CN/sWufLhpcAzduxkZE9r7li6wyXeM14t6MVz1QtMBIExLpN52ZOQe2p3j2Upi6aUE4l
         y/u6oXWGpSy4XmKsSLyXEiUulTyMZGPMkDBe+4CEbPmaBC5TvFUzMrZRZ/HCcZV0XR3z
         LEctRIEIRYb2+0GWwJX/Ucpt6CbotbMMOaNI/X5KjgZa3vg1oJKkKALnXK9QUpfKCOTi
         fL5oAEqtBuSml4MtPvI6WaV1cHK0RZr2AjS6pjxzvJ6DL8IZLF81eejkeeWI/S5ScNwa
         Yxkg==
X-Forwarded-Encrypted: i=1; AJvYcCWCaZX+oDE7Q70Zcp7OH6SHbGPNY2wF6g3yGb8i26SIv1pq1ZY5r9ubisJlayqJlWxWl7ujX+ZvdO01@vger.kernel.org
X-Gm-Message-State: AOJu0YyYu+MGf5nMbsIcjUJytDsh0r1QE67as9F9i9QWTiX9nW2pvwK7
	RXZwVjszJseFrYVrN5O9wufsKegrDglg6pUwMKRegXo3ukjLYdQi7IRc
X-Gm-Gg: ASbGncuIHs2ZbRWzIfxmkN/O6lrf5qHxZCTgSrZO2BqTZm6k8Vl3nAUAxiaews5ayNR
	TSbJQNoCGFAScDzRbZ9tB9vaH6AkpXYlR+egf9i6DtdCgZrG3nhTUHL9a6UTatMf5VaOiY8xW3u
	PdAbIZFwjLhx634ZdjLkOdnsjmznfdtCAXadU38x/xkx2qH7RvKtudYG0A+SYvAR9kL1eM1o7dN
	iVr4cIEsSgt4zSmoODwg732cFZeuxZAIJrDsrOtlIW4mZMpQyensluvLUzUSqP3HuBy5AY1WTbf
	3XURVu3lHs/49ParZRf3U16YHJTA17AxOPuZqzAY4FeNqt4Z3PX5R8uCmm2no2W9TZNOurcDgSY
	6IciWbqH2t8jffYlCwZKuXGoxGWtYrEKeBMFuSO9DXuddjzwHa1OMUgY1xSmnOrYHC/fCflVV6v
	1bPy/JkJXvAGKvassxEUPRyLvBa2ObkzoaIpru6oFt/ChwBnRQWfR2UbHE7b1n
X-Google-Smtp-Source: AGHT+IFvVMZpr26r2oMzIBqKA97uZXvamh5HEXytVmPS+yPwKWlEnWn5bt5lEiXlmDbS5Rh6odZSCA==
X-Received: by 2002:a05:6000:1a8e:b0:429:8cda:dd4e with SMTP id ffacd0b85a97d-429bd6ada5cmr389977f8f.32.1761846928726;
        Thu, 30 Oct 2025 10:55:28 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952de5f9sm33384041f8f.38.2025.10.30.10.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 10:55:28 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 00/13] Add RZ/G3E RSCI support
Date: Thu, 30 Oct 2025 17:55:04 +0000
Message-ID: <20251030175526.607006-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E RSCI support for FIFO and non-FIFO mode. RSCI IP found on
RZ/G3E SoC is similar to one on RZ/T2H, but has 32-stage fifo. RZ/G3E has
6 clocks (5 module clocks + 1 external clock) compared to 3 clocks
(2 module clocks + 1 external clock) on RZ/T2H, and it has multiple
resets. Add support for the hardware flow control.

This patch series depend upon [1]
[1] https://lore.kernel.org/all/20251029082101.92156-1-biju.das.jz@bp.renesas.com/

v1->v2:
 * Updated commit message for patch#1,#3,#9
 * Added resets:false for non RZ/G3E SoCs in bindings.
 * Increased line limit for error messages to 100-column limit for patch#3
 * Updated multiline comment to fit into single line.
 * Updated set_termios() for getting baud_rate()

Biju Das (13):
  dt-bindings: serial: renesas,rsci: Document RZ/G3E support
  serial: rsci: Drop rsci_clear_CFC()
  serial: sh-sci: Drop extra lines
  serial: rsci: Drop unused macro DCR
  serial: rsci: Drop unused TDR register
  serial: sh-sci: Use devm_reset_control_array_get_exclusive()
  serial: sh-sci: Add RSCI_PORT_{SCI,SCIF} port IDs
  serial: sh-sci: Add sci_is_rsci_type()
  serial: sh-sci: Add support for RZ/G3E RSCI clks
  serial: sh-sci: Make sci_scbrr_calc() public
  serial: sh-sci: Add finish_console_write() callback
  serial: sh-sci: Add support for RZ/G3E RSCI SCIF
  serial: sh-sci: Add support for RZ/G3E RSCI SCI

 .../bindings/serial/renesas,rsci.yaml         |  85 +++-
 drivers/tty/serial/rsci.c                     | 412 +++++++++++++++---
 drivers/tty/serial/rsci.h                     |   2 +
 drivers/tty/serial/sh-sci-common.h            |   9 +
 drivers/tty/serial/sh-sci.c                   |  67 ++-
 5 files changed, 492 insertions(+), 83 deletions(-)

-- 
2.43.0


