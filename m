Return-Path: <devicetree+bounces-137965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CABA0B4C8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 11:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 297287A1B38
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D8A22C358;
	Mon, 13 Jan 2025 10:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Zfbkp5MI"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB96016EC19;
	Mon, 13 Jan 2025 10:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736765372; cv=none; b=DxthBxhC9f/mJs4vsByoONwBvajNom+K+WJ+47VjGNfUw2mD9kKRsW9k0oaxuVjIMsI6PPHNXpcuIIvW6r5piSv1XFV6KMHx9xKso9bnoPd7tk5WLjkoZ497/2lzELi4VMUWoWQ2BHxWsRx9YKgpUKpUXp0NfyuQM7U6iIICp8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736765372; c=relaxed/simple;
	bh=vZTHgXmRwUcukRAdmDGKxJ+UN7XyM2ptJATLXOspjDw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lxQWDuPkUZj+aXy6q7TxoQjlBrWOokhiqTqgQdH8wk704Y/Ut/4f+doz5b9fJqn3iFLt+FveRrx22uUGyvSnIcrPgyDE+9nLkEpT7p55YsSiQmPHXzOcwaBpsYUKnWwKOk0gkcdb0V2Z6rBrPbUWxu66nhxvlCJWeckqbWiI/Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Zfbkp5MI; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=5c1RH
	mM1cAEbY78r+MfYlRCpJaIAWuqFWRnpFbls3KQ=; b=Zfbkp5MI6rmFx5UBaJKVP
	6ELrl3UVDnJdlamQ37p5b+pdEW0tdNmeVaFgj/oMp5Pia9ZkHFxqRlEWosynsf/g
	209D1pa/+gHCgZNef2pXulNw6lIQ2dOssT3YN988KZwo6wmITFSxzi3SrLXlz5rX
	++ZWGa6yc/LEzHE2yDCtsE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wD3_yB874RnnvU5Fw--.18888S2;
	Mon, 13 Jan 2025 18:48:33 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	dsimic@manjaro.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH] arm64: dts: rockchip: Fix lcdpwr_en pin for Cool Pi GenBook
Date: Mon, 13 Jan 2025 18:47:34 +0800
Message-ID: <20250113104825.2390427-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3_yB874RnnvU5Fw--.18888S2
X-Coremail-Antispam: 1Uf129KBjvJXoWrtr48Kr1rtryUWr4UXFy8uFg_yoW8JrW3pw
	nxC397KF97WryUtF4qg3ZxJrs5Cw4Dtan0kr97XryxtF4fZF1DJ3W2gwn3CF1DXr4Iva1r
	uFsagry7WF1DZaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pRuHq7UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hzTXmeE551qTAABs9

According to the schematic, the lcdpwr_en pin is GPIO0_C4,
not GPIO1_C4.

Fixes: 4a8c1161b843 ("arm64: dts: rockchip: Add support for rk3588 based Cool Pi CM5 GenBook")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
index 92f0ed83c990..bc6b43a77153 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
@@ -113,7 +113,7 @@ vcc3v3_lcd: regulator-vcc3v3-lcd {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_lcd";
 		enable-active-high;
-		gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcdpwr_en>;
 		vin-supply = <&vcc3v3_sys>;
@@ -241,7 +241,7 @@ &pcie3x4 {
 &pinctrl {
 	lcd {
 		lcdpwr_en: lcdpwr-en {
-			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
 		bl_en: bl-en {
-- 
2.43.0


