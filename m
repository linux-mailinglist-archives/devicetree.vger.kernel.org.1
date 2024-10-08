Return-Path: <devicetree+bounces-109182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E43079958A6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:40:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACEAF28162F
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AF57213EC2;
	Tue,  8 Oct 2024 20:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1svss9TR"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AAB212D0B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419999; cv=none; b=HmilabhAXz+DcKlh6UZkllrUrJT4BvjjtyCDOYcDGReUurbNWfmuomm53DmnVz+Ce/vvOS/8lp09kpmr0UVOJnI5Vsxmj1ymoao9eqm3KAHv7IKge6yU51uTbTjAzG+sGdZ5Y5eH2zsmsJTyd3dLn97t5uHRRrkQ++xURhJeCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419999; c=relaxed/simple;
	bh=H58oNzhLDt/6AdsOYrM34NfxXvIjCj9z0fUch+vZRjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R+tu/mXriQFlDOHWUxZ/3eTMCaRhyrsfHGqQB+Yqbu3hwAXznfEmIafJeYcFWjw0BGcBIAYrosg8CFHmZwN2g4PCuh/X5gz9MOGfukCPRfNBMAczQ6hqqUS4xQKdQB7DtSOojScLXwlsPam4nJR49qOLLK3e0OoOATBtb5lKHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1svss9TR; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MkCaKskrO/nF9QQnRoBZ2O5aN148arkIhAAPWOoj440=; b=1svss9TRSdDFMG59J/YDEISSGa
	DOGQzSUOW37901EZPDKCM/9xQFAX5VPyIMy6vaI4LXnXWnghjEOhf1hL2L1vtgRLWimAGucn7uuUE
	6E7BQdgDGlA9I4Hi5kD0PF7zyM6ztcceO31pxSFfi0ab/yUFMyReIDcYXojRI/ljzDR1nIxREMoTf
	ebWrnrPpu5EGL4mPsZEpDNeVaAR2IpWPEXsTUokPVPJfzvcoi8Hhl220yS/vzep/hkQEriz8RK8zT
	Q9N4AJL2cfu3atZDdiVuIqZEyHBu/9tcdsjRO3UAcdl6SiWfH/tF223VN3VJ+etExe81tI/YJpPVV
	lssjVf3A==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzq-0007ua-7Q; Tue, 08 Oct 2024 22:39:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>,
	Elon Zhang <zhangzj@rock-chips.com>
Subject: [PATCH v2 02/14] arm64: dts: rockchip: Drop regulator-init-microvolt from two boards
Date: Tue,  8 Oct 2024 22:39:28 +0200
Message-ID: <20241008203940.2573684-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

rk3568-roc-pc and rk3588-toybrick-x0 re-introduced this property despite
previous patches removing older instances already.

regulator-init-microvolt is not part of any regulator binding and is
only used in the Rockchip vendor kernel. So drop it.

It is used by u-boot in some places to setup initial regulator-state,
but that should happen in the existing -u-boot devicetree additions.

Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
Cc: Furkan Kardame <f.kardame@manjaro.org>
Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for TB-RK3588X board")
Cc: Elon Zhang <zhangzj@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts      | 3 ---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
index e333449ead04..2fa89a0eeafc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
@@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -285,7 +284,6 @@ regulator-state-mem {
 
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -309,7 +307,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index d0021524e7f9..328dcb894ccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.43.0


