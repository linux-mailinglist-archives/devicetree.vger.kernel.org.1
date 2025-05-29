Return-Path: <devicetree+bounces-181452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF655AC7A44
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 10:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90B62167179
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 08:32:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424D621C166;
	Thu, 29 May 2025 08:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qeuM7Gnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801FC21B8F2
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 08:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748507535; cv=none; b=rO6GdAb0DmnLDMDLIhZrlWZnx1jhVB/bl7IiKF60QQ4yOrnrMpYm8bm10ru+rrLZln5l/kQa12HOq+gbyHdLl9Mv2Fk7JOu3XjZbtSoRse3jodsgiTt9PUt/ugQ1KOEPApHqOWw7ByrpfEhPBjmuLME870aUXkcsUxg1jji/1Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748507535; c=relaxed/simple;
	bh=LDEKkYqpa5AneDrp66hCbyfPpeesYFmsJoMyghl0lrI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PUBWR16kVZzjZgaNR+wOgq/HP764cUbHD6pJ+x0kkL4U+o+x4Drp2FaelJy9iB7etVRkClrAzTODYkBn2s2l6pb2ht9xJt/gNTS6kxRvZ91H3db0Ejh6ehkjJDUtCW8pjh/TGr40OChIQSLIzsR8bp7CMoooPnKIcjtYQoISEJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qeuM7Gnd; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-604bde84d0fso911149a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 01:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748507532; x=1749112332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HG9Hnq4/lbRCiQ/1tyJUnBzv8ZwtkPYthtPqyJCp/E0=;
        b=qeuM7GndWTsBJSXhOSBJsPCu8legUUSN6kC0qxvdErWS5B0l3Rqy/iepPyMuVRh/Dq
         erhldr0uwMBVOnNT8ojWKJKg3nqZ9eVZfXZ98ux1Kvhp25h7gh08Lww8OJHsZAAJDDyk
         xpvtJ5KykZPGIgv64IdUV/UQB2SQb38jtVgso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748507532; x=1749112332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HG9Hnq4/lbRCiQ/1tyJUnBzv8ZwtkPYthtPqyJCp/E0=;
        b=PO8zCye3dxMq4wr+XZC9RqlAhzvUqkZoVGmg3BeGVUX/IlZpc3NJKT4AapQA0qyf6/
         pZMfGfwqaRw8W/r3UQdsQxSWGCAFPmrp4xqc5mDhfTFHk+my1tGVd8gVAeiTYVdQyYs+
         5l6ZifnN4dTAeMFhS5RicvGtqLVG3Flmgi3FfEqOGvhrd/OpPc24FrI1hKq4EU/gaJNe
         WJbZGPI7R3vcchwgTyaqk9DBjHkxiqsCseKy08uKqNphHYKTvrD7FZx210vcndHTRsyl
         dJJ+im92qiP/5r/X19cmXR1xv0TMtfAaYvKxyQBWWaWmpZBIhcIjv5ODjQmSXs2CYRaT
         NabQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX9656oAp11TOup5Yitm1odtw2MnO8+BdCn0+21LM3Xc4gML/465XxSUX0vlVfAQTdOqw/6t89aENZ@vger.kernel.org
X-Gm-Message-State: AOJu0YztNAIBgYUS+ZqtS0XqNUcQu+P9lhqGXtdfVwE+XJbQzPQ8H4Nr
	PcR36uTk5PuPIPBXZQk2g+8rcFA5zf6RKI70F/RRERlkRZDYfbJvGuK50VvOaWU3fuU=
X-Gm-Gg: ASbGncuGyqzeI1NrAu8SlOmsl9nwTKZYHQHmf/7g1kj2ybqjHtKBqRuo9W4mnXxZjju
	anv77quuYBqZeFYcaE0kzyIpUIQUCHCHgHJ4+XQQPnKOuPZgkHSTcetjyw4yBoLSfgAQKrHTCkU
	zjakPEh0zsRdAgtLIRepIEc9s5Jgn6cGjG6Dhqb8Vr+0uCTHdOiQwpZRWBhKiKudZZfyaW88wh/
	EnDcZusAiZ+cZ3LULeO3m14bJsT9sMzNvdqQWCiiME4kCh4tKeVr6CJSWtvW1jl8891CeJEAhvK
	EzN/HwK97Dk/7c0GRiFt4ZRCyZ6YC8uJfUab6Lzun4KDH+fZNSNF7JvAgMxyUUd3PZRACNfRxr0
	pZaWcc7FzuByyrZjN
X-Google-Smtp-Source: AGHT+IGvLE/l5D9FUKvVaCi8L4G9UQppbArsw9w4HQPwuydhjXYkiko0VBVf2nFpsBEH1EUE6Gq+jg==
X-Received: by 2002:a17:907:3fa4:b0:ad8:89c7:2735 with SMTP id a640c23a62f3a-adadf2a1317mr125814966b.58.1748507531717;
        Thu, 29 May 2025 01:32:11 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e87esm100609866b.63.2025.05.29.01.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 01:32:11 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	=?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
Date: Thu, 29 May 2025 10:31:06 +0200
Message-ID: <20250529083201.2286915-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250529083201.2286915-1-dario.binacchi@amarulasolutions.com>
References: <20250529083201.2286915-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 128 Mbytes DRAM DDR2
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v3:
- Add Acked-by tag of Conor Dooley

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b90870958a2..b67f0e71e4c8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -89,6 +89,7 @@ properties:
       - description: i.MX28 based Boards
         items:
           - enum:
+              - amarula,imx28-rmm
               - armadeus,imx28-apf28      # APF28 SoM
               - bluegiga,apx4devkit       # Bluegiga APx4 SoM on dev board
               - crystalfontz,cfa10036     # Crystalfontz CFA-10036 SoM
-- 
2.43.0


