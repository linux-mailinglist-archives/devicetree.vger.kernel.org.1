Return-Path: <devicetree+bounces-80342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8F9918651
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D2101C208DC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EED18C359;
	Wed, 26 Jun 2024 15:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXn8ynOx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAD518C344
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719417291; cv=none; b=plz9RQQ6XT0Y8q0D85rqtsLemorcahVeBcklqa+zP8aBdo4JQ0tSyvkt0d/kzcDABQBqzYgtai/P7K+gixbAL2ukTxnV6PD7G5jHkLa+BYc4rZBGW9E5g7eJogftZ9sNLmQ7qXrxRR11oCY2MoIkgbJjtOZVTO9fDs2fw3kNpXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719417291; c=relaxed/simple;
	bh=Pmt6yw2QfjaAHJ/AyGc3c2YuOWUVWZ5rwjfj71Vz0Xc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fMiLzA2gdmda38pgnhWWGDplPJ3A/iEIrPq5qdQ/PKZJSmFbaHOwtI7blZ9qi3MwUKoWP996r/XTYk0s5u+1ZCscBmz7RxDEVhwTGm7YC6da8UaqBxilb0XEmuA0ttbSiUmW3yWfUYe8dsJfPxZrnnD4fm4jVGSIG8ELqbDeOlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXn8ynOx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3274C116B1;
	Wed, 26 Jun 2024 15:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719417291;
	bh=Pmt6yw2QfjaAHJ/AyGc3c2YuOWUVWZ5rwjfj71Vz0Xc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OXn8ynOxEinjcQ9bEqyNDGm0dvHrpqN2AnByPyXp5cHD96pJ/SYvkKbnYlZ9dX5LZ
	 +qgrSFrrrRX+oYDu6xXUM/tlxJ+plzpDhWuduBG1iC9O/6SOvucBEODt0hSLM3sa7+
	 0NkI7qIB0FFI9C8VRKB9+gigWmT9NajFfQ/rMGWuhqo38zgO+rEwUIWm/lkhx60iWG
	 2m6xoTijzXiFRFM7fbw03QXPrU8vMEA6ucJUjRaH8LLf5O+NiQHd8xxdQdWpWLa5qm
	 nlR+JcAaXyK3CjsKI6vt65NpvnokL1Poby9F+yEPQltGOxM2U5hPwnk7W5C+Ad7tkN
	 egfmkRIx055RQ==
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>
Subject: [PATCH 2/2] MAINTAINERS: add cache binding directory to cache driver entry
Date: Wed, 26 Jun 2024 16:54:17 +0100
Message-ID: <20240626-rebate-hertz-6d944eee7dda@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626-platter-scarcity-d503fda8a2fd@spud>
References: <20240626-platter-scarcity-d503fda8a2fd@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=716; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=rVXReSx+1zFYYm0cDpk2rJlw7q+iUX/Eqzsosya4frs=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGk1lssn8nppdN4R6lhvdLnCSy114pV5Z2QMMvdEe949v Ykn7+LRjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEyEvZiRYQeH6pIfG9PvTBNc k8pg8nbdh+8rT6xK1Uv6rvc8nIHx60ZGhsuuuytFRau2nLjDtym7/WKud+rRabu+LXh9bbmyGTv TdV4A
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The directory covering cache controller bindings has no MAINTAINER other
than the fallback to myself, Rob and Krzysztof. Add it to the entry for
the corresponding drivers.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c74fd2b70532..19d67bb04d0b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21503,6 +21503,7 @@ M:	Conor Dooley <conor@kernel.org>
 L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/
+F:	Documentation/devicetree/bindings/cache/
 F:	drivers/cache
 
 STARFIRE/DURALAN NETWORK DRIVER
-- 
2.43.0


