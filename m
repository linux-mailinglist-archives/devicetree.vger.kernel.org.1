Return-Path: <devicetree+bounces-243523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C3DC989B2
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D08974E1DF3
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A58338914;
	Mon,  1 Dec 2025 17:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAaUpv1+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C4337BB6;
	Mon,  1 Dec 2025 17:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764611438; cv=none; b=iiYLO+Z/Oy/tEvgL+oj0f06vxtULEhfpKXACT++ZVa97EfUWDag9gNmCo6Oe4ipwhkMnrzom5gpR2vVtOFZCNQHVizASWnsTZ86jC3Wct4xdu5f7nACZ8iKyrLRWgiP3fiB/Oe9KeYW7nS9gSv8VNCs9w2+TIkPnTYy9jMBbTkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764611438; c=relaxed/simple;
	bh=qQoYhGMGDBdrfEkvzbnAUzj/yM28TTk8BFcXTmxa8Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ClT3QaSHOvxY/8lvpSXE5Bv8YgBxgo0c1Ks8jqcI9omeWvXaiZayXBu0dG0wfzV8ujOM+/B0yL9JPKdR2+OOM0MrE/rF9syy8NwMOwZSs0sR57VYO252Ybd2OrHEyiamCdw5EuTQdUVgiXTued3MdViZZkG8fLjvCdld7EcGTKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAaUpv1+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FED7C4CEF1;
	Mon,  1 Dec 2025 17:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764611437;
	bh=qQoYhGMGDBdrfEkvzbnAUzj/yM28TTk8BFcXTmxa8Gk=;
	h=From:To:Cc:Subject:Date:From;
	b=FAaUpv1+4IjaCtoWZkLRQtIroBQfuLxl5o6R3P21fdwMQZhz1U4tHiu3izctPabsJ
	 foTpMUQCP/PNvTDelAnrid10LpH2GGus/6T3+zkHB4Au0omZ8/j4e35PTq4xz82ihs
	 fU04FNnr44VK7zFCHkLv5mm4NBskbgw91w9lP/ucpu62JvT2UBi7vACO+AwQ5U+77o
	 FOIrYCDvaBLEVYSK2D6kFq+D9+TuVJIawP/DsoppN69/qg3N7EC1ug7Qk62IfNQHHu
	 oHhphmhP/NkYmwwCwDBCj1jMJv/mGABUNpEhpa4paLMz6qV5xBqK0zC4svUbkkaXAd
	 d1sQkuQJGfurA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: kbuild: Skip validating empty examples
Date: Mon,  1 Dec 2025 11:50:29 -0600
Message-ID: <20251201175030.3785060-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extracting empty examples results in just the empty template being
generated and then validated. That's pointless and not free, so filter
out the schemas without any examples from the targets.

There's currently a little less than 10% of the binding schema files
without examples. Removing them improves the build time by ~6%.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
index 8390d6c00030..8d6f85f4455d 100644
--- a/Documentation/devicetree/bindings/Makefile
+++ b/Documentation/devicetree/bindings/Makefile
@@ -32,7 +32,8 @@ find_cmd = $(find_all_cmd) | \
 		sed 's|^$(srctree)/||' | \
 		grep -F -e "$(subst :," -e ",$(DT_SCHEMA_FILES))" | \
 		sed 's|^|$(srctree)/|'
-CHK_DT_EXAMPLES := $(patsubst $(srctree)/%.yaml,%.example.dtb, $(shell $(find_cmd)))
+CHK_DT_EXAMPLES := $(patsubst $(srctree)/%.yaml,%.example.dtb, \
+			      $(shell $(find_cmd) | xargs grep -l '^examples:'))
 
 quiet_cmd_yamllint = LINT    $(src)
       cmd_yamllint = ($(find_cmd) | \
-- 
2.51.0


