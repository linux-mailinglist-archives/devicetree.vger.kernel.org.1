Return-Path: <devicetree+bounces-251694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C8DCF5AA5
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 22:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F31030268FC
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 21:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73EEC30FC3C;
	Mon,  5 Jan 2026 21:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5IZreI6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C98A30FC09;
	Mon,  5 Jan 2026 21:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767648555; cv=none; b=LcnwdQ088OzzWeF+jaUDbVy5IiOgAczMrWv74XDuPQ6AT+9jyh841LY4S38Sa6ObnuAcBOWgWAOrRNTXVTlGFH5GUmY3mlhUkIghsfjyOT0z+kDKepOW6I9FIe0xC1gHPFgXOsba6dCVh9IcpWK1OAsNBjG1v+riwvVe3fflh4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767648555; c=relaxed/simple;
	bh=v0iLNjXRbKOhcLt6AHcmqsxeTt/bDlNtovVlwPMyNOk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KvNvEXYaOv4RJvafM66allM/udHbiQ6e6cnPTO5TjsV6Ym+8Z+dBpqVlYZR9hYjeHQDoAGy1N9wg2WB6fFx6tVq9V5SBodj1eThRt9XrzTSFXJTzooPugOCSMyHOF439mpd3UZTeirdZYlnC2r9AWqAqNSuUyBe1Gm64YuziKTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5IZreI6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C47D6C116D0;
	Mon,  5 Jan 2026 21:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767648553;
	bh=v0iLNjXRbKOhcLt6AHcmqsxeTt/bDlNtovVlwPMyNOk=;
	h=From:To:Cc:Subject:Date:From;
	b=N5IZreI6Z4MpkjQ53rDYo9dksHuvPSP0yTqnQ8vndIM2K7uXp/FpMyIF3CCcGJLkx
	 84+RNEHWxPjKpbAJAZ7R3S6EDVjY1ROlqhCMV9X0loGh6iNV3gOKZCqH6MHxdmsQ1W
	 Zw7CId0kE82hahW+rDp62SyUBSAEx9fgA7T4fEISZPHUODg7Sxv8K9rqS0U4OqXjZZ
	 TOFO+yc/kmlsqk4x61aPmE/GAU2sS06Sq7wszMlk5A8c9yl9IXopZXbsl6n0cb1AC+
	 LkIjuUGTehI955/catKrmq5K2G9Mh2AmeveU9Gqyi0hqWw9cKg3SG4Myy5l2isfVzF
	 DD4XZuuZnOr3A==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: riscv: extensions: Drop unnecessary select schema
Date: Mon,  5 Jan 2026 15:29:09 -0600
Message-ID: <20260105212910.3454517-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "select" schema is not necessary because this schema is referenced by
riscv/cpus.yaml schema.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 565cb2cbb49b..29e8b50851ed 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -24,12 +24,6 @@ description: |
   ratified states, with the exception of the I, Zicntr & Zihpm extensions.
   See the "i" property for more information.
 
-select:
-  properties:
-    compatible:
-      contains:
-        const: riscv
-
 properties:
   riscv,isa:
     description:
-- 
2.51.0


