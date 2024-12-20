Return-Path: <devicetree+bounces-133207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E319F9C01
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 22:38:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C2667A2CD1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 21:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE20621D5B0;
	Fri, 20 Dec 2024 21:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeeMf8ah"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B80157A48;
	Fri, 20 Dec 2024 21:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734730673; cv=none; b=R+kSZZBCI0WWL0FmCd1Mez05XanCvFSPRprVgM8ChvRQ12QaRObe/PeKhE1X/yJ+nMFvWPwE8p02YpWl2VtVP3zo1GcsT2JNmW069FNz7rqgWOIK19s/D2qeRHXsMK5RtasNZWqDZBmX/kNGuW4/xt+yvl17/DREfA7gyfWtZCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734730673; c=relaxed/simple;
	bh=jVlAHahKlmv+vs2MLlpLYIFdgqTJIsMXfEZpG+/dTos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jHJ5+u1tnFszHUEvknSJ8mp/Oe/Vg99AtUFUe16Rz/a+74XMWfuDNzMR9lIEc1lh+JA1iUHEFiyIpMVUPJaVGqdAr/7b5+D/yTqjPfDGBHIH+kpQYYJbAwc64wMGZd/1srQfig/Snf9+BjOelO6fpfDygVHznEx+xZ6+paArSEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeeMf8ah; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9587EC4CED4;
	Fri, 20 Dec 2024 21:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734730673;
	bh=jVlAHahKlmv+vs2MLlpLYIFdgqTJIsMXfEZpG+/dTos=;
	h=From:To:Cc:Subject:Date:From;
	b=TeeMf8ahVx2oSQn1OZpXcw4pyOqp2HG9a713DTiW0Epm+T8C0AOTtAhL5PAKQFk/9
	 hkfu6jPLjnaq/1mpS3WR1t0GXqW3ufgS/hgSMX2B8XjmzjmbVN8sEanidKdWwHMRqC
	 3P+FaTC5MGhVuyoaFWiStq9nelU1gic/hSySX47u8INLPu/5zbpLMw6ey2uv9m7nCh
	 EZMpbqGGwN/14Btn2SL32yv7hMZoQbfOEQSSJ08cR0FWCQC/eYQjNl6MzuuaMrOkWD
	 X+noLsZwI29A5Ej2PmLfahz3hOx93hDPTJvjGDhZHZ3kbgJqkY1F73jQDRhBx9O3oL
	 8giPoow7MmroA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] of: Add coreboot firmware to excluded default cells list
Date: Fri, 20 Dec 2024 15:32:34 -0600
Message-ID: <20241220213234.169832-2-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Google Juniper and other Chromebook platforms have a very old bootloader
which populates /firmware node without proper address/size-cells leading
to warnings:

  Missing '#address-cells' in /firmware
  WARNING: CPU: 0 PID: 1 at drivers/of/base.c:106 of_bus_n_addr_cells+0x90/0xf0
  Modules linked in:
  CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.12.0 #1 933ab9971ff4d5dc58cb378a96f64c7f72e3454d
  Hardware name: Google juniper sku16 board (DT)
  ...
  Missing '#size-cells' in /firmware
  WARNING: CPU: 0 PID: 1 at drivers/of/base.c:133 of_bus_n_size_cells+0x90/0xf0
  Modules linked in:
  CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Tainted: G        W          6.12.0 #1 933ab9971ff4d5dc58cb378a96f64c7f72e3454d
  Tainted: [W]=WARN
  Hardware name: Google juniper sku16 board (DT)

These platform won't receive updated bootloader/firmware, so add an
exclusion for platforms with a "coreboot" compatible node. While this is
wider than necessary, that's the easiest fix and it doesn't doesn't
matter if we miss checking other platforms using coreboot.

We may revisit this later and address with a fixup to the DT itself.

Reported-by: Sasha Levin <sashal@kernel.org>
Closes: https://lore.kernel.org/all/Z0NUdoG17EwuCigT@sashalap/
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/base.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
---
I coded up some fixups infrastructure, but I'm going to wait and see if 
we really need it.

v2:
 - Use "coreboot" compatible to exclude more platforms

v1: https://lore.kernel.org/all/20241125113151.107812-1-krzysztof.kozlowski@linaro.org/

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 44b1c8bf9cc0..e6ef31c4940f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -88,7 +88,8 @@ static bool __of_node_is_type(const struct device_node *np, const char *type)
 }
 
 #define EXCLUDED_DEFAULT_CELLS_PLATFORMS ( \
-	IS_ENABLED(CONFIG_SPARC) \
+	IS_ENABLED(CONFIG_SPARC) || \
+	of_find_compatible_node(NULL, NULL, "coreboot") \
 )
 
 int of_bus_n_addr_cells(struct device_node *np)
-- 
2.45.2


