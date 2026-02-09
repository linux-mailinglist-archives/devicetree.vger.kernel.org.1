Return-Path: <devicetree+bounces-263808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJvKN2F1iWlm9gQAu9opvQ
	(envelope-from <devicetree+bounces-263808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:49:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 018BF10BD3F
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:49:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C032A300B47C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 05:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD61430F54A;
	Mon,  9 Feb 2026 05:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gySpQ9nn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A751A2D9EED;
	Mon,  9 Feb 2026 05:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770616146; cv=none; b=NANOC37045gHDkkTO6KJMeSnl26pEKkVeGUS8ZPniVRsPD5ftrxVEFr9TmbVpzEtWHjmCoIpWa0yL+CJPLCZ/QHJb5BoGiSdPS++CPpP16pJg0llCg5v7XQWykqH3szDGO8iickHBgQnBa7dO8h+91drJchu55P2nEjIUYsKd0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770616146; c=relaxed/simple;
	bh=ebLbpj1aW+Kz/xR5J14ie4MaN19ZepOR5F1hDJBpNPo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BaGtkZmyvwqqFtuVAtbXTbpWUJCPGtN/uXyA+Du8XH/ZWDToHVi2P3Xotr1Ee6Gfse94ZLWUUd7y3vSL7lTktCgLsYjEtgl0nsMwNsYQuoaml6Nbj/x/wIjTtS8Kg+Fk7awPXw8DyM+bi5zLfOxG4ZrBVDGia4Cn79xdp9+mB6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gySpQ9nn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A218C19424;
	Mon,  9 Feb 2026 05:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770616146;
	bh=ebLbpj1aW+Kz/xR5J14ie4MaN19ZepOR5F1hDJBpNPo=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=gySpQ9nnz39+fgc/D/7EzD0zxPRXwxnGokjoqSDL2jaMq32fa+1ks/6/HMNp/a2Oa
	 KdIJKF/aXNzmGnDQxmvh0PXsMl3Er1LnJlV39q75Y9m7A+LdGuAM/pDZ5zLSwPcQFx
	 /7HFm0BHah+S+AesUcH/pA2g3B8kMBaSb1NAzdU0LzjoRsCIfZykGuJP/FbYes1k0z
	 SjL7nQNz4iSKlyfOMlpL7AtOHcbfkNwvvvTxWHAEDi7B1/TMFCi0Q4VZZzhLLvgod9
	 lOn7AoPkf5roCgyenW9i6hL1pCG/fQoQMRKDNlSGNrYxDh/zllB6gAHKZUOnAaQrL3
	 0IfcpMWpBhTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BD80EF06FF;
	Mon,  9 Feb 2026 05:49:06 +0000 (UTC)
From: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>
Subject: [PATCH 00/13] clk: amlogic: Introduce A9 PLL and CCU driver
 support
Date: Mon, 09 Feb 2026 13:48:46 +0800
Message-Id: <20260209-a9_clock_driver-v1-0-a9198dc03d2a@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD51iWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ2MD3UTL+OSc/OTs+JSizLLUIt2UlBRLA2NTcwsTi2QloK6CotS0zAq
 widGxtbUA4Ft7hWEAAAA=
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Chuan Liu <chuan.liu@amlogic.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770616142; l=3749;
 i=chuan.liu@amlogic.com; s=20240902; h=from:subject:message-id;
 bh=ebLbpj1aW+Kz/xR5J14ie4MaN19ZepOR5F1hDJBpNPo=;
 b=lzoDOte3b+xv8Lht85pzHNT4bc9SCKzSJHu3j0g+C54rxft4OKN9wVoNSGsq/aF0aeGhuWILt
 HJSKa4eJLVkAudSDfO5EnhD0iLLehuVlS/aMg3Z+WdGdcWiSCsCcqap
X-Developer-Key: i=chuan.liu@amlogic.com; a=ed25519;
 pk=fnKDB+81SoWGKW2GJNFkKy/ULvsDmJZRGBE7pR5Xcpo=
X-Endpoint-Received: by B4 Relay for chuan.liu@amlogic.com/20240902 with
 auth_id=203
X-Original-From: Chuan Liu <chuan.liu@amlogic.com>
Reply-To: chuan.liu@amlogic.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263808-lists,devicetree=lfdr.de,chuan.liu.amlogic.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[chuan.liu@amlogic.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amlogic.com:replyto,amlogic.com:email,amlogic.com:mid]
X-Rspamd-Queue-Id: 018BF10BD3F
X-Rspamd-Action: no action

This patch adds driver support for Phase-Locked Loop (PLL) controllers
and Clock Control Units (CCUs) in A9 SoC family.

In the A9 SoC architecture, PLLs and clock control units are implemented
as standardized hardware instances to reduce unnecessary differentiation
across individual units.

All A9 PLLs and CCUs are exposed as device tree nodes, providing an
accurate representation of the SoC's internal clock hardware structure.

These drivers are designed for reuse in subsequent SoC generations,
guaranteeing code inheritance and maximizing reusability.

Makefile rules compile A9 PLL and CCU drivers into clk-amlogic.o (see
drivers/clk/amlogic/Makefile), simplifying deployment and enhancing load
efficiency (single insmod for kernel module).

Since the foundational A9 DTS hasn't been upstreamed yet, I'm temporarily
pushing the PLL/CCU DTS files to github for driver comprehension [1].
These patches will be included in a later release after the base A9 DTS
is merged.

[1] https://github.com/torvalds/linux/commit/d6a82e4cce675fa5146c5f638c2a926c1c8cb1d9

Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
---
Chuan Liu (13):
      dt-bindings: clock: Add Amlogic A9 standardized model clock control units
      dt-bindings: clock: Add Amlogic A9 PLL controllers
      dt-bindings: clock: Add Amlogic A9 misc clock control units
      clk: amlogic: Add basic clock driver
      clk: amlogic: Add composite clock driver
      clk: amlogic: Add noglitch clock driver
      clk: amlogic: Add duandiv clock driver
      clk: amlogic: Add PLL driver
      clk: amlogic: Add DT-based clock registration functions
      clk: amlogic: Add A9 standardized model clock control units driver
      clk: amlogic: Add A9 PLL controllers driver
      clk: amlogic: Add A9 misc clock control units driver
      clk: amlogic: Add support for building as combined kernel module

 .../bindings/clock/amlogic,a9-misc-ccu.yaml        | 523 +++++++++++
 .../bindings/clock/amlogic,a9-model-ccu.yaml       | 435 +++++++++
 .../devicetree/bindings/clock/amlogic,a9-pll.yaml  | 134 +++
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/amlogic/Kconfig                        |  52 ++
 drivers/clk/amlogic/Makefile                       |  23 +
 drivers/clk/amlogic/a9-misc-ccu.c                  | 970 +++++++++++++++++++++
 drivers/clk/amlogic/a9-model-ccu.c                 | 475 ++++++++++
 drivers/clk/amlogic/a9-pll.c                       | 156 ++++
 drivers/clk/amlogic/clk-basic.c                    | 219 +++++
 drivers/clk/amlogic/clk-basic.h                    |  39 +
 drivers/clk/amlogic/clk-composite.c                | 280 ++++++
 drivers/clk/amlogic/clk-composite.h                |  20 +
 drivers/clk/amlogic/clk-dualdiv.c                  | 365 ++++++++
 drivers/clk/amlogic/clk-dualdiv.h                  |  27 +
 drivers/clk/amlogic/clk-module.c                   |  42 +
 drivers/clk/amlogic/clk-module.h                   |  53 ++
 drivers/clk/amlogic/clk-noglitch.c                 | 584 +++++++++++++
 drivers/clk/amlogic/clk-noglitch.h                 |  29 +
 drivers/clk/amlogic/clk-pll.c                      | 701 +++++++++++++++
 drivers/clk/amlogic/clk-pll.h                      |  43 +
 drivers/clk/amlogic/clk.c                          | 464 ++++++++++
 drivers/clk/amlogic/clk.h                          |  56 ++
 include/dt-bindings/clock/amlogic,a9-misc-ccu.h    |  53 ++
 25 files changed, 5745 insertions(+)
---
base-commit: 4d310797262f0ddf129e76c2aad2b950adaf1fda
change-id: 20260130-a9_clock_driver-ddd90357848c

Best regards,
-- 
Chuan Liu <chuan.liu@amlogic.com>



