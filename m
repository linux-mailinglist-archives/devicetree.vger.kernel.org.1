Return-Path: <devicetree+bounces-119431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5D59BE3B6
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 11:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5525288C6B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 10:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E931DDA0E;
	Wed,  6 Nov 2024 10:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="WOVov/Y6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320701DD523
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 10:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.51.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730887744; cv=none; b=FVGQNSJNjttCmcJKcAlERhVp/5ild+dzV2xaMg5r7gKc4XQbMkREGbuE/MBp1KQJqOEPbCl6nlL+L/H1PRORx09ef6d63i5NdaGsl5eOa7bKqZULAJx/Xw34YBeI7GOhgtMxFgFNtz5oakELuGCiLxO/6puh2Ybe7S7OrfUp9co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730887744; c=relaxed/simple;
	bh=lrjTMFTRxq2vHscfSpg9nn5EnVN/Jl8BAr3xcwq1MQo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oqdDn2jhps03nuOCB2RJeGzZl5XrQ4QkGWrr9bCBrvWUggf6oilAPzu95AgWuQtZMd1FMsCRZQIJOyMaQyliY8CdgtnQ86GrSxLlozgJIJNMIoYa+CULdfAG0m5OnrRGmZTiJwNecici175aAT/hIhF09cfeUxN831STdN6accA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=WOVov/Y6; arc=none smtp.client-ip=188.165.51.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1730887733; x=1731146933;
	bh=raa1QuOssjRSjAOLGufH2jaWU3a4AV7mLxX65wyZzvg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=WOVov/Y6aF9HRq20xDsRRWfHandea1OP4GE+aDpb2CpZ91hcVDlWX9TQ+dI8cIju8
	 j7QWHunfcqT3Lf2CkmBd1xahPY7MUmA7DkMaq1FDZQFBSUr8iSZiKYCmNMcrn9BGUi
	 /Y8E4kqtTT5EMjze0QB33kBGqRZQVaF928YSaoSDkUZK/W/Wvk6SJ/uNW6oQXclcTt
	 ktuLrOl2hoDwVWvtGmi43ZuY9ORs5Fgpc4QZABbYjVKNpMYN3LP+qVyaGicRELLO6t
	 hHqI+yFRrXvdQe6fJa7KdYd76LdPk35RHimceYA3RMg+kfRo12J8oX5PGrO0hMousL
	 dzwYAyfWAjWeg==
Date: Wed, 06 Nov 2024 10:08:49 +0000
To: Sean Wang <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Teng <andy.teng@mediatek.com>
From: Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Yassine Oudjana <y.oudjana@protonmail.com>, Yassine Oudjana <yassine.oudjana@gmail.com>, linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 2/7] dt-bindings: pinctrl: mediatek,mt6779-pinctrl: Improve pinctrl subnode and property descriptions
Message-ID: <20241106100741.173825-3-y.oudjana@protonmail.com>
In-Reply-To: <20241106100741.173825-1-y.oudjana@protonmail.com>
References: <20241106100741.173825-1-y.oudjana@protonmail.com>
Feedback-ID: 6882736:user:proton
X-Pm-Message-ID: f6a45456e31bec4fd61adc98755f5be4d95942ad
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Change "subnodes" to "subnode" in subnode description for better
grammatical accuracy, capitalize pinmux description, wrap all descriptions
at 80 characters, and remove literal style indicators from descriptions
that don't need their new lines preserved.

Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabor=
a.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinc=
trl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctr=
l.yaml
index 352a88d7b135e..bf8dc176553c1 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yam=
l
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yam=
l
@@ -119,11 +119,11 @@ patternProperties:
       '^pins':
         type: object
         description:
-          A pinctrl node should contain at least one subnodes representing=
 the
+          A pinctrl node should contain at least one subnode representing =
the
           pinctrl groups available on the machine. Each subnode will list =
the
-          pins it needs, and how they should be configured, with regard to=
 muxer
-          configuration, pullups, drive strength, input enable/disable and=
 input
-          schmitt.
+          pins it needs, and how they should be configured, with regard to
+          muxer configuration, pullups, drive strength, input enable/disab=
le
+          and input schmitt.
         allOf:
           - $ref: pinmux-node.yaml
           - $ref: pincfg-node.yaml
@@ -133,7 +133,8 @@ patternProperties:
             description:
               Integer array, represents gpio pin number and mux setting.
               Supported pin number and mux varies for different SoCs, and =
are
-              defined as macros in dt-bindings/pinctrl/<soc>-pinfunc.h dir=
ectly.
+              defined as macros in dt-bindings/pinctrl/<soc>-pinfunc.h
+              directly.
=20
           bias-disable: true
=20
@@ -142,7 +143,7 @@ patternProperties:
               - type: boolean
               - enum: [100, 101, 102, 103]
                 description: Pull up PUPD/R0/R1 type define value.
-            description: |
+            description:
               For normal pull up type, it is not necessary to specify R1R0
               values; When pull up type is PUPD/R0/R1, adding R1R0 defines
               will set different resistance values.
@@ -152,7 +153,7 @@ patternProperties:
               - type: boolean
               - enum: [100, 101, 102, 103]
                 description: Pull down PUPD/R0/R1 type define value.
-            description: |
+            description:
               For normal pull down type, it is not necessary to specify R1=
R0
               values; When pull down type is PUPD/R0/R1, adding R1R0 defin=
es
               will set different resistance values.
--=20
2.47.0



