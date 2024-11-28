Return-Path: <devicetree+bounces-125388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1BA9DBD8E
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 23:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EF03B21FF4
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 22:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6601A1C4A29;
	Thu, 28 Nov 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRIDjeSq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3981C2439;
	Thu, 28 Nov 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732832963; cv=none; b=sXS5Nl4913AnUA6VfLpP7rC1ZeG67iK+FJk5QgX8L+XTd8LBnh+JC0qP+NUlU4oqnY730IwviGG7IzzM9NZ686eQ9VdDalVkURjdZOW0krON+h3RMJlKgWBgNsWOEdLDQ3S15p26IAHaNfw7aEuXAaFPV7Ert5ez3w2Y2UMpnLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732832963; c=relaxed/simple;
	bh=4El0kQkrRlr/CEy5dm9S79SsYdqflPKE+Y43lCIJcaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s93V7nKR6h9wjhP48e8BGzXiyMIbcGF0amBe3U+v2FVVZKo+XM/8WLtE+I0p/GaJ614hm3kkyiQ6PfMql3SB7r4ZmCvwRTfds7zMuH8wdKrSWWy89bvb2yeNb5l8pKFWx2aUWSdIork/t8tRc+Y3mlq6r5CcjLm51PsLPDs8Khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRIDjeSq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8706C4CEDC;
	Thu, 28 Nov 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732832962;
	bh=4El0kQkrRlr/CEy5dm9S79SsYdqflPKE+Y43lCIJcaQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RRIDjeSqA2rCKFF8mH1XnzXNys8U+yBHRLgIuRu+jIKe820DO8pVpWcGttpEBCgHM
	 Q+9ftI8ucz+/8zdmrZ0305RnFusesU6uXg7LC3NKh+oMazYhsbwkQQs7Bhp9tWEK8W
	 fX0Lbe8PEac3RX578fYgTQNkaSSbHTH86YU8R8T3OU2Jv4E31Kr6ajtr+AxnruoULc
	 GLr1paPX2seHEHdqRbdNyfjKTzkcrjpQrn6OoYihrJ7a6lDyhez8fwPbyWjlMvumlw
	 b9Z/HmyBbTlaSC5y/wILTDDUQdsSgBjmqk0hl53VBhh3CukRx+5MUMGH+ZSOVzzORP
	 5dLW1fYntTNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECD9D70DFB;
	Thu, 28 Nov 2024 22:29:22 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Date: Thu, 28 Nov 2024 23:29:19 +0100
Subject: [PATCH v2 4/4] MAINTAINERS: Add entries for Apple Z2 touchscreen
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241128-z2-v2-4-76cc59bbf117@gmail.com>
References: <20241128-z2-v2-0-76cc59bbf117@gmail.com>
In-Reply-To: <20241128-z2-v2-0-76cc59bbf117@gmail.com>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Henrik Rydberg <rydberg@bitmath.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Sasha Finkelstein <fnkl.kernel@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732832961; l=1218;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=5VgCgIUSJDHHHfv8AULS59dx+V2ZROTDT6FjcyDo/sU=;
 b=HtDNmYJVMl2VVv0e+byXazpK9k6qx67ciN7CUSgAAwxIp3haTuA0Y6Yf0JbC9Hk98uQ35misb
 PWbN/QuiEy+BH0TyAaNFcMfIGsJMBhjOMX5LATZvbi8PZ85csd4cXJ8
X-Developer-Key: i=fnkl.kernel@gmail.com; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Endpoint-Received: by B4 Relay for fnkl.kernel@gmail.com/20241124 with
 auth_id=283
X-Original-From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Reply-To: fnkl.kernel@gmail.com

From: Sasha Finkelstein <fnkl.kernel@gmail.com>

Add the MAINTAINERS entries for the driver

Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e7f0170977013889ca7c39b17727ba36d32e92dc..9f75fff12fa1912b70251cade845d6b3d5e28c48 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2166,6 +2166,7 @@ F:	Documentation/devicetree/bindings/clock/apple,nco.yaml
 F:	Documentation/devicetree/bindings/cpufreq/apple,cluster-cpufreq.yaml
 F:	Documentation/devicetree/bindings/dma/apple,admac.yaml
 F:	Documentation/devicetree/bindings/i2c/apple,i2c.yaml
+F:	Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml
 F:	Documentation/devicetree/bindings/interrupt-controller/apple,*
 F:	Documentation/devicetree/bindings/iommu/apple,dart.yaml
 F:	Documentation/devicetree/bindings/iommu/apple,sart.yaml
@@ -2186,6 +2187,7 @@ F:	drivers/dma/apple-admac.c
 F:	drivers/pmdomain/apple/
 F:	drivers/i2c/busses/i2c-pasemi-core.c
 F:	drivers/i2c/busses/i2c-pasemi-platform.c
+F:	drivers/input/touchscreen/apple_z2.c
 F:	drivers/iommu/apple-dart.c
 F:	drivers/iommu/io-pgtable-dart.c
 F:	drivers/irqchip/irq-apple-aic.c

-- 
2.47.1



