Return-Path: <devicetree+bounces-240268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3BAC6F605
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 4C4902EEEB
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB08A3AA197;
	Wed, 19 Nov 2025 14:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bPqUCbMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322BA3A9C09
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562957; cv=none; b=sj0zr9RRJxKcuFhYwwLGY/6stfMRJpwvDG2GYFsQyExBod9pjeMLn2Is2HnerTOOFQiVDMehnE/6GlkxxFEqlGtmTO4aYaVKHWQzDnw+iPa+HnxgMTR1fNrqCQRGTHEQRzAY5TbIw1oaodcVsAgRXx5haVIqXMrMuVWNP+lu9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562957; c=relaxed/simple;
	bh=GxxNnKqOhhteuHOBQbAn6ykS5DynDGw/557Fxfc/0MI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YUKEhH05L+5ffpg9lNPrNBo+CtbuGEZ36C43D6od89zFQOW9zzmSVFPQG7mZt19nMl5j1/3hr61T/ygSGinTon92ZI7vBNMbKjfyB/vR16G8IXungLJBkHAN7y6LhnU9s82/s0UaCTmYx6RMJuSOtoOsoH6yYqxWBzyBgyx8Los=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bPqUCbMN; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47755a7652eso46138215e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763562954; x=1764167754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YE8+3pdeBgHj1yFTM9VT3Mx7PcWOCuB8Xgf4pUk7jgQ=;
        b=bPqUCbMNu+n/VTE/gI8v9H9621pt7VydXpcpFX1VcbE5fCRXAHJd9K2lv09NvIQ0WU
         1z8LOg8d4mXR/X23Ki0D0PEQw6rbikm6/qv96guleehIfiZ8Up+OJkLALModhiDwHZ5m
         xHxFjL5ge64gnkDk9Be81JZ0h52Y2bxRCpcP7Z/fFP8ZsOjPyWvRGVZB+m1nyG7ZWBRu
         wVd/5ywQZbY0nN22f+CHYBW2lEUnJG8fr4cPzsoFKnkwXcT4ZDt1NkmklEcwi9JA6qmV
         dzRMCubbh+g+An8RJEKA9XxPxtuZEzTspxVw2W1K5+zPjDFlKhuEph9Be48q+8jXW/1K
         L0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763562954; x=1764167754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YE8+3pdeBgHj1yFTM9VT3Mx7PcWOCuB8Xgf4pUk7jgQ=;
        b=AcsTB6IHseYFGKqc7ooMarKWLwyOu6O+6/Xde4Wc9p59Z2t28j9e+wCcjG5d5GMr2s
         +kOcxhRgyGQ5Jl80Oc6Hy6DskFDYQSRbpwPm+PjIisGIt5nMJGSIQesf95jxVVJ20MOa
         ror1FdhlkHsVTBa6LdlXVLyNAzm3C2gTDfkH/Eu5O50j3FUqbHMD3FjAJIEb2O7MuzTx
         YLn/nJXHf9elQvW5b49ml5QcAkJ+XwTg+GjHNzpQ6Jq9+NooYB3IgiHmZcyjxK32rl/6
         CesGpUWxjrv9Ry3DLnQ87qrfo65USE32E4uuPBkOkGgsHltQmqZb9OBOX9iVChRVyZel
         HnDA==
X-Forwarded-Encrypted: i=1; AJvYcCV/i5ZwmJ5L6WuG+Ykp0lc5huHBaeTMDcIIXz8i90kVlzctAAag8uAVRsMdh1lkvaTips/33is7n0wu@vger.kernel.org
X-Gm-Message-State: AOJu0YyFIfPBiRDn/hdjFp172oCrK975mWzjktLpMuUbYqBSmFj/xe9z
	IFSDgsUIZzSF9SVseb53Ww477DDkotFu7E4xgxHJd4hJiUjNmIRF4k7OmZWrRCKQZ9A=
X-Gm-Gg: ASbGncsuZK3Ul6TWvqw3WMW5qU+bRLzLJBVORgYpmHPWq74BX7k00krQUvXImVLOZC7
	mlou1Vm+fuTbaWKrHRZp8n4f2dtFuuYndbCqC7EkwmXZnfiaPX/hrQRJNEjzjs4IHWFT7xZisph
	YBq0rV+terzRSMzkeBGvdtaH/vGQWhYnig+2h3MsU4HdhfjgV8+NUDaTcRPM6Thf3gRud1F+ygF
	Pb/S2ktDlCemcRDqsZEYTTNXnP1amOjMUJQGfo0BBJkvjQsy5JvPdCAy9PTwIWHgNuFvl3Vaog0
	HTFlOWCY96ct/jlABzxBjX8CQYkh6Ly/8B3eNV9XS+dV12OYKHuI3R6kOPWGu7rpS3mniwLfnc/
	nHmWqtaMXrVKqiOatnBPWsxLekVewu6eGJuzS9YcD6sYCRQ6Sp5wZ5bXtomOJBAG9oPQVtFUd2R
	bkP5Hvsh/xkAMs7+PYgmTcFHfv0SXCJX3BZnd3ElqMPCjoie6dU+A=
X-Google-Smtp-Source: AGHT+IEd2Ccf5fjluRhtVp52Y5wk7ZOl2KQ0o3HpW4E+mTPRtKka6q7IqCIxDBj/nihRBjkex/U8QA==
X-Received: by 2002:a05:6000:2585:b0:426:ee08:8ea9 with SMTP id ffacd0b85a97d-42b593901d2mr20461307f8f.44.1763562954457;
        Wed, 19 Nov 2025 06:35:54 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm39973399f8f.26.2025.11.19.06.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 06:35:53 -0800 (PST)
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
Subject: [PATCH v8 6/6] arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC
Date: Wed, 19 Nov 2025 16:35:23 +0200
Message-ID: <20251119143523.977085-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119143523.977085-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v8:
- none

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


