Return-Path: <devicetree+bounces-178258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD00EABB255
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 00:55:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 680D317335F
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 22:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E702E20F08E;
	Sun, 18 May 2025 22:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="p5IwGKwb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7CA20E719
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 22:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747608896; cv=none; b=kHdCIcwwT6cF8b6QWNJIWGJrFFhMenV5tBHsCj5m4GJB6Np+suCDg744PgcrLUlpn89HbNINp0tjisSI+cV9p+q2FvGLj4Me4FpivT7O/PLiuAorR1j0PxOYf02Y2beBy723AIRt4FE8f9WO3t/B95PXntILRlO8cqpkHb90hRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747608896; c=relaxed/simple;
	bh=5xNEayYhyeRricRaOR9dYUoG+JuOgb7LBOyiMiflnPs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aNOMCKs0FUsaru59ClCQFSgpY+9KH1AQF1XUTA5IMpp3fK3z08E24XcXj8iEtsm63eH1JF4lPfR8r75MiK0LtfOQRzVWN75sUfO/iDyKf2odNrz6wcajaShd0JWN840br5PO5OkF/liGgpDtmIhf0oOGnXVVXUMbcTjXRUXzag0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=p5IwGKwb; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747608894; bh=L371iAHTquiamr1qOBIkRG8ZfA4URTmo9Yt5n9upXbQ=;
 b=p5IwGKwbGCHiv8GaoV/2RWVTNCbPrDdpUb4iIZg2BOlIWVL5I/nJnu4gzdTe2VWGRi/+wJ1qA
 FkJTM+9G4LhCpEbo/CL11Wxujb+ZZF02j4z3wa74ha0bsQC8KXon+u8ckC7+mRKf9D/EPB4MVpW
 L3ssAfsh4tziOBX+VG5udiupm6Z5NWXOXe0ieBDx9+DukhdhZ59/AO83q3C1q4i8PnGvIyAlsdQ
 4JFl35XevbwsGDNi9mNUed+hZucvcA6UyohxR2rho9z+xS1NY9aag4t3ER1KnmjFXhOt+26eanM
 TezCBynrsQgsOeKzyAszGHdZEx5pPk6rklH0tMyQy8rw==
X-Forward-Email-ID: 682a6536db63046e3392f2dd
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
Date: Sun, 18 May 2025 22:54:13 +0000
Message-ID: <20250518225418.682182-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the Mali-450 MP2 GPU on the Radxa E20C.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index 9f6ccd9dd1f7..e4333674a0ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -198,6 +198,11 @@ &gmac1 {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_logic>;
+	status = "okay";
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1m0_xfer>;
-- 
2.49.0


