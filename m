Return-Path: <devicetree+bounces-127226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D70AA9E4E9B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DBB8282F85
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 770891C4A2D;
	Thu,  5 Dec 2024 07:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yyGxucQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891E61BC9F6
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733384002; cv=none; b=fnW67ZyCbk9TFItOCKfOlLGdLOaSlfbFotWsx3ol0+XulKcA3Juxr39/188Wrnu0rKZNtW6rOfXIxmUwN0gi/3g61RRZF6th8T4OgAEamnablmrhSq+gGAjkTDwsWdPDusAc7LyFzuN/954aad8/zUuTALwmzPsuFN2tiucQ5v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733384002; c=relaxed/simple;
	bh=CFDnvoKepLGgKG240K+RL7DyNy+jMXcYg9bl16wuquk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KsLe3Ftpxe94hXIV7r8y2H5S1UG69h7jeJpD4We3uPNpx1cgkJrWDsiGkKPpObH+77e99VTqy45FVh2C8FFVG6CFiI52MLF22JsM48kGr8baIrq7NIPdi0IhPH8AibUhtaClXqH9yKnzphNqbwhLFiXiosnoiRONB8kwdQwyxS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yyGxucQU; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d122cf8dd1so882801a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383997; x=1733988797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nLOfMOwPIHBPvbwfjRUM/XHx6oKInvatLpnoOXJri+4=;
        b=yyGxucQU5i23Z2q8J64YqDnhqASzv3FBVzRLRuAqN01Twh1eJtzkXcd+THCH+7As7F
         +5QH1/QzM8tuNj3i1vnK5mA1ngxVrN4M0k+LU+5MnYH+JVXu6xzZPgTdPXmFtQWPSMUe
         ped1xvr8gPee3dtEZsOd525gs7dX9X7XrQUjUl4dGO8i9V1P+EtiuZjgTqoCjDvvAXmv
         4e5bFRXTOVgkaAb6CHB8teZt1efhBGAqew0qwTRkXoueSEKgE4KGJMnyIpettLRdfAmm
         L+RrIoxszlOzLR5I1LJ8qt+Vc0qLpQU9JtenyvzSSbM994tnziKYEb+/lqmgJJqxq13/
         EFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383997; x=1733988797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLOfMOwPIHBPvbwfjRUM/XHx6oKInvatLpnoOXJri+4=;
        b=in8/eLK0zRP9SQzlJHZbhwcpbED9VvMJE075C/4nDxmYGKCRB1ufCfzelre8bDxQKO
         B/l0bYhxTB1K6TgeX00XZA4r4nkOslvtGIW4VgqAJOEfMA71Qq4M9a89eVrELq2LriAR
         /SqZ3DmcHageEHKkke1PrllefAlnlVcbwHXGrX05KYcn9brXXk3NNS1JxXWblRPJ1qNa
         lyOM9cQYIda77zXfy2MhTXFgGAKQZsOQq9nlYG/Ii/h7PbufxiBwH+pTxh8Ts50lzFbW
         v26t2UL5qwoA6gJtj0954MerUgtzz6SJv9aA5ha41QLsT2n/0pLgv55bJ/VOMSLv5r/U
         YWbw==
X-Forwarded-Encrypted: i=1; AJvYcCXGRfv/nPdUjtCGhXhI1wl/fsu7Bmw7p32q51B1cuzg9NKL7bHx+RNfvGofQgNdzT5ta4AGmfjC9l2b@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl8eBWOCthMp/VDuzHjGrphhXf/mIWoYbpL2QP3SQvtcMKuSPW
	Db4dwFML1osgzr8qqgQ4n+74EicjdA5cnTpNZmJXWIEe0u9ypsPXVrGlipLA1WI=
X-Gm-Gg: ASbGncu15LdcaZN2fyqKV44Jr37nH9Aw/gQJkoBS2vCiFWqo5pbU8PjgWBBxlJEK4qW
	rmnfUOL27cPRyw//4OX46lsbrmygoEGFPJ01YJrVn2xK+RxPIBbXQKCNWVFUkxHDVVxrA2OoMMd
	76UJHRE9bVhaKViwscwH7k3oWg55Km/yU/hOpWulQsxUjbT+d3g7sG1bvIv5SV6Tkz7/WS9R0Wr
	3zMOyek9TJnUFSmbglXOvVNaGTDz1oGMFV9WAkVGkXWFVrnEMutLw1h87KZPSlZLTjJVucJauiA
	+7VmBZl1snecPS7NDfTVjLdRsa1JKx9sAg==
X-Google-Smtp-Source: AGHT+IGCfTgApqQL3VCgsM1Ba0voYQrJI0iEao7onrk0A/1wy1VpFBbbhBWXXPKS1vKyVfQVWGrybQ==
X-Received: by 2002:a17:906:4ca:b0:aa5:f431:2960 with SMTP id a640c23a62f3a-aa601766128mr687180766b.7.1733383997478;
        Wed, 04 Dec 2024 23:33:17 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:19 +0000
