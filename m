Return-Path: <devicetree+bounces-184186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7937AD330E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95F593A7C0C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E709F28D8E7;
	Tue, 10 Jun 2025 10:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="VDBOry2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3355728D8C8
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549721; cv=none; b=YfpBB3qinjHcfCuNnLpDmEB7AqGOQfUBM/H7ZQHg1Lx5kfGkrxR84PVPUd7diHxgRHRBwJGhVGLeN94hTfcylKhCBsjt0H6/BlM2iNLv5JlFpY0uyfm9vEaDXZPR4+XIxQGRW8JYeqcfdTxDeyQImFpo0dj9fnC/WXcUKGUmQm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549721; c=relaxed/simple;
	bh=ajwul8elyJUy33gM+JOS0xdI8KEwQpbbj17fh8ObkWE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m0w5RPjEfa1Vu9ekcnYz/H/UKY/NRF8iQaP6xxuamqwEowNXkRof2yZvtTGdo4veb5m7iUUxx37mlg9wDGgu3TBvlBGw5xCH77raTUgJXNqn/FCVtHulRSAz8j5LOqQZXSZ867SbDgWyXseMvrDzksDh0crv/nUT5S8qKq8o84U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=VDBOry2I; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6069d764980so11469864a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749549718; x=1750154518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ud0pOGo+pPwbsh+KmRFEDBj7XsSmfxjM0obvvLY2GBw=;
        b=VDBOry2IrAdjTtsFk7utKLGlt0fX91D59Sy9nQJVYYHYBZqny3Hb2rmcaZW4UFdnSq
         jC0pPn9z9cg/dRXww48jZl8VfeRGUhZz7Ue9SBZe9sz88hd8tL+KpgGrm2olcWht3d0c
         r11wpcnlbo4vDJcE8a2L0NJAEwaoczpJSfsVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549718; x=1750154518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ud0pOGo+pPwbsh+KmRFEDBj7XsSmfxjM0obvvLY2GBw=;
        b=ThCUY23PSJa5CFXqb4RMF7xxL2tueYv+nc58dyvGzrWyk8jhETwcINwP7DRHXxsfRU
         AciHbQ4BiP+gJC0MRXNO+4I8Or4zEUCZNKJlj+eZXeJpw/avH1n3ZC8ehqaDVF2BZaGA
         b8MG+jCkalrfXY9qml22hPv6X3yNTTWwL+5JrpPNAIjgQ9mcLQ94h1j3AQpmd2MWo07y
         c/ZLUcxgEMf0k4dCaqJq52/1k/rpp5tREFIEHkAxoOxkawAgfRMkVvlzZ3SxZBwieiAP
         ul5KK7ChGebjFP/gX+3QZZV1MExvUXqSCA99CyIVzwUgMjxk1ZtfqubGzMrFM9gMMA9D
         UrEw==
X-Forwarded-Encrypted: i=1; AJvYcCU4QftrbX2EY1fyavTEr09ZJyG7BINY3SRNXKE15PnHFnRc2KSfN8EaPHIDsG5fVJcFfQQQA4z5KFzX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj8eZHcpWPJ6QM7q2rJ76O8FUtruXtb0LinB4KqRNxm+UqiyGG
	qBA/NTReyAYmgCwL+LLRmwyTx1vKTIzGsmI9Mu/csUJZymYvpfKi5vOKTJ922JhdTAI=
X-Gm-Gg: ASbGnctSI+ysHegXS+w7IZPKsslLNwXAwiFNt445Yx5mVX8wQtxGsb8VwGmuWp5bhmR
	An+hX2Pjs9aqyvmiEOy1oJxEkk0IQ+3rNgvTIti0SkixaFfl1YibafMqE/QhlAuPf9IUwhYqJOv
	LAy7WrcwWYzGU+BhIHITW9c+se+sVs3xJxJ6xQ5S2pDDj+v77Yw2FwUGK1vl30MvLhvkJIG51Zz
	1KEx52hIbfyOwajcsSIQByde1ezTapWM8C8J1/zPNZ67ABmoh6/4Jog3EJSnsB0WNE/1fIEV6ar
	e/v9pnJCUrabhh75cEBA0BUFagj/SY30U8kYc4udHhynx6/hOjZnYv+2AYZ8rBCWhtsjeRVHUmK
	6BKPISDhHPHHB9nBJ2gyiFaThFq8=
X-Google-Smtp-Source: AGHT+IGMS+hUfgI6LOBeveNqUWZ24WG/Hn807LJtdnldLG+zajSuz1AWN6szdkVSWL3Vez5POnXrOw==
X-Received: by 2002:a05:6402:3547:b0:5ff:f3f2:d88e with SMTP id 4fb4d7f45d1cf-6081868f8f9mr2475891a12.12.1749549718370;
        Tue, 10 Jun 2025 03:01:58 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077837ed0bsm5953438a12.36.2025.06.10.03.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:01:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 08/10] dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
Date: Tue, 10 Jun 2025 12:00:21 +0200
Message-ID: <20250610100139.2476555-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
References: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA GTW board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 58492b1cd468..99ff7c78544b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -773,6 +773,7 @@ properties:
         items:
           - enum:
               - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+              - engicam,microgea-imx6ull-gtw       # i.MX6ULL Engicam MicroGEA GTW Board
               - engicam,microgea-imx6ull-rmm       # i.MX6ULL Engicam MicroGEA RMM Board
           - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
           - const: fsl,imx6ull
-- 
2.43.0


