Return-Path: <devicetree+bounces-242266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A9608C88A92
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0EAEC35082B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76F7318149;
	Wed, 26 Nov 2025 08:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="QsJTIi9U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FC42D29C7;
	Wed, 26 Nov 2025 08:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146048; cv=none; b=ed5udmhZS2yG8LW8kDRxISMarkgJvlV8XLozwryxNd93SfDYmo7pEe0ELJMAaeIqvHz4U6X+x6wToETBrBy5v5E+oARcTZPyk9N51gw8AyKBkrbkb3qfXEaToVpDneWGZW8UP0y2NwRXpsme+E8vvfdkshzD3m63g4fh7/J3pi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146048; c=relaxed/simple;
	bh=aTRfWTyi12QLcpVmaAc3UC+SdMqOwRCTQlt0tHus5LQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=P4iILBQafO6yGMJ0L9Pm2EHUHUJ4jkuEacJJunAniYTVFkAjk7Evo5ijioA4oJex7kLvRdfX8dk8cy/NoUQ7QTZGAo0QmZBp7fp9Dg+6jHjSc74mNkXMIvjAzphYRvROxqIU2yQqCrSYzv/ijs4yX9dqf6LszTCS1AqT32hjFbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=QsJTIi9U; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764146039;
	bh=qROQ1d/rJ3p9sDL8V6Cw/YwOWZVH09EJvhZr2XOPZ2A=;
	h=From:To:Subject:Date:Message-Id;
	b=QsJTIi9U36FIRtiV9kVMuCjY5RjVp3IAuHbP8TOSuQA0r0nNBowffJDFmkTqZmEpE
	 HFscdUHdPdQDt2UZWUttEQS1vvIg5tNgGK1YIJ0PWyrIYqRe1LQZ2GJFcjdA5fNz2g
	 xMVyh49OxKdZfVoxT6V20cqJrUkx5YgJa3R5WumI=
X-QQ-mid: zesmtpgz4t1764146035tf6f1de73
X-QQ-Originating-IP: hZmGDUB5pWL4vwPmhqVG5XW5MaCy4rmE9lT7izAS3qE=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 26 Nov 2025 16:33:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10528656724047944160
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 2/2] iommu/rockchip: Use devm_clk_bulk_get_all() to get multiple iface clock
Date: Wed, 26 Nov 2025 16:33:45 +0800
Message-Id: <20251126083345.88-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251126083345.88-1-kernel@airkyi.com>
References: <20251126083345.88-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OK8k06hE7wrVfPkY59X0+/pI54ixdz8xGGg68ftZJ02MKwNzDqLg4MgZ
	UOvu1NYTsoBhJBUxZN9D6BquILYX+KFTD7gRi+Bra9lYkuabeVF2BaNbFosc8pXeY5Gfo7Y
	6zD2YYGMJlz4e2b86XgKVtlacH5chUk+2IKA9uLgtTtO81jLvF7DcAw1oLzjfgOvMVJx7FQ
	6LWh8i3s3ET9OXCqyD4fBwIHGvWZy/ewtwMwI9JsUn7wRVa/oU0QgRQeyVx5+WlhMcIAUCh
	m+VAgeRBPj1USwFd9Dc/xFIpLxuU1q/LXsejEFekCITdY+zUgAbFtO20kgHJUwrU428Ebjg
	jC9QQQNPSQVbwFpGW67jAqzxWFfaPAhlIx/79Wo1ihbO36tePNPYQrbi8taG5LtXR4r+eZM
	nVEVzK3xvVN8cYDfdOnD2enmneuIM39aV8HZMSkJ0IMqjIbMsgyiT1QTy+lQUvGQu4VHWVc
	6IdSKBdJ7Z6icULJFAnDBvAKxY8aD1JXcxN4fBf3x/Ijw9Gl2Y6xRuAeojIqi0BfSIxOphk
	VrA+j/VnFEsUOPpIbh/O9MkBh8Uh3czS7I90jrkxSFdpagpI+p8+XAmSKcw0ANnC73lH6yZ
	Go6wuEZ6ZnJUhkXLuBCsZKjOXgsxlTIOyiGUJusP69hqXekrHIghCYAEhbITALGv1QfaE5E
	SGWHBZ6VUi3kO7wU2OS4FveX4OUwfCeJEA01DKSYA9uJY9L/GzFr+a9CNnbmwaS+qU6TAdL
	jSRDqF+TQnbQXpMglND4gZb0As3QaeFWG8nycNyOXTWkS78TD1dVBmOBLgyMIgyb+H1P0bQ
	xQiLtBDolWxZP7uGc6Ca8IHRJUrIK5foNkTfFWQq8RbpFni0fjmGU+I30UniUDCDjcD3JiA
	DjpWgDL2qIWUWGTgRc7HwgBbzHrPzVD01vGvSCmpaEWIwP5+Cwi0gk5jhnrRyuGcL3X0MKm
	LVlYw/d+efzAMbOHOAMRfT7bg7hZ2Z8Gs9cE=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The iommu found on RK3576 NPU/RKVDEC may contains more than one
interface clock.

Just use devm_clk_bulk_get_all() to get all the clocks and use them.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 drivers/iommu/rockchip-iommu.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 0861dd469bd8..76f71fb679f8 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -93,11 +93,6 @@ struct rk_iommu_domain {
 	struct iommu_domain domain;
 };
 
-/* list of clocks required by IOMMU */
-static const char * const rk_iommu_clocks[] = {
-	"aclk", "iface",
-};
-
 struct rk_iommu_ops {
 	phys_addr_t (*pt_address)(u32 dte);
 	u32 (*mk_dtentries)(dma_addr_t pt_dma);
@@ -1236,25 +1231,18 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	iommu->reset_disabled = device_property_read_bool(dev,
 					"rockchip,disable-mmu-reset");
 
-	iommu->num_clocks = ARRAY_SIZE(rk_iommu_clocks);
-	iommu->clocks = devm_kcalloc(iommu->dev, iommu->num_clocks,
-				     sizeof(*iommu->clocks), GFP_KERNEL);
-	if (!iommu->clocks)
-		return -ENOMEM;
-
-	for (i = 0; i < iommu->num_clocks; ++i)
-		iommu->clocks[i].id = rk_iommu_clocks[i];
-
 	/*
 	 * iommu clocks should be present for all new devices and devicetrees
 	 * but there are older devicetrees without clocks out in the wild.
 	 * So clocks as optional for the time being.
 	 */
-	err = devm_clk_bulk_get(iommu->dev, iommu->num_clocks, iommu->clocks);
+	err = devm_clk_bulk_get_all(dev, &iommu->clocks);
 	if (err == -ENOENT)
 		iommu->num_clocks = 0;
-	else if (err)
+	else if (err < 0)
 		return err;
+	else
+		iommu->num_clocks = err;
 
 	err = clk_bulk_prepare(iommu->num_clocks, iommu->clocks);
 	if (err)
-- 
2.51.1


