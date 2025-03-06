Return-Path: <devicetree+bounces-154977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F83A5523B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 18:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FB3A7A2322
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 17:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA1025D1F9;
	Thu,  6 Mar 2025 17:05:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD8225C6FC;
	Thu,  6 Mar 2025 17:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741280723; cv=none; b=A7ZkU2lSwK1jxV/pnPG9nMwnUO1DGRa3MgIhn8leL/plHJKyklkoq+LXcrUpt3SRZhUcJANrJb6YxAOLFJ+roCR5xoxJDL11vo0AijN6enNX8TuPDKCZTSecj1JehPqbbyKhvQneNIfAN9eQtLs2GaGlgnA6dIKdwbbM54e7Wus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741280723; c=relaxed/simple;
	bh=3W32JhXOXF9GCDRMf6VafmAYM1p9IYy4GyL8WGfPD4Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XlKF/OKGcK/5QSl6TgUcQqXa76G/zhepmmR3g09ivVp2bT8v9WuvOuFKe+8/GFtZqVpz4k5ynn5bTGK1Jw6TyWZnwx/86nVqOBfzcNQjhFO0mFayWPGKEJWDTkWN3zhH5d5/RrUGU8KVi4RjPLcDjS1CVotx+AZT0KttpxDh5S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com; spf=pass smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bp.renesas.com
X-CSE-ConnectionGUID: u6hfqNAnR0e7TqTXkUno2A==
X-CSE-MsgGUID: 4kJAG/jFThSxQmAoIjk/sA==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 07 Mar 2025 02:05:18 +0900
Received: from localhost.localdomain (unknown [10.226.92.10])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id E3DC74016D60;
	Fri,  7 Mar 2025 02:05:14 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-spi@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/8] Add RZ/G3E xSPI support
Date: Thu,  6 Mar 2025 17:04:58 +0000
Message-ID: <20250306170512.241128-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The xSPI IP found on RZ/G3E SoC similar to RPC-IF interface, but it
can support writes on memory-mapped area. Even though the registers are
different, the rpcif driver code can be reused for xSPI by adding wrapper
function to it.

This patch series tested on RZ/G2L and RZ/G3E by overwriting boot
partitions.

v1->v2:
 * As rz-xspi is too generic, replaced file name rz-xspi->rzg3e-xspi
   and dropped generic compatible rz-xspi.
 * Dropped prefix spi from interrupt names.
 * Updated the example with above changes.
 * Retained Rb tag from Rob as these changes are trivial.
 * Fixed the build error reported by bot by dropping 
   EXPORT_SYMBOL(xspi_dirmap_read) and restoring
   EXPORT_SYMBOL(rpcif_dirmap_read).
 * Replaced enum XSPI_RZ->XSPI_RZ_G3E.
 * Replaced compatible rz-xspi->r9a09g047-xspi and device data
   xspi_info_rz->xspi_info_r9a09g047.

Biju Das (8):
  dt-bindings: memory: Document RZ/G3E support
  memory: renesas-rpc-if: Move rpc-if reg definitions
  memory: renesas-rpc-if: Use devm_reset_control_array_get_exclusive()
  memory: renesas-rpc-if: Move rpcif_info definitions near to the user
  memory: renesas-rpc-if: Add regmap to struct rpcif_info
  memory: renesas-rpc-if: Add wrapper functions
  memory: renesas-rpc-if: Add RZ/G3E xSPI support
  spi: rpc-if: Add write support for memory-mapped area

 .../renesas,rzg3e-xspi.yaml                   | 135 ++++
 drivers/memory/renesas-rpc-if-regs.h          | 147 ++++
 drivers/memory/renesas-rpc-if.c               | 665 +++++++++++++-----
 drivers/memory/renesas-xspi-if-regs.h         | 105 +++
 drivers/spi/spi-rpc-if.c                      |  16 +-
 include/memory/renesas-rpc-if.h               |   4 +
 6 files changed, 881 insertions(+), 191 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/renesas,rzg3e-xspi.yaml
 create mode 100644 drivers/memory/renesas-rpc-if-regs.h
 create mode 100644 drivers/memory/renesas-xspi-if-regs.h

-- 
2.43.0


