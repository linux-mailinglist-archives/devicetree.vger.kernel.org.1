Return-Path: <devicetree+bounces-61590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122ED8AD561
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 21:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 445A61C20F1B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 19:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19CB155752;
	Mon, 22 Apr 2024 19:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="uEIe/Tr0"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5531553BC
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 19:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713815960; cv=none; b=PjuhWENmM7k0+NqmtEWY5gXbEyisBH2DSHiBdyfaK/3U6PMNesQmMkZSr5GHJkYKfxfRAeZduJR1usGHV3J/+SC+85EDrIlOSU56wGFj/LAj13/SlAqez7g1ABb6nXgl/XgI4n6ked0+kU3+7jqKPW1b1hpwe7SKwMfJSQc0eec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713815960; c=relaxed/simple;
	bh=1vNlEqox6uMgRn3Af21glmZB/Nwjhj2D/nnw+8Etiw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rcuxfWRkSunYZ4eE+l0dELy7k/M/EvxthMDjj/BWMnA1MGaa56P+Ez1ud2ODzd80Jxo300X9h+wDGZtCf1E9l+jbWOKeBOvkngtr6zskISNOwC5bhALAMxKfQ7vbNKJeGC+Ru4fFlYPViYxuZC3/Xh4Kz2j6OwUwF5IjQEjtKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=uEIe/Tr0; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713815953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nYP4mxOavzB2qCcAfv7/Ktjba9PcHe+yH0s2PIMDZB8=;
	b=uEIe/Tr0sG+X3pEYz52rCl5ct5Jhk9nzexkpGCZQWsET51HmpeimmiF+Fsyf+/4p4qsHkS
	9/Iy2JbaPb8pxfEI5/RwleQYqATXn392ST9a2XddVy6eK4QBi2r+OYM6QKcj6clWDJPIbz
	Lalxu2MGoR7KZWYcpNywIDJyp9V8PAo=
From: Sean Anderson <sean.anderson@linux.dev>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: pci: xilinx-nwl: Add phys
Date: Mon, 22 Apr 2024 15:58:58 -0400
Message-Id: <20240422195904.3591683-2-sean.anderson@linux.dev>
In-Reply-To: <20240422195904.3591683-1-sean.anderson@linux.dev>
References: <20240422195904.3591683-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add phys properties so Linux can power-on/configure the GTR
transcievers.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
index 426f90a47f35..02315669b831 100644
--- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
@@ -61,6 +61,14 @@ properties:
   interrupt-map:
     maxItems: 4
 
+  phys:
+    maxItems: 4
+
+  phy-names:
+    maxItems: 4
+    items:
+      - pattern: '^pcie-phy[0-3]$'
+
   power-domains:
     maxItems: 1
 
-- 
2.35.1.1320.gc452695387.dirty


