Return-Path: <devicetree+bounces-250490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E66C5CE997C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:58:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE655301DE25
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D5F2E9ED8;
	Tue, 30 Dec 2025 11:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="baiuzfF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1452EB5A1
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095899; cv=none; b=SSa8HVP3IejyF8S/4EJKP5/Hm/axwGiIfBv/jgSyUMMhBNv2lLXJn0oirg3VLXfGy0fsR3cHQ9at9e9Da3NaGUGAhU/FRh4e+Ht6Kow6ybcE+F5gZdGfnCxwTYfpA8+xW99QTtq/WhAZ8vALUOXafmHg663RrcP815dFnbwEtvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095899; c=relaxed/simple;
	bh=d+2xPnB7dGcuqosjk+/+C48fm/uyvYVZTjvqvtwvvhI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oWL2xmwyKZj4GwNBG+m7F7jN3LgSsW2euiKJnZw+Gc0S3o0szoDSEKhqj9IMBMFG6X8ReeiwQypeDjwEn31YFxga3oYVWUjJ6clJxs7mKTpt1+q+RNY8UyxHNX/OxNdNG65FsEJR3+LFG/c4bwz3QKfOwkhVHYOggLaV2vzzfa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=baiuzfF3; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477aa218f20so60775165e9.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767095896; x=1767700696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W0jaMee74R6Jd9SG5nA70iiwro5sWea56YIglMn+Zr4=;
        b=baiuzfF3UU6ygGOIx9NyEzBfFfOpEOmfs+1BHCJiYrPyQQIbVuNwpJQWoW28v4+18y
         4EARyobDvE2LwiwDFKqR1S+xeaQBHlsIhzYhKSkiBKMYC47q6XiCUsQ4ejuBVs+bOzO4
         rDP7t5jY0EBH20PhusMFoiycuypUhQctd3WcftHvnEMsuFg8CPdtFJZDonRzVAcjCgab
         NArfLy3Z66//aFkkCj9oJ5J+r2W9T1MZ1iAbkO69ZyhLqZTCHWurrKTx4QDy9XAUEi1z
         iDsvZUNaGSjARUzZZa4qXQMGJ58wfeqJ7+8+cONG2yPLhJMuNGMavX3uKQG3Sh0ieRvM
         bBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767095896; x=1767700696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W0jaMee74R6Jd9SG5nA70iiwro5sWea56YIglMn+Zr4=;
        b=GXKen91Y+ezGF8yqIwUR5/pfp4L0I5SqtdtXOYNKtQEUNT2C7RWv0LBu9ZOUELPjvt
         EL+uR7pxlXhs02DBOT0Hl30O8O3sKSzN+3y6V0OLA03RHuMBGK0OYxHMepBEo1n0nCk0
         DLivtugNOXwoDGacpGGrCvoeIMvtHnDww0HIPpZ3R+V/L4F95Wg1yuKuadrlBPtyfNLd
         LO6N48NROjof5uGj66ZvgqvtC1y/Fxuhg60SabfB49xdhV+HdmTcKeZ4exGRrv8Lv3KV
         zxbfm31mOk5CRWudpDS3cI+9e11L83dPA5ZZSvCXm63utOhBxxGA1WIMSjrQfqubJrY7
         B3Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWdwq+VkOfDV2JN19qfjlhvcEElHLMPXhZKKdjGoYtFaanPJXnOgGGFZNpskxL9woCfO0Jn3Mp8WAnI@vger.kernel.org
X-Gm-Message-State: AOJu0YwPOuX/tAAawx0ffUKTPVSM45Rfc7gjg32RFmEQqoLIFg85qkRM
	42lAqcFIppnC/HWJN+IvIqXYoMh3YP9+EIb42Cs68PYxZDhkvPfDUR5t
X-Gm-Gg: AY/fxX641VTH0+dYPu0YUwjKBOR1vng7c+GavFIXomsxqqXoh3i1GR5fZswTcVkTTI3
	HcdIEahZvMMTDpkb1ReFxwKpAgj+J7gwRaWBxGDtAwa2bf366GfMBu/GvSRKPzBwVhaAKrZZiS6
	+0PpL58JkLr6prAyAjX2pgDESuT4/Fx0yv0N7MjQSefuOIPRjrudtMUFe93/ZjRGHKhnDYQkska
	nGLRy7/eiBst7izm35pcM5AJQdi/9Me4OZr41SrAa9ILIjJC1tIQ2GnNXYAGFLq7K6NKKC4cGsB
	k87+g9uyOpKcNuKu424L6FcSSwf0wm1NfEm1zveP5mydN5N/ZDEgG9t1/+CTkL1AuR1TlsEoPoN
	gibPiUqFluilBDfZSNtYNj5Ar+wJ1ojqSGMTZ2iUNgM7XRzr+FjSFaZL5BoZ3bdntk4gwi88/gA
	HlOg2mcPxfJBEontWxOpi4EfJ0HrvqzEeYjvknvsAlSGrUvlGj7IpJjcMjcZEW9jVvjmTjlSqcb
	zymGtlQHh6G0ulWdJoIfyis6Uj/E5FRptk=
X-Google-Smtp-Source: AGHT+IF+6i7CSCMBwqHi/Xt/YB4sbRzK+in76u0B0d54P5QGmXa5sdLX5u/TXPE8fZQwP1UlLp/jrw==
X-Received: by 2002:a05:6000:288b:b0:431:a50:6ea7 with SMTP id ffacd0b85a97d-4324e50685emr42413913f8f.49.1767095896306;
        Tue, 30 Dec 2025 03:58:16 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:efaa:981e:926e:8957])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm68337227f8f.35.2025.12.30.03.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 03:58:15 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/4] Add CANFD support to R9A09G056/057/077/087 SoCs
Date: Tue, 30 Dec 2025 11:58:10 +0000
Message-ID: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds CANFD support to RZ/V2H(P), RZ/V2N, RZ/T2H and
RZ/N2H SoCs.
The CANFD controller on RZ/V2H(P) and RZ/V2N SoCs is similar to the one
on RZ/G3E SoC, while the CANFD controller on RZ/T2H and RZ/N2H SoCs is
similar to R-Car Gen 4 SoCs but with some differences in terms of
number of channels and AFLPN and CFTML bits.

The patch series includes:
- Specifying reset-names for RZ/G2L and RZ/G3E CANFD controllers.
- Documenting the CANFD controller on RZ/V2H(P) and RZ/V2N SoCs.
- Documenting the CANFD controller on RZ/T2H and RZ/N2H SoCs.
- Adding RZ/T2H SoC support in the rcar_canfd driver.c file.

Note this patch series applies on top of:
https://lore.kernel.org/all/20251126155911.320563-1-biju.das.jz@bp.renesas.com/

v1->v2:
- Moved reset-names to top-level properties.

Cheers,
Prabhakar

Lad Prabhakar (4):
  dt-bindings: can: renesas,rcar-canfd: Specify reset-names
  dt-bindings: can: renesas,rcar-canfd: Document RZ/V2H(P) and RZ/V2N
    SoCs
  dt-bindings: can: renesas,rcar-canfd: Document RZ/T2H and RZ/N2H SoCs
  can: rcar_canfd: Add RZ/T2H support

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 59 +++++++++++++++----
 drivers/net/can/rcar/rcar_canfd.c             | 18 ++++++
 2 files changed, 65 insertions(+), 12 deletions(-)

-- 
2.52.0


