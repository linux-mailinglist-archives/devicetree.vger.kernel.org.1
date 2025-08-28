Return-Path: <devicetree+bounces-209938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08020B39950
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59F287B731A
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 10:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4478A309DC1;
	Thu, 28 Aug 2025 10:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/F+kSom"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B480308F2F
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 10:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756376130; cv=none; b=l1Es1Jl9gYJp+aN0P1q/gIuaIPoRabOmOjd50aMcv0iPXgteDNQZkA/ewj6PnmHYrEXJqAxUI4oFCJ9cGoQ7zsSBfbjbBaLFBSjAR8SLqk3BpMFvRfggK+2L+tgZk39e4N0TUbUzCOFY0ORf5Cl1idFWm3odYkv2ze45IPmtibM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756376130; c=relaxed/simple;
	bh=vwAyXPvEWNr8LT9tnA25vDO5c9cTWlSyoxFCI3Eqm5k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F7iHWBgCHsfV3sYn27e6eIiFbLiwGni7mJXmmZrVYKHXN3icJqc2Ulfd8KX+MVMzBlacBEPtz+yqtQ1Q6H9xtCN+ihY55vgtPAf4yJVRZwcyY9VRlbPDxNOUplDgYZvFxm+yVzvFTWR0FlImbPsrTO5oPCUeX8AB8rdUByGUTdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/F+kSom; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso4283335e9.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 03:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756376127; x=1756980927; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFyM4ThRAnuOrWqhdN303iEN0WDuqA9mWMtHiG3HC74=;
        b=Q/F+kSomBFocP3pPe0h/VlKhGH4/dHwJ/O/p55Eq7N9DvVCXKES65onouk7aOnTGpJ
         0R3VB2pCIsPMt6G/zw/DjUcOA08VDpEQF91K0daTpM8ygl+x6nhUJaRvTT+LiMclm/r+
         Ewu00cOqqbYJzOtzQmyOk9HKIL5H+0lXSbjNky3YF+qDYX4/z+XmYHhUFsWpsUYaW/+I
         ZaswOcZxZf5K/2kNrxYYDW9o9HGdKqoRW2TJ7n30c9S0Z4pSHwENGtq4rueVmze3uHPU
         WrPw2IcTteGKiunFdpYxIhcVt1PHI/0R0fJv8+OliluQeMHnUOga8kXUrTSHOwWjD14k
         G26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756376127; x=1756980927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFyM4ThRAnuOrWqhdN303iEN0WDuqA9mWMtHiG3HC74=;
        b=UgLZ0bl4VX4FndlutG9wdUa2GEMRcOCIjAZwYEe6lYe3s0I1mYXPUhQ9nRPWEv9TI8
         qvkFwMrGBCvX1VNF5a5LnP5HjEU9lkfyT+xKHWLjUQTP44+EpYMiB9KASN26ZidgI0Ty
         1jCCSlq6ePE0/LsMa5uK+/IPoUxbaSaHgS7iARF3QvU/sed8QoGMZvHIy6SQSnBDmiPC
         Y8GljONrwWEWP9Lj8sio/cFYWk2EwY/bTJ2r+t7XvabhsT1TQuPjmjlk+G3Ge8tiX6hS
         bEAcaIgJDb/i5rpQSQN6Vu+CEEPa491UYmlQok7S2vtqDzMABrDgHB0TK/SWP1n8QSvp
         1QzA==
X-Forwarded-Encrypted: i=1; AJvYcCWWci/hYnbJk3/Q2gACLFNBJ5yyw+10bvp0oc4IrI8Ar+TUxQYk5b9CNROwOHs5vSHj/GVvcOmF6pSg@vger.kernel.org
X-Gm-Message-State: AOJu0YyC2qLolPgsSTr8Fo5Ilg/g6beTTnjnOnBr5JIl4ZK6v/hMc4X4
	VKsN97xI+Nc+IZnF1XLNqYtAA+gfM/NLLfFxC5LlPxML/7fRMwTcgZ85z/y3ZgujrTw=
