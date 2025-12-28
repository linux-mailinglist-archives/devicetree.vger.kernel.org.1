Return-Path: <devicetree+bounces-249997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB96CE57DC
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECFD73002638
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F1C257824;
	Sun, 28 Dec 2025 22:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuJDTDzs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA6F226CEB
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960365; cv=none; b=LmVMAls27yuVVxuSJbw/OWXyUYPfNPSVoIYZYnDDR/q87JazvktFaSnCMZH7dWDUsWTtn/EZ5jNz4tA6Pa3YNVl6VhfBHLzxUKwCHq+naBQE4rCk4yBQc5R9JGzYUhi//3SsjKW7V8stVVzXf1KqEqR7oCLkyjfni0ugj3yeEj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960365; c=relaxed/simple;
	bh=LXGhGUsqyA0HdclfGHMyVsim4V6d/R1hLM1TjOv+Do4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sy2dIvbR0/k5pyIuTC5OHRv5GtnjAJ4H9UYuFP+JDHFNiLJz6H+CaM4dUbxNb4zGJqpS5bctwh4MwtTzOSbThzhxD5SmK8vlMX8tNoF4UDrgPLX5PkC3MZWtFeinLhMSJRifuRAbhIFzitTRB+A0rNQH9t1H5mZulvnbSQUCUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuJDTDzs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCA17C4CEFB;
	Sun, 28 Dec 2025 22:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960365;
	bh=LXGhGUsqyA0HdclfGHMyVsim4V6d/R1hLM1TjOv+Do4=;
	h=From:To:Cc:Subject:Date:From;
	b=uuJDTDzsJjeTd/tSYzyCkAbl5Ot4h6nGvTvdBKz3DJYZicu2CsSx/RSHddnYLxVO/
	 MgdKYvNvyx5edMOZqCSc1lNDzFptH3QSAWe+re9Tau8gb/dK7QbKH/lvGwndy23vPG
	 /O9jVmU9AkACCKn/nRFrkAm7nFUTUUvmNjXqW68qzZGM3Ckdka5X1+IMP4JW4cCadD
	 FkW8JrEacFAjTteYVXb+bQ41wMdxm4ZDcG1V7iEj2XE64oGZ7ZXoudJirMR0enkSGc
	 qPp9LAFyW1Gf9RHt457fUkDIq9/PRMIlqwoJQY6mwJ33l4HcE42O8Hg1bsYMD2jlz+
	 XRbcDmAZOQxng==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: fpga: altera: fix dtbs_check warning for fpga-bridge
Date: Sun, 28 Dec 2025 16:18:42 -0600
Message-ID: <20251228221846.863904-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the nodename with a regex pattern. This change fixes this
warning:

fpga_bridge@ff400000 (altr,socfpga-lwhps2fpga-bridge): $nodename:0:
'fpga_bridge@ff400000' does not match '^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$'

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml b/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
index d19c6660d6c9..36732cb2446e 100644
--- a/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
+++ b/Documentation/devicetree/bindings/fpga/altr,socfpga-hps2fpga-bridge.yaml
@@ -13,6 +13,9 @@ allOf:
   - $ref: fpga-bridge.yaml#
 
 properties:
+  $nodename:
+    pattern: "^fpga-bridge(@.*|-([0-9]|[1-9][0-9]+))?$"
+
   compatible:
     enum:
       - altr,socfpga-lwhps2fpga-bridge
-- 
2.42.0.411.g813d9a9188


