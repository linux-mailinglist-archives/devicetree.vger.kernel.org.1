Return-Path: <devicetree+bounces-106585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF60698AEC8
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8555C2831BF
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1236D199FAF;
	Mon, 30 Sep 2024 21:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="LC5IAHmu"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3514717BB06
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730084; cv=none; b=UeS9azg2HEfl4SXqw2wmGh1HiQXGgAfMmlGr6HzlBm19Z4VGTTfnY0a+8Y6GqCAu/+7+legxys2JveqNfM7zfbJX9UuzvZz+V/26B4BZQHJ4e9+Xi3fBT8tr8NZms+z8LEeyQx3V6q46iqHfuX4q6FP53xq6ocj4VPG9OUr8YWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730084; c=relaxed/simple;
	bh=o++UKpkx8T9Qx7Xm5ZE9lylPdOdLhdzzfpncvq9w72g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dKxtzeKXn/x4/EYl+Vh/41eFv3jTc64gOZliq1SJrjOgtFLwoMd2A5vdZsF0LkwzfiwFpFpHYm+6Wvghl/IXUWQ7WYlx8V4KkOQ3oRMMywGBozt7DswBzk0AUVuFD3gEhiEwezGZYdyXasarbJo5i6EZF0ZSgyKGREaNBUQLD+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=LC5IAHmu; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pPeZ3znnGy1N8EW6CoHIYSrcQNQ3Ue+r0TSpLlwZLZ4=; b=LC5IAHmuRBkKJthQa19mwwhszl
	a5VlIlYUzlj8rxdPieOppkgj6Eo9LzhJfGq4lQfU93vh7bKmi9++4OdWk9ldo7kIzPWgJuofSgPb4
	rnFFBbKuVvlm7DyStAGOKNhKfwLknE55tEwaQ9aZfs7eLNFMrTDOfeQaMuOftRbRBo2eWam4Op77e
	T1+AhsjlseOnPPIccxC/wfxulSEHChp9SP0JSdwOREJXxlAYBn96i2EQx4r2RDUfX0YIXMXj1Cbgl
	0HQR39alU0gXNgArCdCik5V9OsJbaw5ZRb41dLiMKqsDd/HjP1oLP4lPOexlGbLUkB3NS3aplUMgL
	1mCHHbmA==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWC-00087h-Ed; Mon, 30 Sep 2024 23:01:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 3/8] arm64: dts: rockchip: Drop regulator-init-microvolt from rk3568-roc-pc
Date: Mon, 30 Sep 2024 23:01:07 +0200
Message-ID: <20240930210112.1993625-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

regulator-init-microvolt is not part of any regulator binding and is
only used in the Rockchip vendor kernel. So drop it.

Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
Cc: Furkan Kardame <f.kardame@manjaro.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 3 ---
 1 file changed, 3 deletions(-)

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
-- 
2.43.0


