Return-Path: <devicetree+bounces-217066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 91572B56C3D
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 22:44:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF1E47A27D9
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 20:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6372DC32B;
	Sun, 14 Sep 2025 20:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b="PRuwwEqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4317.protonmail.ch (mail-4317.protonmail.ch [185.70.43.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EE91D8E10
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 20:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882638; cv=none; b=pewcSx26Ds5I2ex6SDM39jFrCit6hclQDuynFA+ElQmcoINEKmL+neth7i1a6OGk8Z1r4uSdxiIBjTzHj9iUPgTUEMTps08DKFGkb2wUBbl1GRWKUAhouP2gTd0JFy9dAotVsseOx4B9woOx6sU3yQIqtZSCTOs6kXIYOdeKCAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882638; c=relaxed/simple;
	bh=TAnyXWlU5WvJC9PvLxVyk4gln6IzUe8585A85zP4Ykc=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=rIwU6qBBADv8A/lRmgBlpAzl+6AovqpavFAlSzSVYwdrftFkqvULsBQjkaw4gNp2qnbMqyiIt95K/38eCIJxcFHu0fZ7RxHcmqdRVhFwBZAfbcvcVBl/wSC5J7EESJe2Jk1Lxjy6MoMPOfkw3STDBBC1/DQOgvO6TE7q6SqUpWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro; spf=pass smtp.mailfrom=chimac.ro; dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b=PRuwwEqa; arc=none smtp.client-ip=185.70.43.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chimac.ro
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chimac.ro;
	s=protonmail; t=1757882633; x=1758141833;
	bh=48IVj5CqlyL/NG9D8QI6HlBHg921K6RZAXGHFBjc8Ec=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=PRuwwEqat2/bq4H/qR19mTbOp2JpcbAyiNXaeyACK4uBTDamAJzizfLCscIL3l8pV
	 Kj/1qUGyu5RHw/9rDv6TU1Q3Fdtx6ZpX92iXIvDqkBzHY7RBnoE6aAXRRRbcv0+V40
	 Kpw6GRaOX1nTsCbsIcJS0xARegl0P07a8JopJCP0E+JQdq/IHKDLLxOjly4EY6eLRc
	 3wS+SmJsx/gDQE7wyhhqS5jgEahnWC2HcemkLPr0N4aeYJBYAHaiviwSHH/emaZzMw
	 r268HycMr5wZwR1JfXFC94rutAQ/ve3Ouoowb7Vqo3nzPARTTp2w4COj4jjeeIrlS4
	 1WrFPEiR5Q11g==
Date: Sun, 14 Sep 2025 20:43:47 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>
From: Alexandru Chimac <alex@chimac.ro>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, Alexandru Chimac <alex@chimac.ro>
Subject: [PATCH 0/3] arm64: dts: exynos: Add initial support for Exynos9610
Message-ID: <20250914-exynos9610-devicetree-v1-0-2000fc3bbe0b@chimac.ro>
Feedback-ID: 139133584:user:proton
X-Pm-Message-ID: c4ef3fb25bbc20795872882f29db89dd9add1fbf
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

This patchset adds device trees for Exynos9610 and Galaxy Tab S6 Lite (2020=
).
The primary method to boot mainline is currently via uniLoader (at github.c=
om/ivoszbg/uniLoader).

This patchset depends on the following ones being merged:
 - 20250914-exynos9610-pinctrl-b44cdfaeeed1
 - 20250914-exynos9610-chipid-b7c1600dbb92

Signed-off-by: Alexandru Chimac <alex@chimac.ro>
---
Alexandru Chimac (3):
      dt-bindings: arm: samsung: Document gta4xl board binding
      arm64: dts: exynos: Add initial support for the Exynos9610 SoC
      arm64: dts: exynos: Add initial support for Samsung Galaxy Tab S6 Lit=
e (gta4xl)

 .../bindings/arm/samsung/samsung-boards.yaml       |    6 +
 arch/arm64/boot/dts/exynos/Makefile                |    1 +
 arch/arm64/boot/dts/exynos/exynos9610-gta4xl.dts   |   97 ++
 arch/arm64/boot/dts/exynos/exynos9610-pinctrl.dtsi | 1180 ++++++++++++++++=
++++
 arch/arm64/boot/dts/exynos/exynos9610.dtsi         |  263 +++++
 5 files changed, 1547 insertions(+)
---
base-commit: 48c4c0b684f394721b7db809e1cc282fccdb33da
change-id: 20250914-exynos9610-devicetree-221da550773a
prerequisite-message-id: <20250914-exynos9610-chipid-v1-0-ade99e09a23c@chim=
ac.ro>
prerequisite-patch-id: eb6590750a81953810a2f29d48131b5da055a2ed
prerequisite-patch-id: 11416958919ddfe096ba3a7c866173ee0b288fe3
prerequisite-message-id: <20250914-exynos9610-pinctrl-v1-0-90eda0c8fa03@chi=
mac.ro>
prerequisite-patch-id: 27e949ada132a43ba3dbf880af3e6168ec94eaf9
prerequisite-patch-id: f446d396d0258709db47aef69e68821eb72582dc
prerequisite-patch-id: e3bf016be9509ee79beb3d51907ef6cd58fb98b1

Best regards,
--=20
Alexandru Chimac <alex@chimac.ro>



