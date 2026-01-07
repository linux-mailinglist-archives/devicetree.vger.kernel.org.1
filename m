Return-Path: <devicetree+bounces-252505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5783ED002E9
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 22:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C3FE3002D1F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 21:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29D0332912;
	Wed,  7 Jan 2026 21:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Snhx864w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E90A23D7F5;
	Wed,  7 Jan 2026 21:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767821762; cv=none; b=o8tX7QkztcTt/16sUaKxNrodOCHQNMmYU2LzzFu0d2013jzFaSeKFvTun5jHdb3KQc9ikP3n+xHxe5KRuQI+tHzCVJDk3jsz1gMZs+ntMagt0GVrexbQgbWu3qCvIywMbW4rZ/lAMvRkkc4EKOtM58n7GN1eiBoG+6WExie6MiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767821762; c=relaxed/simple;
	bh=dDZWWBrK8qpASNuccXw2RVO+wfCqjQIExNvAT4kl7cM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p6X7URvQy8sWengb/bstz9iuPptGL0dRmMsahdLe/TS2YN177giLFDgpP62plsr6wgdYlZ77fquUxTB5Cf/HR+9VFhG/VeJgsNammCHfn4ll4Ah5rB5gi6Iy1kLoVdkG9IFJZxohPWWHQsu2fciSHF7fT6lGvCJhNd6298hzP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Snhx864w; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6A21210D649;
	Wed,  7 Jan 2026 22:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1767821752; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=fy9APZzqEAIRSyeUxmDLTgDS8ZnQVE9HBWckGtI8aTk=;
	b=Snhx864w7UQNhCIosd2P/2oy5jI2xUnksS5iQSHRrtPDrUyKPzcRcVgEQ6sIpSc9ov2mnU
	6yzpY7SCEZLAoB1kP6drNxHP58fGyYKzQnf2ESKwXeowMr/YF9vs3XHHLBrOe+BazpY9my
	KdeqTEdOI57Jbd7NaLYSrD01MdiYZ9Jpa85GnXAjdyqYQwOQH0HR/0nKi13YkmE8wXu0/J
	taJ66dc4Zco1+ZSYAtSxZVEYvVIIiv45IdxRs1mkuzWvmdc0oNLlHIHUAKp2bKrkybvC+z
	W/QBEPUydp8xJttU9SxgfegexCQxXSuMAUzgT5VsrpX+Q4FP1CjolOH9xUrJnQ==
From: Marek Vasut <marex@nabladev.com>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Andrey Gusakov <andrey.gusakov@cogentembedded.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: tc358867: mark port 0 and 1 configuration as valid
Date: Wed,  7 Jan 2026 22:35:21 +0100
Message-ID: <20260107213546.505137-1-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Current binding document enforces presence of either port@0 (DSI in) or
port@1 (DPI IN/OUT), with port@2 (DP out) being optional. This bridge is
capable of DSI->DP, DPI->DP and DPI->DP, it is therefore perfectly valid
to have both port@0 and port@1 described in the DT, because this is fairy
standard DPI->DP configuration of this bridge. Replace oneOf with anyOf
to cover this configuration.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
---
 .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 70f229dc4e0c4..75804114f71f7 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -115,11 +115,11 @@ properties:
                   enum:
                     - 0 # No pre-emphasis
                     - 1 # 3.5dB pre-emphasis
                     - 2 # 6dB pre-emphasis
 
-    oneOf:
+    anyOf:
       - required:
           - port@0
       - required:
           - port@1
 
-- 
2.51.0


