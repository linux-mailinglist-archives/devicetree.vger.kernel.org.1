Return-Path: <devicetree+bounces-68819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B68CDC6C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 23:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDF4E281E68
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 21:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E719127E38;
	Thu, 23 May 2024 21:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="qUmKP9dW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4DC127E24
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 21:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716501349; cv=none; b=WU+c/60IgXfAvUEoA2Iwtx8Y5FUaD/kVzKjE0qhKstiseffHQyBLtDQ2eqJ8WHoZk+O3jw5Gw//9ltULATfNdiFWfRXRDUaKc0ln72pWq1QBgGR9aFPi05ylKkJCOr0Ybz1s6r+x2Nz9yRc/Eth/R+RewmWm34NYBew5n9ofTr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716501349; c=relaxed/simple;
	bh=HepCCdqpNeY88tgyPRPIsGR9QS/8cBw6fjssjikzE8k=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=rGd8Hr5ZDGC/Mg5R4vMpklfTuXtqCiLDsN1QvyvnXt7+K1cu8sov4MprE83ngxAzHJFGJWCYDIHexxWRlWeYLS029Myo63WTkhxRlToeIEOM8GwJJ/h2x0NLNTk4Kjd4LOvMWtvhvlOZ2S83yUuNw01ie3aL1gXqEuLWx57V6VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=qUmKP9dW; arc=none smtp.client-ip=185.70.43.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1716501338; x=1716760538;
	bh=NlkCD1YeDey8XK4H0sKSuWFZIS4qqNXsdyugi3rH1OQ=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=qUmKP9dWeKWsQdfNRD7jVq37mIWJAzHdpA53M7WlYTc1dIaISRTMrUEOdMfWbz0ZE
	 SfUmdRu/Nmv5fvbz+9dKMi2fUqnKsnhdS9kfIVWVpE3lShjWCN7VFtfiXxprEslKmy
	 497tWnyeazf51RtHV4DPweKTRtK88jMffB+9GvotNIpQ9y3+gybPXJIELBxtRtOCxj
	 uQVPzR8+4E2p4gyTMn4EDu+HAofzJNu6JICf8wlH5Z3u5Fu3ye9oRwLlD4vBGiIm66
	 8u5lovuJdsh6u3aW3sZ+kWgPrJGZo1XzIF8ivJSMYpM0WazCfsPpreiVqp6TuS4qnr
	 KxKqEDdKOsaWw==
Date: Thu, 23 May 2024 21:55:37 +0000
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Michael Zhu <michael.zhu@starfivetech.com>, Drew Fustini <drew@beagleboard.org>, "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
From: Henry Bell <dmoo_dv@protonmail.com>
Subject: [PATCH 1/2 v2] RISC-V: add Star64 board devicetree
Message-ID: <sQqtfYJc5p5nCV1CUpJC_eti56gLvmhqfMv4DY-aojB0sCARXzXRBveErmAN0spUDzvux3m5LdcmU-i4BfNDCCckVQfHLpH1QakaXdpnXuo=@protonmail.com>
Feedback-ID: 106097379:user:proton
X-Pm-Message-ID: 4b2fa140ab72f66ba1fea9950c1e30f177e2fdf2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add star64,pine64 to JH7110 compatability

Signed-off-by: Henry Bell <dmoo_dv@protonmail.com>
---

Changes since v1:

- New Commit
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Docume=
ntation/devicetree/bindings/riscv/starfive.yaml
index b672f8521949..4d5c857b3cac 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - milkv,mars
+              - pine64,star64
               - starfive,visionfive-2-v1.2a
               - starfive,visionfive-2-v1.3b
           - const: starfive,jh7110
--=20
2.44.0



