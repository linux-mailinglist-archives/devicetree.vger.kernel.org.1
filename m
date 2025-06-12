Return-Path: <devicetree+bounces-185170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B19AD6BB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:08:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 707FB3AF0E8
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230EB225761;
	Thu, 12 Jun 2025 09:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mo7IsMvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B55223DEC
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749719312; cv=none; b=j13pi9e7/uP8Pwl+ersPLiEajPpBe5g2B5oi3oq200Rs/aGaZLlajTqIk0hCRNug9ZmNvdcUTOCgxBJkxYmaKAfOv1TmikPS8GNcpkv4ob5e88uJwAcmDMopc2VhwyfY6ZtqQNDmTFj6IQEV14jtwTXhPypXpqxQb3g9VkA56uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749719312; c=relaxed/simple;
	bh=2D+i3G15KhWJmzs9CLvtQ7hedAF2DHhxvlFywkAiVis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtYbgmdpubxZLOJ0VATcsBiINctk/OESm4mHZPvfIaLQ/DjG9cvf4fhCAtBFW1D/dhF2YFPAP2svSejxg0yN4Jvv7hS6zlx+hdwBhtKOffDH0F8sh4vjh+XeCnNiMGYLl76o0fxSDF6+pNX7hySkZ3cxLboKKTXdHCCR0oHb7gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mo7IsMvf; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ade33027bcfso114450166b.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749719308; x=1750324108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MyOwHJZxAKroqQz4dfAYFqm5YCbbl731xMN7ncfMwH0=;
        b=mo7IsMvflkdlS+YF8t6ehxfeHPNINpaHTznM4EsLfRa5GXsl6byXlSKe3wx9wICScs
         44SucNYJISdnp9xfUvze/psIGlgSpErs3kpG5XxLgs/9YYVD8qiEt48/JeXwxFMcIS5/
         AOmozNjSTlI5mjlLa4Q6slcFSM2JCmB0aGtGY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749719308; x=1750324108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MyOwHJZxAKroqQz4dfAYFqm5YCbbl731xMN7ncfMwH0=;
        b=hvQY3ESfWZ360hS6IUpiVZnaPP0AzGBDP7iHWRiln598XkyZ23FAeWKc5FMrxJLLFc
         C0ZYYhmXkNebCmFIVodidk13Zk2OX5ooB2qto5KhEnRj/XIsOpZL6AwP/zQOl5MyNExI
         t+DqkDwPEyLXn+EhMXVyW1aMNexJ0KAnW9+UWRzqRV8kUJh3purEmpcFM2/sxGQkG70o
         7eEZkPfj582MDHO5AcecRoeudTuyotzxpeOGNuxlTx2hI1wnCxIy3t2vuYXEhoW19i8A
         mc15UWMPpNJgLpvowvzDwzBHsrpzsuK+OeZq41sq3Gaf9+Ovcj6SA7SrKMqH0wQx05Xh
         DMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUm12iZpKoGrgOg+LvrLrx0xKXWNlcIS+cMm3sXaA/UgRBYrk8NhMNBYFY5eaxHuDItRTZ98HBBdN0t@vger.kernel.org
X-Gm-Message-State: AOJu0YzHBjFV6kIRrehnCwlDrleGPsbtyT3VQXyqv9MM9zt4ndC98imh
	heWJjhjv/iGsbZG0wWMZ6rgsw5TiQ5lJSHp4o0Mk1EQJscCcodgenWt3iuVES4fPr9Y=
X-Gm-Gg: ASbGncsSnRDRL4+sXg5+1fw4ZZ4PusZ+RvsY907YszJ2fBnW4f11xDw3HFNRxC3LjWa
	5BqTTLfla5SJlWA/CHL9JMhVCHUxc1R1E2UYLr08uqloCTbM/i9/e+lh4vOdqGyNiIfgnCiqye5
	OdMTCtxCpnAvYFb7vrM4r/V4P/zwnRn3nr2F47yYPkMMozbLvI/r4c8pBUU7lGgM/4QSwrYeDqX
	2M7BT7cE0kQxpv19mIcJnQuYAsZiHviyX82FU5r7biiC/oynQTvmyb2YNfpdT5kPaBd5t31/2Ml
	KHYdrVziBvRenjIBI1FqP3z+g1IpaQ/qP7p3Vg4obsqhkkvas2VOOK1dqhlxufbRzXhu6T/xEBl
	CyNjA7zd5dgqcWKpfRa+x12oxWQ==
X-Google-Smtp-Source: AGHT+IGgy7MfaG0CuUCYyXegR9nYgzxPQKyKhU7iG87w5yCta78UvdqFABZl7v4JXh+tKoWIwNgRgQ==
X-Received: by 2002:a17:907:9707:b0:ad8:9084:4ec0 with SMTP id a640c23a62f3a-ade896f3402mr602898666b.35.1749719308479;
        Thu, 12 Jun 2025 02:08:28 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adead4cf274sm99933366b.31.2025.06.12.02.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:08:28 -0700 (PDT)
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v4 01/10] dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
Date: Thu, 12 Jun 2025 11:07:46 +0200
Message-ID: <20250612090823.2519183-2-dario.binacchi@amarulasolutions.com>
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

Add devicetree bindings for Engicam MicroGEA BMM board based on the
Engicam MicroGEA SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v3)

Changes in v3:
- Add Acked-by tag of Conor Dooley.

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


