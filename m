Return-Path: <devicetree+bounces-238771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D3BC5DD4B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB0503BFFB1
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730263396F0;
	Fri, 14 Nov 2025 15:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTUkGo9T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D6E338F38;
	Fri, 14 Nov 2025 15:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132629; cv=none; b=iV93RfrT5+4y8lSEhd0QtbAJNJc6zLqCm8pzruTwJdOsSk3mxYuoibnbR1YpNSDVWm1xPdcEGGYjumw7sWTiz0iCypKHf0tOFl86O2TXgwdwKTzU2DHQ81bjK9tmxsKZRjVRJvbNcG5FrASRfkZBFd1mbCxwvsjt4OJr9COJM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132629; c=relaxed/simple;
	bh=kefeWEjeK/OPnEnN7znU76/80ITc8r/9IdrjebzenRY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HeaaxAM7ZA0WPDqo4R/PUke9nDlBpCYy47tsEJHL1RsKZIeioRtyEIoP8ABXLSSlH6BAUeSJWM0Z4i1bx9sbBrIsWGbIX+XjUR2D1zhVoIuyJNvj4kdLeb3uBhMUuedAQYHkWgEBU9mUCgd2xfdtF5iQvcq6G/v5nJ9h7YXSNi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTUkGo9T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E04BC4CEF1;
	Fri, 14 Nov 2025 15:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132628;
	bh=kefeWEjeK/OPnEnN7znU76/80ITc8r/9IdrjebzenRY=;
	h=From:To:Cc:Subject:Date:From;
	b=GTUkGo9TrrRYqRj5rWkR4Ilf5WcAAz7S59gVSPpTXYZ1x2SrSnRqQ5Rld7cGEC+Eb
	 v+mA2jyyAtWC4XWuJ6pXqYkqyC2cJFGNVe6GT1XXmmGVL3ZgWY5Gzem++uwJiqNx3y
	 8JIjRVZFLxiWVBetIBIPadsWFVIkGlzixSnODqJGIo8JkmYLJSRnB+UyEXZqEfvIg+
	 8aBgFKnuCJ4m7WpvMzFsc92UGquSIv9pqJVnUYF+ed1z6mjlGpJaNziN2hFEsMn92C
	 +pvqistwQnDXRb0zlS0QMJMtsxqSgvo/jITEe4q5LjSOwumsJBs2L85Fuuko/yalRq
	 k8i6hmFzE2Uag==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJvL1-00000000069-0C0Q;
	Fri, 14 Nov 2025 16:03:47 +0100
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alejandro Enrique <alejandroe1@geotab.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: gnss: u-blox: use open-drain reset and safeboot in example
Date: Fri, 14 Nov 2025 16:03:35 +0100
Message-ID: <20251114150335.357-1-johan@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RESET_N and SAFEBOOT_N pins should typically be left open and only
be connected to ground in rare cases where a device is misbehaving.

Switch to using GPIO_OPEN_DRAIN in the example as this is what should
generally be used.

Note that the current Linux driver implementation depends on these pins
being declared open-drain so that they are not driven while the main
supply is off.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
index 9f14cfe7efd1..e8b696986bb7 100644
--- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
+++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
@@ -67,7 +67,7 @@ examples:
             compatible = "u-blox,neo-8";
             v-bckp-supply = <&gnss_v_bckp_reg>;
             vcc-supply = <&gnss_vcc_reg>;
-            reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
-            safeboot-gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+            reset-gpios = <&gpio 1 GPIO_OPEN_DRAIN>;
+            safeboot-gpios = <&gpio 2 GPIO_OPEN_DRAIN>;
         };
     };
-- 
2.51.0


