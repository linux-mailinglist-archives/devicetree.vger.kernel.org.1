Return-Path: <devicetree+bounces-124957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F60F9DA64D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01820B23621
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 10:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D5A1E1328;
	Wed, 27 Nov 2024 10:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ujw/fRqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283881E0E0E
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705099; cv=none; b=GmLZkg3wME5KeqhBVHG24Apam3gRYWtGp2FbfePFP+u1k5eolmVbIR8T9HyQ2JARODEsT05vC1o3mzm1lxWOgi0gHI/n6e//l5XaUV3ZMNaxWCpoSIK++23pqJrzARvu0VbV4iahOjDYbwyrXHbl/DxJ1lYYY5YdR7sdXB15eq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705099; c=relaxed/simple;
	bh=tKaJ8XmsgFD3GQxgQIZteM0dQdO1QVEogrJL/zBu9vw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FK6shknN/mlo++l57rZL/DrdNVdF8sPgEEEAMKWiB60lknytqaIUNooPXyX8vfEpDO6Gp2cXFzUjaoxdBwGJFApVXWdS3z8AHD4iNrZN8iizFUwyo+dpSQedPQZB4gDFti3BcfREqyt3GER9OF+5V6gfah4Sm/bXfk7IataNdxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ujw/fRqS; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ffc76368c6so50055471fa.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705095; x=1733309895; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9Ja8bSv98C0dnIrT5U7vJcSaQnvSrF1zZ95Z+KMMq8=;
        b=Ujw/fRqSokWUTYujzyoPLG6nTy50DI2hXvfB/p3z7pdWNRpjEZsR5uERnSE5uJ9tDa
         3tDDiRsBNV12ceYCteeplalW7ZQ4sDGWQlTmSGJVb0W0KAShBIK7fdr+BF9GKL+WBx9x
         +GzXm6bxQcFNJcQnwLNFKTCKy0PzzOv0LvX7roufg+UE0LM0co64qIXxrwYybnxhedAh
         Rb9xZ7kXlQuC/JA/3eObN36b/9X5GWZgTzF1IerRldiLlX/BPfuwDqdO7I0fDJu3qFQO
         ANCuIw1zd9FRms5bAM+yguVJctxLJC/mWulb28TEw/V8DEOGCaYj8W5Aqwv7Fg+0dL7+
         IB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705095; x=1733309895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w9Ja8bSv98C0dnIrT5U7vJcSaQnvSrF1zZ95Z+KMMq8=;
        b=f3Vz/sTBz2VqHYuvu/17jr2GBtnSiFgh1GGI4aU7rTNwlaz7UmwRpdBhpVEPDV/Wzz
         ABKy8V717oFA3v0/eZDxgjCtse7Jq+3It8CjdajYgonhhvMl+CdV3zbe6pDdFen+Wc0H
         lp4kg2DMKG3+PCb61tk0TCQiAXaaCQo/PtPt29xwm2unRZufgWJ0H4k9b1WFyu6X+gdU
         P+7HwOu13OlqoQkjRnMMxjPxkyulKPs9oNlrYUWPu4Z18RJG9J7K5qpnAXF7a6lmWaLE
         Y1t6H9I6roYrXBzxJbHxVnXlB/gmzxYBG1DQhJjM81OaCf+pZp2uPZ9FLGAZOxgBjRYF
         GKSA==
X-Forwarded-Encrypted: i=1; AJvYcCVAojKz6k6y2nVdkxn6pyfcqprZ+rH8t7+KRsX7huPcE+43ICJvBp1KhbR7SOAHDFhJHsL+soFuA9eS@vger.kernel.org
X-Gm-Message-State: AOJu0YyXlAdMmQmGFNcjn6de2G9TV/3xlT70Wi0BQlYYYp7G2bjs7bAV
	vTaNVHJRNaaO3uVEB2FzFgcKvLpQxGi32WD4YloaRB78q/8ydsCP04BYtjjMM7/FdThympztjz0
	xpmE=
X-Gm-Gg: ASbGncua1z3fN33edToyaHTbn5akkH2VcVixgLoAgtABBsQ4If29uii2EOg5MUQDOE4
	hroA5D4scTIfB9wHrE+VSEbipJC2CkInaN0p7BTrvfRY5OroQGfRdH1710c991A77DMQ5OSO10q
	mkbl24e4A6dfg74aJ2ZGb2HE3M6Qel51WAzshstRGt7H3ePIFIIH4tZajMYJQNBSL0BzoPxeehq
	b3NQWRm1+VnI8LW1p0OnuyYkqxz8KqopHG2kD8ice4CBddza/bMMxkHf7v29g2gFN+f6dd3SfG5
	X0xN6cDLJqRKr3aQFePV9v6RU06rP3Spfw==
X-Google-Smtp-Source: AGHT+IGFJqt4+X9+b9OZ9iJ+1uoSSp1Y782XmdGaTyXXLw7W9wq9YHlHSBg308ZxZ/fLYqnCqQPhog==
X-Received: by 2002:a05:651c:b24:b0:2ff:c4b2:496b with SMTP id 38308e7fff4ca-2ffd5fcc1c9mr16671261fa.7.1732705095196;
        Wed, 27 Nov 2024 02:58:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:16 +0000
Subject: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated to
 SS phy in phy_exit()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
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

We currently don't gate the power to the SS phy in phy_exit().

Shuffle the code slightly to ensure the power is gated to the SS phy as
well.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 2a724d362c2d..c1ce6fdeef31 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1296,14 +1296,17 @@ static int exynos5_usbdrd_gs101_phy_exit(struct phy *phy)
 	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
 	int ret;
 
+	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI) {
+		ret = exynos850_usbdrd_phy_exit(phy);
+		if (ret)
+			return ret;
+	}
+
+	exynos5_usbdrd_phy_isol(inst, true);
+
 	if (inst->phy_cfg->id != EXYNOS5_DRDPHY_UTMI)
 		return 0;
 
-	ret = exynos850_usbdrd_phy_exit(phy);
-	if (ret)
-		return ret;
-
-	exynos5_usbdrd_phy_isol(inst, true);
 	return regulator_bulk_disable(phy_drd->drv_data->n_regulators,
 				      phy_drd->regulators);
 }

-- 
2.47.0.338.g60cca15819-goog


