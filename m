Return-Path: <devicetree+bounces-46341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55457868F74
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B3391F29197
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 11:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D1E13A24A;
	Tue, 27 Feb 2024 11:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="gzaoY9yu"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7529F13959D
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 11:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709034777; cv=none; b=HV3mnpPcxEFlL/TjV6qtJYipWor+llCSlLrripFM0gVS4zgRl2QG+cSeMTbtevtVqvSm6HRw/yk4sUZRzjtR2JWhrKkDJjjOvfj7DRD5vMbRxoX+ZYBe2qUEWicGNarXuXHJoADO0+zWF1TbPtTbKQ7QuqYR6Exruych1Cf9vcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709034777; c=relaxed/simple;
	bh=VCDP0pJWHBizCP2yuoFF/vmU5hrYsxfZtgMcQlFeU9o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MKZ6ctwmAvNT/h1KZm5wx/Qb0t/e1761FACjh9KBzOKgsmvvnZwx5waey2TaTqO3DcTvDDxeyQdxGiAtLxcOurPScn2GpbRg5TZ66JE0yJNsyxPRBt5TkdkTU+2g92IRF3duWwLpWGv0AuCFtxKsnKmF9yRoVodca/i2b8NOy8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=gzaoY9yu; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description; bh=s3U+zRWRxzvnf9Sem759MyEpLbrHg449pWPCJsuENig=; b=gzao
	Y9yuAIdZfwDNn4sTk5k1oewK5CWArYTeaikE22zTwCW+vkwVc72V+4ehWbD0MEL5lp6ER/AxRd61B
	6Bd7FK+OpChL8lMVq5nHNBY4JdT4mUzhk7wQRpIVBkMgouVso4gVbrPAy0MlmZ69HIxbDglQ7YBYN
	iIvF70A0c/kDEhpSLexmuzb5W0awb+EMK/SmebmJJQh9ebneI8zBfkpTno/h5bQyGpLR28SZax9/g
	3qcDKN7IjsYPsJ41G3P7pw4mBtHns+0cOSdtBAwBqOvOHPBi3mfjUjwKxhqSU60/LK2FOQ1gvXjx0
	ymhooh9Va1uKVi8omjQJWPk9sHy4pQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rew0z-005f8i-MS; Tue, 27 Feb 2024 11:52:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add QNAP TS-433
Date: Tue, 27 Feb 2024 12:52:36 +0100
Message-ID:  <a583992a896c80962b820803526eb593122c1692.1709034476.git.ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=837; i=ukleinek@debian.org; h=from:subject:message-id; bh=VCDP0pJWHBizCP2yuoFF/vmU5hrYsxfZtgMcQlFeU9o=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl3c0HT75aPs5oRVoOw3/V05mNvAn0RECHsuiEe 4Eqjgp5leWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd3NBwAKCRCPgPtYfRL+ TnQbB/41xxZL+ZzLjUm9ZUbs9eP+eNzL5nISIDwxk/X9SLZB/eXjSCr6NbJ+gbtrkTE47IlrtbH 2YZJhLHmiCd93Z4KEDSX/wiqvsIXHfpOGFHW4aR0fu0x73ge9jV/15pIDSIX495X4M+gkpni+Ny Z6pcX1pJZzGL63tfYOIn8VMzAEKk7d74G0ysAFxkpsSBJM8LdHvjylrQ6yJl6GIa1WAr12wMOkR jC1sXWMGZR3J0WY6CgvhPeq4LhigfUePKVjO9e+Cy5pCuzhEdooEOVJy/Pl5lUFkpOuWkgup+UC QtglnlDfnv8r3UKUOg4LdnkXUbLD81T5js2eH2SkeZ+o1gxC
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This is a SOHO NAS with 4 hd bays and 4 GB of RAM.

Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..389bf0c7d702 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -697,6 +697,11 @@ properties:
               - powkiddy,x55
           - const: rockchip,rk3566
 
+      - description: QNAP TS-433-4G 4-Bay NAS
+        items:
+          - const: qnap,ts433
+          - const: rockchip,rk3568
+
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-- 
2.43.0


