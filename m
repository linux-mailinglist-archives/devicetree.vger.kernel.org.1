Return-Path: <devicetree+bounces-239262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBFCC63190
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AAF06366FED
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E2E329374;
	Mon, 17 Nov 2025 09:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TYcdfTTO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5109F328B43
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370578; cv=none; b=slg+qoVjqRbKcqwW+kRumlysR73bbFFYYfeBABaTBhHINnXFsN8yppCesyBBWXb2Eo2He4xyuMtJWPN2bBF17RKmvEBBLdLBh/KiJqI01zMZvWFH1ONJQ202yqPwpeOhnGiTaft1ZCK/5rEwmgy9bi6y0j7+3pxKGMl28nAB2Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370578; c=relaxed/simple;
	bh=JjljQgas7DGEcN8zVwFliJCqA/9CipeGEbRjGs4wc9k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T1kq2uWz5Upp1RjpSxfD8Tvt+f1IH+3CV09iH/GnPV5pysCLdvgjsvM5xIQblua1WzfaSeFTP7z6KB9oXV+bTGB6VUv9iWP17T+PlevKpJC0lhM+iXlF/3sVDZ6nleA7ziIeAlyB9PZT5ftAoyC8C/v0UA8LX+IEpgT7brgHPTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TYcdfTTO; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso5892085e9.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763370574; x=1763975374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFJ2erejpxbkIEQhqGIz++SG+xOYypR9geXcoZY+s9w=;
        b=TYcdfTTOJsvxDi8xipaqV0ATgVgZkhlGs3Bf/fyfIAGVJGtAUryixVII44/sQP08fp
         ZKd6iFtq98dDFPzN7WfDLEhtvv9MR1t380QqnDI6NtG2y2JQO3yeKMdj8hqIojWNoWTy
         9eonE+iF8A2H6GNIfvyCoMTi/kfmcYtP6vsu6b437h/sCACsLJh6dQ1hfUTUlAE5FsMM
         7Ez+pktOf7gS61RrMEsXsWiHrnXGryiNXMwICLEVqJvN3cti9xbN8u+bmiKSE8PTQUIw
         kbgkRFIasBTTt7sCa/MZdtHCNs5eptLNfVyOIRK8hzL+DDg7XfecFHK4rRQoxtaHF7As
         Edhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370574; x=1763975374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EFJ2erejpxbkIEQhqGIz++SG+xOYypR9geXcoZY+s9w=;
        b=FnyXFmPmsOn6PVVQ8v5rICleE/VDNCETNAyk5/5eeZrLPUqJw2Rx/Y5UMPuV0o81i5
         WRwDzwDg1VtPBfZ88d3oq3cUYjHqzI4i8sRg3eetGmc9A7/waTz7+VtNPtNjyOPZU2c2
         jiWCmjakwbAgPeZMT5paCLyYXAW6F+6OnwmqltUFxgU6YVU6Gutb0X3P6INvX+qBXvva
         LgLNjbVt2O3LybqHR/IbzuedKks4KGS+czZA1u/gUKfAFQGopShwybFaUKpYCwDxfTnk
         UI+k0iMqML9touazsjU6zVZ5bF1nzIE0xhoBvlPq80zSza+A9Jsya3uB7xY4tuu9KI0h
         M24A==
X-Forwarded-Encrypted: i=1; AJvYcCVN5ux7k/9f2fNQfANCGSgRIRnLG+SkDAbdlp8FAqAO3QJPWBq5M+q5DgPEvq/31x+WefRH+CRnV1bp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy25vhumAxuLMLG0Vnad8KPEJrVL7dxoKXrxP2ws51GItC4t2F7
	OAIujCmHXGxHrxoHQSJF1W1qhCLPTHg1g5lbVIR9LW8JnOfmRrSsqym/RKV9G9oOc5I=
X-Gm-Gg: ASbGncswkG7c68Us2jhDZo+d3YN2Tadc8flodwEeEu7pvI6T9r/opISd36f3MW5r4Ea
	mjkCnoKa3I3PzrgnX+lB3p7lN3XnjuIys9rcXpcrXdxjPWp+RZrwod/KY53phx+Jau+GF6rPKRI
	bGiHeyaaAntrnHOrGICq+GMpdv5kbEDYxtYIGmdLqz5gv6NmFG301qiv4zpwfIDw/ocr0Vf9BRo
	4ryu6x0BQElF54VrQFD+wLz8uZEOeUzzHEEr5rpXoVt5HnPT2siqmrq2lePsXTEW4EyWYwmmBr0
	vM1HCr+9Lj/WV7g1fJEzVYqf+fdhEZ458bTVlQx1QqaWGKEh3LtWUcaPg9mPl1j2urBfTfOVHcq
	Ja99llKjueJ3HJj1OMICHdKz2Gdv4+CFgzrhxGVPL3PJ0aVXYK5jLFSpZpW6Bcx6nJJTLw8bmC3
	YQtVVEfW9myi67vYVy2lauSbnbvukyaDxUzPl9pOKu
X-Google-Smtp-Source: AGHT+IFE6UJWcV5X6YeeIc6kAalNdpdQ69L4bDzZB4HRy7rqCESHG0voUX9snlDb2jiivpyhIFWW0A==
X-Received: by 2002:a05:600c:1549:b0:477:9ce2:a0d8 with SMTP id 5b1f17b1804b1-4779ce2a4ffmr60130715e9.0.1763370574325;
        Mon, 17 Nov 2025 01:09:34 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm25703786f8f.26.2025.11.17.01.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:09:33 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v7 6/6] arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC
Date: Mon, 17 Nov 2025 11:08:58 +0200
Message-ID: <20251117090859.3840888-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable PCIe for the Renesas RZ/G3S SoC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- rebased on top of v6.18-rc1

Changes in v6:
- collected tags

Changes in v5:
- dropped Tb tag

Changes in v4:
- made it builtin

Changes in v3:
- collected tags

Changes in v2:
- none

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd104..54fd09317edf 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -230,6 +230,7 @@ CONFIG_PCIE_MEDIATEK_GEN3=m
 CONFIG_PCI_TEGRA=y
 CONFIG_PCIE_RCAR_HOST=y
 CONFIG_PCIE_RCAR_EP=y
+CONFIG_PCIE_RENESAS_RZG3S_HOST=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_XGENE=y
 CONFIG_PCI_IMX6_HOST=y
-- 
2.43.0


