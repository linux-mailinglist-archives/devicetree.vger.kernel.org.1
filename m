Return-Path: <devicetree+bounces-136303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94569A04A1A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 20:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5D473A6701
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 19:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9ED1F5425;
	Tue,  7 Jan 2025 19:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="fMxpMEWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA92E1F4E29;
	Tue,  7 Jan 2025 19:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736277793; cv=none; b=uzHq7R03SePsq0D5dQVwDiZbNUKsS1Gw3ToPiR350gw+lf+2UV6DQmCHn7ym1KBVLF1uosGYx6jHBM5hJ+wcIXerIHPfnJfWmuLnrpt4IbvZzhmTHJKvSbHdhHqOFFdlNs7KWMz8KyVT7L2nfvnIhEq+YphlFZJ3pgA5mwCnhHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736277793; c=relaxed/simple;
	bh=ZMqzoHr0ieXWlzslJRVdpOUFAflwy7dsFWdH2A+h+dU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n4YWgkFf8b4YXF0iWBxApIOEN1SisIRpOYG9nKYC+/ftbobWel/l7mdKt7pIzodH2y0Q+iIe1UoxB29+idv2ERTeTnttE+OItzOqyzIuFnLoMt5MCpDOKJqCF5wmnxO2jXOL8La2FBLUKUAXpTGNTJTFO7T+Ebf1Lsbg6brYWWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=fMxpMEWs; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=AgKpNJodXe38lRki/3Ji+GW/mJVBFbjjhLoQGnR6d1I=;
	b=fMxpMEWshsJuxB2PC/wfmTNrbpX6p2fwHs5LMnRwwJUF1Ghzvl1nqa8VcRDShA0HfuU2pKA0CljsD+0flvkTgYBl9qeYYB1IythHKPWSUPJ6oHvr7FON5/yntT61fGm2wbDsO0zsWx5qLQCb4XPRoTCGO51P0UiyS3coD1kEUwQ=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Tue, 7 Jan 2025 20:22:13 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/4] dt-bindings: vendor-prefixes: Add NetCube Systems Austria name
Date: Tue,  7 Jan 2025 19:18:39 +0000
Message-Id: <20250107191844.4151-2-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107191844.4151-1-lukas.schmid@netcube.li>
References: <20250107191844.4151-1-lukas.schmid@netcube.li>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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



