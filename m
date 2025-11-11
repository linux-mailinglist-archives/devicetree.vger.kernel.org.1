Return-Path: <devicetree+bounces-237026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF88C4C108
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6289934F314
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F0931D374;
	Tue, 11 Nov 2025 07:18:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDA82DA760
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845512; cv=none; b=nNfx0rPQwq21Ui43MgcSBYaVm5Ukh6rz1nNXgSfcZnXTMjaZctFdpY315icnp3X4wjPJUvJy5GnZmIX6c+60yPeK/SqFaHXqHDAKy58HPsrRcodnpFfm97sDx4t7nzPC3WPL/IbYulWHJKOle+WawMNTLIWW9CcgoB2kfIuUa+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845512; c=relaxed/simple;
	bh=9oIYOMHjvh1xLtIfm9zWdL5v5uFhT00TBamCkV+xMR0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GFijHJb0zkFskqoL6q4FcL5iLDbuYNnaMXITU+yblN2EvkISt7Nx5ji5yrDdtYES1LK3EVUxw4I40tkO6NBGhRntEHuA9J+e0lKp/VZ9z/oyn2lEwTCbfwuRfu2nGMBAIrkX3dEjz5marWIyuB4pKAQplotXTnomJ+UL/tbR0hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB7HYhR022271;
	Tue, 11 Nov 2025 16:17:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        detlev.casanova@collabora.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        kylepzak@projectinitiative.io, dsimic@manjaro.org, alchark@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/3] Fixes and improvements to sdmmc descriptions for Radxa ROCK 5 ITX/5B/5B+/5T/5A/5C
Date: Tue, 11 Nov 2025 07:17:27 +0000
Message-ID: <20251111071730.126238-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series fixes microSD card detection for ROCK 5 ITX/5C and
improves sdmmc properties for ROCK 5 ITX/5B/5B+/5T/5A/5C.

FUKAUMI Naoki (3):
  arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
  arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5
    ITX/5B/5B+/5T/5C
  arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5
    ITX/5B/5B+/5T

 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts     | 10 ++++++++--
 .../arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi |  9 ++++++++-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts       |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts       |  9 +++++++++
 4 files changed, 33 insertions(+), 3 deletions(-)

-- 
2.43.0


