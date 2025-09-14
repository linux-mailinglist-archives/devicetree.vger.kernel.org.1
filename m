Return-Path: <devicetree+bounces-217080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AED27B56C80
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 23:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 508777A6058
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 21:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76062E717B;
	Sun, 14 Sep 2025 21:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b="Zg3jQpfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4323.protonmail.ch (mail-4323.protonmail.ch [185.70.43.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0202E5B1F
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 21:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757884820; cv=none; b=lwmyzlq3ev08ttAuN6CLP5hxbplFGlgWFlttcvHsOYLxYVNKQzWlEsXw673Dp7Kg+WeXD2Tiv5UnQE0x9LehZeU1PkjG+lDu4xjR6WJMDHSBP0TEKQqjzl0Z/SjSrE3MRAOY+3wWF1xiH8o1mL4Vwni33ONw590lNei4RUX71d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757884820; c=relaxed/simple;
	bh=M2Gl0h1IbNc0ONXLAYgn4s7jZx5zqBBGfF+tL32SZ3w=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JhuHttC6Zl9zgDZti+wVQaA7+7G+zbxO0wyqNPdrNnufdby8jFum6m+5Kfz52b//HJ1W6zZ7ksNEaxu8ThnMsQ3322Zfa6+PTEULVRNEULa2OhgaN/tJui38WcviQjPjq2/bvUELLjsH9QbmZ2piMGQWRZ9ruG0H5vSEGeeRAoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro; spf=pass smtp.mailfrom=chimac.ro; dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b=Zg3jQpfL; arc=none smtp.client-ip=185.70.43.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chimac.ro
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chimac.ro;
	s=protonmail; t=1757884817; x=1758144017;
	bh=r6Y2Gkn706akrIKg6YESStK0AnOYg63HDq/ISSMQOuw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Zg3jQpfLTiNwnSTWvTuYzLoYFJY5wbKi6WuQ5nHrIXkpLfX13TSxMg8QQ639lGF3W
	 c4WOinvEQjYbgzWczW6rpsm2Bl67kLoG+kc8y8J0gxjXQW9LdJGBnYi/4kpqfPNsV3
	 PCjFTsKlTsv0yS990AWMAGWSFbTLtxctVm/OgcUPRbYP3oQYA5AIoe8uwoFGkeTL6t
	 9YDX0/diEPlXTIy0JrpUo96tSx4BW8YGWfz9d9IfdV6HsJzXQd2Nfw1p5XfX3xso4v
	 YpjqmKdK22Khoe8sLupBHnGcLIhCE5cWn/kWBCPxxgq53pt4WJyNsYKtZ89wT8aVAy
	 h75FKtCqA1V2A==
Date: Sun, 14 Sep 2025 21:20:09 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alexandru Chimac <alexchimac@protonmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
From: Alexandru Chimac <alex@chimac.ro>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Alexandru Chimac <alex@chimac.ro>
Subject: [PATCH 5/8] dt-bindings: soc: exynos-sysreg: Add Exynos9610 SYSREG bindings
Message-ID: <20250915-exynos9610-clocks-v1-5-3f615022b178@chimac.ro>
In-Reply-To: <20250915-exynos9610-clocks-v1-0-3f615022b178@chimac.ro>
References: <20250915-exynos9610-clocks-v1-0-3f615022b178@chimac.ro>
Feedback-ID: 139133584:user:proton
X-Pm-Message-ID: 0485798802bb0d7269f0f916ac2aa86437c9d201
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add bindings for SYSREG nodes, compatible with the standard syscon
driver.

Signed-off-by: Alexandru Chimac <alex@chimac.ro>
---
 .../bindings/soc/samsung/samsung,exynos-sysreg.yaml  | 20 ++++++++++++++++=
++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-s=
ysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-s=
ysreg.yaml
index d8b302f975474a87e4886006cf0b21cf758e4479..9f759e457a0acc2870adfd077d3=
3870593cf7b83 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.y=
aml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.y=
aml
@@ -30,6 +30,16 @@ properties:
               - samsung,exynos8895-fsys1-sysreg
               - samsung,exynos8895-peric0-sysreg
               - samsung,exynos8895-peric1-sysreg
+              - samsung,exynos9610-apm-sysreg
+              - samsung,exynos9610-cam-sysreg
+              - samsung,exynos9610-core-sysreg
+              - samsung,exynos9610-cpucl0-sysreg
+              - samsung,exynos9610-cpucl1-sysreg
+              - samsung,exynos9610-dispaud-sysreg
+              - samsung,exynos9610-fsys-sysreg
+              - samsung,exynos9610-g2d-sysreg
+              - samsung,exynos9610-g3d-sysreg
+              - samsung,exynos9610-peri-sysreg
               - samsung,exynosautov920-hsi2-sysreg
               - samsung,exynosautov920-peric0-sysreg
               - samsung,exynosautov920-peric1-sysreg
@@ -93,6 +103,16 @@ allOf:
               - samsung,exynos8895-fsys1-sysreg
               - samsung,exynos8895-peric0-sysreg
               - samsung,exynos8895-peric1-sysreg
+              - samsung,exynos9610-apm-sysreg
+              - samsung,exynos9610-cam-sysreg
+              - samsung,exynos9610-core-sysreg
+              - samsung,exynos9610-cpucl0-sysreg
+              - samsung,exynos9610-cpucl1-sysreg
+              - samsung,exynos9610-dispaud-sysreg
+              - samsung,exynos9610-fsys-sysreg
+              - samsung,exynos9610-g2d-sysreg
+              - samsung,exynos9610-g3d-sysreg
+              - samsung,exynos9610-peri-sysreg
     then:
       required:
         - clocks

--=20
2.47.3



