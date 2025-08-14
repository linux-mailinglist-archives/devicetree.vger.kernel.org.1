Return-Path: <devicetree+bounces-204766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEE5B26BF2
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0381188B7CE
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39143247DEA;
	Thu, 14 Aug 2025 16:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UC6ZixgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B05248894
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755187626; cv=none; b=H6+Bosh91kSptIYfbWCLDCl3enAvXlBLwr5yC1fM+207iw5N3NzcxSdcL91Xhw37egGGyYqF/5NLppbByyvy3HN8WpUmSCkTFOLCKFTWBkV7yJOAeUFbczMsnaUFTjbNU3tEj09ifBunqDqJckUYrKZbrYTRjOLpS+zszbc8rSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755187626; c=relaxed/simple;
	bh=LIQFUNWTOqtolcuHkK+5pFdAZIsgYQVKYSFmavPARR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rAss/qHui9Gm04fAWW53MrJ8ld8TKyQRvWAybqnqYEyOp/QtdYhxc4CQ3caNZvLnBy+GjE659ZjQ0hyTYOEle9DhTQXEco1huQ5y2QrN2CS7TiwWj8WhCPkE0SS/gXnumpjZ/VLGD+t40rgH76s1KW1NRTn4As4og+eCizVcxdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UC6ZixgO; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b9edf504e6so569630f8f.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755187622; x=1755792422; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Uvtvrck5DhEfDGyTURDlx1K5TeMVtpeGZ6H7CuQmSw=;
        b=UC6ZixgOqGpndMbxWTWe6b6053rtwQSP6FVAtHMfZXA4J+8O4tAytCkXBAKJyeB0nA
         P+H7HQ2kNCC0ZktDELHXWmb231LzqTL5DJIY7OMviT/mR60khjNdlJEK4fXcL0Dfn3+A
         Dj3yfIp+v9/kV68xFFr1wuqAu1Le3CN5hvjJZLQ4U7SKZlm6g/sl69ExuwpQMa0eXONS
         HnKz+PikUFAsjMONjp0orJzTjrTGx4Mm9wTH6Ljpi8hFApOB/fTh5RfkV18FinZU+nML
         0yHeNDtv5F0u1uj35VcFMPmm+nTIVRO21h1klh/DLUsepif2KQIx5IxpOPlJ4B0jSq9C
         y4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755187622; x=1755792422;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Uvtvrck5DhEfDGyTURDlx1K5TeMVtpeGZ6H7CuQmSw=;
        b=mhIeTU2N6ZEv5irOhBR7dxhz7pPrPSyGkJfptKS14iTda7cmawKKMVDYqQhGP2o7WA
         DN8kpKa4kqRXwsog03eeceel4pa/mz1CaHEra+DQIQaFjEtUnCm9HR+9Zo/sHRKynVjO
         B4CUNAaJt+pK93cOWs5NBXGTdrCEjecI4DwL6qAh+a8R7/E7IGkJK6S8Kj1ffYKMFqGk
         F8jzK7FVlWxAK330GgfSHP5fvYGG38B24KH3dCgQAiadhxRrkS0bDFC3gxugpED+HF+r
         h/xJaB3n3aZJaplXnnNt+En7hoeFvliJCqzodbEmZOHotqKn2K5iK35SmZHJuSZ5gyir
         KhNA==
X-Forwarded-Encrypted: i=1; AJvYcCW3chmU/lUHNLIYccw6YBxP1nR+jS8/oaV24iyyWqvDVrA4tjVOeWAxK4USQbeYO/YfDyaFwKmpg4ZH@vger.kernel.org
X-Gm-Message-State: AOJu0YzNJjklDFR9kf2OSbf35AW/qBqLb6BixOrUlNx8SJGP3/sD+EBA
	wUOM8u+eEMK44BxLd8oPkBplTXYNiHD+c8vVCB5w1TkYwW+Qkf5LYWb/nK2I6lcIzoo=
X-Gm-Gg: ASbGncum5oLkRCt5aO65SA0uEMitezr3RggzbwNRa9bMXa6AGTgNHpE/KcoNXwqNWHj
	ycg73UPqxlIDo6LMLqDPd/wuTo94xMuJYdOnNScfiYIi7usaUMatA4r/dnyCrwV7hbQIEJthGpz
	IEkTsWmQvFuQey5I1y0EZcjnnJD3fO0jZaD4I1yVehs39XviJCuKs/RhcyUHS014lNWdhQ3bWSF
	1iY1HmP9rDGVVazUZDUv9x2gONndMUT6fs56YEwm1djMpntAdSmZrJ+c+cFZTtfhE1fnjLAu4C1
	OTLQxB0e0pkTmOrlWk6Nq/TXS7bW7xkuQd49oa/dqoJTfm3UgaCMD1jx42+e4MmSvuwwheRMx4U
	X9Mudl9cadsUiiXYmrFOt2qgY2sgMbFjEHCls7liyhg==
X-Google-Smtp-Source: AGHT+IGGBjbFKFRqiepm/LRwXnuwS+AKKH1MPA2LgWH+5Eq1mmSqrnU9CryUHU5mJcv16mc4hIWejw==
X-Received: by 2002:a05:6000:2893:b0:3b9:1d32:cf34 with SMTP id ffacd0b85a97d-3b9e415856amr2916372f8f.12.1755187622548;
        Thu, 14 Aug 2025 09:07:02 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bd172sm28363495e9.6.2025.08.14.09.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:07:02 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 14 Aug 2025 17:06:41 +0100
Subject: [PATCH 01/13] spi: spi-fsl-lpspi: Fix transmissions when using
 CONT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-james-nxp-lpspi-v1-1-9586d7815d14@linaro.org>
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
In-Reply-To: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>, 
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Larisa Grigore <larisa.grigore@oss.nxp.com>, 
 Larisa Grigore <larisa.grigore@nxp.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, 
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com
Cc: James Clark <james.clark@linaro.org>, linux-spi@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0

From: Larisa Grigore <larisa.grigore@nxp.com>

Commit 6a130448498c ("spi: lpspi: Fix wrong transmission when don't use
CONT") breaks transmissions when CONT is used. The TDIE interrupt should
not be disabled in all cases. If CONT is used and the TX transfer is not
yet completed yet, but the interrupt handler is called because there are
characters to be received, TDIE is replaced with FCIE. When the transfer
is finally completed, SR_TDF is set but the interrupt handler isn't
called again.

Fixes: 6a130448498c ("spi: lpspi: Fix wrong transmission when don't use CONT")
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 67d4000c3cef..d44a23f7d6c1 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -3,7 +3,7 @@
 // Freescale i.MX7ULP LPSPI driver
 //
 // Copyright 2016 Freescale Semiconductor, Inc.
-// Copyright 2018 NXP Semiconductors
+// Copyright 2018, 2023, 2025 NXP
 
 #include <linux/clk.h>
 #include <linux/completion.h>
@@ -787,7 +787,7 @@ static irqreturn_t fsl_lpspi_isr(int irq, void *dev_id)
 	if (temp_SR & SR_MBF ||
 	    readl(fsl_lpspi->base + IMX7ULP_FSR) & FSR_TXCOUNT) {
 		writel(SR_FCF, fsl_lpspi->base + IMX7ULP_SR);
-		fsl_lpspi_intctrl(fsl_lpspi, IER_FCIE);
+		fsl_lpspi_intctrl(fsl_lpspi, IER_FCIE | (temp_IER & IER_TDIE));
 		return IRQ_HANDLED;
 	}
 

-- 
2.34.1


