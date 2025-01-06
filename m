Return-Path: <devicetree+bounces-135920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDBA03043
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3B181886454
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 719971E00AF;
	Mon,  6 Jan 2025 19:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="gS6ssQ7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110061DFE29;
	Mon,  6 Jan 2025 19:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736190661; cv=none; b=T8oBXGqtHSHKpQD+DC6RBp9UaTDKxEDaFHElHAqOOlzOjirDzKDEMoNgSw6m8HqWdM1MKKlkc0jWkPuxJOJllJEHFuLrEg1rWGuaBdWcEKELKs3OEdAeuLh09/TsKJtcSi7jpPkLzQyZlSlnyAY0qMuGtAYokYZDUxcMMceykqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736190661; c=relaxed/simple;
	bh=Gn+Q4lReEkEoiM/PZpbjPntXswDZViQl2SRN6W864QE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=inR+AwZdVNoJmHpzqUU9FTYg+vvHXJcH6VjptF5klZvnFLdXSzAGoOBdrdqtxqpEGmPufH5ILB8hxB/KaIe8TCx8Y6CozwJtly/XvEGGoSk7wHxJoaBgMIHC4CnRk4H6bgEW2wR+46B7rmdjPVB2zeqoAgqXFIOucFv8uu6MmzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=gS6ssQ7f; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=cL2CoH0FnsVPzA2VTA3iYSwhhoo7YAeXqq8OgNbZOdc=;
	b=gS6ssQ7fHNCe3EzWSsP+qFWwwl6X9Lh7+GPM61BeYKMclqG/B9h3GsRN0EwzAWKxsMVIArIe0/rqLXYWyr18Owv/AD7H8uSSZtwxWrbtlF16ea7Y8froFojRDi3eOtwo4j+3axdfG4y/+EaqX2tc4ZhKUdhKhSppQ+Qx+7Z+uKI=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Mon, 6 Jan 2025 20:10:37 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] dt-bindings: vendor-prefixes: Add NetCube Systems Austria name
Date: Mon,  6 Jan 2025 19:06:59 +0000
Message-Id: <20250106190703.4015-2-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106190703.4015-1-lukas.schmid@netcube.li>
References: <20250106190703.4015-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

NetCube Systems Austria builds Embedded Systems for use in IoT, IIoT,
or Smart Home scenarios.

Website is still WIP, but the Links on it are active:
https://netcubesystems.at/

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c7..a30ed9547098 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1027,6 +1027,8 @@ patternProperties:
     description: Neofidelity Inc.
   "^neonode,.*":
     description: Neonode Inc.
+  "^netcube,.*":
+    description: NetCube Systems Austria
   "^netgear,.*":
     description: NETGEAR
   "^netlogic,.*":
-- 
2.47.1



