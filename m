Return-Path: <devicetree+bounces-181767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 347BDAC8CE4
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 13:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBC027ACA24
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 11:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B82C22F742;
	Fri, 30 May 2025 11:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GOVGmP3u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C4122E3F0
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 11:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748604004; cv=none; b=WnmTiq64RN5/MEezsAkd/JHtR+u36E9rCDtcOH0q8bJ936RcCt2Lt0YFV6S7JyT8IZXXFymO6H0nRV6t4YP3MNSES/DdxYhTDeg/NFHSDaKz/WmmYPvyOOwJAKXiRszvMclxZHWAlpFZwDVOCNere2vIHWTh3nLxkgNBgsunYa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748604004; c=relaxed/simple;
	bh=PrFWTreIuoDsO+2dJtLRS+p9byMc23RZOKSzUzdjGdw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nt6FO8/0xU+PXEJWQWYbIYwLT60wimKZ/GDCzHXJg7DkTRw2ZIBkSUzNTrs8Re5m3JSn+NueB7VIPx3cRzJPYS6RSjABspLVLUVA0hjp7MtTnP+IQtXDvbO3cq1weEk9vj4MBSuaO4LZ01cAKeF5elmMqMxfM82ACqgVz+ob+LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GOVGmP3u; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-450d37d4699so6726055e9.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 04:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1748604001; x=1749208801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBGOjaATHiERWGlVICubjqS+hAYT10Q+U69oOw2FjwA=;
        b=GOVGmP3uTCvTkrkGmlk9XlPB7Zcc930lljqJSrcMoFR7ic1xGAqzYavWil06zi2mGv
         1+znsfSXNcU7BJdpSyWPzNlI3zsvNGfqfG1egeCbwtHmYcUwu/fIeK31Ua4pX19r0pSt
         GzYMBTdtRApDw9syaQcsooIxlWBOkrDJbutynG5UPmggQYjozAcfe8SMm70h1BvwLXm8
         Mf59w+tm6ZvJ53Uup/gg++/9hs1t9eiq3JbqC6FB2OM8OwSQK4YQKCAgWLVwaeCbNsoV
         MYvPkFsUMMzBYUFxtkeJvqK1afXhptMDP8zwwSr1WW+9ufSbd+O+EiLGeIx0D7ayGauD
         7Gbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748604001; x=1749208801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBGOjaATHiERWGlVICubjqS+hAYT10Q+U69oOw2FjwA=;
        b=f5Wqu/FLTMfS/pYru5HXcVLYxqh69M2VLG/9GNz2hzxZOhZDl+zO9yJBWLyy9vLLqU
         gn9ndKR9SiVBDMW9hI4Q34YS2hV3xQU9gFuJp5sQgMn94JoaDm1QimMKK/UpSt6HvSxa
         pBfaUsbTYGmHdqI4eubty53cE9l06y2ECl7wLiEpjMKic2MIlgIU3rRWMw97/AGKDHpW
         6tXUAuctutefxkeE04Wg3RQzQ2bo5dTyg667aN0o5JjMnkWeIJ+6HOZziGTn38N3VUae
         bLXfaLwCQIomBjXUtLyr4aqgFXRklZYV6r0NycyZj1K23vCKy6K2RjkXlLoh4rH6FjoY
         rblA==
X-Forwarded-Encrypted: i=1; AJvYcCXtAp7dGX+Ru1XNnB6m1to3oJAo4wvUFRKtK7HPKfOKCP4p6u9zB7F/0mtv8Tb4GWOwg0Rw6vGoIZgv@vger.kernel.org
X-Gm-Message-State: AOJu0YxKQtQMDhfaMTVnYIOTVMYuM6qfXBPyngNIrmBeqb8C9LCBCdL3
	qkGzRZGc+Tk512j2qIPC0tHx6eGEd4FnVCWv6Z7IHsOBgoohtRMhWUn1BxZ242CY8IM=
X-Gm-Gg: ASbGncuDuoCVrvOE7sscBQX9si0YhrtVDy2AzCL4pl1JfOoPuiVBFDD8bTpdOUTs4Xy
	1Cee4ILseD7MN2VjGenQ1Xtf1QNVKPenJgkN2LypzNy4xPBOehU6nMyjX0HEwh+1aXIeeKLQ+8F
	pjVAOcGs9k9QC+xmsquT1skKM8Vw3C4ZKmQ9mYBZJHP40uGi/EjeGtvkz4ScNt/7hccq3Yzfnko
	nfVrv/ZkmKTHrEOiCU0BBa+V3v7iA1xER0sbLMbUZ2DUaeBbU5uNEtLTM9lNxF9u5Nm77Z2O0xY
	gdIP6K6435uBN5XqiBtjNxFbp29+xrV+3Iy1TEzrpq+mCjdj6dbdZQkcnrr5RzsIrPXVzL3GmkD
	4yjjCEQ==
X-Google-Smtp-Source: AGHT+IFOnZeDzHLcJzr2XiB1V8TCQqZ4gnYI0oqjqw7IlK2qZ/Smc3vbO5ZYPTsUQejGYt+DG3ev/Q==
X-Received: by 2002:a05:600c:1d99:b0:442:d9fc:7de with SMTP id 5b1f17b1804b1-450d6546354mr24484345e9.22.1748604000826;
        Fri, 30 May 2025 04:20:00 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450dc818f27sm3986435e9.18.2025.05.30.04.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 04:19:59 -0700 (PDT)
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
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 8/8] arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC
Date: Fri, 30 May 2025 14:19:17 +0300
Message-ID: <20250530111917.1495023-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250530111917.1495023-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250530111917.1495023-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v2:
- none

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 897fc686e6a9..3274d14421d4 100644
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


