Return-Path: <devicetree+bounces-151176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE53A44A77
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F1ED1897C81
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD0920ADFE;
	Tue, 25 Feb 2025 18:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=dmitry.osipenko@collabora.com header.b="Uc/2dSvg"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B05E1A8F79;
	Tue, 25 Feb 2025 18:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740508377; cv=pass; b=DN5AeWN+Pxvstq/XQrXwDinCNymcI2/9wNKZ6SI+cJ1FyJcsw5DZx9ZNp467CuyEjydkn+D0KEkMurKL0FCYG6/szSVocIX8G4AeO4XObOoJPoo4Num4ffIVLdTCmSIjC17Cu+dgJ4qf0w47/M0Dp/fnrU+gVmYgYHK4Ah/euYg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740508377; c=relaxed/simple;
	bh=710on4FianZf50Zr3diy6L+j+7/aC3MoxnjIw+csFKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A3OSwtEL9zC6LsVTq1V6Wgtu4Qz8BcNL4j+rwZeKV5qKGKE3ErrTctNDy85KGJYC434uSTieG4QBvZKeCLByOgP8oL5I9X8UP7B7K/Lc5sZInrSQzaU84KrP/b/mxsf07TFoxOZMyMCuIGXtNHNIrDMpK1WbMHqygefJeXZORMc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=dmitry.osipenko@collabora.com header.b=Uc/2dSvg; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1740508336; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NAVluGKpp/hHUVVj+JxBpRBCQBz+X/4naBTk3fwp8FFJVh9jWYEsdF+C9gnx+4gP+cpCdwqg4IRFIdbVuo8hhMvXWSaXfMSQQTvKVYLm8sBOwNXf57Lr9zgKjSVLKm7q7N4piaS+61abaF/P3X+S0YDCTHiYCIZcN5ypYrBKKAM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740508336; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tCejzOVQqwKvlJ+w4GPysB0BnrgHd030RmrjnYJfw9M=; 
	b=mF8QfykBvKtsu8Y1GMsiDt10MHDqSo9xZQj6t1HjOGd4vM3TOZS1BXyPjOddToTitoJVWTnuCtOZQt0kuzyCGAjc+OBALvyy08ft934zLcGF6LPMGzOzQEy0xAQzvQsbpbY9iZdeP4OI0Ik7KePaAt/QhniFLCxCQYxLOn5gPi4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740508336;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=tCejzOVQqwKvlJ+w4GPysB0BnrgHd030RmrjnYJfw9M=;
	b=Uc/2dSvgq6Z/Ci2LMENGCAL/8uH67vuWViuP/LSjtvVwe3Z2T+qTCqbWQ2ztfAbE
	0oz9ZcfUJM1MvjkxrdTOQ4mZpRQROouuO2tWvgutw5S9bv6TRodaeucsFRBlZf4ahaF
	Cd97yYKvWC7cfMYv/DWjHzYFr70xqt5Mgdg1+SGk=
Received: by mx.zohomail.com with SMTPS id 1740508334520703.6738518506259;
	Tue, 25 Feb 2025 10:32:14 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v10 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Tue, 25 Feb 2025 21:30:58 +0300
Message-ID: <20250225183058.607047-7-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

From: Sebastian Reichel <sebastian.reichel@collabora.com>

The Rockchip RK3588 has a built-in HDMI receiver block from
Synopsys. Let's enable the driver for it.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cb7da4415599..3dccc9e1c4aa 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -859,6 +859,8 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID=y
 CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
-- 
2.48.1