X-Gm-Gg: ASbGncuZFoUyjIUF1vPqoeDXMglwGPngrTaOw4d5ITDFzJcPPX83EqdFkGrlHVOwU+x
	Glr8KcgC8N+sxwOccqJR+gLOSv4QuqY10qaOusD+RIqnvRFr+lW8kDlxr05PN2ci8gkyVzHrtzB
	PCaZF5te7+CogG/vOy/VUbggO6bF/q0nGquw+swWh7qVC8pZLmER+GPjK0CPi55AKHnYZgDM4vm
	AJeyD9iVw1QLJRzuFuY2t879IBsaGhItPnzohF39jr920rN9UlJfiOZ1kUcCvzH4qr+Fo+/O9LW
	TDbYd0oj6w5VZkGeq9AQhsIy60U/F2M9zSdtqMJ0Av4/5C2OWPYjtRcagX1m/bxSNAzWAI84q6w
	FJBiLXb2aKnPNgu82FkcPUh8j2hvTjIA=
X-Google-Smtp-Source: AGHT+IH4dJDXOuG6Gex6qppq8O+/YSy8+QUqMDaC7Dq+UPsdjndG68BzyEzfoI8KEAsLq9qblHr5rA==
X-Received: by 2002:a05:6000:2c0e:b0:3c9:f4a3:f146 with SMTP id ffacd0b85a97d-3c9f4a3fee4mr9904913f8f.62.1756376126673;
        Thu, 28 Aug 2025 03:15:26 -0700 (PDT)
Received: from ho-tower-lan.lan ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b66f2041fsm49976305e9.5.2025.08.28.03.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 03:15:26 -0700 (PDT)
From: James Clark <james.clark@linaro.org>
Date: Thu, 28 Aug 2025 11:14:41 +0100
Subject: [PATCH v2 2/9] spi: spi-fsl-lpspi: Set correct chip-select
 polarity bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-james-nxp-lpspi-v2-2-6262b9aa9be4@linaro.org>
References: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
In-Reply-To: <20250828-james-nxp-lpspi-v2-0-6262b9aa9be4@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Clark Wang <xiaoning.wang@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
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

The driver currently supports multiple chip-selects, but only sets the
polarity for the first one (CS 0). Fix it by setting the PCSPOL bit for
the desired chip-select.

Fixes: 5314987de5e5 ("spi: imx: add lpspi bus driver")
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: James Clark <james.clark@linaro.org>
---
 drivers/spi/spi-fsl-lpspi.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index eaa6bade61a6..5ea4a306ffa6 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -5,6 +5,7 @@
 // Copyright 2016 Freescale Semiconductor, Inc.
 // Copyright 2018, 2023, 2025 NXP
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/delay.h>
@@ -70,7 +71,7 @@
 #define DER_TDDE	BIT(0)
 #define CFGR1_PCSCFG	BIT(27)
 #define CFGR1_PINCFG	(BIT(24)|BIT(25))
-#define CFGR1_PCSPOL	BIT(8)
+#define CFGR1_PCSPOL_MASK	GENMASK(11, 8)
 #define CFGR1_NOSTALL	BIT(3)
 #define CFGR1_HOST	BIT(0)
 #define FSR_TXCOUNT	(0xFF)
@@ -423,7 +424,9 @@ static int fsl_lpspi_config(struct fsl_lpspi_data *fsl_lpspi)
 	else
 		temp = CFGR1_PINCFG;
 	if (fsl_lpspi->config.mode & SPI_CS_HIGH)
-		temp |= CFGR1_PCSPOL;
+		temp |= FIELD_PREP(CFGR1_PCSPOL_MASK,
+				   BIT(fsl_lpspi->config.chip_select));
+
 	writel(temp, fsl_lpspi->base + IMX7ULP_CFGR1);
 
 	temp = readl(fsl_lpspi->base + IMX7ULP_CR);

-- 
2.34.1


