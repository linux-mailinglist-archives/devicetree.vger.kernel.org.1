Return-Path: <devicetree+bounces-240188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3AFC6E560
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 9C2E623FE0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DC632721B;
	Wed, 19 Nov 2025 11:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WbnzNC8t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A8986347
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763553198; cv=none; b=t6US8DIMU4Yf3ai7jTwIp5hVoqXr4sEE0xn8bwBTZ4wNYTM3ZLfUUrU2ww7pDANYQ+p0iQCQxnpTTRVMKGYeDGUTo0JeSRVc5l+JK1HjsDpNWUIdspvUJtGyVWbY0mkplmvmFPwJlyl6qNZN1TVsUZwokLGydYd8E+Rybjv3Y3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763553198; c=relaxed/simple;
	bh=sYgOih9xbGs3F3XHTRJ7fvFo+edeOEgNokHpkprwd2A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QNlsyD1TmZ6Ti8jsTyNGemPqJ4pBQOAY3CgtZGEwE/KRR3NQPYF/Cs28ZmlR+tiqSRetezzswUymlJ9Xf8NEWwM8Cl3EXQaY59wV7toSV6w3q9FCpaI7h8CSr0Fd6rSSMl7GU6/B3XWobdcfxC9Q+GGAQ6IF/RG6t/vcVIu1bqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WbnzNC8t; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso5659793b3a.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763553196; x=1764157996; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/dJIwW/N0kWg8cOXmaaT2vRpR7NNxpQwJA/W7KyM2QY=;
        b=WbnzNC8tHXlfMYKDe2YJ819xCOxAfS7hFxImkaL0disDXSXb4ovw2mYLhjlE8vVaco
         x10D51/mySLDOdFD0KSe/QCx3O39bq6Az5AqCBG0gbbotEchih1dSrCepMQH6djq3FgG
         ol04cjNk4qomrWYHeyDJ49o1RAFUW6IEZHRtk52H+ttMB0ZRHg92w6w3Xm3426iu23NG
         nouaLAaVP1HbcwNECvVL9NvT1daJKsiDfxJgHvGqt8S6shegX3Dtu+At8qzj4J+nrjyS
         aXFJ0N2Ybt0zcBTBQGGT5nihKsciSqdN32t/lg+f0rMjlyf1331RfktlI0s9neqpzX2N
         UF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763553196; x=1764157996;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/dJIwW/N0kWg8cOXmaaT2vRpR7NNxpQwJA/W7KyM2QY=;
        b=Xo5Csqs7rMv5+3JyXdeWjef+lJRnJXJztv00oobpQYo6gWdGp9A9Sblo5x3NaX6OuC
         OZdyRWt0Hc4p3iiQ1+V1BwDwCSQs4gJ2R0MP5JKoeqpv4NHW9pxF2i/RiBgpPUlhf4VX
         QQb9jsaRVxkvnNXsPZsIIF+RaT/5UunEIvzcuyAsFb+R2Sm8Q2+cNTxXDOurcLp1sgb/
         HS3B6KTI2hEP23Dv/378PoRKdQuWK1NGCzKVTajnpo4CMPtQWulaYW3cG+Odk6kld0yN
         i/Vf0YcjEwMWcvSG09UO3BiVx9PgafKd1O8+lf7hnyg5+CWHZBdDNhuoujSI/h/fhFba
         yUfw==
X-Forwarded-Encrypted: i=1; AJvYcCWlzs8jqOe5TIfPer8Nts/eKjdjgolGb4qm+7k+ULs4nx7f+0o9pNuv2Qsa+FhZt6esAfnqUczvgqJf@vger.kernel.org
X-Gm-Message-State: AOJu0YxGTL0tUiHVgToZ456UTFZeE/ARXa8a4jf7WbdSoYBl6RIPKxXn
	Wn9ltzhQIpYQDqLVFn9J4ckmiIg7rOU80tIUVEJ1WMbbmOveWFLiUyzf
X-Gm-Gg: ASbGnctKPCvdLXSmldQ1krdne/j+KRY8roYEvuEmt5BbLkca7OTt2tQuPvMUwbczglT
	k1Tp1gbPPS2jaRa7L8/Q+UDksBxFhA2fHFK4lhI7Nv05vTiCyByFomzh4AHuhCIqYbd9mHmJ9G1
	mjQ9ZFu9FzsxpuGYMRt9JcHUA7KV5kjRwu/BnGfESrQrAsH5QUg7RUKCLVtjnGJxHaqC0cQvbzo
	5cK5A/7b7k5VEHx1VAA3czMbMb7ZssSXJcKic+/+4HRywMu338/7oERKYNVN/RDScFPuXO1cvmh
	cZl1Pn0XgadGqWof4rv+74oj8grIFiScLu4CngQYrB9DGy1GJtIM33ajaFYkTL1iOzE8qOVtNi9
	4y5cS4spvGNSGQExG7vAYem8MeDN/Tpc5P1D8BGxF8WedX1C1sOusB+JF7Dn75FGZudb2oHTGwA
	nBq0/U6eR3cgPaiua0SA==
X-Google-Smtp-Source: AGHT+IEJfBQbQgtvUYdmvQBm2UrCj4dLEyRvU/IrmcWNvI430xMQUCHPm5Ptcge8YsrdP9W2nWxZkA==
X-Received: by 2002:a05:6a20:6a1e:b0:350:b8e:f99b with SMTP id adf61e73a8af0-35ba2195757mr20706141637.45.1763553196212;
        Wed, 19 Nov 2025 03:53:16 -0800 (PST)
Received: from localhost ([2408:8410:7820:651c:873:1d7e:7195:d122])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc377dadbc8sm17903908a12.36.2025.11.19.03.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:53:15 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Subject: [PATCH 0/3] i2c: spacemit: add reset support
Date: Wed, 19 Nov 2025 19:46:42 +0800
Message-Id: <20251119-i2c-k1_reset-support-v1-0-0e9e82bf9b65@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACOuHWkC/x3MXQpAUBBA4a1onk2Zi8hWJPkZTIrbDFKydzeP3
 8M5DxirsEEVPaB8icm+BVAcwbB028woYzC4xOVESYbiBlypVTY+0E7vdz2QXFFmTEU/lSmE1Ct
 Pcv/bunnfD1r01blmAAAA
X-Change-ID: 20251104-i2c-k1_reset-support-12784e17bf83
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763553189; l=680;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=sYgOih9xbGs3F3XHTRJ7fvFo+edeOEgNokHpkprwd2A=;
 b=IU3xRJcKwpUMoWT+rUcpgurcIY0Jzk1f2odi1WOayQ+0gfEARL+PNmM6B8g65taYKt+zhWcGC
 fjXVZc7Ex+oBBt1B5JeclzBIvBPoPI9A4W3sEEPVkZ6EWs87z8jBBGI
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

Add reset control to SpacemiT K1 I2C.

Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
Encrow Thorne (3):
      dt-bindings: i2c: spacemit: add optional resets
      i2c: k1: add reset support
      riscv: dts: spacemit: add reset property

 Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml |  3 +++
 arch/riscv/boot/dts/spacemit/k1.dtsi                       |  2 ++
 drivers/i2c/busses/i2c-k1.c                                | 11 +++++++++++
 3 files changed, 16 insertions(+)
---
base-commit: 8fec172c82c2b5f6f8e47ab837c1dc91ee3d1b87
change-id: 20251104-i2c-k1_reset-support-12784e17bf83

Best regards,
-- 
Encrow Thorne <jyc0019@gmail.com>


