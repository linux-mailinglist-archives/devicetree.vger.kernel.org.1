Return-Path: <devicetree+bounces-137725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C36A0A773
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A54541888C2E
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 07:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43E1154BFE;
	Sun, 12 Jan 2025 07:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="FPU8ouRh"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1658B25763;
	Sun, 12 Jan 2025 07:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736667608; cv=none; b=O+f+gPcUoF9YFQw+XU94m5WjdO2HkF0rutXcx1K2hu5xeY5RQVpPAocDbOgK+FAJpdsldRwjNG1FZA9FMPoC71GCprJZ7xksqU29Q5i9Cq7e/t7WZcExv58r9X2KahA7LZ9gHl5pkci+flG4GS+IC57YhMUFVscWwNjVWIMCuHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736667608; c=relaxed/simple;
	bh=R49M9lC59BjByFmq/es5yVnYxjwlTueEgAG/ERQlb1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jktgqf2a4OaZHBXSqaHc7bzCAcC/jXv4ENXDZRmNwh2H7Rb6kuP2KDh+y5WyRIW+pow3KRDaB8k+0SAZbCIxjVYTpGmhObw9584/GwXotqr6RDj1kD8BYTCD8E8IeyFdCTDP8XSalrAeQnNTb0+9FOmno5ISmqhvhxsCgY3E8Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=FPU8ouRh; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 6DA227891D;
	Sun, 12 Jan 2025 15:34:01 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 6DA227891D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736667242;
	bh=UkDTYY8KW5swg2Vb/3ARy/Sz6kcmYdaLC2Hfhsg9HCM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FPU8ouRhYeXHrlUrVUwYyvmcGXGGUIrtkO1u+le1EEBiSR7ye2CvIEvYeN6Brp8Cm
	 YQ1XAYEplS0DDGJJtxM3ivJOX4QkwsK9IRPqxB4rttcEy1528pTH/y2EupEp8NdW97
	 0t9pP16OCW326LsGzXRHtGGiHf8K7knm5rB5D+nY=
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
Subject: [PATCH v6 1/3] dt-bindings: vendor-prefixes: Add prefix for Ariaboard
Date: Sun, 12 Jan 2025 15:33:42 +0800
Message-ID: <20250112073344.1976411-2-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250112073344.1976411-1-bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
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


