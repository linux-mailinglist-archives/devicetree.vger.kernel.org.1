Return-Path: <devicetree+bounces-137255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1537A08694
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 06:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F16D188C0BA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC1D2066C3;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sc2x/Vkb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09027205E36;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487596; cv=none; b=ayP+pi1QWBXxo+5XAFUqLZor0RluQNYL0BEeLb0VgoJvuaf8qbr15DxeG5FgvayKDxiT2k0z6ZFqLfD0mFhNO7jEhi6EYwFOUDzNcH+ffSdNdC13rtnDncj68WI15HVVzTU9oVREa22qzBv6qHpcroUAvx7B6c+tsSoHJUwVB/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487596; c=relaxed/simple;
	bh=XzOfiDgkMjifLw0j32157TgV2yYy1gXY1ZnOupVfgIY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y9Rttl82eyeon4KMWOjvoN+uSpnmwtgzYFOUVV6pERI7fYK+iQOB/yQ/YVFJnA639KJWKgHcpnvCL9YPq6KG5FsitFTVkkx+bAFQCOPV+xoQYcKr++qiu/NI5WmzIH9hPrP51nS+lg6EIKw9eMuAWm/inlre0UObELBJxMSmLQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sc2x/Vkb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ABCFC4CEDD;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487595;
	bh=XzOfiDgkMjifLw0j32157TgV2yYy1gXY1ZnOupVfgIY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sc2x/Vkb8y5tPZZ38WgG44kN429vGnw/58lCtqSlMXDAEkTc1dVsdDPjFTG3u7t+x
	 +QwmVOIiiSifGvhSOJvnsuYEnaSMMFPKyudVb1rrrqBKjHL4HV9bhgBlVQ025H1BrO
	 dDpYvng24oRFwQ4xD8VqEaLgy/r6H5VV72mkwIoXsPkj3jBoopUSssh5LWMH0sNpTL
	 8G7xxdElbBoivCB/ZyUabaDZzgx4fDaGYQljS6D/2k33pVJ7BIbJzE/SoH6tEWs+M8
	 Ppw2Vp6nUd1xan9FoYMRe6dlrMtXoMeL/ARCndsJXq+MoK/gLXJxBU+Bb0ub8U+Y07
	 /P0Y4cYcsqmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A068E7719C;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
From: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Date: Fri, 10 Jan 2025 13:39:51 +0800
Subject: [PATCH 01/11] dt-bindings: display: meson-dw-hdmi: Add compatible
 for S4 HDMI controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
In-Reply-To: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ao Xu <ao.xu@amlogic.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736487593; l=876;
 i=ao.xu@amlogic.com; s=20250103; h=from:subject:message-id;
 bh=/06xHmC2myfGLoM8tpTANbPOABYZF56wo8NJNiKgZ5A=;
 b=J74TFdNjfeuf4xmz4NKNLHVau7fIMmNSUihqIqgeyFjm92lB/udlEzM3roEpMg+hkQ+N4X7s8
 UeGx5QN1XU3Di8eU0SCdOogQj+QOImkjRWWthXzpVE0fDQoU6NLI3e7
X-Developer-Key: i=ao.xu@amlogic.com; a=ed25519;
 pk=c0TSXrwQuL4EhPVf3lJ676U27ax2yfFTqmRoseP/fA8=
X-Endpoint-Received: by B4 Relay for ao.xu@amlogic.com/20250103 with
 auth_id=308
X-Original-From: Ao Xu <ao.xu@amlogic.com>
Reply-To: ao.xu@amlogic.com

From: Ao Xu <ao.xu@amlogic.com>

Add devicetree document for S4 HDMI controller

Signed-off-by: Ao Xu <ao.xu@amlogic.com>
---
 Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
index 84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40e08def38 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
@@ -55,6 +55,7 @@ properties:
           - const: amlogic,meson-gx-dw-hdmi
       - enum:
           - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, S905D2)
+          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)
 
   reg:
     maxItems: 1

-- 
2.43.0



