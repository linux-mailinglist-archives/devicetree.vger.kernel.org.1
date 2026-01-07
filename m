Return-Path: <devicetree+bounces-252349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B2112CFDF4C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9B80305CCDB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E710932ABFF;
	Wed,  7 Jan 2026 13:20:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AD932A3FF;
	Wed,  7 Jan 2026 13:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767792033; cv=none; b=R5YsELkBM7PZOfcskOan8cbObo2ufvd24ArvPEJhceDSUNvtc/NAlcbnb/4RAIrOuUTytnUUROrURlmtA+vpOlvnkf03luxcqDpXBiK++GvwiE3141hbgx81WIOu7Qr+Wliif+5yV/tz/3anmdRy/zoGmBs8jTvmPiYAB1DbDXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767792033; c=relaxed/simple;
	bh=ybZzrBFEg2MshHiemxOnuaZSjBO/uei+ZdjkQT+qLRs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lL9rYtBGy81wqqTpMR/rLJftrA2bxF1ESdk3pe1TvlOd7nUPLOTS1C6Q0RgdzaHJl/AzRoW0tQbx0+cVmZsZHf2TfpgOMGI8SEZwSEW0Si9bQwpwm5bNdLcb7F/04zj/sYpeg0j2D5BtELhzjZJwofeU2B0dyKty19Nqb6j0qOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.147])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fd482091;
	Wed, 7 Jan 2026 21:20:18 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
Date: Wed,  7 Jan 2026 21:20:09 +0800
Message-Id: <20260107132009.123287-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1c5005b7-ceb9-4915-ad58-a9aa86cce394@kwiboo.se>
References: <1c5005b7-ceb9-4915-ad58-a9aa86cce394@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b989d848603a2kunmc5e16d964410
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDShpIVhlMGR5PHUIaS0tIHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSk9MWVdZFhoPEhUdFFlBWU9LSFVKS0lCTUtKVUpLS1VLWQ
	Y+

Hi,

> This matches what I currently have in my pending to do final test and
> then sent out branch at [1], so this is:

> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20251219-rk3528/

Thanks for sharing. Do you have time to submit the USB support
patches for RK3528?

Thanks,
Chukun

