Return-Path: <devicetree+bounces-232740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5ABC1AE54
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 59A8C34F51C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19A13563DF;
	Wed, 29 Oct 2025 13:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KjsO/YA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C303A34B42B
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745055; cv=none; b=YEdiJjmBo3rhCgoCMVCffffZK3eGfJF/4rSLuWvlaxIikKpMAZHk/k+3v3eK1IJexDT5KinS4aAl7MTyYPSPq+bujHAm1+23zT4Pij7haYlFQl5eRQ+fVTvPb/25de/lxj3MaziIkfqfpoHDJDnZXpNy5IGFQlouv79sK5L/JbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745055; c=relaxed/simple;
	bh=t7G8Jycuz8+wzAu2xCWQPBZrSzG9Z8VIdsvKbiXuUuk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cH8Z271tuYsQ9LSB0VvYo8uoxyb7AxdJRGYhZHKa+s36BHYPGaG3pYpaphdK3Zz2CSZfKMhTIOK8pfkjKeMxSkfBTzgV79PKT3iiyUpgG6GhSvwhXCic1e8b1Yxru5LW9OnUGVP1aZv4GX8IpHkpK0VZ+3PBY2wFhd/L392CZuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KjsO/YA9; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47112a73785so46408635e9.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761745052; x=1762349852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ri5sAKlO3KnC2SWKs6OABcUyoM7Qv96rgwkPvQx4cuk=;
        b=KjsO/YA9MG6WQzHJwhKGsQsWI9xGrV7ICzsWm+5fSdiGt8oPOl0CiMP+cOruXtMPMc
         mr3ygzSxIsSia9E932EHbkwS2fRzksawDCgFJCQZmV75NRY1Ld4ZTlg4fbRTJrKMoqde
         OSFURz8CKUdWaOL0Euf3jjfSayOGnG2q7pLF6k8Mhn9d5e6vx8RBm0r5o3ayDo8N5Xjx
         CQLlC/ZXE9nnE+hAiYkthbt6wt35c37hNwA1I1egDnIKuuE8thHQV0LfDetp+EeKI5Pv
         6f5HrsUnOg+xp+MC/zmvKTCDuxj6s79frWmyNWLyGBDBhTbG8/bYhe2O/86uHbhi8lDC
         7Uag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761745052; x=1762349852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ri5sAKlO3KnC2SWKs6OABcUyoM7Qv96rgwkPvQx4cuk=;
        b=Idwv8XD0DxVKlKMa60vbngViSdgVCVCUjPN/thhqbFjnxagonrkNo5J+kiZvFH7HyR
         lmzyJSS0Udxi1iqK74ihrvzoHMsr1+r7KdHHWikR6vwSyzIdANAMzwLf1sD34ACBP3iM
         qYrYU0tVKqpmlYWKwOaIiCTN9AKoWyPe7+yOWlwTVjtJcP2VJ8KikgDW9zjw0WmWRLGn
         bdgYBp14A0/nm0at9iILs1Rej7Ut9gmS0Bg6RzYCqKGgEMW7AT84GsV9V2aOHLRSvTCO
         Q1B+wYxUjBix+Z8aR7cGQGJOn3LaSV/9Zm9lhIfRFV5zRvQNhi8r1PirZOOZsgPcuc36
         B/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUT35BA4QW6zke5PhD7UazoQJt1/9ZIfw5Lh+C5gd1qtzFUnlpFKmqGiNc5OqjXTwoNSYYo5QS4pQPO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1atNL3gim4EsoifCO0hx+6mCcUa5VWHz3cmXzhSMrI6V7Jbg7
	aDSJJmK1noanrLCe3n3pI7jaFPipvdZO7wlT+ravaUw0HYnsUELXzTal8YB9OiZzX5E=
X-Gm-Gg: ASbGnctW2eYJt5JTY/D/ENVH5TmVC4wETajANQECGDfBzklNCD0r3xQRV8T8RM0oY9q
	0vzJU4C5xIi+nL8Fri5ad5uOwVwlXQGfXIP7VCvzQKbRaa4bEwsblX6zAacIzCOM73UuJLXY7Mf
	XEfj5+q2oKj0/bf6vjqroVuZI4YN5l56m1RKXsZAasKQ64x9cxtdqqn/6LyS0rAcvf9jAVw4w7f
	bDql4Yd58IAuoBP+0dVoFM8ZtQI09RziTMPpVLiLpTnOTAQHMzZjT1tpojNsftW/YoLkF9Y+diJ
	flnOx7WenUj/9vnSN9kzErIZBXNQXvMMH2W3UJEVzNCHYP4jTiA/ApPhfdzWNUBo6Yx2E66bVFJ
	vTRHPXts08rqcZNGJ1arlFSgd/sTyoRP0Hfa1wE76jiu6eA+s8lBewGUNjueMQ+5fvOQkC//Pvt
	vv4yqYK5x1vAtFzL0/9rvGVq8axtViYNYaQ16LDtpCfLqoAT4bpq3ou0FsLKZ9
X-Google-Smtp-Source: AGHT+IEJDplrheJ48QLqfg/pR+eu4ZCGROUq/p3ZBNkawUoNXH7zM1oOgMgH4Xfw2VwWuaEypaznsQ==
X-Received: by 2002:a05:600c:3506:b0:46e:345d:dfde with SMTP id 5b1f17b1804b1-4771e333bbbmr23167265e9.16.1761745051964;
        Wed, 29 Oct 2025 06:37:31 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:6302:7900:aafe:5712:6974:4a42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e22280fsm49774795e9.14.2025.10.29.06.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:37:31 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
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
Subject: [PATCH v6 6/6] arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC
Date: Wed, 29 Oct 2025 15:36:53 +0200
Message-ID: <20251029133653.2437024-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
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
index 1d2d1458bef0..ad314b82423b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -232,6 +232,7 @@ CONFIG_PCIE_MEDIATEK_GEN3=m
 CONFIG_PCI_TEGRA=y
 CONFIG_PCIE_RCAR_HOST=y
 CONFIG_PCIE_RCAR_EP=y
+CONFIG_PCIE_RENESAS_RZG3S_HOST=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_XGENE=y
 CONFIG_PCIE_XILINX=y
-- 
2.43.0


