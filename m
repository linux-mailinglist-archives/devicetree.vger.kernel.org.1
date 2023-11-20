Return-Path: <devicetree+bounces-17069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DCA7F11AF
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 617BF1C210E6
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25D61426F;
	Mon, 20 Nov 2023 11:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dGPEuAMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCB4B10D4
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:33 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40842752c6eso15071385e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479112; x=1701083912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gc8Hzq3Ts2nxCQ0omkudOSRnL/wtmp/FWmIm+F9jowA=;
        b=dGPEuAMdFCV9NlctN9B0xXm/HSlHxfFOfN0H/zW3UBjkyNKFCvhJToet097rFn4HLL
         z8jDAHwbWzJQJuyZA4euL5LrYl/R54C4NuBOdMzxLEG+3cFiZWLB5GihrHuSPA8yUThF
         5spNYyVzf7NnjYLa2CvjqdEVDZnDy07WZ5CM8cEWQhpB/+c13zm/McKXC2GFXoLqJau5
         7o+2SkudWUXZVxQfXaH0vMn7zYDLeZ4F2dD9jaK0vp5TOu8m+A9SYTb10fgqF2ttwq/f
         NkBYu4wv3s7SV02UDS4plxGcDnucAh5HFOvu0/XH5H//Zkfdd3Pmft1m3hcDtSftv1dh
         cEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479112; x=1701083912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gc8Hzq3Ts2nxCQ0omkudOSRnL/wtmp/FWmIm+F9jowA=;
        b=X7ZyCR+C5NwETohnsxbIANl0C2zkIcdbHTzy+yL6I3d+5xvCcylI+PXqjITMaobu8G
         1ErsOCSSYgBpnOCNDPpAHyJw2dY6gBmhsuhwAJ7uAcIEEm3uc3idD9B4mAbixx2QnPLf
         pTIhl1gdbieKQTrUN779vFbsiHgl7igQKVM/gRJwEvEp9W6T2kw8DmkMAzyywXpCGzbI
         ILKku66r1NIwFe4dN6qoM7FY/cSHMwQ4jfdlB5xvW5WyA/n2ZK8mUWN8tdsO9lGe2Jd6
         ++ToSiFsGqD//cp6f0CUWRBvaqceca0IUeZXoH40r2rVqOpM7G0BbsbrMfXN5JxB1pSj
         xG3w==
X-Gm-Message-State: AOJu0YxULDltpYcnJP9P0v/fF7TGst3cssV03bN6bsTqqHZPsdaZXUq3
	rkBnRDCOmjx2yDAoHwv1bNehPhB13mN9XBjW86U=
X-Google-Smtp-Source: AGHT+IGR4NGMGQuVNYATIPlT42I33gdkgFm4f8WvykH8Sea8phFSl9bGFJL8tFMSI4OQOpZND0ITug==
X-Received: by 2002:a05:600c:1c96:b0:405:336b:8307 with SMTP id k22-20020a05600c1c9600b00405336b8307mr5941605wms.7.1700479112208;
        Mon, 20 Nov 2023 03:18:32 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:31 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 2/9] irqchip/renesas-rzg2l: Use tabs instead of spaces
Date: Mon, 20 Nov 2023 13:18:13 +0200
Message-Id: <20231120111820.87398-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Use tabs instead of spaces in definition of TINT_EXTRACT_HWIRQ()
and TINT_EXTRACT_GPIOINT() macros to align with coding style
requirements described in Documentation/process/coding-style.rst,
"Indentation" chapter.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/irqchip/irq-renesas-rzg2l.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index fe8d516f3614..cc42cbd05762 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -53,8 +53,8 @@
 #define IITSR_IITSEL_EDGE_BOTH		3
 #define IITSR_IITSEL_MASK(n)		IITSR_IITSEL((n), 3)
 
-#define TINT_EXTRACT_HWIRQ(x)           FIELD_GET(GENMASK(15, 0), (x))
-#define TINT_EXTRACT_GPIOINT(x)         FIELD_GET(GENMASK(31, 16), (x))
+#define TINT_EXTRACT_HWIRQ(x)		FIELD_GET(GENMASK(15, 0), (x))
+#define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
 
 struct rzg2l_irqc_priv {
 	void __iomem *base;
-- 
2.39.2


