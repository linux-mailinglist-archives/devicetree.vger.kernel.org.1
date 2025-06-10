Return-Path: <devicetree+bounces-184184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3ADAD330C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1393A3A9D45
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6CC28D84F;
	Tue, 10 Jun 2025 10:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hN3XBndy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B7028CF4B
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549718; cv=none; b=iYw3HP99Am5WqyLOtkjxHVPu1WTO2kStYZHxum6ct4tndR5tvlbvGzbs5w+ez2FpwF21zWMyHF6PJp/JmBIgT9CguLXK9J4Jq5UPysi5olbHwlA67GcBrOTJ+FGLqvZWddwFprP3ukITBInljxkUkaLiHCD4Xh/67XvEZ3dcj08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549718; c=relaxed/simple;
	bh=Wu0oggdHIMl21yHRrD1q1OTM30QUCT5J7qOjRFSBCVU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WhqUlOhIuo0hTf3bsECWMQp1NBqWst/jfUNzYv6hS/qiSxTh7zfsM4cNhU57Vgrst9XIRJ8/ZfAe+0RXefXKuH0CmWEgIOnkJg5r1ORfQZdSkMf+VIseJFih5X4IC/hE31rVEst9huNp5S8H0YDqBmGBbVqPJ1r90hRNtnnnnPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hN3XBndy; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60780d74c8cso6457591a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749549715; x=1750154515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g+CuR2t2agnTd143XnFYj6BBOX9cjwJ9yRR8SSRtGwA=;
        b=hN3XBndyLKreH1iDzNkb1aOuniPYZ7VoJ43FKEU51W99ac683tIeo8I4ZQ5CsVTRvs
         etlBEocfg0APdg+6gVgWKLLkhBIzE928aMlkFz4eezwaAwt8i9V+GbJxbO93IM010n6m
         7HFrhY2ovLP2wP+LXJ1dMHHn8C6zeMiTDh0oY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549715; x=1750154515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+CuR2t2agnTd143XnFYj6BBOX9cjwJ9yRR8SSRtGwA=;
        b=jOiEjsm8lO85bi61myW9hEYiPIVeu4TCCDWU/6EV0BrE2Ku4K+7q8gHW7hHwgDNwd8
         SOLHiKfoQHPRSep9i8U5cwMgtbUZuoAvwQpvfOp7mcArt6mrn73YD+9kF5S1P+/NiZby
         oK7wuwMthnpRQKxteWOfUpw+t47wWtsIKoJM4loaRWK71VzYhGLR17GrSLbIy9fdE7pf
         u55CesIlbnIet/TtJ8hBqc6sPWeOdec5uwfbmo7GFkHYJjpilW9v+V4SUHvcCwQK0NRP
         ykq+bzodmVUE+Pv1JygElBPmX/7U4q0WDzRw8Ea9EaXC5aI/vKxHwX7nFyz1wwMsnziU
         dBxw==
X-Forwarded-Encrypted: i=1; AJvYcCXITkKisssk4F7CP5/3jolb8wBZtNbNE8pslTg52QyX56v2siCSRBXjWS3KJaLvlduPxa3YxyrMO05G@vger.kernel.org
X-Gm-Message-State: AOJu0YyYQZ6W6fuw+BRnMIP0N49IhMnokwCF5E75RUyOXVcfM9fQV4Z4
	nGuFXVJ5I7TbMH3UIzGqYSt/Bbr2SCk7Qztx6PWphT7qGIk9XvN7sEdao3/jt+7G7O8=
X-Gm-Gg: ASbGncueRejgDkg8HFe0Sp9LNqZCjV/ZGDimLC+TVpwS0iU/eJpdr8tD4KhQPsHf9eY
	AyXuPlNvL9dGZYlOj7VnhwdlVnIP1GrZA+6TFFBnQaq0vDuRZHxTCddJ7oRGNc+Rm2quwF2g8h2
	nq7P2IcOgtdBkWcACqAWIDi5Vl/ml0+f3TC9cX6obHWjLdIkOWnJDc6TwebqtOdKz1UCBAIz0lB
	CcsU5J3vp0QUCKCoYom1BPFBjsOeQ0yV10WP2/emZMpG7HHAc9JYwu5jXWNBW/oVGL3yTTUZVpB
	Odu8hzfuDQaw+96YXhznXdq6UvCpwFm810hDQCyvChkAdQW1BdrcO4Fjh+ckDgVqM4i8NoJhPM/
	7HXJJwybENWZxxeZFNUch7o77e34=
X-Google-Smtp-Source: AGHT+IE3bgkWoQ9nO8aNuMn9ZSpoWZlBdl446ax7t76j4zMgmTGWKmlQCyK3iwCOhkvKgG6kJdBnbw==
X-Received: by 2002:a05:6402:2755:b0:608:330a:9f67 with SMTP id 4fb4d7f45d1cf-608330a9fe8mr1072507a12.32.1749549714754;
        Tue, 10 Jun 2025 03:01:54 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077837ed0bsm5953438a12.36.2025.06.10.03.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:01:54 -0700 (PDT)
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
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 06/10] dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
Date: Tue, 10 Jun 2025 12:00:19 +0200
Message-ID: <20250610100139.2476555-7-dario.binacchi@amarulasolutions.com>
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

Add devicetree bindings for Engicam MicroGEA RMM board based on the
Engicam MicroGEA SoM (System-on-Module).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5feb62611e53..58492b1cd468 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -773,6 +773,7 @@ properties:
         items:
           - enum:
               - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+              - engicam,microgea-imx6ull-rmm       # i.MX6ULL Engicam MicroGEA RMM Board
           - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
           - const: fsl,imx6ull
 
-- 
2.43.0


