Return-Path: <devicetree+bounces-256595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BECD39A10
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 22:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 19C4830019F5
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5287C29994B;
	Sun, 18 Jan 2026 21:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="uhfsA91T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta69.mxroute.com (mail-108-mta69.mxroute.com [136.175.108.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E90D279DCD
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768773120; cv=none; b=gwJzvKDwacKGTto+pBipt6waWPh6AatKH1f+8Z1aMMfLxpiu28iUX3k4emHiM0/662uo4rjGRX8esbl+iD1RzgJgqF1sIfTHhxFjH2UuwC65I1C2oOktnc01ANdq9KtpkNbdFEdw6VrBGn+7xekfAquUqWMzIYEx8gVkRNOsf7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768773120; c=relaxed/simple;
	bh=vt6TxecKrslnjhjqbdS0s6Iy7CUPgn8ISkgGGBCg+/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TzwxtT0ABJ0cuqUIIYbWgesJOjdKPNiMvUEfCY/XlnPbdT7O7QFfB8I59DHlopn1pvow/k8AJTEAHLLOM7LsHvcSsfANCCiSRpxOZvpTBC+09bqu5q+rFEqYQouYBo1+Kck4o0wj3FbmwlQijoI0TstG9bDtviSj83II3vhk73s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=uhfsA91T; arc=none smtp.client-ip=136.175.108.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta69.mxroute.com (ZoneMTA) with ESMTPSA id 19bd31326640009140.005
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 18 Jan 2026 21:46:46 +0000
X-Zone-Loop: 1de8c995f7ae498b10e97036d23ded223eef1cbea36f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=gZU1jtVtFJTK/4HZ7m9UqvrG5eW6sMN+A91lkyu629Y=; b=uhfsA9
	1TzkNBb42KDAcZbV2+wbMPfLojTi6Xuyyr+3Nz6Sm891RP9bz9Q1dXSmMbGkb39IA+LxtT8//6uaj
	EfvHubv9eGhlK29ooa7dUtnmtBU6+VNjLQMZpjrJh1/A/f9igwIy11IW5GcpLUhMcF30JaLZ4h1VK
	mAbA2mEbNyjsQlidPkncxsI5JfG+FWPu8nylraVIETsrh3/DS5TwA9rOU7Fj59zTrN1++RcbGEjSk
	5x20UY4Uj4/fSDbD4LepeiO7o8pNQIOycBJfTUC+esXNko0wQXjv9N3fkfDRLAmm7AJLyDM480SaE
	L4+Y0rbWVcfXuM+SFZqKWIAbRE3w==;
From: Luis Garcia <git@luigi311.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Olivier Benjamin <olivier.benjamin@bootlin.com>,
	megi@xff.cz,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH 1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
Date: Sun, 18 Jan 2026 14:46:20 -0700
Message-ID: <20260118214620.3319040-2-git@luigi311.com>
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>
References: <20260118214620.3319040-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: git@luigi311.com

Fix the variant of the imx258 camera sensor on the pinephone pro

Signed-off-by: Luis Garcia <git@luigi311.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2dca1dca20b8..fd6facf1da2b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -451,7 +451,7 @@ &i2c1 {
 	status = "okay";
 
 	wcam: camera@1a {
-		compatible = "sony,imx258";
+		compatible = "sony,imx258-pdaf";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_CIF_OUT>; /* MIPI_MCLK0, derived from CIF_CLKO */
 		lens-focus = <&wcam_lens>;
-- 
2.50.1


