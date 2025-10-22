Return-Path: <devicetree+bounces-229826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC70BFC743
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 484184EFB4A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACC334C15E;
	Wed, 22 Oct 2025 14:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FIyHUeG+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF01134C80A
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142893; cv=none; b=JZMAYR5nPv5tIuB6MPbzr//DzzeDcjjOKb3RU6MDdzva+i5+H3G3Lh7VhSR7BCJ5kerQPfg9XQ9EiMKciHLxkSJj6ARCBc2qOTtjoCHj7jftcQg02d/6foWm3dWEuBmMSX/f1yiS1xxBYgfziNLwhcuWXIlN6F0V2TArSrUFHxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142893; c=relaxed/simple;
	bh=FZOaPk/XiWFhkp3zMB+0dvCF3erehg3z6+zK/HzLAY4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fPOc2Cih2UZ9ZBFK2nRkkWSMyNQPrj8JsWbPwe883jJQKX8xmbWhHCRmKL+jD1ZsLxTEAGRBbC/fVLoPs1XDGuozGAUDSVqVCQoQgxMrcOQGQkc6EpHMQQ18QkzU+MImz8KYipbZarPQDMwuZjPXs3VyMY+I6fbGaQZlQZNxppg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FIyHUeG+; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ece1102998so5676915f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142888; x=1761747688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pg0HJx9UF6cc43KSohy1sFUTcyD1/BLQvc4mTLXMxcE=;
        b=FIyHUeG+UgQKVbbGZ3WebI91kyifFFtVLS6gLKkRbKsoYIW2mSe4bq8cGET7M2AauX
         x/+LKokPHCmLBsVebgXImYVTuixVUHlVcdzNSuiwk28yZrpMxnAX3/sWJ2PF/a0KHreq
         OHoiBM636otP/In9JR97k2qqXbRzC9x+keRmqlSR1RaKsmdCOREipsPe7SETEVF/fAaP
         BxkaJ6BE99QaqciTJ+ZZOOm9tfx8j2vEgNU9DvcLeX5a1cDM8XwTItmOl6ayf0MSZejo
         /+00Sf/+H61aoAGgad06E6sXYLGcvq1MtRUlHzQ7eJTcT9/zYo3K/BC1Q4MijjpX1iV7
         9JFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142888; x=1761747688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pg0HJx9UF6cc43KSohy1sFUTcyD1/BLQvc4mTLXMxcE=;
        b=hH7gCSrncB31jIcMe5JufMEAZ2E3HEKE13MEViUNz8LdgXV1OEXlgjgyzzJ/6PhwpC
         UpXkhxk9DympFXqsS5OvZK+pLM/R/LME36U6cw2cW32UtkzsE/22nyVdJRRHR0r5pFRz
         PiBpDUz6bZvysSOcYn4zOzi9UKfe4t00wkOHVz6jDL4CmmmMut41aF7UFqkxOCw7ITZK
         bP/lsxL+N7LOdydEdzqtRVLJHnrecUl8aO5wy7VZ/nnRb3PDbFwqIig49XJXPurfuomR
         DLe3d/HtZIgd+Ok/6P6pGinbiUJfbrNwGvs0LRQtOi8fOFfIiktxEP5YMtIfW4FXmC+R
         woMA==
X-Forwarded-Encrypted: i=1; AJvYcCVVWkM4VeBaQz3eTKTM0LAVnFywx3bsG3zP0KIrWF8EnPYT0yvSLr15+MlRBCyLKQcONg0fDtr5TPeT@vger.kernel.org
X-Gm-Message-State: AOJu0YzyK0HHyDbHFaDXWEi2DpIGD6kzalQ3k0L/O9RLqCOV3IZXbaGQ
	ADz6eI6ZIFikOCVF866CTrSLQDKffyrgXyPY964+Vm8+T7GM7wHbZjmA
