Return-Path: <devicetree+bounces-135074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 354959FFACA
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5306918831CD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6057F1B4141;
	Thu,  2 Jan 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="hwW1E8+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEEA1B393F;
	Thu,  2 Jan 2025 15:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735830593; cv=none; b=cgUYm1cnZQggjwiX4ecsvk4glY1LEdFjXhpdZIwWCMX8EhzdpkTPmc7cem/z1uvqvbhVIczi0p66bGf0QoSLT32Yxpc9ngiOS7v7+ev9L8qF0ekuh8OXNaDb0GvvbK4SvGZOWAoyVzyWE6vb06G7u65PZwX47Nm9G4tQARU3HxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735830593; c=relaxed/simple;
	bh=wLj7KuuwSpqhJ0zQ9yghHAu9ABEBocwsd07POedIe5E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pRa4DA6Txvh9z5HyttcK1vLCECrRS6x/vj38/7/tHhMZK8fp7AFcyOPAChVWcAUigYcND48BfvQ1uqcKpRrckABDLpdtICPmN0xLLW8NSl4yvxpssgvOt+bLnI+WZvgCmnYbi9ggW7dnYCWApWYXu34LR8EDqgBLJPJPsp5TbIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=hwW1E8+l; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=RUwdoc0lLn5AoPPCdb8j5G/idOiy5boW+qyIcksOXgM=;
	b=hwW1E8+lFqHVnqjnfemYjYrpq3x5M8lY680n1/Dxkdzuo52yADyf01R1zgUBmR1opX3UlYEgL4DpRPVBcbDkQQBxQj7diDLiO9LPUOI/UD7kmaaZxRXmyvx49m6pUm5LEyrsDzUyFDEC3CQH5R4XSYdPpZGnKrg1QwMv6buwM1s=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Thu, 2 Jan 2025 16:09:23 +0100
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
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add NetCube Systems Austria name
Date: Thu,  2 Jan 2025 15:05:04 +0000
Message-Id: <20250102150508.3581-1-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

NetCube Systems Austria is a company that produces embedded systems

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



