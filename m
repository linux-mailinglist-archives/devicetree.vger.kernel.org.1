Return-Path: <devicetree+bounces-199042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99401B0F22B
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BDB11C87D73
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082332E765C;
	Wed, 23 Jul 2025 12:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="FCfADuCk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A9F2E7656
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273441; cv=none; b=SS+AAkIsXjrB196hagd4dn+FCzVKogUCovb4Nnb8hfhWfEw99rsZvQVrc4ksUs0nxrdlzKII3YpgCe5GcgpJkbHXjAhwnOsu5/TFreI4mk/GGZqOagGIMTT1yAjeggZp+9t+iOPp+lcFnL8jTR6fA9xsBzczCUdy0G18e324Z3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273441; c=relaxed/simple;
	bh=LWJ1M0vsHLaIqbyGqsKzDR+idrh+U3gQNGdPylTuhek=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qY8kZle6dSVNW0llCT3YpoR/aug7hfGg/IIIQyRqhbVZiq/0Mci8dDrHcKvghiRq9UxZVL69DecMKstOh8ePkZF4PLYwEI6hukNxdUNcc2z/PPzCOdqWDfDZIihe70Euhp7R9AtjCoIJlS2N0KWsaYqWm3NSNVb9gjxT6QdEPmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=FCfADuCk; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273439; bh=TU8Jll/Gz9LNgDHoqWnxxdtmHuWsKcU+Qw3QQXvySMM=;
 b=FCfADuCkd7GTRemRFY4XyXkSveS8sqfkdKY5zXHu+lsgH2ozpdrXIcLi2R8cfgXua+OrDsNjY
 pi9FCCMfmA/FFoSiQiJKpUF+5XNjEp/eoFLXYLtnwkPY2RsJkEmZgDSWAyNAQoxG8bI1gk4v6ra
 hi2PCQ2+HKOoysLu6oQj4cyGnJ/T/Wdwu545WMqqB4vIDntadJw/Mb8EOREOCb1pjZm1vq/RMUa
 vgEEg/EmSis3289B4P3s46k5rBMUQu4MKGq4MwK/a2yA7jM41MSYUUDD8BXK7vd0hrvcGokRvQh
 HY7JgI4XQDyiv40y05n7By6iwbNEHJUI+xAGjTmpPKhA==
X-Forward-Email-ID: 6880d45ccb0ee86f9731a0e0
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-usb@vger.kernel.org
Subject: [PATCH 06/11] dt-bindings: usb: dwc3: Add compatible for RK3528
Date: Wed, 23 Jul 2025 12:23:04 +0000
Message-ID: <20250723122323.2344916-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB dwc3 core on Rockchip RK3528 is the same as the one already
described by the generic snps,dwc3 schema.

Add the compatible for the Rockchip RK3528 variant.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index fd1b13c0ed6b..0554dbc4b854 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -26,6 +26,7 @@ select:
       contains:
         enum:
           - rockchip,rk3328-dwc3
+          - rockchip,rk3528-dwc3
           - rockchip,rk3562-dwc3
           - rockchip,rk3568-dwc3
           - rockchip,rk3576-dwc3
@@ -38,6 +39,7 @@ properties:
     items:
       - enum:
           - rockchip,rk3328-dwc3
+          - rockchip,rk3528-dwc3
           - rockchip,rk3562-dwc3
           - rockchip,rk3568-dwc3
           - rockchip,rk3576-dwc3
@@ -135,6 +137,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3528-dwc3
               - rockchip,rk3568-dwc3
               - rockchip,rk3576-dwc3
     then:
-- 
2.50.1