X-Gm-Gg: ASbGnctoRpThOPvpQZyq3T7nFbYAA72gbN/DQuoJM2CkKni9rp8yyPth38/h6z5et2f
	QBeXwbqJoXzsYencVVuagYhCaBhnUuLMz3YKG/8yvIzA8tmABCsInGvLMKlgaIkACvu3UzKyArN
	UiXU2XMEvm1F50bwcLzpVr0n428gmtbLLz7KKkHlsYbAjhX8cYrm58qu3DlDn0GG/n5Lal76dUX
	92YrfE8duV9Or2GgU5eo3UgX7hwKt3bg/nZBhVWftQsTWJC1bvpvYxCsMAREaaym77Zu7xeTRa7
	U2fOrBoHQczR3kcUjSFOXlFPM0F5RJ6tZ1btpBdy57ghXCs4VGFXDT0b9URIjBo6CqIsQNuJB5w
	NzhMBWau0RFLZvRt+NW2SxXExFU83ndyxvix/z4VIpC2Y4DkKlmsWPNlcvW4pchEVeTyga2MCTH
	gVew==
X-Google-Smtp-Source: AGHT+IEE/9i/67mFO6AX8/n+bNXkAiepciOEweVLIX/eQExePA3iiemiXfxV633d+lCMS0Zt6gY3Sg==
X-Received: by 2002:a05:6000:41c4:b0:428:5659:81d6 with SMTP id ffacd0b85a97d-428565a6ce5mr1254038f8f.37.1761142887849;
        Wed, 22 Oct 2025 07:21:27 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:27 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 03/23] clk: tegra30: add CSI pad clock gates
Date: Wed, 22 Oct 2025 17:20:31 +0300
Message-ID: <20251022142051.70400-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tegra30 has CSI pad bits in both PLLD and PLLD2 clocks that are required
for the correct work of the CSI block. Add CSI pad A and pad B clock gates
with PLLD/PLLD2 parents, respectively. Add a plld2 spinlock, like one plld
uses, to prevent simultaneous access since both the PLLDx and CSIx_PAD
clocks use the same registers

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/clk/tegra/clk-tegra30.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index ca738bc64615..61fe527ee6c1 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -154,6 +154,7 @@ static unsigned long input_freq;
 
 static DEFINE_SPINLOCK(cml_lock);
 static DEFINE_SPINLOCK(pll_d_lock);
+static DEFINE_SPINLOCK(pll_d2_lock);
 
 #define TEGRA_INIT_DATA_MUX(_name, _parents, _offset,	\
 			    _clk_num, _gate_flags, _clk_id)	\
@@ -859,7 +860,7 @@ static void __init tegra30_pll_init(void)
 
 	/* PLLD2 */
 	clk = tegra_clk_register_pll("pll_d2", "pll_ref", clk_base, pmc_base, 0,
-			    &pll_d2_params, NULL);
+			    &pll_d2_params, &pll_d2_lock);
 	clks[TEGRA30_CLK_PLL_D2] = clk;
 
 	/* PLLD2_OUT0 */
@@ -1008,6 +1009,16 @@ static void __init tegra30_periph_clk_init(void)
 				    0, 48, periph_clk_enb_refcnt);
 	clks[TEGRA30_CLK_DSIA] = clk;
 
+	/* csia_pad */
+	clk = clk_register_gate(NULL, "csia_pad", "pll_d", CLK_SET_RATE_PARENT,
+				clk_base + PLLD_BASE, 26, 0, &pll_d_lock);
+	clks[TEGRA30_CLK_CSIA_PAD] = clk;
+
+	/* csib_pad */
+	clk = clk_register_gate(NULL, "csib_pad", "pll_d2", CLK_SET_RATE_PARENT,
+				clk_base + PLLD2_BASE, 26, 0, &pll_d2_lock);
+	clks[TEGRA30_CLK_CSIB_PAD] = clk;
+
 	/* csus */
 	clk = tegra_clk_register_periph_gate("csus", "vi_sensor", 0,
 					     clk_base, 0, TEGRA30_CLK_CSUS,
-- 
2.48.1


