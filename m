Return-Path: <devicetree+bounces-256594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A93D39A11
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 22:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBBCC3001FED
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528E929AB00;
	Sun, 18 Jan 2026 21:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="m0m5r80W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta219.mxroute.com (mail-108-mta219.mxroute.com [136.175.108.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D24190664
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768773120; cv=none; b=OV95W3W3cO4q2/IAz4b7rmeVTUypr+fQrP/BGH/jjtpJZ2ycgciRb26IJCu+tXT6XgamkQ6tVYt+HqeKm9y6ALm+XgfjmftiTmVT/rOiVSovNKPrqCp9c3VS3d7lW5A8qUzCWqVtXISL2hsE9ihuOBjzW44YqoioWhCcrX0BVzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768773120; c=relaxed/simple;
	bh=uA4UKopBfX+OvnpydrjlXZaAB7gpQG6UqIb4LK8VQ4k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rdyKQsNrVa89+WRVwzGcSEmmIJgwxCitwFDc0hra2J13EsBOqt7ElvP2RQ1JvvIGzxnQADwZsdkL1j4/rNr3dCT8/N+sY5pSh15S0zYp4hl4kj68Q4OYmAJh6MBvxrpscZ/XhMefBSf7+pemP+FMifddHBYGXB7BKvyPjrhRcX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=m0m5r80W; arc=none smtp.client-ip=136.175.108.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta219.mxroute.com (ZoneMTA) with ESMTPSA id 19bd31322a30009140.005
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 18 Jan 2026 21:46:45 +0000
X-Zone-Loop: 65bfdf2aa75060d083d64d321485a11c0de65dcc9a2e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc
	:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References; bh=qH+U+xKJhw7xryI6veBTOa8U279TGynYsRUuACCMLPY=; b=m0
	m5r80W9xJ2C75mW3h+wGqSTKCFwvg+dgNDar7fFzmVT99XhxCqOcLRLjn5UJDn47ktqEgCg35E2VY
	zl8SCg3r2PUMEhLbIHbX2ojpnAw1bnHbh6lLhzSSibE/nFUYIRYJ/yFynJYnKRDzKgL7CeKUN9o37
	VIaFSn/b5hj96T5RsPzech5KZA/m9TIXwAs7CcDrJkwQrzV6zlDPDwsNpqe+TgHvbkEPifPw3P3fX
	VSPqau0sRP4jSwXQziIBWPK9AkLNxvx2K9Xw1yB2omcp0jLazYSOQNkJNatGQbKUh9wvAFACCKZe4
	bowdRNmK+6SFITNnUvatERy5v3Cne//A==;
From: Luis Garcia <git@luigi311.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH 0/1] Fix imx258 variant on pinephone pro
Date: Sun, 18 Jan 2026 14:46:19 -0700
Message-ID: <20260118214620.3319040-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: git@luigi311.com

imx258 had the driver updated a while back and it introduced
two variants, the imx258 and imx258-pdaf. The pinephone pro
is using the pdaf variant so this switches it to the correct
variant and eliminates the pdaf pixels from the sensor output
resulting in a much cleaner image.

Luis Garcia (1):
  arm64: dts: rockchip: Fix imx258 variant on pinephone pro

 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.50.1


