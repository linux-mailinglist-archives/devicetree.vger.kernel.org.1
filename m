Return-Path: <devicetree+bounces-252152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 649F9CFBA9E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB2D1300531B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9333F271450;
	Wed,  7 Jan 2026 02:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS0BE4nb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD3E26F29C;
	Wed,  7 Jan 2026 02:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751816; cv=none; b=C2dX9TFVqGtVcR+8lHfbg+ztpkHmUC8TmwztuSUnBJt6gqzUuan4jRsDqSFHb39NqLJPt09Ub7dXJnTV0apxgzAJGnalPaecXJifznRhP36WwJhZFCBpSNkh+MfEryOr8OCeatTyiUZ7szEGauItLS5Gc5oVuAwTrpK/C9vZ+wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751816; c=relaxed/simple;
	bh=O25Fa+LOHrlGWf89leLFa5oUdMzI0/mS2zkHLLNiy8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EvrcG1VEMQxqjotT/l3NfCK3DLR0wWFJaa9Vmfn2G5z8r1kUgk2L85llSAp+UWbUnPHkzSBSHWc6ubwWXpfJofue8cTXDEXntWwKx1Z9ezvYnJvuZUjOnWXQIZuD2JxReRxAhoC4HJBaV4wNS6h46YRMc1DFuEVXvH63XTUHbYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS0BE4nb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF032C2BCB1;
	Wed,  7 Jan 2026 02:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751815;
	bh=O25Fa+LOHrlGWf89leLFa5oUdMzI0/mS2zkHLLNiy8I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TS0BE4nbfGyfx/9gmij+OPkQf/MnV8X2MKy025UtpMxcY9+o4fjTnqyQnODO6qVBg
	 0kcWwYMvBYomyz+d8G27voGLUWnxvSxDm/KF/L0IoXdI4kmYaxumBw/yQ0zEQWhOOW
	 8RQQDxaR/XlXg3I+u4uE90RfFKvsKWVsMLFswu2bU2E9fACkvCLXrNNicC2MFQbu1V
	 bEQ15ZqS29QaQX9If0t2xVZfHtshi2cw/Ehxk+g/Boo687qaVBiJOZGuvcq4L6Ce6w
	 /cA7lulIhqo+tn/WXFy/MManmg+9nxOUtmHdZwLj2DMqLQLYQGD8oWyVjqI5pYBkS+
	 VAOyzm42wiYcg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:48 -0600
Subject: [PATCH 09/13] arm64: dts: broadcom: ns2-svk: Use non-deprecated
 at25 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-9-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The at25,* properties have been deprecated since 2012. This board wasn't
upstream until 2014, so it should be safe to switch over to the "new"
properties.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
index 290759ee0078..de238a9b1845 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
@@ -115,9 +115,9 @@ eeprom@0 {
 		compatible = "atmel,at25";
 		reg = <0>;
 		spi-max-frequency = <5000000>;
-		at25,byte-len = <0x8000>;
-		at25,addr-mode = <2>;
-		at25,page-size = <64>;
+		size = <0x8000>;
+		address-width = <16>;
+		pagesize = <64>;
 		spi-cpha;
 		spi-cpol;
 		pl022,interface = <0>;

-- 
2.51.0


