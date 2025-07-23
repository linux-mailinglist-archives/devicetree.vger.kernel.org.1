Return-Path: <devicetree+bounces-198963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D5B0EDD6
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50D8B6C5B73
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05BBF283FD8;
	Wed, 23 Jul 2025 08:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="A5FIU8sa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CB02820DC
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753261040; cv=none; b=VfXIFjdXFnrpLcYgLE2ujvOeR3TKjGIFcdGUewJSzrUZR+DahuLeD3aR3uWohJPxngtxOL9G06M7zJ8UQW3qcYIT0yLsrEE6rZPJRxI4I2apEl+KlENFVRmuFtnsGrnlJawIJ70fab5IPhlNa1Wd1EhbeisAEX3Nws32y5//LoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753261040; c=relaxed/simple;
	bh=49hlALmvO3tf+FxtZgb/HogpsYZxbw25DjGIXxz7B+I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HkuOyivtkAJLlcszrQoawoD7dD/huDLtDlazuvgbIN11n+OE05/s9u2ogcfxNDY2xzjGzHab8TUCk9dL/+o9DJ4q9KjHuxBjPfJB7VIZ8AdcYaccpDdPS2A7gA8NdO7CePAU6E74QfbArzjPJ/FgdktnzKqV+ifH/PbhLsEr7k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=A5FIU8sa; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753261032; bh=PKSo/fJwr04VNmGVrbdVZ+djNyZPEPotepO7Vigj2G0=;
 b=A5FIU8sajKBbadC5y5fjDEm6mxkRMxrk+0cagwDREmmzfZFG9qu5nBO5hp0fyVO8ORKgZhsdg
 /2ghymjfwKDkTiRK3MaIby7uiPYk96cGRQNVIvC/qwGFSdt6jmd31j3d3eAEcgyRR5jHPTFatK9
 frSzJX+VFoCeFqUuj+WEqu+S1HkAnan8++PIJkLABsbSTok7v09sc9LoxVeTcIND2OnEUBEblVX
 o7XqghAXojj3mKqAgOEU4dCJUE2EPqHM/9/2Crv8myJyRx8b/2kwpv9kFQ3x1OzDCqzpw4AKtqS
 5BSS/FtKYtJ6PJ7VQJfwGuDdibbgYdNfSJzJwg/pP9BA==
X-Forward-Email-ID: 6880a3e0144dc4a5e5baee04
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: gpio: rockchip: Allow use of a power-domain
Date: Wed, 23 Jul 2025 08:56:43 +0000
Message-ID: <20250723085654.2273324-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The GPIO controllers in most Rockchip SoCs are part of power domains
that are always powered on, i.e. PD_BUS or PD_PMU. These always powered
on power domains have typically not been described in the device tree.

Because these power domains have been left out of the device tree there
has not been any real need to properly describe the GPIO controllers
power domain.

On RK3528 the GPIO controllers are spread out among the described
PD_RKVENC, PD_VO and PD_VPU power domains. However, one GPIO controller
belong to an undescribed always powered on power domain.

Add support to describe an optional power-domains for the GPIO
controllers in Rockchip SoCs.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Update commit message
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d76987ce8e50..bdd83f42615c 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -41,6 +41,9 @@ properties:
   "#interrupt-cells":
     const: 2
 
+  power-domains:
+    maxItems: 1
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object
-- 
2.50.1


