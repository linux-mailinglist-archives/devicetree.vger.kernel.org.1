Return-Path: <devicetree+bounces-255539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF0BD23FA8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D1D2300DCAF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEB1A36BCCA;
	Thu, 15 Jan 2026 10:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cgmjtH10"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654CB30F545;
	Thu, 15 Jan 2026 10:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768473700; cv=none; b=DHKabHIubsu+me8ihdSob58A59x9y/7EuihdXhg4VV+wjJtabvK5WakCFRb+gsvmwhAQKi6PT6Sw9gdCaxlPP1TEAbxiK3MFXyH6JUEPfARfHXQaSMrlthY49aDXlt5I9q+sCxsrasSf7+61AjA0IC7enSN9+VdBAaZnxZ/b2xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768473700; c=relaxed/simple;
	bh=i143L/c/+nu5jz2jDioSlaedlF3KgucGB2V/bWwK19s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JwLizPXp3y5GraeT6yjYHcRBIhMOzjTabRzLqTF+W85gbeyoHd1x6g76o4MhR/YrOBehYVrx/MhEOmq5ldT1WPQXLWdVVUZBh689eKfA53Uwz69WqnOtVgYX9V4kKWrSYHIcZfYuaFhQZyLTLaoa/L7cmzM/7+P41XGqlRnf+Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=cgmjtH10; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768473697;
	bh=i143L/c/+nu5jz2jDioSlaedlF3KgucGB2V/bWwK19s=;
	h=From:To:Cc:Subject:Date:From;
	b=cgmjtH104Z3FmidsoB7JgtmBXh+1Am7UA8YFFeGfBs6QrWZe/6sydYmXOHX7LYlcn
	 5BWTSkdbFWXZNhxYAwGaXNObGVEnvl46wq2OYdhAbaCYyvTKTA1Xnm5wDeD4P4KUPV
	 bnLcRZeLS2Jhj+S6fVtWIUT71HNQyYEBxSmL9q024OSvFCMYewlkJA4339STxwZ5AS
	 Ux8WW9OEg7QZ9VJ/P7xatQzrhK4iY93nP5mVIMf5/h/gnepeRYJvMv/L718hMGU737
	 ffjRxSNL3c2nRf9LcBYk/8mRaW4ZNAbG9S51R5rl/4fMOsBVSi2X8QgHqraJS6CyR1
	 kiPpESZAOg1Jg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0C31817E07FA;
	Thu, 15 Jan 2026 11:41:37 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: mediatek: mt7981b-openwrt-one: Add address/size cells to eth
Date: Thu, 15 Jan 2026 11:41:12 +0100
Message-ID: <20260115104112.56970-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ethernet node has two MAC subnodes and cannot use the default
address/size cells: set address cells to 1 and size cells to 0.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
index 48b80af90438..b7ff7b8e1375 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
@@ -90,6 +90,8 @@ reg_5v: regulator-5v {
 };
 
 &eth {
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	/* WAN interface */
-- 
2.52.0


