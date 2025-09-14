Return-Path: <devicetree+bounces-217033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 440F3B56B9F
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 21:32:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D34F1189CEFE
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 19:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C7C2DA768;
	Sun, 14 Sep 2025 19:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b="gXao383x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4317.protonmail.ch (mail-4317.protonmail.ch [185.70.43.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BE199EAD
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 19:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757878344; cv=none; b=uRM6xgg5rOk3EX23fuDLsXIvFH8jbJghNSRERIVrPNNX3GsVvv/kkCu4wn9dcTsv1gd75yeJcymckyCZVfbDShvsszuRms9pymKtSqXbd5dodA+2o3vcyiw4Xd2JZcbIR/zaUDeEaeJ8SIHERCSQBimlC0DYMcmMS95DR94OQL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757878344; c=relaxed/simple;
	bh=F//VEGGKQ4dySAaUx/MMsnPS7gqkPc0NM8iIn0Frh7c=;
	h=Date:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tOPo8corNlwJQhjleAQK7LV1dAtM0xI9Z0hZ/3vFw65ObSPBJn1/3rFfeJbnucW5QuOgPBQctZt9eYdLNZ8IP22DB2gFyKVZYQzS22tEJV4O7TGJJNifqTdMk0sh0RCAmg+9nChWmb58cpE6Oa4yEjzHb2CXfmVi8W9uF4aTWQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro; spf=pass smtp.mailfrom=chimac.ro; dkim=pass (2048-bit key) header.d=chimac.ro header.i=@chimac.ro header.b=gXao383x; arc=none smtp.client-ip=185.70.43.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=chimac.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chimac.ro
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chimac.ro;
	s=protonmail; t=1757878341; x=1758137541;
	bh=E+xJKNk5JY17fob/Z1mGipjlu1Tw15TGNfmIUUFMZBc=;
	h=Date:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=gXao383xk7fjYBT67g/PLUCf6irVEJ9539qVlupirI0g4wONNTbq60BkmwDmNj9TH
	 QI/pmfrhRjKai5tsdD9cUtUnJIyu+y148wAIUDxpQqQTxTAgQ6xDVCZQfNLTO56Lpk
	 2WCxZs6y85aJgX6XiToWgb5vsgXpVWllkwMRAZCTmS8r6WJorVoC21xBcOLDhWixAP
	 wWznj7+Ef2T+FKfIRc7XqyIupaA5X7pf7iR40sPijMicR9ELuURy3+RIqTUyr2lVPq
	 VmTg2h3BOnBRDOGi4u4q3oJum81esx/4etJZ0pJv+T5PwaTg6YEICzoGbzi2vVRllH
	 UX3l7sQDX7dpA==
Date: Sun, 14 Sep 2025 19:32:15 +0000
From: Alexandru Chimac <alex@chimac.ro>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexandru Chimac <alex@chimac.ro>
Subject: [PATCH 2/3] dt-bindings: pinctrl: samsung: Add exynos9610-wakeup-eint node
Message-ID: <20250914-exynos9610-pinctrl-v1-2-5b877e9bc982@chimac.ro>
In-Reply-To: <20250914-exynos9610-pinctrl-v1-0-5b877e9bc982@chimac.ro>
References: <20250914-exynos9610-pinctrl-v1-0-5b877e9bc982@chimac.ro>
Feedback-ID: 139133584:user:proton
X-Pm-Message-ID: a090441a71998982351ba0324502188b33cb6651
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add a dedicated compatible for the exynos9610-wakeup-eint node,
which is compatbile with Exynos850's implementation (and the
Exynos7 fallback).

Signed-off-by: Alexandru Chimac <alex@chimac.ro>
---
 .../devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml   | =
2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wake=
up-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinct=
rl-wakeup-interrupt.yaml
index 0da6d69f599171b6946992c036f23c5dea17bd0d..fe06c0d2734960d3fe57783c1c5=
28f58fa297c57 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-inte=
rrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-inte=
rrupt.yaml
@@ -49,6 +49,7 @@ properties:
           - enum:
               - google,gs101-wakeup-eint
               - samsung,exynos2200-wakeup-eint
+              - samsung,exynos9610-wakeup-eint
               - samsung,exynos9810-wakeup-eint
               - samsung,exynos990-wakeup-eint
               - samsung,exynosautov9-wakeup-eint
@@ -123,6 +124,7 @@ allOf:
           contains:
             enum:
               - samsung,exynos850-wakeup-eint
+              - samsung,exynos9610-wakeup-eint
               - samsung,exynosautov920-wakeup-eint
     then:
       properties:

--=20
2.47.3



