Return-Path: <devicetree+bounces-183461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D5AD0C21
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:34:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49B6E3AE4D4
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 09:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0B920C038;
	Sat,  7 Jun 2025 09:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="NLWTm/mY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1D870800
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749288831; cv=none; b=ZJy7NARHXtWO27voaUpv1g0G/GvoZRvkqiY6iMCsQJtgnHvt4Q54p5WsLDZN2+M4Nd9fQ0YMMUsHln+o+wGBdFSITl4EuDCtC5YcrZx+354yTZNaauFAS0kEUucto+tj1ADx/oURoXXTsN4lrgWDS4CxruczdtxJb498MOeckBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749288831; c=relaxed/simple;
	bh=SBQeAPY2jCWIuaDPyoQAe4nB9J9JgxUIVRobCxy5elM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GpA9OkYv1LI9jd1eCkeN1oGurAztcp53JblaOAEeXRDpF2OeOky7HskeB/YaZDTMtILcxpRA3oeUQLXitkixstg8cSAkUUm7mtvcw7u2Xe4qJNYY0ItXrttSPPtNUYYWlA4s8EZz4aoUMHpyFFSGZlDWqq9F6cEW9QXc/3pSd3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=NLWTm/mY; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-606fdbd20afso5531249a12.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749288828; x=1749893628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rngjd5bh2tRBdUHUD+bEfCY8c64QncC0ZXHf3hBwFuw=;
        b=NLWTm/mYRWalR/lyBuNBhGIryNzg7U3XPxQwhWoJaS9nUSSJz5iMJtfX++ziD72/R1
         WJrtzjr8fZEVA91MTPrCliY2SGVkGRCxzV4zDcRieKXa87N5ONL2+wpuh9J9egzXgKro
         vG//mW5CZsCHAhO0f4gtiSz7isJRMia+0VwjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749288828; x=1749893628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rngjd5bh2tRBdUHUD+bEfCY8c64QncC0ZXHf3hBwFuw=;
        b=ECu/OhFFomonbdhgS7jqkCRI0wfHqkVr0oxGonLLaEzwffxZA28T+q6xXQDywbegC3
         wW/eiBho2Z+LTSGg/zjCSnj3Xz43tMePVbrS/ZukZ+kKaLnDD6ajUo6Yz+t+KWfQSers
         /mdZfgIQhW4WzKH+VUpArbW9J7QFaE00AS2gLqBGO1+HCXSEWBuC5j+qTVqGguYqEz2s
         BNzMlzD+y/Bc64ImfZkA+88sPWwZE3HwNJlXDzuLeLgzGnE9lRy/mu6mb+DvtlFwOa2a
         LpNkMe2u9j6gzVhmefGxtd42LgyOWElT8HvPk3ziW+e9y4SpyFdzOWknAA3bf1T4Dm5P
         6CdA==
X-Forwarded-Encrypted: i=1; AJvYcCU5ZIvVG91Nz6ITh7INKKJrl0RjBUyPm0aKGCIuxEN72vJSTxccQveBfuSfS8tkmG6O00FwM0p2VNyh@vger.kernel.org
X-Gm-Message-State: AOJu0YweAflwQwQ2pQL2v+bbFu5/rT3tnAUBi8kW/Q3riHnV1hkwOq9N
	zvpGZCsrDwHstOzHi+hyF2EsoRSIi6uUd68gtd3KUjL9f8UMrsVetiqQRkB0OSd/2gQ=
X-Gm-Gg: ASbGncvCxFQW94TWhmQ2JfE1Ie8k6pB3c69JzY4mWbUXJCkFCmtbgsHHDnwpCu0TpIa
	H43+lG/rcclMA9zUc0kBExNLSzSvlSiql9FDkKP/wtY6LDFudX6zR4i3lhIBC9PYhPP0XKzEkXa
	AmRkyTbqgDdbxyFXXJ8kRcXl1X7XA4u8V6MqtduyGAIUquxecVcq/a3/MxBX5ynr13jJJbf3Ezr
	krVoqHkmkYlnpgwtMrQFxQPG3jO+JdLXuKKICJkqOj1ACevJB8IdIdONcany38r7FoUzLursmQK
	f0X4ps+44255EFQsEBb0SkkVMsi+X4JgL9AcKcxy1FgZWoyqhSC5XcR5euBezDezNoI2FKro1+e
	XOsk0FZsBKTwsFj8ub1v+fP0MIp4PXKOqvzy5sJpfzEAY2YteXZT0NoIuSBhMzxKL2oxH64UUTp
	5nMov3ESW3Nh5W
X-Google-Smtp-Source: AGHT+IHxo6mo2/XRJ37av3EkDkQ/u8UoQVvuh6NrlZH01Mn6soUScs9RnD9EmZexh8NntXLdgVr6LQ==
X-Received: by 2002:a17:907:3c8c:b0:ad5:1bfd:30d2 with SMTP id a640c23a62f3a-ade1ab326e2mr564111566b.55.1749288828208;
        Sat, 07 Jun 2025 02:33:48 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-5-95-99.retail.telecomitalia.it. [87.5.95.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c316sm251541066b.98.2025.06.07.02.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 02:33:47 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
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
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH 01/10] dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
Date: Sat,  7 Jun 2025 11:33:13 +0200
Message-ID: <20250607093342.2248695-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
References: <20250607093342.2248695-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA BMM board based on the
Engicam MicroGEA SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d3b5e6923e41..5feb62611e53 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -769,6 +769,13 @@ properties:
           - const: dh,imx6ull-dhcor-som
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL Engicam MicroGEA SoM based boards
+        items:
+          - enum:
+              - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+          - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
+          - const: fsl,imx6ull
+
       - description: i.MX6ULL PHYTEC phyBOARD-Segin
         items:
           - enum:
-- 
2.43.0


