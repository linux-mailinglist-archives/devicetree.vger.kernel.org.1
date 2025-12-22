Return-Path: <devicetree+bounces-248833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBF9CD6188
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 843BD3074815
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77DA2D73B2;
	Mon, 22 Dec 2025 13:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Jri1Fn48"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226932C11E2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408827; cv=none; b=KeYqvwcrVf1aeW+fC1LLYFdYx0YmXMpqFeIyEkjh7WIUHawXUjs44UcubkXDKNq189j6PVItOmcVAv0U4ae25X1RGVMP6/I4Y3T7bkBzhhkNwiD2TyIhPO8be6mODoWhn/CP6RgrIvhOATrJYHLk2e6r5iTvrocm6srbuPdBSb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408827; c=relaxed/simple;
	bh=NeEncG39DCyrTFRCfu6Y0tdsxFc/enlLbR5vGWFwB2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hlcgM3d0Md0vbafzZ4Sta5rBEFbJpLFwrc1senSlBovl7bIJJHziPlpFlQm4S93VWRqxYQZKt9jo+E2/QlL3AU9pmTp42u4Dk4QjW5tVSv+Qh00JUNJGb9aATYTNkpUJ2bkdPV8Ut8WcVEt30QBT86woeKzZMedWaI4+VOte3gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Jri1Fn48; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7f0db5700b2so3574007b3a.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408825; x=1767013625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WjWQje/nveRZYVRefE1HPRIex4imNRc+7jk18aMfa5I=;
        b=Jri1Fn48vqm3huPmFAl3NwDVrn01wjQwqOUL7Zdc+uKrne8esq9yVVtnSpmeqxtqyR
         lrSFNtkYFwU34rTLWucyMhXutuvA1YCOtasB4ygA/AdmDVk5iZsPE9Zr8hvk67EQ9GsC
         pDHkA/aN0WFA/npFikuOoboXt15xBN3yITj46qGjbSmF3oTUnLPEAs9Ig9NGG7OeP1xa
         TWJ7hN2sM8IX3bfrKb2nId+8QzUXpvuTJLjn5Iw6H8lhgHPPuHSewylI0Gc0qs7zM/Pk
         O1RUsFe4+bVHX8CK3eB4Bw8iUypT2H4oKQvdgrW2rp2ColcQjQw9YW2OLHRmrxvUIlP8
         fzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408825; x=1767013625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WjWQje/nveRZYVRefE1HPRIex4imNRc+7jk18aMfa5I=;
        b=tvp/GrLqBCXsTTL+Oj/rHdTRoZ+kkogqv+SErQeZKJjS/eqv9oka+Xv7J4YvLu8Sso
         pY18NsmCHZ8vWf7qNb+crsvE9a7V/5DXvAZijppGtRep2qLRN9vR0in+H5rwQRJP/eYY
         egIGyL8bbL9RtKSkrWu9ze5vowpJns1dqY0DGdOA6A/8TbjtMCupr4q2oYxUAoh/PVDm
         tzrEPtAsOOgqgv9T00T0WwbS7PYwRFJdX2V5OSOTbNvisQKPkTfx87g66a5EewVvBkAP
         r+EZmQEE5rAQBQT3ucZrZaK8aP+4On/14aV/SQfYpScKAfMssXi7Ai4hOlRBaGjVDNNJ
         V3Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWZflGhXxBQFxljDrdNRr/QORLctLyGHkdq37ZZc+Yl5sDuBnrD2IvNcdoiIbDfE4aTduZcc7my5mlv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8oxr34JWCMLmYwLH+QS0fx1MpL45rlAXtdfCx4Lcs3HCGR5HR
	o1eU9Hd2DMXJRJ68WoNxa+YyvQlLwmsz5GSHa2zNERa0lJowwNafO4F4b3AI3953QeQ=
X-Gm-Gg: AY/fxX5uMep9dG6UbMi5JySufheZKRNAiiH9Hemg3ZoZu2GLbloiduPI8J/3ovGoY+B
	gI90ANb2JuGDeAH15mKyDd4ITUZve85xc7D69t902YBAMRO4+1PzAgY/JHtwK1C//vKVxavia7m
	f3VMypLFJH7/+SAOMfjYBIw8kQl8GtQi27DhqtAlcFXxpxMmvS0LuXmMEnwhzo7BejAoX8pk0VX
	kUVjo7Ylii7dw8HYNxoRPJjhOFbGQTgeEfCX/zig+7V6jFkShjoOudj+b08SCQs+dAHylqRHw1V
	z/aB+yl5ZZU8FSR4FJxIJbnTtaFsW5CD+TnnLXucilUSAbEES+4F/yLk/9ahdAZB7H4hbmDUF+p
	6gdkBCyYN8nmOAQg2OaX7YegdEn4PDYynrzW9Thpr8Us9KoFxsxIYxfYG6+GG8tp2Aq4MalbGHU
	y7Zmu+XiEY+a289TvJ20nbOOzkMu6Zneg=
X-Google-Smtp-Source: AGHT+IEj6B/u6xigsQCz/iBhHquF+WSZt9ninqdaMIjKJZ5tbUeL4Vlu+cYsAEqQxRTbHzVXks71pA==
X-Received: by 2002:a05:6a20:918c:b0:334:a681:389c with SMTP id adf61e73a8af0-376a81e2a6dmr9033482637.15.1766408825385;
        Mon, 22 Dec 2025 05:07:05 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:07:05 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:14 +0800
Subject: [PATCH v2 04/13] dt-bindings: interrupt-controller: add SpacemiT
 K3 IMSIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-4-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add compatible string for SpacemiT K3 IMSIC.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Fix the order to keep things alphabetically.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
index c23b5c09fdb90baccece03708f4a381084b22049..feec122bddde1f82cbd29b8f3597d6af1a16cb23 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
@@ -48,6 +48,7 @@ properties:
     items:
       - enum:
           - qemu,imsics
+          - spacemit,k3-imsics
       - const: riscv,imsics
 
   reg:

-- 
2.43.0


