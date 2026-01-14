Return-Path: <devicetree+bounces-255127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00948D1FEE8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78643300DC8C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5307624677F;
	Wed, 14 Jan 2026 15:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BQN8X8K5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BEA2D77F7
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405531; cv=none; b=VF7UzrRkjEAR9n7g5fp5CpQO9mdtxK4XpL7eUk3JqIVipYsu7RYfRnMTefuQGRFP7dWN1nyxvvAfgqrPydnE531q8zJ01NeUf26PNBlwf6C+qqatGD6CxdKGEBxFIzTrtPXzNxrg/iHxf7M+Y+yG1Nxcj7vfhCVxymfs6FUk8M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405531; c=relaxed/simple;
	bh=Up2AstbZWFGTvOK9odG/3yJUO1giaEyY5igE6wJD6Jc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K6vj549/Yx27wfjVM1PI4T8EsZc+8zTfe0v+9IsJb8ibpqRB3M6UShaa7QJCwOf+ERmSVSnQPyTJBCAVbDtcYCFxRudfQvdULGghThhU1bw5C29QSGV7qOUSGLeZ+NoB1kciqRF0BTgmhQDg6292Kv5f5J5wtaHAZxZti32i6cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BQN8X8K5; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so55833125e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405528; x=1769010328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+KLyVPl7ef6pflNddejrx56gS9wwrDJcy0wiU6lH7IE=;
        b=BQN8X8K5oQLntQjbYTr+qhNa4mEVDEazwQOTi8zvqXTP66WodEGasnj5jA5f4v6syZ
         qcZj7ooOnq4mdp3IFHyXJnowIKriPjqvOgfYDEz0vIvtZ4DI0HtRyZOVTmRlOTXcYcCt
         f+zYcg4kuLG6ec0LtWQq1xxutTtkwEUXMvN/E2VeH1XG3UlyPgt2YUJd8lrtzXR0d49h
         2Wx0cCaHJRfEYrigIjB8pevhZ//5N8MqXaFEj87J7AWPPLM5FKUUqZwY8QnoAgUsY7XR
         N411LOXwcg5kSeYnfuXD0DlS0KZGjbZ8evhgZiuFQBycik6ms6FlParQzi1uUKfCgJ79
         gTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405528; x=1769010328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KLyVPl7ef6pflNddejrx56gS9wwrDJcy0wiU6lH7IE=;
        b=AbhR+72kSXR9lUwBxMM8DpiME6zI09S5dXXjqEk93ohd/ddFXJCP5X+jFA118BZKED
         67oD4+318nW/21EcNkGK5RuHs6cy+UYYl4pGmehk1aiR9goW3c6TU+EA+n0KfOOjwI0O
         w6u/fnpRPmoJ8eQxA1bh87zScYV4P3va/RrEPLv9XrqTktMGXBQ6Rrc8SU9pp/0BLcSH
         gm8MSHYbhrxVvfCme0/Qm0u4sLdiLUUcj0IqY6d4srY3qpaABQW3dcBOpwJ1iEYQ0Yle
         qJZIyXDhztHkPrR0O7dOzSSX33C2jcEXFt7rUNsbw0Nzk8ZqGYx5vwRmnKL7rKir5PvA
         xq9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWrblPSpbt4EzwVDUHEoK6u5t5sXHEFvWcJ4HkRQ0PuokqRgomsgL1J4KEkyI//3i8mrIBzb6Ch1hG@vger.kernel.org
X-Gm-Message-State: AOJu0YxIB7qf1DUdmoRb+C2n2jiP99NWh2VmuMEo45VUVD6b1S+Sjgrw
	0w8qf//A/xjHpxVshgSdzoPFqOqVKCCMb1yewpdl9BPkwTP1skeuZNFw
X-Gm-Gg: AY/fxX53MqpdN2AeI3zUGdfClBKpE7qWMtUhAyy+62Cs+kxD7/0ZYSN4+qXYCFQGGyJ
	b/yzt4vQMs9eRLdinKJdjeyYlfgx+DdcsUQ9MbJt63tjQRPHsZ7ECQ/iGJroJV9ocuW+b7Gls1j
	OuEICwc37UjwS1TzZdTMs0aXKQ9S/5LUleGr2gZn7A23ik6p6D8JW9BSu3YP3yh87M9QbPjJzFj
	ltupmG+D/gDex+4R2q4GVLtKFSthF4k1g9LDhWRflpUqnLyS+bh5V/4SEVSaqSZorVmzRwNmkIT
	Qm4tmDFJw/9p9dynUTWsUzH7TZfj0nK/n3ahUed925lNUBbZ4kSteQbZHov9V6NSk7o5k5sJUDg
	X3iEBtSynXPcQWD7C/O4toaUsiwJr9trKyAai4c71Kxlr8G3+fdiH3ZyciN2FZPm8d/ExvjZ2z4
	54QFiWul3WA2mBOGkoaQxeSNNX3tebaKthXsgtXJenGTOZoQErwcSP9gKZlQ4l6u4BUNFeB5tcU
	J6JSRSOOti/KafBA7DlgUAC
X-Received: by 2002:a05:600c:3483:b0:477:9fcf:3ff9 with SMTP id 5b1f17b1804b1-47ee33a0fe7mr38193535e9.27.1768405527738;
        Wed, 14 Jan 2026 07:45:27 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:7f20:df14:ac2b:3d74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee544387fsm33867105e9.0.2026.01.14.07.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:45:27 -0800 (PST)
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
Subject: [PATCH v4 0/4] Add CANFD support to R9A09G056/057/077/087 SoCs
Date: Wed, 14 Jan 2026 15:45:21 +0000
Message-ID: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

v3->v4:
- Added Reviewed-by tag for patch 1/4.
- No changes made for patches 2/4 and 4/4.
- For patch 3/4:
 * Dropped Reviewed-by from Geert due to below changes.
 * Moved single compatible entries into an enum and to below oneOf.
 * Synced the resets/reset-names handling with other similar SoCs.

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

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 79 +++++++++++++++----
 drivers/net/can/rcar/rcar_canfd.c             | 18 +++++
 2 files changed, 83 insertions(+), 14 deletions(-)

-- 
2.52.0