Subject: [PATCH v3 8/8] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-8-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

To make USB runtime suspend work when a UDC has been bound, the phy
needs to inform the USBDRD controller (DWC3) that Vbus and bvalid are
gone, so that it can in turn raise the respective gadget interrupt with
event == DWC3_DEVICE_EVENT_DISCONNECT, which will cause the USB stack
to clean up, allowing DWC3 to enter runtime suspend.

On e850 and gs101 this isn't working, as the respective signals are not
directly connected, and instead this driver uses override bits in the
PHY IP to set those signals. It currently forcefully sets them to 'on',
so the above mentioned interrupt will not be raised, preventing runtime
suspend.

To detect that state, update this driver to act on the TCPC's
orientation signal - when orientation == NONE, Vbus is gone and we can
clear the respective bits. Similarly, for other orientation values we
re-enable them.

This makes runtime suspend work on platforms with a TCPC (like Pixel6),
while keeping compatibility with platforms without (e850-96).

With runtime suspend working, USB-C cable orientation detection now
also fully works on such platforms, and the link comes up as Superspeed
as expected irrespective of the cable orientation and whether UDC /
gadget are configured and active.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* update exynos5_usbdrd_orien_sw_set() to not test against previous
  orientation
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 50 +++++++++++++++++++++++++++-----
 1 file changed, 42 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 6dcc3c80c1d2..ae42e299ba42 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1137,13 +1137,15 @@ static void exynos850_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
 	reg |= LINKCTRL_BUS_FILTER_BYPASS(0xf);
 	writel(reg, regs_base + EXYNOS850_DRD_LINKCTRL);
 
-	reg = readl(regs_base + EXYNOS850_DRD_UTMI);
-	reg |= UTMI_FORCE_BVALID | UTMI_FORCE_VBUSVALID;
-	writel(reg, regs_base + EXYNOS850_DRD_UTMI);
-
-	reg = readl(regs_base + EXYNOS850_DRD_HSP);
-	reg |= HSP_VBUSVLDEXT | HSP_VBUSVLDEXTSEL;
-	writel(reg, regs_base + EXYNOS850_DRD_HSP);
+	if (!phy_drd->sw) {
+		reg = readl(regs_base + EXYNOS850_DRD_UTMI);
+		reg |= UTMI_FORCE_BVALID | UTMI_FORCE_VBUSVALID;
+		writel(reg, regs_base + EXYNOS850_DRD_UTMI);
+
+		reg = readl(regs_base + EXYNOS850_DRD_HSP);
+		reg |= HSP_VBUSVLDEXT | HSP_VBUSVLDEXTSEL;
+		writel(reg, regs_base + EXYNOS850_DRD_HSP);
+	}
 
 	reg = readl(regs_base + EXYNOS850_DRD_SSPPLLCTL);
 	reg &= ~SSPPLLCTL_FSEL;
@@ -1407,9 +1409,41 @@ static int exynos5_usbdrd_orien_sw_set(struct typec_switch_dev *sw,
 				       enum typec_orientation orientation)
 {
 	struct exynos5_usbdrd_phy *phy_drd = typec_switch_get_drvdata(sw);
+	int ret;
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret) {
+		dev_err(phy_drd->dev, "Failed to enable PHY clocks(s)\n");
+		return ret;
+	}
+
+	scoped_guard(mutex, &phy_drd->phy_mutex) {
+		void __iomem * const regs_base = phy_drd->reg_phy;
+		unsigned int reg;
+
+		if (orientation == TYPEC_ORIENTATION_NONE) {
+			reg = readl(regs_base + EXYNOS850_DRD_UTMI);
+			reg &= ~(UTMI_FORCE_VBUSVALID | UTMI_FORCE_BVALID);
+			writel(reg, regs_base +  EXYNOS850_DRD_UTMI);
+
+			reg = readl(regs_base + EXYNOS850_DRD_HSP);
+			reg |= HSP_VBUSVLDEXTSEL;
+			reg &= ~HSP_VBUSVLDEXT;
+			writel(reg, regs_base + EXYNOS850_DRD_HSP);
+		} else {
+			reg = readl(regs_base + EXYNOS850_DRD_UTMI);
+			reg |= UTMI_FORCE_VBUSVALID | UTMI_FORCE_BVALID;
+			writel(reg, regs_base +  EXYNOS850_DRD_UTMI);
+
+			reg = readl(regs_base + EXYNOS850_DRD_HSP);
+			reg |= HSP_VBUSVLDEXTSEL | HSP_VBUSVLDEXT;
+			writel(reg, regs_base + EXYNOS850_DRD_HSP);
+		}
 
-	scoped_guard(mutex, &phy_drd->phy_mutex)
 		phy_drd->orientation = orientation;
+	}
+
+	clk_bulk_disable(phy_drd->drv_data->n_clks, phy_drd->clks);
 
 	return 0;
 }

-- 
2.47.0.338.g60cca15819-goog


