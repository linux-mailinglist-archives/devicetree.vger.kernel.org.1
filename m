Return-Path: <devicetree+bounces-187778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80418AE156D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:07:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EA7519E4788
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D8A235075;
	Fri, 20 Jun 2025 08:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="k2t9DqMR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2485223504A
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406798; cv=none; b=S+UOPSQdctQfYEIRtKe/U9q9+9wfQzloOKK2danoBWHPgpbGkqBxaQ+FBaHEUjGS70I9gCeKzNeQWJromVOdYngP1kFQsYuHZmUiJnituoL/NleshO9qhvAcdmVfELg4tGE1LJXv6iONVfqwo4dM1Ic1WSkv9+Ap8csWyEXOJUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406798; c=relaxed/simple;
	bh=Yb/dYmlhorZiLYB+FvS35uOVh5EqFEwpgp8+5JRdYg0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lyHrcYcKRve5cJW3XMcbt83GBcxlK4YOhEke8FtnNOWM1M5poPicIY9hW5l7DLuyE9kPhvOcfRiQfO4E+KARHCKxITQnJVIigSngoRtnKqBZtQVmVAlh48uZE+AZZiY/KncSw+ZkaWrqGXZllFG5rkGOf5sfq8In6bfT/ogbDSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=k2t9DqMR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45348bff79fso17701535e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750406794; x=1751011594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C7E4Hyx17TTb89iG3phE25g8XkVePt97zdgGIjQWEQM=;
        b=k2t9DqMRCvI4mS6oDyIs4FuaLmnheTPhRrIcErC+5F4g84HC3puKy4FN5ESnLUWVCF
         sHvk4WuDOzXNKQgqQduCB32xacIXdhXefIV1dd5zJW8ZLRt8pY2/dsE5pwO4a7pr3Aq8
         o5pU4N5vb4xUaDp+rs7CyNCVHcUH9UWy69aYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750406794; x=1751011594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7E4Hyx17TTb89iG3phE25g8XkVePt97zdgGIjQWEQM=;
        b=ImwpZuLKwTm4ctkT4o7xf0D3NVMMpxw0Jras34C0sCiv2ni8IhbmzKqBz3CoQUlGQA
         zD9BTCjqLYOIEc2jSw0a2//m/mcfPhHby/3CyE4xesQoV/SdqSo9LCJbXyaI8Jg1P0kM
         3NPeQ8UpzB6p6paO3nv868LeNikw7868fW33ZalGySLHw5qtV2FNm5OP0Y+UZxKiwlh2
         Kn0S7BgF/eSnxCi7bdwK9fTvLfuk51PVfx4l4fUCHYi7toCicFlSS+pWautYL1pk8fSs
         pxf/uhUjgccSrKxTVwdviCCWKDO/maRlpPIxa+lUXvTjjk6cyp7SiQvCwz6gSdv4Gb8/
         bGLw==
X-Forwarded-Encrypted: i=1; AJvYcCUGjmU1Gf5wBQF2MGLfduK2m1FKvWChBciJCFWI4xxzYDeQySJlpt/Ak8IwUd1J5Kmqax3gaSfjH+fG@vger.kernel.org
X-Gm-Message-State: AOJu0YxMF2p3VsB00o6R2dDTb3x5M3lpgtuKr6vMjJYjvjIuEzaBxPDL
	Ptc+Qr5UitLPMn3nlVrfblbo21iLuVmQWs0eS2YC5922sDfC5ldYrDXlWOPKjbPw5ro=
X-Gm-Gg: ASbGncsdREEmom4Pr6FWoM3qXxBsh+lCcp7yUIidyeeu+r2pvXJXXLOywtzkz9nOZpW
	meKiTGASxhJiOB2SRD/coVdj6ly+23ERwVEt7ZtuDLLM0bOs6ofWpeNJ0UBIoz/mRRJJtgYMXpx
	jTGdJiNQZ0dK7vjcqUUzIR4HCsiTo34v8hC/V7yMEq05Jsdd9l9pVPb6xq/zPaT19tsVALEJYYL
	0FEc6X2bhdWwjkDwu0QifETaaRVfk40dg1jHUXtDpvIJKgUvc9h/et3fGokJyJXTxwx7hvz7vJa
	LF/zy6jJDj8QL1S62zHPh2lUwKaBr3g+JNvXjvUG0+9bdybSIDqj0oXXYEa79jSChIwM2zSDmjQ
	nEOWwJfxR7aN0iAe3pWgsnowC7YcMqsjXK3ttWgsKcEdYx2C4wH4s
X-Google-Smtp-Source: AGHT+IFdRGemq7WexpF2J0EbFEg7DqzMjEzopz10fXPShHKcDHzVJnSrlTKt4vWmJcZQfBBTLGm7Lw==
X-Received: by 2002:a05:600c:1d28:b0:43c:ee3f:2c3 with SMTP id 5b1f17b1804b1-453659b8787mr13075115e9.7.1750406794343;
        Fri, 20 Jun 2025 01:06:34 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ebd02basm50137905e9.39.2025.06.20.01.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:06:33 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v6 2/5] dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
Date: Fri, 20 Jun 2025 10:06:18 +0200
Message-ID: <20250620080626.3580397-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250620080626.3580397-1-dario.binacchi@amarulasolutions.com>
References: <20250620080626.3580397-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d3b5e6923e41..eb519ab14296 100644
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


