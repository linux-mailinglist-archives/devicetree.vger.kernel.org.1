Return-Path: <devicetree+bounces-222123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD6FBA603D
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 16:04:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B71221B24032
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6CF2E0B42;
	Sat, 27 Sep 2025 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ/+ZWVK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64758279351;
	Sat, 27 Sep 2025 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758981845; cv=none; b=RvuHjeqEBc3PEjIeJWynlxOdiuFyTKeTCV/sF8+DB2442G1b9Tk9LFn2i7EMjzgyLltxIBiz9/TDY7xh3LzvSzPz1Ue6efzFoI3K9uKuonP5yTEVioGL501MZJSpesvf+nOvA2boMr/TAII58641g9WGCatAfieg1LtTMNy5Sbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758981845; c=relaxed/simple;
	bh=mGr2EMGRgUnBXBgYyHfdnuWKDBCqqz3YASJ/ym88WdU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=k5KH8cdGGiOTegvu+abF79epoxqwRy8BkfJ0x0I8pmIZmVinEG1a4Q/dXKY/CMdcxZ7KB1AYY1A4W0lxQ6S+szoEUtINqhDhWPJxh/2REGPtbiNxLxDp/RjBWDiTytxJMtr3m6sKhaTaBEsW+8WQHSBQ5EW+cmOcctiFf5P9etY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ/+ZWVK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C6BC4CEE7;
	Sat, 27 Sep 2025 14:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758981844;
	bh=mGr2EMGRgUnBXBgYyHfdnuWKDBCqqz3YASJ/ym88WdU=;
	h=From:Subject:Date:To:Cc:From;
	b=JZ/+ZWVK1MJMw8WwpkRJzaMVWsf7Mgux6URVM8FXcX2pYxausVn8xARS0VT1RleYG
	 JXIlS50WKgOin7NcHIddcJIgP8oJZzVNjMZsSd2MTL7XCd84M/oxeQWiLiUveuls31
	 KQu9zqrA/wR7hYHybxiYd9dkAGi4cahd7W53AiSaTamSK1ilFAYqa03scmnWZjiDMG
	 TFbbXsIU7NQRHs5LtNiqhlQT6gUHgBn8dMum7rx8pY5d9TzoPtdTrrQBITCtmeF/+M
	 xP9ZILAARPrOxONbNW4iJPbIhfOhnzZ40bDZUkq+ykrX+IYDeDmn+G6KTt7WOVZ3NF
	 N3qUxCFy24HLw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Subject: [PATCH net-next v2 0/3] net: airoha: npu: Introduce support for
 Airoha 7583 NPU
Date: Sat, 27 Sep 2025 16:03:39 +0200
Message-Id: <20250927-airoha-npu-7583-v2-0-e12fac5cce1f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALvu12gC/3WNQQ6CMBBFr0Jm7Zi2lIKsvIdhQWCAiaYlUyUa0
 rtb2bt8L/nv7xBJmCK0xQ5CG0cOPoM5FTAsvZ8JecwMRplKXYzDniUsPfr1hXXVlOhKsrpU2jk
 7QF6tQhO/j+Kty7xwfAb5HAeb/tn/rU2jQmtrqsiMk2rG653E0+McZIYupfQFdiv8Na8AAAA=
X-Change-ID: 20250926-airoha-npu-7583-63e41301664c
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailer: b4 0.14.2

Introduce support for Airoha 7583 SoC NPU.

---
Changes in v2:
- Introduce airoha_npu_soc_data struct and generalize firmware load
- Link to v1: https://lore.kernel.org/r/20250926-airoha-npu-7583-v1-0-447e5e2df08d@kernel.org

---
Lorenzo Bianconi (3):
      dt-bindings: net: airoha: npu: Add AN7583 support
      net: airoha: npu: Add airoha_npu_soc_data struct
      net: airoha: npu: Add 7583 SoC support

 .../devicetree/bindings/net/airoha,en7581-npu.yaml |  1 +
 drivers/net/ethernet/airoha/airoha_npu.c           | 93 ++++++++++++++++------
 2 files changed, 68 insertions(+), 26 deletions(-)
---
base-commit: 1493c18fe8696bfc758a97130a485fc4e08387f5
change-id: 20250926-airoha-npu-7583-63e41301664c

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


