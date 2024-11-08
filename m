Return-Path: <devicetree+bounces-120176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D90699C1B2B
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90C471F23839
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D593A1E633C;
	Fri,  8 Nov 2024 10:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JMUOky6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA2A1E5719
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063019; cv=none; b=llScWu31dejHxRNjxJ0+qGjltoD3VQRNllm8WNwRcR1hvPHqe+UlfrgfdsHwE0S9JBL5KNN+YZVzYUpTgKOcccyQSyM8ZHLSQ+ayuwmTAcKMsy/aX0HmUyXPdOy7mrWJ6vAaF0aTXQrvlLZlVT0Mqc6rRnwgzunGliaZW9WxPa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063019; c=relaxed/simple;
	bh=G6w9SU/JyPHNM+uECWSJTLvFRR12Nj03dy5VFwcn+fE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VRMJY79jfPWPBCtck93PhB2Qf6lylgbwIvzfk02V+6nVsOB92gCFnqKd5mOBdukG4qk/5b4IEdPF7XrE0Mj9WJ78y/58JuevlkVWU3El/axc/u8rL4s31qFGOL820iKxKc/G240Idqu+3rAIm1b2ZbSmg6J5F2NROoKQHOHc600=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JMUOky6S; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a7aa086b077so268788766b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063016; x=1731667816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vTliOjC8o47muw2PXFdZ4DeFAQHj/4JtsrXTotLewwM=;
        b=JMUOky6Si7BteOAMJo3Mi0Y44XpWhzXYDI2halQy0dLiuyxXXLb8GuPfKrOOittzvo
         Sdp+mExdujlkayFWLoyfSWgl7g04ky/cUWOC8JKYZAOIlaFRS7Vv+it3JXQGRxuPefiu
         Rx9uiok87Mmfx8ZB2fTVJ6u1FWg2EQXv86nkdE64zIX4xQtQXwBghc1d899zevw7erR5
         plcvEiS9UEGmdf/aPaH3r505RxssssHpyYTiPOqDgnVmUGOanNosEAz8fH0fUVnUf2NT
         AU2nuoDtKMPMHpHUbhDHlg5Sw+m0nPhs8k0ktwBp4Q6+vQbBRJKZAELvOzAMqAGx/SAD
         I9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063016; x=1731667816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vTliOjC8o47muw2PXFdZ4DeFAQHj/4JtsrXTotLewwM=;
        b=fXZvFskH7UZuMgI0i7kgqHEgxaNdL3cudX/NfPOAhXdYavKkj6VeXph2cLeCwmxOHW
         XprGcaWVCdwjzIfLsGQP1rIgdn9qBsQ3d0I8FpFDjzoqdoDIvD0tYpnckT9Xc0K9jpPs
         9auF+DAypexpbRLFTFKHrYsaFvBhC402phn5h+Q/WyfvNoNIcPZnsxqIbMHbmvWhIeOH
         NjV0evgWR/Yxp3zthh3MItoJ7qsaWioh211o2dcSdqm/xzmQfvMbvRxCwnhoYNr0VJ/7
         4QtDeG53bsSda8KQedke+qudHk4d3XZFKIalydgKLaXBEThSf/8Uy889AxyVwJ4VDDSI
         x4GQ==
X-Forwarded-Encrypted: i=1; AJvYcCULkdMuKs7/5A72v2ZA2SNEqaJwY7faI2VQuFUitvBYTW6uMWjjG6Whj3zH7j0Kj7SXP6n9A0dVeZkD@vger.kernel.org
X-Gm-Message-State: AOJu0YzkRYa7iA8X17lXQjb0i8tyMs+tm/DhSixubn72x5Aj7/sXyZNl
	XxUQKWW5biCVYzgmyoIKhDNJf/H6qjCFdt0GFgd3oJk8ExM4/8nJMPxch/3CS34=
X-Google-Smtp-Source: AGHT+IHBudDnUY5c/ccRKDOgI0Wk4Gwcz9Ak4iZWC2EMYNOBaQ417ZT6U7DBOFMInbbrD3TDu5MuIA==
X-Received: by 2002:a17:907:3ea3:b0:a9a:3fd8:9c95 with SMTP id a640c23a62f3a-a9eefff131fmr192652766b.47.1731063016457;
        Fri, 08 Nov 2024 02:50:16 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:15 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/25] dt-bindings: clock: versaclock3: Document 5L35023 Versa3 clock generator
Date: Fri,  8 Nov 2024 12:49:36 +0200
Message-Id: <20241108104958.2931943-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There are some differences b/w 5L35023 and 5P35023 Versa3 clock
generator variants but the same driver could be used with minimal
adjustments. The identified differences are PLL2 Fvco, the clock sel
bit for SE2 clock and different default values for some registers.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 Documentation/devicetree/bindings/clock/renesas,5p35023.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml b/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
index 42b6f80613f3..162d38035188 100644
--- a/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,5p35023.yaml
@@ -31,6 +31,7 @@ description: |
 properties:
   compatible:
     enum:
+      - renesas,5l35023
       - renesas,5p35023
 
   reg:
-- 
2.39.2


