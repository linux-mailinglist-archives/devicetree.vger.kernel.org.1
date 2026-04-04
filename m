Return-Path: <devicetree+bounces-284608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP6QEQCJ0GnG8gYAu9opvQ
	(envelope-from <devicetree+bounces-284608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:44:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A02CB399C96
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:43:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10FD23011BC8
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2026 03:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A99331230;
	Sat,  4 Apr 2026 03:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="YxZMy/AU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908D417C69;
	Sat,  4 Apr 2026 03:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775274216; cv=none; b=G4loR/o3D8Msy/J1PmbTCNYuA/1f4yQlL2ct+MyIYIcs/SJdnAb8+RXIMiYEBkYReB648qR1QLWBDGejDs7uffrfqd/G6acxVZi49fwgoVCRAxyo67zgcIZrYQptBsqaBoqbuoRcYotPoalVAjJ7h1YJ1EduRFZTe7QL/UcpCkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775274216; c=relaxed/simple;
	bh=vvCVqDDVStkJkc9NKUXU2iYZdkgv0UGiI9StFyJwVAk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MAzz/M2lAP4lZq6Szy9Pw51UVm2D7TouPtZLdJpp6CjQ50GVrFkKGemkUluw7hagz8xqreCHcHggfeO0tU/t6Op+UKkjvOmMFCg28Fq5zUykJR1Uwj4oL7iq9z6cdc0EedYOidUY3cx1wJ4lF3laZ1bOO+r2gzAvOqswZT0qzlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=YxZMy/AU; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C7580113117;
	Sat,  4 Apr 2026 05:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775274211; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=4hF/UZsnpFDnbqzEFubXStIBtyAjilEUCbOOhDOiXh8=;
	b=YxZMy/AUdnhgzCHYFnyX1go8N7BcNuUY2LtjG2QuG3xWosMyRYYxDlqJxB1lkMi/ajyf0A
	oJ6ZYkLhxe2qjhzzLvHhA1OE8jrn5fK2u5QKYJjwpa6BYnZglyZJOXnHG9cMQFMNaGBu/I
	x8e5j+5hhvUlxqSusWh6+InyiwwoICxgncVr5YYYVqz2C2nsqNE27+M6IuLzBHZPfdY77p
	5Rf+YHNZUmWQtAo4nHaFggA5hwJatotzLPUPwpFdl5ygxQT29K/nLRWGCowQgN84XjgEbG
	QYC9o8PlIwrCJdPnXnfnzfnH0e/4WmFAH36pmyu1k6+mhCfi+BJGRACEKgrGLQ==
From: Marek Vasut <marex@nabladev.com>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Move AUO 21.5" FHD to dual-link
Date: Sat,  4 Apr 2026 05:42:49 +0200
Message-ID: <20260404034321.341210-1-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nabladev.com,kernel.org,gmail.com,nxp.com,linux.intel.com,linaro.org,ravnborg.org,ffwll.ch,suse.de,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A02CB399C96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

AU Optronics Corporation 21.5" FHD (1920x1080) color TFT LCD panel
is a dual-link LVDS panel. Move it into the correct schema, which is
panel-simple-lvds-dual-ports.yaml.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <jesszhan0024@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liu Ying <victor.liu@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
---
 .../bindings/display/panel/panel-simple-lvds-dual-ports.yaml    | 2 ++
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
index 548f5ac14500a..2215bc10bd67c 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
@@ -40,6 +40,8 @@ properties:
       - auo,g185han01
         # AU Optronics Corporation 19.0" (1280x1024) TFT LCD panel
       - auo,g190ean01
+        # AU Optronics Corporation 21.5" FHD (1920x1080) color TFT LCD panel
+      - auo,t215hvn01
         # BOE AV123Z7M-N17 12.3" (1920x720) LVDS TFT LCD panel
       - boe,av123z7m-n17
         # Kaohsiung Opto-Electronics Inc. 10.1" WUXGA (1920 x 1200) LVDS TFT LCD panel
diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 9b8fa03f7cbc4..eec78daf946cc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -61,8 +61,6 @@ properties:
       - auo,p238han01
         # AU Optronics Corporation 31.5" FHD (1920x1080) TFT LCD panel
       - auo,p320hvn03
-        # AU Optronics Corporation 21.5" FHD (1920x1080) color TFT LCD panel
-      - auo,t215hvn01
         # Shanghai AVIC Optoelectronics 7" 1024x600 color TFT-LCD panel
       - avic,tm070ddh03
         # BOE AV101HDT-a10 10.1" 1280x720 LVDS panel
-- 
2.53.0


