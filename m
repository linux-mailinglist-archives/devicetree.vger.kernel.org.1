Return-Path: <devicetree+bounces-125645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8659DEDE5
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39990163874
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD57D3F9C5;
	Sat, 30 Nov 2024 00:49:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C554D1F956
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927787; cv=none; b=DXusUSDo+8nN7FtaH6Q/NxjumzA2Io9s8SbU3w1g82dqvqWRkWNWmRbMrS5vVfcfo+73OcoZfRV1cwJ46CvmybAwc2b5lAIpFH1KNYBzTQWIGNmaMy1PTOqmo7XNr7mPAOHWf9enbzdhxiaU0QnN8tIoRpvfSMfUZNoxNiU6KhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927787; c=relaxed/simple;
	bh=gQIWHd5YCtXj4WOHOtjN8lxxQ1pnN0CWij8B+a+I3ig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pbWHa/3DdFQ/a/2qb1tVQRnwXxB1d+U0ioZAvOWJ1FNH9mx1MT3eyncFd+jHkAfY4NJSgqVcZOe6d1rKy/sL/hRshM7NS0XyoA+qZDrVSmv3VGFSFw6D5wWQqkjPXgMvJUAeZ9IV5j+hso+bQMPp2Xz1lFIVWHenYKIL9gs58m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2L024394;
	Sat, 30 Nov 2024 09:49:26 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/4] arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:16 +0000
Message-ID: <20241130004920.7505-1-naoki@radxa.com>
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

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 178 ++++++++----------
 1 file changed, 83 insertions(+), 95 deletions(-)

-- 
2.43.0


