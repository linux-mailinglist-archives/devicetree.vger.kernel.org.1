Return-Path: <devicetree+bounces-251065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 713C1CEE5C8
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 12:31:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25116300BB95
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 11:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41582F5319;
	Fri,  2 Jan 2026 11:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b="j5kWh/o+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4323.protonmail.ch (mail-4323.protonmail.ch [185.70.43.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC2C2EBDFA;
	Fri,  2 Jan 2026 11:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767353396; cv=none; b=sECc/KFFfOz0DFBdxcxv/9dUv+iKPSCmiYe2iPkI2xYAXUMP84DFgUF2PR95PlkV2hvVjo/yRE+thRe2WIhWAD6qxNvvIXg3cKLuUzXh+de0Fkvhh4CMVBhtyzjboinM8xlhMURgRA0ICnuWEmNRsHYMtBAHwzPHsPTAQ+5G+Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767353396; c=relaxed/simple;
	bh=qzuDAQL6ncaR+g778ifbBHl2XeBed/a8pCB6zp6QPt8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E31gsoAZC4bR37aXCFuLDnx1AqDUmYaW//Ns2MzjqZsM5HlbfjUJlhct/tlBFS+IR6oKN7DciBPZOd/nUa/DxCwwZ6l1atUejBBgppgCwTygwsu5TXQWtw72+z8DUvN6Iy8RneW7ZEDdRlOaj0IDt7yp7IUrUJVez85H7bWxW/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro; spf=pass smtp.mailfrom=chimac.ro; dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b=j5kWh/o+; arc=none smtp.client-ip=185.70.43.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chimac.ro
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chimac.ro;
	s=protonmail2; t=1767353387; x=1767612587;
	bh=U84g9CNDZRq+0bG0puOFpJgmnKLOVSi6/RBHeipEFfo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=j5kWh/o+0+T62O1HHPuRKqTlWBnZ7T1/yY1NPTZoOWijpYTvujeB1OOaGqdIRTnyP
	 NPL12A+T3OHyLNzV/WHoCsEnqcoSa3WSydSIH3ynL0f5ltGm0IByP38YB/Ye7PZ4O2
	 rjoF2JIgepgFXGR0LrQvyuDsnc6weI7XdGA374ikfVm0CMTU12B37ox0DyXfH1GhMl
	 O77lyvR4DHHKm8ekhaFhyAq+0inHeZDxLZ9Alj2QugYEzWspr8YfXnBDgBfguwxsTw
	 zE0WJFpPj7PvnUd7RpPcC3zKfoUtc67+qrOBQBi+4PMt33FWVJmrLulCQ7BEIFhUN+
	 vSQsttuXzlFiA==
Date: Fri, 02 Jan 2026 11:29:40 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>
From: Alexandru Chimac <alex@chimac.ro>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexandru Chimac <alex@chimac.ro>
Subject: [PATCH v3 1/3] dt-bindings: pinctrl: samsung: Add exynos9610-pinctrl compatible
Message-ID: <20260102-exynos9610-pinctrl-v3-1-3f21f2cfb651@chimac.ro>
In-Reply-To: <20260102-exynos9610-pinctrl-v3-0-3f21f2cfb651@chimac.ro>
References: <20260102-exynos9610-pinctrl-v3-0-3f21f2cfb651@chimac.ro>
Feedback-ID: 139133584:user:proton
X-Pm-Message-ID: e38b12d8d708fa3d0c650eecc1e5645b0f2af9fd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Document pin controller support on Exynos9610-series SoCs.

Signed-off-by: Alexandru Chimac <alex@chimac.ro>
---
 Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml=
 b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index ddc5e2efff21..7b006009ca0e 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -55,6 +55,7 @@ properties:
       - samsung,exynos850-pinctrl
       - samsung,exynos8890-pinctrl
       - samsung,exynos8895-pinctrl
+      - samsung,exynos9610-pinctrl
       - samsung,exynos9810-pinctrl
       - samsung,exynos990-pinctrl
       - samsung,exynosautov9-pinctrl

--=20
2.51.0



