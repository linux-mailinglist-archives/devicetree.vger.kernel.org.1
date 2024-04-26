Return-Path: <devicetree+bounces-62955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD308B33FF
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 11:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B8AE284615
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0D913EFEE;
	Fri, 26 Apr 2024 09:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="Mx0eGEJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAAA13E8AE
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 09:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714123790; cv=none; b=IIbfnJpvxBPRxd9tvzEoVLTq6KJRxk2Oa4I3qX1Mz7oB1NPQJCqpV8su1dVMp8LhCynQTZUovpxaCaMu/s02fGXUub8WNVcY6QfN/P3eJcJTlmDRwTzVo20pLlYxELg7f6vzdVBG182DL5Z6JRln1f9eT5iSKNwNuaJEOeVKBxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714123790; c=relaxed/simple;
	bh=//JbgZIN5eANcv7g5vxwtcD1t2hO+SxCxCUYY82lA5c=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GdauNJlJaIEJP1iBhOUaMUXpPAx21DIyDqz5H3rQ5fHjdu9nPZE0KWA8UG6RO8btcce5fOx8zaotPvlz153hQJa4URDd+yOGe85YG2GKpOVpapahf2Dxlt/c4JP1pfvPU2GSmIR8lE0wZRl0Wsl1GjZyF49I1qkCF30FAOZmTNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=Mx0eGEJe; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1714123785; x=1714382985;
	bh=fybKVaKmnUC3dUBy4JewKRS5M3R47IsoL2CFDwlfp3o=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Mx0eGEJe+h+Xtr/Ey/xqJsEFoyfzQHbxg7UrnPDWc86VPcbd9EXiHReASIp52owqa
	 U7GUzcuCx5WVIjF5as/B6TZt87/S4NzOn4ntJPR9eO5uea2Nl70YVoWvFfIK8orVXv
	 Vlf1gOYZ/EOJiBaw6i57bqGL+t79RpE0IcKPbDbW4eNWdnOBJ+me1Gpgzrx7J8lTvO
	 18WI8ex/S4kZtiLMbd8C5Vb1r+pV6wANCz571tlSyB8FJDmVv2Jzz1C0CrFb9NFhHm
	 saESE6mg3NnpXeF1nTV3Vur/K826po8/9j4EvjuKoX7RgvuD+5iD3DYNvVq4Lm8mCK
	 vV6hfgnvCqsOw==
Date: Fri, 26 Apr 2024 09:29:41 +0000
To: Hans de Goede <hdegoede@redhat.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
From: James McGregor <jamcgregor@protonmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: [PATCH v2 1/2] dt-bindings: input: sun4i-lradc-keys: Add H616 compatible
Message-ID: <20240426092924.15489-2-jamcgregor@protonmail.com>
In-Reply-To: <20240426092924.15489-1-jamcgregor@protonmail.com>
References: <20240426092924.15489-1-jamcgregor@protonmail.com>
Feedback-ID: 83670259:user:proton
X-Pm-Message-ID: 83c881e8b3b3daa2d68e189fcdf822d5184f637b
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The Allwinner H616 SoC has an LRADC which is compatible with the
versions in existing SoCs.
Add a compatible string for H616, with the R329 fallback. This is the
same as the D1, so put them into an enum.

Signed-off-by: James McGregor <jamcgregor@protonmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/input/allwinner,sun4i-a10-lradc-keys.yaml        | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lr=
adc-keys.yaml b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10=
-lradc-keys.yaml
index c384bf0bb25d..6bdb8040be65 100644
--- a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-key=
s.yaml
+++ b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-key=
s.yaml
@@ -22,7 +22,9 @@ properties:
           - const: allwinner,sun8i-a83t-r-lradc
       - const: allwinner,sun50i-r329-lradc
       - items:
-          - const: allwinner,sun20i-d1-lradc
+          - enum:
+              - allwinner,sun50i-h616-lradc
+              - allwinner,sun20i-d1-lradc
           - const: allwinner,sun50i-r329-lradc
=20
   reg:
--=20
2.34.1



