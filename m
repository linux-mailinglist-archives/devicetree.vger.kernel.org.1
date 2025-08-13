Return-Path: <devicetree+bounces-204250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA735B24BDA
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9504587A84
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 14:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099612F3C0E;
	Wed, 13 Aug 2025 14:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="mD4Ikz+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D1D2EE61F
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755095374; cv=none; b=TtRjPsUpg/NW8s54Q3gqUnTFtknQL3rej95OQkTQMb3uOiuNF02Nr4U9rbN+QnYGj2YPBghsHhKBp/hNW4GKz1pnNNB2Eg4++Bi2dn1cioKrtZbO9s22GssMeen3szTTOCy9vK6gjIhrvPIN7oddxT+Qjowk7TP+lcFdkOdXxXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755095374; c=relaxed/simple;
	bh=tRLScCNd8aEoR0RyHaME8NIV0CK3UrHxOL8x20xrrAU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WCVsJVMUGymwRkuaLszvo/SesGo5T2OhDLqnknp9oKQ1XXUar3VtgrVxVtXp0pRnvQT0tIRjhbOz14qLzrI3QwRt+YJhE4oDl0VKC8C9yrjZYOPZvZEwtQW/lWtCpbfhSA29xJV9LamcYFy6USnpT7WlyslccdozcdR4xaNOw+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=mD4Ikz+w; arc=none smtp.client-ip=212.77.101.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 1499 invoked from network); 13 Aug 2025 16:29:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755095361; bh=jhZJFs6zqhMHoUl3MWKTNF2RGyknUAVAXASmzqrI2+4=;
          h=From:To:Subject;
          b=mD4Ikz+wzacdrQeylio2irs3qrlefZspY/rwVN6k89wsm8/rxoj1tmDUX1zEcPkua
           1x2XUemTaJq8lguR4W20N3pEh2lAlCLg2CyLYxGlQoSfBCIz/f4+IJVNcTLf7lZklU
           /TCm6VVGoCOl4V/eKW2nQaD+OXhi4Gz36bnC86iKDibPMkpfvZm0otRt4B8+eH7PB2
           Yw3zBRci1ZhHytWaW6NY3EXq036aMEGZJSfD2NwN6fpXa8XQycFifP//xn8HYi0aDD
           ZmRbgkWoWI73wFn9078MyNEfFMkFdBvDMzGv2wNb0ytyimUCSKrmBZl+61F/NcY7OG
           eXmZcs2ZNPrdQ==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 13 Aug 2025 16:29:21 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	kever.yang@rock-chips.com,
	mani@kernel.org,
	tsbogend@alpha.franken.de,
	john@phrozen.org,
	masahiroy@kernel.org,
	olek2@wp.pl,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add British Telecom
Date: Wed, 13 Aug 2025 16:21:32 +0200
Message-ID: <20250813142917.2053814-2-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250813142917.2053814-1-olek2@wp.pl>
References: <20250813142917.2053814-1-olek2@wp.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: 3140f8cfc6028825d164cf319c772054
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [caOB]                               

British Telecom is a telecommunications operator. It provides various
home routers popular among OpenWRT enthusiasts.
Link: https://www.bt.com/

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 77160cd47f54..e91879137e43 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -243,6 +243,8 @@ patternProperties:
     description: Shanghai Broadmobi Communication Technology Co.,Ltd.
   "^bsh,.*":
     description: BSH Hausgeraete GmbH
+  "^bt,.*":
+    description: British Telecom
   "^bticino,.*":
     description: Bticino International
   "^buffalo,.*":
-- 
2.47.2


