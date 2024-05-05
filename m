Return-Path: <devicetree+bounces-65044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 815608BC3AE
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 22:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 383431F220D0
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 20:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1392A7174F;
	Sun,  5 May 2024 20:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="qO5GKi2p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602B074BF8
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 20:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714940751; cv=none; b=KLHg39X54xo1IhdmDxrKAD0g6YlR030AcgWs/0ppV11Nr009kbCy/nU9AFYy1F9B1BOtQ/LEyl+GTqZRlbkDKpX4dswE1tN4ExRRVPkejCxfq6plvhgkSKEadVsHKCGytWUC+6vHWZXMyROAjd5yunWcQ5ujAEPmpMxJfshHC1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714940751; c=relaxed/simple;
	bh=mv/C9uBW8OkmcIu66C5eu78QmsJywUmkPhFbjB53f6k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bzVR6HA45rzX22sDtqRaDlojhGrwQIrO0hWTSUBpg5riEiCDP5gPfqJApKihWHsjRqTmTA0qWJN8cpafYjinpRZ/LT+3EfTxtxpTnhhzkT4f1q8cPh+Rs5dUnICvhU0c92DIxHUGo06A+/GmIobCO6lgvm6u4HEWm9rdWeh1pm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=qO5GKi2p; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714940738; bh=i4SmJhSn7nIqLNI2tUNIKILhDLfr3uj8IjRBMWg6jgs=;
 b=qO5GKi2p1mBrWQkQz0/Dh6Gjygw3N+Esh4sWWaea83kDvXwq1qYPLdfS7gDxfBTL6uqbAZpw6
 zKaMr5BCyxRyaO5SnZWjFpGu6chs2Dk/35fZerXPEb3wGlldqvkmwiPpg5A7o4jaNSdJ3UnW/GQ
 lJ6of1Om5XhU/1uI3+AVrZmbOBingDnzruWukRioCDqYxqrsXTp6neEi0tT8GRF/24JdaDBsoKe
 oL+y8USw3upJFuDvXxQCHOtC4fdOMF6acVIawSuuOIZ3J7SXQ94i3uFjgX3AYf5QQRFFONvhB3L
 rYOVOcFoDjFeoy7DbVleDOOc8a7FWlTGH7fp6TCLWlmg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
Date: Sun,  5 May 2024 20:25:16 +0000
Message-ID: <20240505202522.2999503-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505202522.2999503-1-jonas@kwiboo.se>
References: <20240505202522.2999503-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6637eb3f50d779b5c30d1136

Add devicetree binding for the Xunlong Orange Pi 3B board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 41f2ab79e612..acc0534ea0ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -971,6 +971,11 @@ properties:
           - const: wolfvision,rk3568-pf5
           - const: rockchip,rk3568
 
+      - description: Xunlong Orange Pi 3B
+        items:
+          - const: xunlong,orangepi-3b
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.43.2


