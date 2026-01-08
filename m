Return-Path: <devicetree+bounces-252659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 722F7D01C5D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 236B8307C738
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DEF734AB17;
	Thu,  8 Jan 2026 08:53:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo12.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C54D346AC1
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862393; cv=none; b=nenefot9GIqItWZ3YDkRAXFr7vkBsOWqBBdbgGoOHn322Q1+ejfiY0Bgqa+WVv0+a4ZrD0KDUQDIMrQqbnh6RQlP+dKdeCj1N+9CjgzxMMAm6szaNjLfK2w/NFOPDjR+LvWd4qWVaHe9wqTtR8uVRqYeILTQ97GvgEkOFbqdTdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862393; c=relaxed/simple;
	bh=JI1BzmVYRatNWGqX4O8FmgmevzGWosHhsFprZStM/Ic=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=EfFHO433cHOz/GZHLjgRYQ481YfEK73l18JO4DbnV2+LWdoOiYAAsx8q+Qs1/TjaiXvqURUjwGbeGbt68hAQ6yByILrCJoD4JiUt8t0wOAbY1BJfLoKq73It82fO2V8BENWIRaZqrKBTmVSMvn6jWCqBt7ag5b4SCkVOcI4U/0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo04.lge.com) (156.147.1.127)
	by 156.147.23.52 with ESMTP; 8 Jan 2026 17:22:59 +0900
X-Original-SENDERIP: 156.147.1.127
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.96)
	by 156.147.1.127 with ESMTP; 8 Jan 2026 17:22:59 +0900
X-Original-SENDERIP: 10.178.31.96
X-Original-MAILFROM: chanho.min@lge.com
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Chanho Min <chanho.min@lge.com>,
	Gunho Lee <gunho.lee@lge.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add 'lge,*' for LG Electronics
Date: Thu,  8 Jan 2026 17:22:11 +0900
Message-Id: <20260108082213.6545-2-chanho.min@lge.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260108082213.6545-1-chanho.min@lge.com>
References: <20260108082213.6545-1-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Currently 'lg,*' is used for LG Corporation, but LG Electronics uses
'lge' as vendor prefix for many of its device tree bindings
(lg1k SoCs, etc).

Add 'lge' vendor prefix entry to avoid confusion with 'lg'.

Signed-off-by: Chanho Min <chanho.min@lge.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..6c31fa4bee6a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -907,6 +907,8 @@ patternProperties:
     description: Lenovo Group Ltd.
   "^lg,.*":
     description: LG Corporation
+  "^lge,.*":
+    description: LG Electronics
   "^lgphilips,.*":
     description: LG Display
   "^libretech,.*":

