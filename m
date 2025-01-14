Return-Path: <devicetree+bounces-138302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA8EA0FD3E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 01:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B50153A6D47
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BB1F9C1;
	Tue, 14 Jan 2025 00:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="BvRjU2uW"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2109D1C28E;
	Tue, 14 Jan 2025 00:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736813700; cv=none; b=J9uAggpQCBkTOHTanoqKpziyBYsjOSRwm2TMEK+I+uIrB2InxA3J/4uzGz9PktLvN0+FQ6AzopTnwfXrC7pybDrAQD2hMIebpDPgSGPvZ/32LKxyewpBfylpwIQMf9pfmX+KCsqAFpT3x+6QXPJdjfw9YEq+QvMT8Nv4WJCnPhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736813700; c=relaxed/simple;
	bh=R49M9lC59BjByFmq/es5yVnYxjwlTueEgAG/ERQlb1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SwMXzZfyrGZFxO6npkrzOrAAjDbd0bQIzYz+iGcYiCRQziLUZFCv4TlYeVE0dyxZsstwD3Mej1b1osAuXPL1l9tE9m5qQOd2Dcc27zHyVSKfhcnGOgVVbKCgqN6dWGd2y4BCdwz0J27ZCWnalrNHoxY7Xe4SwONgVbKZ67vCSyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=BvRjU2uW; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 4472178919;
	Tue, 14 Jan 2025 08:14:47 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 4472178919
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736813693;
	bh=UkDTYY8KW5swg2Vb/3ARy/Sz6kcmYdaLC2Hfhsg9HCM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BvRjU2uWrVOulgoWCG+VJVtH6onLVhPbmYurG5LeFRS9c3NQV95A+A5UZDNwUJqI3
	 4PQ22QT65bYVKAj/SRiE5GzsFzZpbSF8Rv3txSBRvMv+HRsweOdSZICMgOhB7Nd0vc
	 t2U/hmCviYuwMPjqziKwfESov4i55U8YSv8KV07E=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/3] dt-bindings: vendor-prefixes: Add prefix for Ariaboard
Date: Tue, 14 Jan 2025 08:14:09 +0800
Message-ID: <20250114001411.1848529-2-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250114001411.1848529-1-bigfoot@classfun.cn>
References: <20250114001411.1848529-1-bigfoot@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for Ariaboard from Shanghai Novotech

Ariaboard represents a product line from Shanghai Novotech Co., Ltd.

Link: https://shanghainovotech.com/
Link: https://ariaboard.com/

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c7..25e1efbe7c3a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -147,6 +147,8 @@ patternProperties:
     description: Arctic Sand
   "^arcx,.*":
     description: arcx Inc. / Archronix Inc.
+  "^ariaboard,.*":
+    description: Shanghai Novotech Co., Ltd. (Ariaboard)
   "^aries,.*":
     description: Aries Embedded GmbH
   "^arm,.*":
-- 
2.47.1


