Return-Path: <devicetree+bounces-238773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC54C5DFFD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 75C073A12FA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E0334404E;
	Fri, 14 Nov 2025 15:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFpU47Gs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A648C344045;
	Fri, 14 Nov 2025 15:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132801; cv=none; b=tHa+VkwQVL2JTZ0p+qY2JnH7OGbgFz4N5B2sNT9+J9M9Ci/FnsZD44oOoC+5k9W72AO8GEFKFXj40aqc6n30hakCPzkCIS+gwYGbdopeXJyX22mhUhIGnrLbIwySZwlrBlxr2JIl2W7JG596Fg3/85L41zVrUxCK68HCyJM5rFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132801; c=relaxed/simple;
	bh=RMNuGIwNm9eJe1QE3FGisFpgnGc/shVPW/rPDuCulH0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eFq9MtiVwnb+ccFOe1FrutwdlMJLV7F2jnhw1Sk8Qo36VwYMfnIZO0zbvjg7koiO9WcN/I1GNEF9TyVKBgzAb1qUT0ppDJm+imn7f1+87cmMbgckNnNMNcvPC+Kl06EotMe6+uxTpl9KrZwt2It+aOYm7k7JqnrMHAQswUpXXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFpU47Gs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22D2FC4CEF8;
	Fri, 14 Nov 2025 15:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132801;
	bh=RMNuGIwNm9eJe1QE3FGisFpgnGc/shVPW/rPDuCulH0=;
	h=From:To:Cc:Subject:Date:From;
	b=oFpU47GsV2Djt62C3+BVEP5qWRtNko17GU83rW4e2WufJcv8BTU+h9nl8R4qom4Mw
	 /MjnhiG6MDTkgRpIJdeGPGw+w0JW3p49XhZzQ+tsEvSsdn0cK3bRrsZDKh7nrkSJ+m
	 /kbT2ek/Jto32sVHijmlzMvELzb8ow3M754pk8m32L9xB/8EgAuVBW6kv7SgfuFp+C
	 etnq/7LDsg8dZ3ny2/DoB1XYY67HBp7gUdaE4vXqszWlAaD8mHNKtIDVcgkYbZOBOu
	 YihQKOloaHYbkIZzj4kbiVN4g8tdXS/PJGiugIw9rmi/Kgq2OUxswaNjt6cXONaPF9
	 dwZlN8Adj30PQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJvNn-000000000Cq-2dda;
	Fri, 14 Nov 2025 16:06:39 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: gnss: fix timepulse description
Date: Fri, 14 Nov 2025 16:06:28 +0100
Message-ID: <20251114150628.777-1-johan@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The timepulse pin is an output that can be used to generate a pulse at a
(configurable) frequency (i.e. it is not an input).

Fixes: dba529605f55 ("dt-bindings: gnss: Rewrite common bindings in YAML")
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 Documentation/devicetree/bindings/gnss/gnss-common.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/gnss-common.yaml b/Documentation/devicetree/bindings/gnss/gnss-common.yaml
index d4430d2d6855..354c0524089c 100644
--- a/Documentation/devicetree/bindings/gnss/gnss-common.yaml
+++ b/Documentation/devicetree/bindings/gnss/gnss-common.yaml
@@ -31,8 +31,7 @@ properties:
     maxItems: 1
 
   timepulse-gpios:
-    description: When a timepulse is provided to the GNSS device using a
-      GPIO line, this is used.
+    description: Timepulse signal
     maxItems: 1
 
 additionalProperties: true
-- 
2.51.0


