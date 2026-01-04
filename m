Return-Path: <devicetree+bounces-251306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F8CF12A2
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 18:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0925730052DC
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 17:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90DD727FD4A;
	Sun,  4 Jan 2026 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="QrvtMDrA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965B51448E0;
	Sun,  4 Jan 2026 17:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767548003; cv=none; b=P3gG6r0aaB7VTt4588H1L5vVf2FcCGerzZ3O2562fHRiUmmU2zNV6hOYLTAjqvGvarexj+66Ug1+DWJVZW7FakRzpO5eKpjNjjzhilChNVJhcpTeqwifpApUd155YGAkStqyijqRAdWkh/Cr4OH7qQUEGhx2SgKb5VR0p13WomM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767548003; c=relaxed/simple;
	bh=4geveiiD3M2hb0gwVkebrFDzc1RV0ElcuLuvH0sP1sY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mH24HnANMaWxRfJ9U/cF4afqSzLhlubHCzaSw2hGV1GKgIb8B0byYol9njtCvGbZs0TG4W8Qwk5luordbKQ8OEVoQoZ6Z3AguZWdDKzbsa+ZZ5ZkuVjAhxEmgWgMvi3turVX9ry9LIYqypTNPxCjwWeQhgBj/lFui8yikKsXfZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QrvtMDrA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=Hs4n88Ni0GZn/zDIkKelt7Eri522MqeWMGjbJujEGCw=; b=QrvtMDrAx54wLfJuP/S1xH5c7g
	GpFBXKPZptnNkKG8N+nz0DDmhLiWYx8eyLbVx6WJXs15sUq+QeME7FyVcYu52EdPEm26eSa6f3H7m
	hKKlW6tA9NhRQKhDNw0I3uWqYT+gBz4KbqL8CUcWyDwNX8Sfn5QbO9YVo5IAYRIie8qKZDj2aZxMw
	fakPfXsUHexKfhrIb5+LpNRtn6E4FhKFcMtyu8JNfhtmwKsw0tcZ4WufhkIkE1HFdFC8AQHRPPmMd
	D5vZiF32ZFkXgxYmpJ6MWb1zTcY9EL62nDpy2SNN1iZsPcOkmdLFiphdcXnZMra6NRyMQNxeEQZsm
	fRv4781g==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcRya-00123u-EB; Sun, 04 Jan 2026 18:33:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] qnap-mcu: Add TS133 support
Date: Sun,  4 Jan 2026 18:33:08 +0100
Message-ID: <20260104173310.2685852-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The completionist in me made me grab a TS133 1-bay variant for cheap.
Not yet sure what to do with it, but at least once one understands the
basic layout, adding support for more variants gets easy :-) .

So this small series adds support for 1-bay consumer variant of
the QNAP NAS series based on Rockchip RK3566/RK3568 SoCs.


The last remaining type of this series is the TS433eu 1HE rackmount
variant. There are people wanting to add support for this, so they
also get to do the MCU support for it - which is a tiny bit more
involved as the TS433eU has 3 independently controllable fans.


Heiko Stuebner (2):
  dt-bindings: mfd: qnap,ts433-mcu: Add qnap,ts133-mcu compatible
  mfd: qnap-mcu: Add driver data for TS133 variant

 .../devicetree/bindings/mfd/qnap,ts433-mcu.yaml          | 1 +
 drivers/mfd/qnap-mcu.c                                   | 9 +++++++++
 2 files changed, 10 insertions(+)

-- 
2.47.2


