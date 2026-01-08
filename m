Return-Path: <devicetree+bounces-252869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 90085D036BA
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8BEF301BCEE
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08FB74F49D8;
	Thu,  8 Jan 2026 14:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aA5m4Klx"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEAB4F49D0;
	Thu,  8 Jan 2026 14:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767883189; cv=none; b=nsj55zMOzaJHho+/QUw5lGw76J0oqwi2mKjh9LYCj3PyXAD1dWLLQphVw68YrVrDAuuCq132Y3Tmpe8A2baGgK4cY1Se25IZdODuCGuFEhgNqPWi3UUlo29CBG5t7HpscM04CWz6TFcfYGGM6JSok2HoMYnZltx6/ZRABfxMv18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767883189; c=relaxed/simple;
	bh=gug5MGTUrIC+7Kc+bZUycy/flK74uye/kFa4Mt7i+Yk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FiVPdIprXNzR6cLf+fh4lZHStgoLmwzcYsPiBeZfTpOw0SscgH7bnK2zOETnURYmNYL4FxzldWdhDaGsSe9MbkVrmp6sLuaDti6iEmIAjtlA2MYHLqwjGaWUstGCcHszYa09qo2jKncQ+74M27rTijkF37WsT1wdr7VC9CeXCRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aA5m4Klx; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767883186;
	bh=gug5MGTUrIC+7Kc+bZUycy/flK74uye/kFa4Mt7i+Yk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aA5m4KlxwAwgMYq2mcB1WhEKYQe7q7gF/fSfVK9Zp0154rmnf6NSLSMzhjcWf/nxL
	 aaGEyblsgZdKxZXi6dafI1l3Zu6jMUAEAX6HXoqGPNepCndIWk4CfyVYuyEbsElIEs
	 KXogjYm0XBbOEl+ummctXCVrF7FnOyAaxyVFCQaEA66YKsx0o78aXWnNiRA28kXduT
	 p4KvZ949UuazMV9MJDhpA1Z/QSJd7mIrL0NlBL2fldS505MjfDCrMUStB905BVrupZ
	 OVoBwdtsotiJkRNU0Fq6cITyq0up9f/1FfaR/qENNVbN3Z75YCvaRUW3/ItjMP92q0
	 LKZruq0PSqliA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC83917E13E0;
	Thu,  8 Jan 2026 15:39:45 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8195-cherry: Fix warnings for vdosys0 endpoint
Date: Thu,  8 Jan 2026 15:39:33 +0100
Message-ID: <20260108143934.69634-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This machine needs only one endpoint (@0) for vdosys0: remove the
address and size cells declaration and rename the endpoint@0 node
to `endpoint`.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index b3761b80cac7..d5b632489b1f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1512,11 +1512,7 @@ &uart0 {
 
 &vdosys0 {
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdosys0_ep_main: endpoint@0 {
-			reg = <0>;
+		vdosys0_ep_main: endpoint {
 			remote-endpoint = <&ovl0_in>;
 		};
 	};
-- 
2.52.0


