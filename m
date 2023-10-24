Return-Path: <devicetree+bounces-11113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1BD7D4472
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 03:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEDA41C20B3C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 01:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32FEF2103;
	Tue, 24 Oct 2023 01:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3pXl0fo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155F54C87
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66050C433CA;
	Tue, 24 Oct 2023 01:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698109442;
	bh=z5zD73CuDLZzR3kACF7pI8WVgaRXLYeaHoxvXa90vx4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T3pXl0foZ1CKiRgvmsO9n0qohBQbTW64EBG3sAJDTAAIfOdDzaPWavetHwis5SBlU
	 Let6/U27DKsUJVGc5t5GYnOFvZBUaDFm+/wkzlMokHQAXzaB4/RO/E4U6k1C7b+Bcl
	 kFIzkQJGCQV4sHDBO52kiQWdKK1r3erIimjsr9LCvNQrYCU2DoB1K7KjBPDYmN7hIG
	 zQecdt4IBCuGBHvIGBD0F181DUGvSBN4vdIflruyt7Q8CnzBpQfCmzQle2nxhZBc/N
	 SYDCBa8y3fQ1gSP193K1hP4U8Uo152AsZAURuJXgEC+kZ/WBvdmMvqeeTHPFsz5ZcB
	 jg87dYCRA/cEw==
Received: by mercury (Postfix, from userid 1000)
	id A96951060516; Tue, 24 Oct 2023 03:03:59 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: add GalaxyCore
Date: Tue, 24 Oct 2023 02:59:50 +0200
Message-ID: <20231024010355.1877523-2-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231024010355.1877523-1-sre@kernel.org>
References: <20231024010355.1877523-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GalaxyCore Shanghai Limited Corporation manufacturers
CMOS Image Sensor and Display Driver IC.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
Just included for completion, I expect this to be merged:
https://lore.kernel.org/all/20231011175735.1824782-2-alain.volmat@foss.st.com/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..8cb49a2e4afa 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -494,6 +494,8 @@ patternProperties:
     description: Fujitsu Ltd.
   "^fxtec,.*":
     description: FX Technology Ltd.
+  "^galaxycore,.*":
+    description: GalaxyCore Shanghai Limited Corporation
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateworks,.*":
-- 
2.42.0


