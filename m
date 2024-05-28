Return-Path: <devicetree+bounces-69770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D37F8D1755
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38564284BEB
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 09:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E631316939B;
	Tue, 28 May 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="DNyx6W+a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8246E611
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 09:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716889096; cv=none; b=dpjNrjr6zxJ6KgWB/8mBgETNWorWj9tkbw1aaSuRcUH5LsWZA51Zo0jl1HJl70Ar1OwJGWxAwt95ZYtYAW4jB2Nhii2osG7kf7tNo6HE4a7MIbGnxsr3o7P/EKVI8lJ2kXUod9QtvrVRBOu/doGoXea/Cl9OJGGFKbJBUmaE1d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716889096; c=relaxed/simple;
	bh=3u6g32oi0MzIOFJR/M4pTNVp+Vn2b1BrjfLw+Mxlzv8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VFny4ij/okxUF/MI2e5yuJgYg6XiYFEva/z1+BMCd/XFAqgsXaZkZe3L/2SqM6IlV2MzcdV5qdCYXl8DZK9BGFE86oc5CCAoRn7ZuahvodipIyFryPaCUjAAPs1fuGpMSwuMHKrMTP/QJ9WpkegxP3J6oGE3iLCL1iF1XkM4/pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=DNyx6W+a; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716889086;
 bh=kZldNUhFapUXi8fFen9ZxNXmo2zf2T/DvFY/0m93JFA=;
 b=DNyx6W+a4WLlg4KUHnj8e582/ftL8kLH3tW7h2y1krmFeaBrEsBcFeXSaI9SPstsfaN/IcT2d
 z1b2GJbvZXLXRpNHDY8L2KPwtYpZRGz+BB+haENaRaDydjUUuTEkvYws3eVlhD91cm1uvLQUvnD
 OPvSRih7hCbzTm8SyQxBJn5Uw1oJ5epU7CSBLKNxU/WqWZNXZJxVSdKTPW52QMpeTS+jQ1bgGlW
 u0LoYcGgwy9biXtTANk2WH6NS0UUPFFX7zvPZYruS9hYWlMNe7Ar7mUY3kkCzNlNzgRkWKFRIfG
 BjYrbDwRabnWox7MZtdPZyXJ9p/ks8d3O7WSNDi1ltmw==
From: Jonas Karlman <jonas@kwiboo.se>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, Tobias
 Schramm <t.schramm@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac compatible
Date: Tue, 28 May 2024 09:37:48 +0000
Message-ID: <20240528093751.3690231-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
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
 149.28.215.223
X-ForwardEmail-ID: 6655a5fe20693af6ad39594b

Schema validation using rockchip,rk3308-gmac compatible fails with:

  ethernet@ff4e0000: compatible: ['rockchip,rk3308-gmac'] does not contain items matching the given schema
        from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
  ethernet@ff4e0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'phy-mode',
                     'reg', 'reset-names', 'resets', 'snps,reset-active-low', 'snps,reset-delays-us',
                     'snps,reset-gpio' were unexpected)
        from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#

Add rockchip,rk3308-gmac to snps,dwmac.yaml to fix DT schema validation.

Fixes: 2cc8c910f515 ("dt-bindings: net: rockchip-dwmac: add rk3308 gmac compatible")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
- Re-send as a separate patch
- Collect r-b and a-b tags
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 21cc27e75f50..3bab4e1f3fbf 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -76,6 +76,7 @@ properties:
         - rockchip,rk3128-gmac
         - rockchip,rk3228-gmac
         - rockchip,rk3288-gmac
+        - rockchip,rk3308-gmac
         - rockchip,rk3328-gmac
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
-- 
2.43.2


