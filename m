Return-Path: <devicetree+bounces-59112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A178A4345
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 17:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1421A1C20A12
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 15:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734B5134733;
	Sun, 14 Apr 2024 15:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="PXAcft8C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C332421D
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713107544; cv=none; b=gKUCrgHcvt6xw8LcKepgEk4Z46vr3WRFHM2XOazQ/f4+PE9K/6DgLHvj0yX9ipoXHQEyxFyqHqgPS61Z099hX7KLXbxd9TJC+rFuHCsbQn+kNpv+Hwt2PM7Vywn9YSQniJ/aTQhz0js0EfX69drCypgrJbSHE30GX4KRlfAebDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713107544; c=relaxed/simple;
	bh=O03YYebbtXhMIdOMbi6XgtmeLQkPYfnnUfyAiFpd18Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kpb10GZ/k8Wzol8JUq4tYF0pXYFK2v+hzIDwYpTW0hhl4T26x53n4kR4pPwOvidOZmQBGIcL8YEjv4hbAlwR70Kzzn/k/WOKooC7kq2DNbu5DXVm2lFJ+AkANjRv9KpHU290nIGHqSDCWgdkCgqBi+itNEufwOUsaSL67O1XIRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=PXAcft8C; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1713107519; bh=gGzIdCw12QXG2TxloTRvkWREcbVU89z7DbBLoR6ZGJA=;
 b=PXAcft8C5jzX1iBhgHoO3sH5Sh38isq/WaBouSiFCichcZtGpGTY/aQGbVj5ipft69r/pC/do
 5sGEqgLnKJ+0604bVB+v68DBqRi32QgGLrYrwuh3EjeCxxY1S7Ot66PjU2FY6NK5w4y75W1yAxd
 qf5kDWV7lkJ0G55VUXFpLB/ZYc10Dp1M+xZAw9WVT72kQDLYO16WVZTfefmGaPguXCwoHEvRGs7
 UUd1yfg4kkilAtT3VmoIaxVSuzzJ2lh7Vfb30MDi0g4Ak3Kv2dNQ6X9tMHHScMJJcsm9JhKqAhg
 lNqAJnlcORxKgv5+K8DqcFV1unePIxvkkAV6kFHSCRMA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Mark Yao <markyao0591@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-hdmi: Fix sound-dai-cells warning
Date: Sun, 14 Apr 2024 15:11:29 +0000
Message-ID: <20240414151135.1774981-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240414151135.1774981-1-jonas@kwiboo.se>
References: <20240414151135.1774981-1-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 661bf23c99ce03c87699d74d

The rockchip,dw-hdmi node can be used as a sound dai codec, however,
dtbs_check may report the following issue:

  hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
  from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#

Add a reference to dai-common.yaml and add the #sound-dai-cells prop to
resolve this warning.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch to fix #sound-dai-cells warning
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index af638b6c0d21..3285fff54416 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -15,6 +15,7 @@ description: |
 
 allOf:
   - $ref: ../bridge/synopsys,dw-hdmi.yaml#
+  - $ref: /schemas/sound/dai-common.yaml#
 
 properties:
   compatible:
@@ -124,6 +125,9 @@ properties:
     description:
       phandle to the GRF to mux vopl/vopb.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
-- 
2.43.2


