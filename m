Return-Path: <devicetree+bounces-81741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E98491D28C
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 18:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B63C1F212DF
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 16:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7D415383C;
	Sun, 30 Jun 2024 16:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="HYv2yLuW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7311E139CEF;
	Sun, 30 Jun 2024 16:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719763249; cv=none; b=IFdQeNZezCWT6N6ebUewQRUrM2gqswlVyP6rhTZPbzfR2Icri/an/fMo4TGRuvjuEFmao5YmPGqxXu6YWYtwREUNW36EPH8MoXBWtr7F6VhlQTs/IXPETU3oQB6XYvUV7ZL/8zREmiUbRkLFA8Gqu7byKB4yJ4TeiFuMSo65lAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719763249; c=relaxed/simple;
	bh=zFdljgHOiSrbuYlIisYSccu6Eg7w2FbHWig3lkvwXAA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MhADNFCCXpbRtsuh0paUFs8rC77NahGN0x2qD0MLn8nQqv5OtKZN/kMymn6K7nqiFjpISvxTDFJy8RT49fQmldOWZjjU0g2ycxjbE9eMEN5qYW+ThkQ5fiTHbcuiZ5Bn1fFrE9iB3OXWWDpOOOD7a2ErWPtE/EpDTY9KrFXIQlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=HYv2yLuW; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719763244;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XmJ18Mk+LYsc2OZrwmpPSoEt6hQuFiTRIdWg0LXy0aA=;
	b=HYv2yLuW3JrrxIdYALONp9tkqcYqp13KBULY+SdpTVxnRG3fFgZanDJ/Ths6nlDH0ra1+8
	yWVrOg9WhJlTde4CfFc4Wk797KDyspxto3i70C2LG4BgI9J1ybzoX5UNdl7Q4iczx3cn6N
	hTO9gatbthmAzsu9Z25rB7yFCZBa0Eys5VFgF3/RQskT8QsYObM5boCpw0KZ/Y21xtRrB0
	7PF+ynzgODtA2AVgyyscFerzf9g2cLYAD+ihhde8DkNiMlCtn7dWt56euqFxnsPCDkvqv8
	4DEJKe/j7BwwHL+1lKrFV1A8xyaYb0X7cZyoJ3rUSO5rZbe+krDQLyC/9tZwvA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	didi.debian@cknow.org,
	jonas@kwiboo.se
Subject: [PATCH v3 0/2] Add and update GPU OPP voltage ranges in the RK356x SoC dtsi
Date: Sun, 30 Jun 2024 18:00:39 +0200
Message-Id: <cover.1719763100.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

The first patch in this series adds support for voltage ranges to the GPU
OPPs defined in the SoC dtsi for Rockchip RK356x, which is, for example,
useful for RK356x-based boards designed to use the same power supply for
the GPU and NPU portions of the SoC.

The second patch updates the values for the exact GPU OPP voltages and
the lower limits for the GPU OPP voltage ranges, so they match the most
conservative values (i.e. the highest per-OPP voltages) found in the
vendor kernel source.  This is performed in a separate patch to allow
easier regression tracking, in the unlikely case that some issues are
discovered later, resulting from these voltage changes.

Changes in v3:
  - Turned into a patch series by adding a second patch that updates
    the exact GPU OPP voltages and the lower limits for the GPU OPP
    voltage ranges so they match the most conservative values found
    in the vendor kernel source [1]

Changes in v2:
  - Dropped support for optional GPU OPP voltage ranges, which may
    actually hide some misconfiguration issues in board dts files, [2]
    but that will be covered by other debugging patches [3]

Link to v2: https://lore.kernel.org/linux-rockchip/bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org/T/#u
Link to v1: https://lore.kernel.org/linux-rockchip/446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org/T/#u

[1] https://lore.kernel.org/linux-rockchip/b8951ac4e29184fa35919c6ab85b8f87@manjaro.org/
[2] https://lore.kernel.org/linux-rockchip/f10d5a3c425c2c4312512c20bd35073c@manjaro.org/
[3] https://lore.kernel.org/linux-rockchip/36170f8485293b336106e92346478daa@manjaro.org/

Dragan Simic (2):
  arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
  arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)


