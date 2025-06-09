Return-Path: <devicetree+bounces-183765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC82AD1B5B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFD7C188DC99
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA6F2571BD;
	Mon,  9 Jun 2025 10:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="e/vzd1Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC6F2566F7
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464220; cv=none; b=RvTMhZERrqbwqYdm93W4fJBK/5hBdFtGoNZdqAdo42DOlEVCrf7wybggqafm7r7bu2O5ySRkMzLbn9UZoXbMO4gFpv0a6/yaePYM+aWaC6dksPJztj0u2uuaqRQjaVJPfmlG8jY9lngDsv02dSHn2e7WSFY59fRauP7+VdeRGFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464220; c=relaxed/simple;
	bh=aOMbBEpJBsHAJ0f+8jF+ZN6WNbod+xI+ZXgFkkv0hSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bK32rAUyNdXBlnOqzkNs47K7BlLiFyeg6yGrgiFdp/4L1U0S1inNfyJco0T0VeT0XJrRy8x32XMHVtDewr511kFMdUyLCK2FaDaHAZXMnBekJc1PXic+nGCeHVO/9wYSVitQAcUEwPvL7zFye8uU8G8JRRhBy/hSqbj5Y2Dh//E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=e/vzd1Bk; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ad88eb71eb5so568381866b.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464216; x=1750069016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Czzd7R8n7wUjaUbc99aX/ItOeaVAXm9a6fTCw0FFyqg=;
        b=e/vzd1BkKXwwcr5uYuWd3QnB8Bk9vPqXsciI6niQ5AaIWOe1WwHKztvKBMwFR+OsTH
         HJgMdRLvcKB1EtMJXzx9FAEJpohhdKGQZUM3Ec45hg7HzbXIkUslK/hmHXWO8altUBn2
         72QTH6yHd67bJ9FlS8KNfxGKP9zypZJE1of5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464216; x=1750069016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Czzd7R8n7wUjaUbc99aX/ItOeaVAXm9a6fTCw0FFyqg=;
        b=PIgOD2fuZc8OcugixZNowr7LTWAwvZ28whIyRRf2GK52v9gol9zOzbSkL+io0FNCdy
         7J4f8hkEGmEDEeN4ocXe6TLg7q8TK8Zuo2vzPuqVHx9pYzu2upkDbWQg6SmKJvwbwTND
         LTkn3cvPk3pYwfrNACXdVPS5NIjl+u95aQLJFoX3YPjITPE69/j51xsP6smIe+htCN5M
         +Brro1sAYi7Rs2jhOezJJKkxJUTJCKXUw+FPpLYmwQIkAtMRXssdJuUi6EZXoKvbqnbf
         kk3dm8h3HDwE7FYMRifQ2ooI2meFS7qT+BRNPod9GFTzLPBUFOXNo7GTWNdGbMCK5zGO
         OIIw==
X-Forwarded-Encrypted: i=1; AJvYcCXXA0WONd5bBoIvUHywRtJeJmNghio8oUvq/TwHzKSi9irKBX6PvT5L1rLJlWlm+6I1+heLXLZKah1o@vger.kernel.org
X-Gm-Message-State: AOJu0YzgViZV0vQpiLq4oFYca7gFCX/kWvZ/aOnI7MSEyGPuiZ4Dra0Y
	AygowA7TllTiKj4fkHBf9Kx++0B/lqxWlXAuOGqJSAxC9XbTqOsn+l/Wr5TTNoWf2+A=
X-Gm-Gg: ASbGncu9HNR6vA4Rn0fllXsNt1E1Xu9gXS2rI2GINL0qc/kt7l1OqeqqorloFLp/HBw
	7bEvYsoDZ+CfjaFshCdaXANON733y3WZsIvoRZG9D0gEpEfowf7sVI3oYEFihF+cWnhF2NS11/r
	pfK8hFp7Sq195hBBpe5g4uUK15HN+rWXvrYJ/FDUC9XbuR3hYqC1t5KPqFnPqAX5D5AxQt1Uq3C
	AKa0fj5U/8T9SJJ240Tqm/U05Xq6ZoWgGLljgVd0BHLmsFiTogj9X7ra+I1JfphOQHwMuECcm4B
	P2HQb0xguy+ekU95k8dqtbcxem2o8JSX+Gpgiw3f4DwG/yCDPN4Lg8S6pJU/rDdqUOlMUYkoCHS
	ZiC7tb0+/A7q/ncungpC9uFqpdxSgogeO3omKTRgGIurmwn8MiXA=
X-Google-Smtp-Source: AGHT+IGSlc13W/z23hHpLKDwdcOkLDQpPe5iJyc0Swi9kFRIGCnP+JMqpE7sE3pgx/cMVZQvJu0usA==
X-Received: by 2002:a17:907:2da6:b0:ad2:1cd6:aacf with SMTP id a640c23a62f3a-ade1aabc6c7mr1037537366b.47.1749464216259;
        Mon, 09 Jun 2025 03:16:56 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:55 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
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
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 08/10] dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
Date: Mon,  9 Jun 2025 12:15:41 +0200
Message-ID: <20250609101637.2322809-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
References: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
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
---

(no changes since v1)

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


