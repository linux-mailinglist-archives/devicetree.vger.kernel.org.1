Return-Path: <devicetree+bounces-216818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4DAB5630A
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:16:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BC88A04EC2
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2737F280CC9;
	Sat, 13 Sep 2025 21:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F0MHyTu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6439D27F724
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798184; cv=none; b=M1GPdP0sNkxTSR8ODb0bSxNk2SFqd1m/MJDyz6en3iJmxLKe8UtyDRmMIsIzL4UvPJvWqbtE0aPDYH0Y/Td2X45eD92DJ318vExD57WDQrsH9Uho3NzavDx7E/47AxAe8IB8EIGb+sjZTRCozVqo78jnZdLt3mUJZRWXpQipqnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798184; c=relaxed/simple;
	bh=NFuqNBQauhkiyeY7IkiHmVa5Tu4iy3YfrYEFWAqHXWU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kL0E1pbc24+DipWhvMkU9lHrkLcsbuCuOHVm/l2W15ZD3bD7EhQw6Uwq8rakkjUE/Ht2VZ3xpeSWLbsXGNdU5gPJpwquwqMrGkL0bMxwQxopDArZ0c315aB99F9e29ffTOGqlEbhFOzX7g/3uumqA1d5mdWFsMIiWY8mcc332B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F0MHyTu1; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45decc9e83dso18255715e9.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798181; x=1758402981; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FL4ZfQetDLny0SAdvUxGm2UtwwSFvWNNL5D/nGtc7bY=;
        b=F0MHyTu1koRbtMvrwPStZyfZFrUxl19Pph9yz9vhSKBfIsClaEY6dy2wmd2JmInOrz
         tvT3yonuLCce+48CuNZdDv0VBHk/QE9Qmop7iu9Te9mmklw6rdkCIeBXLefn2tHww1/W
         CkcCeMaMowrJM4LbdTanmLBsfhuqhqLCSrui4jF0j1yy9HhfCpisVNVUNyJfLEbrM7ZE
         GujZpM1lI9cjFg36oOGIzsr8QUb08Qaq1iRc7Wbwre28S97BgrZcGjPMvrh7NJsuhqbE
         +x5CBE8RM2FpOEywRBzAyFs0lpEp64BZnlgEUats7zx8/bu+aW3nZeESvZnn6HN9lNLZ
         j1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798181; x=1758402981;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FL4ZfQetDLny0SAdvUxGm2UtwwSFvWNNL5D/nGtc7bY=;
        b=xGC/hJ8cA25/7vbR/2ar4jlA289wUMpovjluOp8RqA4p+F9LnRNmWM9k2vDBD1lDyS
         LrZ8AIGtQHftrxN/5LCH0+kczqk4JPrYwOS0Tt7gCefPQeT4G1WWV48IEnwSp2jyqmcL
         TpJmN231eD3bQQVNcBMLjlHs4W4oZjU5jbCqFvanqDOlHtPxdANwLufPSAXBlcptlRST
         JJ8nIuukZwWwIJLDN4aJDyXDendiBfGjEYdyP/oLdMXfoz7cPXnvXnCwxDBOrFu1geqp
         XUq9eyakQPy4m3/bd3cTJ60MI17wAeQDbQUn/10hqtJs1G6z7WlIXpYUNbPOKZLxKpBy
         8frA==
X-Forwarded-Encrypted: i=1; AJvYcCXupktr3RcBr7HjEGoC8jtbXSDqRrbGglmWWOoExSf0QjDCDosJ7VIlnJACR6mYeyav5jVyFJjHes3d@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9m+v3OH1Q7tv0EFBOqSzTMKtVWFw610fd8MWxzf+iPo9D7Lbm
	8VbLSQa9HNHV38MPQN0P2Tpq712bXb8qRlZ5ElaOM0sZODE7CcJqunIu
X-Gm-Gg: ASbGnctfBkxqr2+17hSfqxSLElfZxzDzRV/GCREwa7JwOQKHR+QAl0g/laVBbaNYhaZ
	yJIuQDpgdH/Hguukpn4yeKrLbCMvnpDyqWSE35yQJsguvc+IaIn642H3Hfo56fQkOpaajmkylnu
	b6/pXxZZQarJD6RX0UxYFzDx4KTo9Bxhb8FeYRScKe2KxU1FcJ5hmwM9kBQhpWfkvfRKCcL72yK
	r23diFQSrEFnd1PnDf7NGStub9WB9zWqdNlNXW7k/brIrhgJ1Heki2rSclNyQzSGPu3GszW6jGo
	HAt1c2a+Aef4FGeW+Vuij2j4pdj2G27NZ8lOqiO2RoJO0P39mEOIdc6+udpm9d77iXmxTNFeh4I
	h5/SRYn0tHqRFMySE9uA66C+hLwV4xphPwKyw8hSxeQ==
