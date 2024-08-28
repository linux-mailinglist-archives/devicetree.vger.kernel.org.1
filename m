Return-Path: <devicetree+bounces-97454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A05AC962421
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2F6D1C23ACD
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610F216B3A8;
	Wed, 28 Aug 2024 09:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NS1tJQHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D084615B57A
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 09:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724839007; cv=none; b=rSOvr7uBFSXFq0y+14ZcI6h/Uj07OvkjxJaPU7FaSQYXI8+x9wWhvcg3WwE1B4v265QBJfpCp9+5lD2Q9eUwlWYHNX31uBigvSmOe6vRb1ah6nQzLcWSoc5RIjRi7ryR2B1fy/ENlHrxs6S1zODmI+OttqaIk+cmoeTEXuElVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724839007; c=relaxed/simple;
	bh=ge4SxTWNVKyFGRQiLbdG08o14Wfg6HB1zk1RSCadr00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JpLW9aU7yDHWElypC1u6dtCU3+dPaI1OCP9fnoDvKbD48//XrIrSKlPhavB7Cs6ITTVkW8EvkXZDnxW3fm+Dckp/jAyp5BGTDDzJ081aQrD7jWuupJXTdBje5PH9iTOMzthkwEGnYRZi/9rx/T7KSFUqPHi1pZsOGH+oHUhs8rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NS1tJQHU; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42808a69a93so9238385e9.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 02:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724839003; x=1725443803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N/jIvTuTNMLOubMyObTcs7DeZHs1cvzKt8VJq5iN+3Y=;
        b=NS1tJQHUgk0WmNIEddf+Xz3VWdiluZz0H5+DydBaED6e1bzsmpuOv0+ycFsOO3TSwC
         S7pJ7H7M9FaICuKlfkYe/LG/dZPN+CT2K9JQKx3WwYWRvKz2LTwZFz4oXUamTSxc1+3D
         YjbPCihxQbVpGX/e3r7T/1FPMsVwaH9aWLFNXms/F14jCuGbZ9rTa25/fSRGSpZBMMDj
         MYNI7vnDIIvK378xEDQRgv8NQvT2k+C1Xr586HvdapqdlzAzaGOl1oz4BYve3WT9Mzee
         FjMZ/D5ZpMv3/lU5H8EYcTNTXi3KMpZgb/b3RMer7uuFrTM3TdHY5BWXj0XqcxzkG0QL
         UJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724839003; x=1725443803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N/jIvTuTNMLOubMyObTcs7DeZHs1cvzKt8VJq5iN+3Y=;
        b=E3Fjt4oH+4qWkNXj8nGxvCaUsK0b3hQZjJBJNEUmDVjWc0KkkRfJM98JfXMWINvUuy
         2r7Z+gEhZfLr2k+bQgauORJtD4EtVIleaQ2OXqVDXfFemgoDCIe1LgX1PXa9Zi+cApzt
         iswd6rVD+6PWPNQTzJwXw76E5Du1TEd03d3u48h4Dsr/EgZxkRn0TtZNKSKw6BWpXbqS
         7JaEkJPW9zge7qJ7zo1/F3BArRWXvsO1OakX6giJIv/BYbqLN3gx2Dbp5cPhY23/TFDK
         2cS5o4E8jvi6y8N6re+r8Lzh2SFzEfN2xgarQjGYdVLoYm4Ds+310fAR4YjJ5aF0Lrkn
         1wKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbtYBTxcJmJcRFHaQ6618jMK6cqhW3qqygyWek0q3SFVdDgWC1tyqtq1Mnu/143cavSOB1K5TuyycC@vger.kernel.org
X-Gm-Message-State: AOJu0YxVh98daclGdQIGg1EDoLnABKScHP1efkSp3lKBaSlWA8cVklJ7
	WuCxazeLRUCyEH3eRDZ/E/umkTxG/zcX1Dy2xl4rWn4HoWBqnC9kHv69sr5LJic=
X-Google-Smtp-Source: AGHT+IF5V1OJizmXPGv7EUtJkonq52X5+q4graFsdQFbBk5bixOQ03LcyEh/3h0hEpedeZ8cEZc+UQ==
X-Received: by 2002:a05:600c:5118:b0:425:6dfa:c005 with SMTP id 5b1f17b1804b1-42acc8dca6dmr70541755e9.2.1724839003070;
        Wed, 28 Aug 2024 02:56:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730810fb33sm15067077f8f.13.2024.08.28.02.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 02:56:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] ARM: dts: imx7d-zii-rmu2: fix Ethernet PHY pinctrl property
Date: Wed, 28 Aug 2024 11:56:36 +0200
Message-ID: <20240828095638.231569-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828095638.231569-1-krzysztof.kozlowski@linaro.org>
References: <20240828095638.231569-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "fsl,phy" property in pin controller pincfg nodes:

  imx7d-zii-rmu2.dtb: pinctrl@302c0000: enet1phyinterruptgrp: 'fsl,pins' is a required property
  imx7d-zii-rmu2.dtb: pinctrl@302c0000: enet1phyinterruptgrp: 'fsl,phy' does not match any of the regexes: 'pinctrl-[0-9]+'

Fixes: f496e6750083 ("ARM: dts: Add ZII support for ZII i.MX7 RMU2 board")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts b/arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts
index 521493342fe9..8f5566027c25 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-zii-rmu2.dts
@@ -350,7 +350,7 @@ MX7D_PAD_SD3_RESET_B__SD3_RESET_B	0x59
 
 &iomuxc_lpsr {
 	pinctrl_enet1_phy_interrupt: enet1phyinterruptgrp {
-		fsl,phy = <
+		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2	0x08
 		>;
 	};
-- 
2.43.0


