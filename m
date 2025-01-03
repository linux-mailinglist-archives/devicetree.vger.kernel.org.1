Return-Path: <devicetree+bounces-135466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA319A00FD0
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 22:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD4BE18820E7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B671BEF9E;
	Fri,  3 Jan 2025 21:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj113pH3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7612314F9CC;
	Fri,  3 Jan 2025 21:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735939497; cv=none; b=uCjUXDe59IRYydwRFIBsZzH1v768bytWz4Rs58NqWiWw3oXSGPPs26jin7eCTSWuYbMJ3hZHEml2vs7F6K3g55tnzLCMP30+4T1D0l6TaXx+LTi+jUU2xH9accuQl8J46cvppuyQ3Ulma628Sp8KIz5a3QhmYbwTjteIb0WdKoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735939497; c=relaxed/simple;
	bh=4dFyGmMKHjXn1l5+AQ5PLkLccSsCLN2lDTAdwacsm2U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sAx6ncVQR9diVi9MYvQF7XW2WooakaHcni4PX5OSoTPrR99VEsvmqYJiT3LPtwOioM7MfC026+Q9s1PzDV0niijkpXrdYqKRSe2If5H0IYcdxbIjI7TD+a+1VDnHcvFuRVdnzcFrBafB2+X+N/3oycBFotHgvV2ypQsWyFNy9qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj113pH3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10D18C4CECE;
	Fri,  3 Jan 2025 21:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735939497;
	bh=4dFyGmMKHjXn1l5+AQ5PLkLccSsCLN2lDTAdwacsm2U=;
	h=From:To:Cc:Subject:Date:From;
	b=Xj113pH3liCn8l17/4eUs6kJWd8YEOsaA8CB8E5cRyN1dd4941cA7eXJwFrhlLQPV
	 yUzl2Px9OiD7G+akjIUV5akxEtcZ32A9K1rAqtJ9uhpmgVN0BgAzqNcXS8gACsK7oX
	 0+GodQLlRPy0yjskn6rIIkvkPPhNBHQfBHcozDH/LJFHJA/1sjGUVaaOoqUkuw0UEu
	 LmJ1gEyjCeYAOKlri6hJbxBeE6kBwIHUJO47To9hyllDJdXnmNUAgerWXIRtmEvbW7
	 Gy3/NebRkDOF0QdmQ/CkUEjeimvkC6g+RmwO3ohkUBBcYrSnfjxHk0KJO87U0CxPpj
	 z1OuPjHaNQfDg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controller: qca,ath79-ddr-controller: Drop consumer from example
Date: Fri,  3 Jan 2025 15:24:48 -0600
Message-ID: <20250103212448.2852884-1-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Normal practice is examples only show what the binding document defines
and doesn't include consumers in a provider example (or vice-versa). The
"qca,ddr-wb-channel-interrupts" and "qca,ddr-wb-channels" properties are
also not yet documented by a schema, so avoid (not yet enabled) warnings
on them by dropping the interrupt-controller node from the example.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../memory-controllers/qca,ath79-ddr-controller.yaml       | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml b/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
index 0c511ab906bf..8b937f90a1fb 100644
--- a/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/qca,ath79-ddr-controller.yaml
@@ -52,10 +52,3 @@ examples:
 
         #qca,ddr-wb-channel-cells = <1>;
     };
-
-    interrupt-controller {
-        // ...
-        qca,ddr-wb-channel-interrupts = <2>, <3>, <4>, <5>;
-        qca,ddr-wb-channels = <&ddr_ctrl 3>, <&ddr_ctrl 2>,
-                              <&ddr_ctrl 0>, <&ddr_ctrl 1>;
-    };
-- 
2.45.2