X-Google-Smtp-Source: AGHT+IFSzRmP9ZjHIjUVjf8clDm3UnyBhZdE1uuyQ69zI3ytWPwOS582vzr0QJUt7Jd9hnVlvfQiDA==
X-Received: by 2002:a05:600c:6dc8:b0:45d:f88f:9304 with SMTP id 5b1f17b1804b1-45f211fbf54mr52945275e9.30.1757798180367;
        Sat, 13 Sep 2025 14:16:20 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e014ac468sm65403145e9.0.2025.09.13.14.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:16:19 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Subject: [PATCH v4 0/4] Marvell PXA1908 power domains
Date: Sat, 13 Sep 2025 23:12:47 +0200
Message-Id: <20250913-pxa1908-genpd-v4-0-55e4cf32f619@dujemihanovic.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAE/exWgC/3XOTQqDMBAF4KtI1k3JTPxLV71H6SImY02hKtoGr
 Xj3RqEg0i5m8Qbex5tYT52jnp2iiXXkXe+aOoT4EDFT6fpG3NmQGQpMRC4kbwcNSuT8RnVrOSQ
 KclskmArDQqftqHTD6l2uIVeufzbduPIelu9XSneSBy44pLFQUqjSZHi2rzs9XBjReGeOw/hmi
 +hxoyDsFQwKFToGSdaGWf8UuVXUXpFBQa2NXg4z+KXM8/wB3gylqT4BAAA=
X-Change-ID: 20250803-pxa1908-genpd-15918db5260c
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: David Wronek <david@mainlining.org>, Karel Balej <balejk@matfyz.cz>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2335;
 i=duje@dujemihanovic.xyz; s=20240706; h=from:subject:message-id;
 bh=NFuqNBQauhkiyeY7IkiHmVa5Tu4iy3YfrYEFWAqHXWU=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlH7yuF9s7vMfgZzqzvorz3b0xhim5akoa5/JqgLr07z
 okfFjh2lLIwiHExyIopsuT+d7zG+1lk6/bsZQYwc1iZQIYwcHEKwEQ2XGP477fhfNizJWKTv/lu
 9Wqbq64YNXnbHw3jVfyutnPvGS6ek8fw35+VS5k14Mck5YCvPktemd+7cvbT2UVZmf3TrVNevvH
 dwAMA
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

Hello,

This series implements support for the power domains found in Marvell's
PXA1908 SoC. The domains control power for the graphics, video and image
processors along with the DSI PHY.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
Changes in v4:
- Address maintainer comments
- Rebase on v6.17-rc5
- Link to v3: https://lore.kernel.org/r/20250829-pxa1908-genpd-v3-0-2aacaaaca271@dujemihanovic.xyz

Changes in v3:
- Move driver back to pmdomain subsystem
- Instantiate using auxiliary bus
- Small fixes and refactors
- Rebase on v6.17-rc3
- Link to v2: https://lore.kernel.org/r/20250821-pxa1908-genpd-v2-0-eba413edd526@dujemihanovic.xyz

Changes in v2:
- Move driver to clk subsystem (domains are instantiated by clock
  driver)
- Drop power controller schema
- Drop RFC prefix
- Rebase on v6.17-rc2
- Link to v1: https://lore.kernel.org/r/20250806-pxa1908-genpd-v1-0-16409309fc72@dujemihanovic.xyz

---
Duje Mihanović (4):
      dt-bindings: clock: marvell,pxa1908: Add syscon compatible to apmu
      pmdomain: marvell: Add PXA1908 power domains
      clk: mmp: pxa1908: Instantiate power driver through auxiliary bus
      arm64: dts: marvell: pxa1908: Add power domains

 .../devicetree/bindings/clock/marvell,pxa1908.yaml |  30 ++-
 MAINTAINERS                                        |   4 +
 .../marvell/mmp/pxa1908-samsung-coreprimevelte.dts |   1 +
 arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi       |   5 +-
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/mmp/Kconfig                            |  10 +
 drivers/clk/mmp/Makefile                           |   5 +-
 drivers/clk/mmp/clk-pxa1908-apmu.c                 |   7 +
 drivers/pmdomain/Kconfig                           |   1 +
 drivers/pmdomain/Makefile                          |   1 +
 drivers/pmdomain/marvell/Kconfig                   |  18 ++
 drivers/pmdomain/marvell/Makefile                  |   3 +
 .../pmdomain/marvell/pxa1908-power-controller.c    | 274 +++++++++++++++++++++
 include/dt-bindings/power/marvell,pxa1908-power.h  |  17 ++
 14 files changed, 369 insertions(+), 8 deletions(-)
---
base-commit: 76eeb9b8de9880ca38696b2fb56ac45ac0a25c6c
change-id: 20250803-pxa1908-genpd-15918db5260c

Best regards,
-- 
Duje Mihanović <duje@dujemihanovic.xyz>


