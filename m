Return-Path: <devicetree+bounces-135392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1073A00D25
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 532EF164567
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97A11FCFC6;
	Fri,  3 Jan 2025 17:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="S06ySLph"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E691FCF74;
	Fri,  3 Jan 2025 17:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926351; cv=none; b=LQsleMCIMEWB604omAfK3QYMO7hK0hnXd4alXQesn5MTaKVe7SZfL7wjMFLUvn/yAuQ2pnhjfSgkZztox3ggpJinlC9GU7MsuizVrmP14nA/h6GgHn1wC0vnuvYnrNgrm7C5sQcg+nsHu5rJ5TThl36rjRO3N1St850EP0rEG/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926351; c=relaxed/simple;
	bh=w3FhdHJcwk8Ew6Y6i4D4Tq7nkhGCCZJxi8s4MeCUU38=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ODN00AhLgDJSiuqmdprM8MS44MJg+dH1cOS51Gwz/AkfI0FO+s2xA33pF352dVelecZjgTsgsmNCON5EFbTW3CpJ3UnVxrtCOgqA3hRhY+l5y393sbQSvVXa5x+Zz2ZW/EBcnFibRU0r4vTJAQtCMB9+JOaVRepHdJUUjckNk0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=S06ySLph; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjR0m2122169
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Jan 2025 11:45:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926327;
	bh=swBnkxfcjDoGr3yjvUNsrVTa5d1KtLZt7WfgG+7kGZg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=S06ySLphj9A2+1fW0lFB0pw6u/KPpoCfda1CZjkprwRbOKWQAW7SJEUiIXyK49OmP
	 xq8gpBfaT6+xI1HOCk0mXqqPUNLypAp9J+397KmHNpN5swQvGcgDbB1KrPjfYc4ffW
	 xGtIOPJFxen2IjCiS38CNkVCkuyGOmXUlCpMx6nk=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjRbg116043
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:45:27 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:45:27 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:45:27 -0600
Received: from lelvsmtp5.itg.ti.com ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HjPcF053135;
	Fri, 3 Jan 2025 11:45:26 -0600
From: Andrew Davis <afd@ti.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Romain
 Naour <romain.naour@skf.com>,
        AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 3/3] dt-bindings: mfd: syscon: Fix al,alpine-sysfabric-service compatible
Date: Fri, 3 Jan 2025 11:45:24 -0600
Message-ID: <20250103174524.28768-4-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250103174524.28768-1-afd@ti.com>
References: <20250103174524.28768-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This compatible seems to be missing the last 'e', looks to be a typo
when creating this file. Noticed this when diff'ing the two compatible
lists (which should stay in sync).

Fixes: f97b0435c857 ("dt-bindings: mfd: syscon: Split and enforce documenting MFD children")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 1f3e67f432e7b..5eb0cfe1f0b89 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -27,7 +27,7 @@ select:
     compatible:
       contains:
         enum:
-          - al,alpine-sysfabric-servic
+          - al,alpine-sysfabric-service
           - allwinner,sun8i-a83t-system-controller
           - allwinner,sun8i-h3-system-controller
           - allwinner,sun8i-v3s-system-controller
-- 
2.39.2


