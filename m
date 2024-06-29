Return-Path: <devicetree+bounces-81576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C179691CCA8
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 14:17:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84F64282004
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 12:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE7E47F5D;
	Sat, 29 Jun 2024 12:17:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from trabant.uid0.hu (trabant.uid0.hu [81.0.124.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F234B41C67
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 12:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.0.124.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719663450; cv=none; b=B7+oV69UwFyLeVK7QZ1GOnS2jlSndOPr03AG7F5T//ykCkQP8QM4wqYxjBiRIXlaGPPm46i9pr811zyksPTDZFfPxSHm1NQ2w4SZWkfYcyEKY3plT8Q4WTChVRn+tzh1vEFch2Ny8D8Ns8EGHv/4Otoew6LAGK/yBz68GvtOy7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719663450; c=relaxed/simple;
	bh=0dNRAHWH72Due4lqu3w8VaVPa6XoZlMOyelgKCuBPLw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RQPhihfzHNMDBW3zMC7f+qLGFuLkXvXhXEOu9iu8qCN659gyM9bcN4UZVjPtZI6Xzhdaws4xK2TIvlR8NVUVDXy9gKKbZCs0YQL/lFvffI4iX1D5WX2oFyuhJu8UgZi2DGI6xoBDe8eM6S97Ihs8RNPqhLG2QHRPN4wUBJCsOtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu; spf=none smtp.mailfrom=trabant.uid0.hu; arc=none smtp.client-ip=81.0.124.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=trabant.uid0.hu
Received: from wigyori by trabant.uid0.hu with local (Exim 4.92 #3 (Debian))
	id 1sNWMh-000XYa-I1
	from <wigyori@trabant.uid0.hu>; Sat, 29 Jun 2024 13:35:35 +0200
From: Zoltan HERPAI <wigyori@uid0.hu>
To: andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	wigyori@uid0.hu
Subject: [PATCH 2/3] dt-bindings: marvell: typo fix in SoC name
Date: Sat, 29 Jun 2024 13:34:49 +0200
Message-Id: <20240629113450.127561-2-wigyori@uid0.hu>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240629113450.127561-1-wigyori@uid0.hu>
References: <20240629113450.127561-1-wigyori@uid0.hu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: Zoltan HERPAI <wigyori@trabant.uid0.hu>

Fix typo in the SoC name of Marvell Kirkwood. This change is in the
description which shouldn't affect functionality.

Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>
---
 .../devicetree/bindings/arm/marvell/marvell,kirkwood.txt        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt b/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
index 4a70dd1b6b65..7edfaa0b0b73 100644
--- a/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/marvell,kirkwood.txt
@@ -1,7 +1,7 @@
 Marvell Kirkwood SoC Family Device Tree Bindings
 ------------------------------------------------
 
-Boards with a SoC of the Marvell Kirkwook family, eg 88f6281
+Boards with a SoC of the Marvell Kirkwood family, eg 88f6281
 
 * Required root node properties:
 compatible: must contain "marvell,kirkwood"
-- 
2.30.2


