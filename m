Return-Path: <devicetree+bounces-24826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0A481158A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 444751F21772
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293A42FE02;
	Wed, 13 Dec 2023 15:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhj5yw33"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E6B2FC47;
	Wed, 13 Dec 2023 15:03:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E69C433CD;
	Wed, 13 Dec 2023 15:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702479787;
	bh=OPRTb/XW+2zsH8AnZHeRHdEClBBBI7WQURvAeLFHUZo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qhj5yw33rLJQK1g96uVLpjmh8Nj6UZvb5YKmqrpYf2nXefzV5igsSr036qXmhRSAb
	 9sLXmwNmqxUv2sLRspvfHC3S7s+rtFIJG2UvwJhN3Q+wE6z8VlAzYdW15tiAXv1D/b
	 mTG+tD9jT9YFS7eJBqCiiwNS7Mj4IA3RckC8n/4dl1KbMrKl5lANeJO4ul3EDnKAHC
	 E+CFRN6HhLzwRghUuxtc30O5Y2TcxUImXrxiNOcHLcGDP0ouzCSe2hO6SPwW1j+iSc
	 oSEz3mFZYyigYQFbBVUgvNmqJBqkWEMPPlO1zBsQP8ribM4btZ8Uu0i3r8frM9L3aH
	 hGJPkr1sP+ZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA19C3A59D;
	Wed, 13 Dec 2023 15:03:07 +0000 (UTC)
From: Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>
Date: Wed, 13 Dec 2023 16:02:34 +0100
Subject: [PATCH v3 3/8] driver: core: allow modifying device_links flags
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231213-dev-iio-backend-v3-3-bb9f12a5c6dc@analog.com>
References: <20231213-dev-iio-backend-v3-0-bb9f12a5c6dc@analog.com>
In-Reply-To: <20231213-dev-iio-backend-v3-0-bb9f12a5c6dc@analog.com>
To: devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Frank Rowand <frowand.list@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1702479785; l=1762;
 i=nuno.sa@analog.com; s=20231116; h=from:subject:message-id;
 bh=NLZHAx7QEa2fUUjKTtfo6RESv2OQO0JG++qc/yxWC4M=;
 b=03Z23fvem0p5C1zLIj2fOt0pZb3H1fLDXnlHY5Ku+kXOyyQykL8s7Q4nEKAtWwxFSIXyWjIFe
 OqQgcrgWqq6Ci7b6euzGvk2aOps0bO7lEMwCSM3n/s059oHZZNGt/tc
X-Developer-Key: i=nuno.sa@analog.com; a=ed25519;
 pk=3NQwYA013OUYZsmDFBf8rmyyr5iQlxV/9H4/Df83o1E=
X-Endpoint-Received:
 by B4 Relay for nuno.sa@analog.com/20231116 with auth_id=100
X-Original-From: Nuno Sa <nuno.sa@analog.com>
Reply-To: <nuno.sa@analog.com>

From: Nuno Sa <nuno.sa@analog.com>

If a device_link is previously created (eg: via
fw_devlink_create_devlink()) before the supplier + consumer are both
present and bound to their respective drivers, there's no way to set
DL_FLAG_AUTOREMOVE_CONSUMER anymore while one can still set
DL_FLAG_AUTOREMOVE_SUPPLIER. Hence, rework the flags checks to allow
for DL_FLAG_AUTOREMOVE_CONSUMER in the same way
DL_FLAG_AUTOREMOVE_SUPPLIER is done.

While at it, make sure that we are never left with
DL_FLAG_AUTOPROBE_CONSUMER set together with one of
DL_FLAG_AUTOREMOVE_CONSUMER or DL_FLAG_AUTOREMOVE_SUPPLIER.

Signed-off-by: Nuno Sa <nuno.sa@analog.com>
---
 drivers/base/core.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 67ba592afc77..fdbb5abc75d5 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -807,11 +807,15 @@ struct device_link *device_link_add(struct device *consumer,
 		 * update the existing link to stay around longer.
 		 */
 		if (flags & DL_FLAG_AUTOREMOVE_SUPPLIER) {
-			if (link->flags & DL_FLAG_AUTOREMOVE_CONSUMER) {
-				link->flags &= ~DL_FLAG_AUTOREMOVE_CONSUMER;
-				link->flags |= DL_FLAG_AUTOREMOVE_SUPPLIER;
-			}
-		} else if (!(flags & DL_FLAG_AUTOREMOVE_CONSUMER)) {
+			link->flags &= ~DL_FLAG_AUTOREMOVE_CONSUMER;
+			link->flags &= ~DL_FLAG_AUTOPROBE_CONSUMER;
+			link->flags |= DL_FLAG_AUTOREMOVE_SUPPLIER;
+
+		} else if (flags & DL_FLAG_AUTOREMOVE_CONSUMER) {
+			link->flags &= ~DL_FLAG_AUTOREMOVE_SUPPLIER;
+			link->flags &= ~DL_FLAG_AUTOPROBE_CONSUMER;
+			link->flags |= DL_FLAG_AUTOREMOVE_CONSUMER;
+		} else {
 			link->flags &= ~(DL_FLAG_AUTOREMOVE_CONSUMER |
 					 DL_FLAG_AUTOREMOVE_SUPPLIER);
 		}

-- 
2.43.0


