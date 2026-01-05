Return-Path: <devicetree+bounces-251661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 158D8CF563C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B7DD301226D
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A603330B524;
	Mon,  5 Jan 2026 19:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxwcosU2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC7430F95B;
	Mon,  5 Jan 2026 19:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641547; cv=none; b=BaY+gTU6tLo5haguQxUqbwz4ZKiLduHbWYlD8R+0DOjjFIHGH0kSbO/vZQZ/46tT5q3T/zNIIDOXuB39EBrn95OSo+SrDnyVqCIXrSovOTR0OUEbpOA4PxYIZILAR1GmG+bDJKcWep2aD7fuC72W1/hniz1a/8CVOsgSzzORf+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641547; c=relaxed/simple;
	bh=q9cQlTH+WIpOMJjB31tyEhi+IJtQyrYG+P/zBl1mJl8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c5rZhSipL4EysAtf+PaN20QNyyVZTEePhGh711faDAGw6FAk/e4cxEqB1ZYwCN3iN18WbU0qOiYcIsO7BOuNb7TGpx5ZhDKf7AwZObQFiW/yeCK+aC5uEL/2d5ElxsR/lDH0ulSD37FNNqLIByWdQt1CgYwiBfmwjugw5gqlBbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxwcosU2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0A67C116D0;
	Mon,  5 Jan 2026 19:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767641546;
	bh=q9cQlTH+WIpOMJjB31tyEhi+IJtQyrYG+P/zBl1mJl8=;
	h=From:To:Cc:Subject:Date:From;
	b=mxwcosU2dLL7phAhR4W/sEyNm2d0UPRRC4aGxQFRzcQWcIW7MKa1TLiMgAJvDZZZ+
	 LQ7OXyjqGCLomeNm8KX1ydHbWZVSeK7ciDpiHLprLFGWWxg7XVrppEL69zJlFJ4BYf
	 omaXBzMfryLjoqrNDDX22W7yWR+/cqgY+yELffI/l5W2fNUz5MPTMGOW02AnFZjl8/
	 Y2aInNYmoSSEBr8CvTmYgm71awvVypa212lVEakAbe80HoPcmsya8Bb34qQ2cEJ4ko
	 PQWW2AfYx+BkUqdEDqL8B3tbAdA1Bcb9ve+UUTMeGM+E8sUG9H2Ayjup4EzriduCri
	 1KliW+fOcZ8tQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: panel-simple: Allow "data-mapping" for "yes-optoelectronics,ytc700tlag-05-201c"
Date: Mon,  5 Jan 2026 13:32:19 -0600
Message-ID: <20260105193220.3166778-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "data-mapping" property is in use already with the
"yes-optoelectronics,ytc700tlag-05-201c" panel, so allow it in the
schema.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index fc244fbb5a54..e4a5b30ccfc9 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -349,7 +349,9 @@ if:
     properties:
       compatible:
         contains:
-          const: innolux,g101ice-l01
+          enum:
+            - innolux,g101ice-l01
+            - yes-optoelectronics,ytc700tlag-05-201c
 then:
   properties:
     data-mapping: false
-- 
2.51.0


