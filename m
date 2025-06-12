Return-Path: <devicetree+bounces-185175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BFFAD6BD0
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:11:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F063D1BC4B4D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6198E23956E;
	Thu, 12 Jun 2025 09:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZauwnzE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEAC230BD5
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719324; cv=none; b=ErSD7TGm9fkaP2GkH/Dqvm8MYrIHlPxJE7Tf4gGN2KkkH2uudlwOURog0yeLi/WsAGoHRecsgJLeTyaZ7EVNKo819kwphyJZ+NNoH+wyuJvsP3T/wVjLlIto2p6BEbRrja9/Z1yCa+PgBZ3gXR/hv9rGflCSv+yTsIIZQ57B+PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719324; c=relaxed/simple;
	bh=qquhulnSka10pNm4KMhunBjcmITpIZB5yNczgEe4vBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UAECrQWi70O1juyRvweZlZr+59qMXvkJVYYF5ampQKU5YZ3f9MD1v9lg26e3lbvvljQAiFXDlB9JLOPLSMs+c8dY2C4wiqfRvO7kpen6tygqy7/0aOsusotKkFYppqU2XIa6O6Sir+1cTWN8LEAnqfh/u9LAOsrJDpfJLVzMQFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZauwnzE7; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60867565fb5so1125027a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749719320; x=1750324120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkXssJqSMw9SFqIqHIUe8n+o26XtmSF6lvIk+oX9miM=;
        b=ZauwnzE73AHnAdgKx3SL+ZdAYesuefTLEFqwV2ZacRalX8A8WYVidNfPH8r3zCdA+A
         9CA0oHSH8dOxdj4VuYROvHtZTZHdI1Uen29JqLFPnYPd+nNYdhkZGLCN3wjZOsNJ7umm
         L79nx6iW2JyT1wXgvTwwbzVrBpvdInnuIaJeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749719320; x=1750324120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dkXssJqSMw9SFqIqHIUe8n+o26XtmSF6lvIk+oX9miM=;
        b=NoXTGteeoo7jx4cmr9x0wKob1rnDGHsiMrHUjfx2uT3j9nLtRsgQbCXRBYRYGIVloU
         sp1fP2F93IRRD5Wx/WkNHZrsxRtU0ix6vkYh0H8R7C2dNBjYY0OOwD98Djk4wJbptBrF
         IPno4lTOZlfdXg8WRxGzLpp0HN5uwDikCXEERObrr/pzBLPLNWoNle3y0D6Y9kfA6Sri
         FeHactfS2o1GtP/k03rznHMYEIzAsx6l/PfaREhEX8ZTNPZCf497udaM/J3p2g01+fV9
         Ks7TEtpzUP9MmKDJu2AoxWtZrkk/k2I0FyLRdkhBiBI9dgSMlMBhYN88n5sb266zZzax
         tD5A==
X-Forwarded-Encrypted: i=1; AJvYcCXzNl2AV4yLUkMD3uQKeSA4jQEluiGFRZFYOUFsfR7635yMwdz+WQT6rcsh3wgq7orLQFEjrqFhKpmj@vger.kernel.org
X-Gm-Message-State: AOJu0YzGmi7ODImo3HQyAH+HB245w7rFcbJD2HK/yXWBkpRMxT8OGlL9
	2hNh9NJVvKNxL93KUg9zeD2tIcDIi2COx9u6Bd7ED2nQbcixUdi/UL2RacYaNU4JnCQ=
X-Gm-Gg: ASbGncuN0mh76VBr767N3DWxx7JI2Nre5exCtNk4zspQy8vOW8Ig7QqnZrgTpXmDgFm
	45P0k1bDQ+XHK2BVnt6AfqNmxydrZng3Qdx6EZUW4vj2AulnZ1355VN6+AqsRsyJOSnCD3BNTwM
	8mgIp/QNqtCuDKzN9C/CJNFMvvKg7agX+yoybU0OGyrAFQp289ttfqF5o83LedIeVaKsS9QEHgY
	0IyXJH8vYNZVlPdow8jJpGjOwh9LP/WZlEA9Q/3sYKwXZvUHde6/A2KzbInhdX1fC5H45nrNE3s
	azcK7rkas8Q0rAmaKPSMv/VCWeBzukNf8Rf78oS0bbRsnz7sPRUo6g3C+S5q4ufNcdFhAmkWigz
	3Y6G0PZdcLsOrjfbD3yw3MyHu0w==
X-Google-Smtp-Source: AGHT+IGezkrSmIAiPINGgtwck+Hd86fYa1kJIwPDGy5fuxFns0Y1GZDy2f56nyYpAeTg32AbaibLvQ==
X-Received: by 2002:a17:907:3ea0:b0:acb:5c83:25b with SMTP id a640c23a62f3a-ade893e6126mr615292666b.7.1749719319676;
        Thu, 12 Jun 2025 02:08:39 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adead4cf274sm99933366b.31.2025.06.12.02.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:08:39 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
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
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v4 08/10] dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
Date: Thu, 12 Jun 2025 11:07:53 +0200
Message-ID: <20250612090823.2519183-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
References: <20250612090823.2519183-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v3)

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


