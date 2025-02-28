Return-Path: <devicetree+bounces-152439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66251A491A9
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 07:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A506C3B7DF8
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922371C5F25;
	Fri, 28 Feb 2025 06:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="uh7G+/Ch"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6061C6FE3
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740724846; cv=none; b=j+8IU71LhL85QGkR8gOEQxjEYuQxrYjGhaMucOFxBOI15Qrs99egeE3f7jcyhIUvWGztAB613vfZ724h8SX+y3A+JBApdMggZ33uC1O1P6yJTvqoAFBfzgRCi5ddjYcC5XFn9tnESPa2ip0SMeDV6ClAvDNFQ8Vvyts26S2/aXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740724846; c=relaxed/simple;
	bh=9unGMfyYDtzHZ63692K7MQXYmRpomYSLbz4nQ6x6ZSU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SXL91+cBeINEgRKt0u+74oyFrQlSdRKJYHmrTytR01C9apfqoS8IfiYVJdpAAW5eoPQJSWseZ4l4nht+7drGf6aQ9dal78v9j2P9Y1bBnkkkQZdHy7jXF6gIopgpP2yiI/tx36cK6Wiwr/MNocJ9cot6ItcjwiDnvToqWvEcROw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=uh7G+/Ch; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740724843; bh=7NB3P0f6RdiFdh3drg6WLnXPDL2oA0XzIxfpKl6Tzgc=;
 b=uh7G+/Ch4QINZxAeggR8yk6Pqk9ygO39muCS+U2qykR43YFYQC3Boy7jaHjNLFYUFVMhIYlCa
 x26cT8VRgHk2bHEv2k0hfNoqyR4H7Kd4ZKoWKe24QIAitoVh3ZfZ4S4YqUo7S7+mUzAMxuhky2u
 i3FGtdfaTvOnH46xP2nuv4K6l9nTNj0vWk598QUJA8iKpctPiUqBCszr6LcUsZJqJTnxqtljqCV
 ExW7Lgx1B7af2WVzYvJMTNr05UL6kqhCjxSHuAtKBfpA/ABP5Ov5xz9riWCrt0cPPpS/jUdfK8+
 bEqEedjQUMucCepd9QdJLQbCZHROxgi8dS7iXFbnhxQg==
X-Forward-Email-ID: 67c15a66bcf1d1bd23db01bb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/7] dt-bindings: pinctrl: Add pinctrl support for RK3528
Date: Fri, 28 Feb 2025 06:40:08 +0000
Message-ID: <20250228064024.3200000-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for RK3528 pin controller.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 80a2b1934849..960758dc417f 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -44,6 +44,7 @@ properties:
       - rockchip,rk3328-pinctrl
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
+      - rockchip,rk3528-pinctrl
       - rockchip,rk3562-pinctrl
       - rockchip,rk3568-pinctrl
       - rockchip,rk3576-pinctrl
-- 
2.48.1


