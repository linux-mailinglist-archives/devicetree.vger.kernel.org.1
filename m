Return-Path: <devicetree+bounces-125849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0649D9DF8EB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C306D162A7D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 02:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47BF218C0C;
	Mon,  2 Dec 2024 02:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913CF22339
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 02:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733106885; cv=none; b=i9Rl/qIL0qmoK0UDpXXd0o6FURNy6siauaTR2kwm5YM0p9N3RR0TAZ315VJu1hfPqk5dC8HfUJScv7qVYTZ/2fdjBZIGnaO4kKX3jxR7oZJAf6rCcZ20drjzqtGED1fkZ1eeipCkoGToR6JxysjZbv2nAdHbL6pOBaeAuWzVDMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733106885; c=relaxed/simple;
	bh=TMB40MQdDG5h77ohukq1biOXe6ry5UueAG4j0ZP38yA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qvatTKgv1Dy6l2C9WmtA6QzcrV7Mc+SqLy7xbZB/PYofUaRY3ihDAV0BAJQUebMyusj7XZOn8DGGgntHzndRqpNLRthhMtj1JzDl9iBJh+kTzDwvLR2VakF1a9VoQtDdQWEC0P9JmDZhwZ2OOQKAh8zXKaAr2tS74AeO5e8KFi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDd000375;
	Mon, 2 Dec 2024 11:33:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:23 +0000
Message-ID: <20241202023227.2671-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

this patch series sort nodes and properties, remove redundant
properties, and minor cosmetic changes.

no functional change is intended.

this patch series depend on following patch series:
 "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
 https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/

FUKAUMI Naoki (4):
  arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
  arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
  arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
 1 file changed, 86 insertions(+), 98 deletions(-)

-- 
2.43.0


