Return-Path: <devicetree+bounces-253288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDFED0A479
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AE5031D12B2
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C138435C193;
	Fri,  9 Jan 2026 12:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jk8xlc0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B761328B5F
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963097; cv=none; b=OcHN2HJuQRRUlgOHP2w3fYpUisqk1/+m3VPpB3i4CXZYFaMXe/oLbn0sFWhuaSqHp3mZAhMX3fcXbUDf8JllbF4WxroRtg4y1QlPjUDMmR4efCOTn55y59BU6N0THq+iFNglpoUpLF52hBbPPBWpe2W+XJsGEwKF45xOuJHpYiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963097; c=relaxed/simple;
	bh=oMqnKCGvM2MOVWH2H/4ovRIEzkEUK6rGC/U26bZ5M68=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kuEn7IHVq64/MjlXFLvB8JitsriJkDPlzk4X2fLxRxk+wDijBo4aMsepq9o1omCcyH5k8cKB9NjTHF6QRyGtLrgVK2U5zXnAWlpQatQROyjohFwoFEVMyWLhVNNR+c1qZKjEU3dKT6ckCjqKF4DVYP9IPLe1tVvlG6DMkaxp/oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jk8xlc0m; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4327555464cso2457809f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767963091; x=1768567891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hxPhHw80SEFh8tiFPx1w4hrDq9nTnH852UAWj9JfzxM=;
        b=jk8xlc0m17tWSrwtvET7Dn6Z/FWRdnwmnrHdF9RkpmtdlrE03NyjdxygCkx0DQFsle
         c1YIhQjOZ/QsTytYGISDp4j3JXva6saOol1fehkGVu+WB4548leUuhgZdx1G1qCDnH/m
         00wGMuiqVKKQIkLV1apx+UuYnnxyzVIbc2Dn9gB7fEeytd0CkJkWYT1uKT5cYzKKdzwv
         yZ8WETZrP1qOSXtCsy28KjUSFBPyblGyGmk3ILo93Bv1qxTN+EU76tPIbc0zyap76Un3
         aPDNkeTijC2CJk4ZUvAF3tjs2lVWtVaTPhjZJMATI6WXZG4YjgNWUfZizwRk4qdbEnK1
         z48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963091; x=1768567891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hxPhHw80SEFh8tiFPx1w4hrDq9nTnH852UAWj9JfzxM=;
        b=HyukC64WJlrN7EgdpsUz9WramTwDmwBvVsCP73EBVTngf8sHj4C85wumJIv4yR6yud
         +mdKbvC71G1TkL77ISnWsF7vyMJeDUy2FPuZLL9+A64ph/miXyYI2phjOlzbnIPG0rIr
         Kbe2GowCLLxAZjeIAer9N3r2nzhex8j4fLi0W8AEFyAvlMPCbSwwd9YFEBiFQKY+CKF8
         hMqMdLS9kalGftsP4nx0yKdvFMnhW4nFww3Ck/pSLB5lPDbYCLdoT8aUTwCqds6X93DL
         ULWfr33MAEueHKidlUXbvFCO8B5fSJJ68DWo/6402R5JawVKdelQ35cEyuU/yBUJ9oZk
         7HHw==
X-Forwarded-Encrypted: i=1; AJvYcCW5tvnNqv0ztbJv6hxVdiXRzeInw+mDS+XJFt7GLmhu7njIaIQFipQM5yc1zUP9bIREmLMAiBRQY/el@vger.kernel.org
X-Gm-Message-State: AOJu0YwOVFN6Bn1Zc0WenRgxVs73sVz3pMHJ3EweSh/uyfa8BSosVtFS
	u8aBzrOlWkPiyzKRzjgYcYgiEwcg6xmEIoz0DY1lkJ2Tabtq5mhg+TV3
X-Gm-Gg: AY/fxX46PNAPcUfhMivZ2W7HYHG61KOgZLEApO9Yq157ePDySUkA/59ZrzVIP6AAmGJ
	jPIPsSw/3rveshSrAnG2zKtoL5vM+1yTht3ZGBKeeN3DoYqaDib0g5xnsMEL3qvmMnJ/mGLuoJh
	QBPfYqHheCHGKLFrPbushw/9lrO2FADa3JC0nd3+hCeI9gR+D+LRq5NzejfgV2du87IbLopkHmk
	Fo5NCvANI/ms1OfQrqspqOnb9UogCpBZqUyREQGKPBu7oRhUiW8rwb2yl7LclDgU3U7cvZvVCBq
	b70LFvuJ7DNQ0mdSbFJhD/TibMt15NBtgLDU09jhGDhGdSW9KcvSLSEzSKuCigE4qqtxUlSBid6
	ZW90zkQdSqDFid3xB7L7cPskKdCu39jKiZsnj3GmKJfpyUSqpA1MxCM7CQCwjq4O7QAoHaXlph0
	oS3msEUjmdlsnungEyGw0FUYaLQnPG2UBbGbtFA8fLQZzcJmU0PI1Hp/XR7YUOGjY4z7kzvBjcn
	T8Eet6ew+KLQDCxCqCrKq0=
X-Google-Smtp-Source: AGHT+IFm+Lt3i21xsuQCozdlJluIaSR7hDnRRWusnsKqhRZsf5JKbN09iM9dYvvrnTqLDhayJrBm9A==
X-Received: by 2002:a05:6000:18a6:b0:431:2b2:9629 with SMTP id ffacd0b85a97d-432c37a6c08mr11093766f8f.51.1767963091223;
        Fri, 09 Jan 2026 04:51:31 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3d06:ce2:401e:8cb8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dad8bsm22837291f8f.8.2026.01.09.04.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:51:30 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 0/4] Add CANFD support to R9A09G056/057/077/087 SoCs
Date: Fri,  9 Jan 2026 12:51:24 +0000
Message-ID: <20260109125128.2474156-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

v2->v3:
- Updated commit message to clarify that reset-names existed previously
  but was dropped for patch 1/4.
- Grouped single compatible entries into an enum in patch 3/4.
- Updated commit message about disallowing reset-names property
  for patch 3/4.
- Added Acked-by and Reviewed-by tags.

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

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 62 +++++++++++++++----
 drivers/net/can/rcar/rcar_canfd.c             | 18 ++++++
 2 files changed, 67 insertions(+), 13 deletions(-)

-- 
2.52.0


