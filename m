Return-Path: <devicetree+bounces-172367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB196AA488B
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFE8D7B4E96
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B174425D915;
	Wed, 30 Apr 2025 10:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FmUjbCUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5359925D8E4
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009201; cv=none; b=HGbIm5VkMTQ/dQKJdJipO5KzrBfVEVDotabk4krGCmn4EJ78FfsXqvIft9cQnUiHy62NpdIZOOsGBp/kfMEJV6OZxYCWTGaIzdhuAoHqMIECrJgMm/XJotimiy9FuZQ37brMzY7YPFZzNERpRlwiwGzNoOsyJFTXEZmrbrBxLKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009201; c=relaxed/simple;
	bh=/qb3LqOk0CPpYt1EbGZXh/Cw0pmf2cmac/XhDTHJc/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eLGTeECjUxDWWm21M38BS1lTP0UbryU0pLJ4Y4z6ZXsfrZvhk+MDXmFrFU1kggOhUR0rdfQt17FH12DH/8grcHAwmhOfF7/29i5kf74GHgDBkXAUzTz1IiyN4ZpWZvRamyD+yQFTUMFsAMnMOZulzaqzxHBtqL0l0XljLd/g61I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FmUjbCUe; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac29fd22163so1062751766b.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009198; x=1746613998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5/1UiigIwXR8rjSUy1c3Sx5vxGn2/huSophWGwjW0Zc=;
        b=FmUjbCUel/sDyoT96HiYbVfnZDo+v2BW0CCcZWw0bXzJ++Q4SVcTJ49ikGG0R++cfq
         aXg03AGEJAXs54SuWkde7nF8hOWT036NHNkkwZyQsmFXJJLUa13uq3yJbgxKKdfn/axD
         oS2YzykAKuXhdWJixjv+yoMhJcDe+ZMoicXN3L0MfJ6CaV5RkevYwhMZSzU2eEK8xjBz
         BSp8I4HfY6DB/hd0OxI22CAhdUvJZKRe0xh3HFZm1j4vSWyszzyczuAsbnvBEbr1EbaP
         0GkgnSQ1h6N0FyWhYWwsBoKgXXTSv41dldS8FRWOFIUv5RkGduvGzmRT1Jx6Y3LR4/br
         7QFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009198; x=1746613998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5/1UiigIwXR8rjSUy1c3Sx5vxGn2/huSophWGwjW0Zc=;
        b=YDIZdbiAfxs/N/mHkHPU8b27VMAetfdQjnxwJ2AGdre7xXbNg/VQxx66jyNsji+v8x
         16K+O/8hTotgY3hU+UkLKbJm7yMLn0SatlMKigTWegUFxnPH79WYaPui+KpipxEn8M4k
         kWKFeyFdTVAnEG6ZsQ0pROMFTA4G4aK9VtzJY8/Y/qcFwidYKe4UO/imzr+RMJgFY/L6
         qRcVFuFyA15/ykhgVpLFl5VVgu7xaWI5Gn5Y8Kwy2hqAy03WZ2P6joAl0ZneHACohl5+
         49lB/DoyUhBIMEu74UD3+Wh9RAPkNKoB3NpTk5XRH0Qe9pEWsg/1kwK5eEsUoOngzy96
         CiyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcOyysUiAwBXwwBIMcFyvG2VCzdTcY0UBXeROv29TfMsB93NK5wTkC0zfWBUNWP4GCOj/+XGApUeL4@vger.kernel.org
X-Gm-Message-State: AOJu0Yymfn2aLgznDWzUV4cgPavp45xjID+/tnv3i/MlSn3QkfM0dfbC
	k1a8Vedpae59GOk+CjSG6KlpS8nDC8V2LSUQ0kIQVxF9wcb/pEmJFrBv0lNp9dg=
X-Gm-Gg: ASbGncsqlk0LcYHZagSqhCSRDzMsJPpfeyA6/CGvIa9dBgd/KnU7JQCh1ANH7NgpvHW
	Qhu/zQhyv63ZOIQqiIany1qQXwBdUNiNO5rcmQgvHwQ1UhDmTTm2ZigFHScg52wh9EpqS4Bb7r6
	k9MNFAG/KQrdqSMylsJ7IlDo9Ijq9UxEZQSmiEFpLmDqR9Ai5jT+hTdGR5SR3C/V9OqaUtBybUC
	H7NLBeoZj/CsXGSdGzgNXLfrEG2ICmld8rHV+KC5TriqUgUJWwNPcXuc+3EYUuaDLNmdj61F/cp
	KPNn3+A1GaDqNQLSoBtSsDpt/wZGDWDMAS8n9eYeKpNd/n+VKXgKP090Ey24vOz6cSy/1Hs=
X-Google-Smtp-Source: AGHT+IHBcCruFD2Sx7wtL0cb9Uodi9fNatKRjptTZekaQF3eLuwGTgjpuo5/jbKcvNzZcB+Y1bBY1g==
X-Received: by 2002:a17:907:3ea2:b0:ace:da39:7170 with SMTP id a640c23a62f3a-acedc768b2fmr307149666b.55.1746009197623;
        Wed, 30 Apr 2025 03:33:17 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:33:16 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 8/8] arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC
Date: Wed, 30 Apr 2025 13:32:36 +0300
Message-ID: <20250430103236.3511989-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable PCIe for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a92c4122a8b9..b36a96777018 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -226,6 +226,7 @@ CONFIG_PCIE_MEDIATEK_GEN3=m
 CONFIG_PCI_TEGRA=y
 CONFIG_PCIE_RCAR_HOST=y
 CONFIG_PCIE_RCAR_EP=y
+CONFIG_PCIE_RENESAS_RZG3S_HOST=m
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_XGENE=y
 CONFIG_PCI_IMX6_HOST=y
-- 
2.43.0


