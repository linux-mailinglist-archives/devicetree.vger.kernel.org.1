Return-Path: <devicetree+bounces-133441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE979FA91D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F7791883A2F
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C940D125DF;
	Mon, 23 Dec 2024 01:54:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB36D16415
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918862; cv=none; b=nCSu7mtOmnVXiEdtlHymzEeu+5KiXF0mltsxkryYCJVU9ltIS+cFQ4ozy3Y88+YRr8+J3npbOU1ekvfU0wENJhPBNifoYjecSa8xxetgCNpWkHvvAbQlXMJX6/ORp8cnlMEjfLYiacRbtcIPvluQRbwcJhwb1xw/UQbelnxoN3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918862; c=relaxed/simple;
	bh=ndYO0Jf8R3PDBWyl3TXE8nwwEnv/iu9kLMzFV5tUsxc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r/JMna8iubGdt/J48P3w0EFFrdoYKIJzg7qT/ndh1eo92HxT6HEamoa39Lr6E8BQWzalgi1VImRkPDEjoW7fNG+vFMZbfCk7LrAeeJrQEke2Jfi61WwMowSmaSMZvm/PFHRvOP+pFkq690MRGJyhDoQ6pxn47sISnOOjDuQhChY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1rORf024581;
	Mon, 23 Dec 2024 10:53:24 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com,
        tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com, jbx6244@gmail.com,
        kever.yang@rock-chips.com, jing@jing.rocks, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/2] rockchip: Add support for RK3582
Date: Mon, 23 Dec 2024 01:53:16 +0000
Message-ID: <20241223015318.1999-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).

- Dual Cortex-A76 and quad Cortex-A55 CPU
- No GPU
- 5TOPS NPU
- H.264/H.265 video encoder up to 4K@60fps

This patch series adds support for the Radxa E52C compact network
computer based on the RK3582.

FUKAUMI Naoki (2):
  dt-bindings: arm: rockchip: Add Radxa E52C
  arm64: dts: rockchip: Add Radxa E52C

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 738 ++++++++++++++++++
 3 files changed, 745 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts

-- 
2.43.0


