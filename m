Return-Path: <devicetree+bounces-231484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7EBC0D900
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CDAB3B1524
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4885D30DEA0;
	Mon, 27 Oct 2025 12:27:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F616301711
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568060; cv=none; b=fqms8h1nBVoWeg/WsJsD/2YjAk2dnrFy3cfnOOUsV8ErByxNZvFTcTmpaiXdQLhAvBo2yYIKzeJFdyC+enjyhTtjB/80kLog/Xpc+5qpwS4ZGuqKKi2y62Tl4GZhUc/5pwI1FIt1cFMxVPF2ySQGs0sPzDoU1XOaskmsopwXRHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568060; c=relaxed/simple;
	bh=eDnIWaHodBUhzphjMX+Rn0ieSzMCHw9Qh4UVcXGjupU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j6O9KEDrzw8jBK1Q/7TV2XPADjXGiJ/sPdfPe6yLLJiUXdKr884Aq22i4WYiKpRRQucg9FKbBKfaVmgjzjzWk/VTPqapeDH8DnupEYfm+DaN3KgyP+3yHkh582Ur1CZwamFzFOuR46hHAq4s40EOI6noZj8qYZtgSo/J1mhzkPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqX031809;
	Mon, 27 Oct 2025 21:26:57 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/5] dt-bindings: arm: rockchip: Improve descriptions of Radxa boards
Date: Mon, 27 Oct 2025 12:26:36 +0000
Message-ID: <20251027122641.39396-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series provides the following improvements:

- Fix board names.
- Reorder descriptions into a (mostly) alphanumeric order.

It also adds descriptions for the following board:

- Radxa ROCK 5 ITX+

FUKAUMI Naoki (5):
  dt-bindings: arm: rockchip: Fix description for Radxa Rock2 Square
  dt-bindings: arm: rockchip: Fix description for Radxa ZERO 3E/3W
  dt-bindings: arm: rockchip: Fix description for Radxa CM3I
  dt-bindings: arm: rockchip: Reorder the Radxa board entries
  dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+

 .../devicetree/bindings/arm/rockchip.yaml     | 118 +++++++++---------
 1 file changed, 59 insertions(+), 59 deletions(-)

-- 
2.43.0


