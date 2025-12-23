Return-Path: <devicetree+bounces-249309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C18F7CDAAEA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01B61302A108
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1760030F55B;
	Tue, 23 Dec 2025 21:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="9cKGKIlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C35630F800;
	Tue, 23 Dec 2025 21:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525704; cv=none; b=lVBPtLDcVHyLxRSL5BQ0fQltZj0IxMGahlrO+raznFDgYtb+W9Fo15puiPbNUdqivVlLAYeiaWbFzz4C2qagViE3fvR7zmaOeDnqDmffKWaAWiR72udox7P573AaCCjSc4ybhNuBNhodLyR7iMX5h0KX7HPIialbyt1E0I7JVZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525704; c=relaxed/simple;
	bh=4LxVzoYiZ+imSrOKh/GT1oH8ji6K+fpHnPRTQVJteRM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YSwtGGemZgfN11B3SxqdARpfho6xma8t1ya5biUzZ8zqZeFTK8+fOIPXwxFirHwlVGbHv8HIvfhRNFNa4Vj2OP9+/RF6OKGxTPgweDgxz1FdEuUskzUg+2wG0XFYzWUCAgSd5K5QGUAmvwClsPWks3xx3W+Es6Ax4XPPjUy0GOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=9cKGKIlt; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:In-Reply-To:References:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mhrIoXouXYs4DJFLD2MmLh4WIXwwUc8JqcYdOTRcOos=; b=9cKGKIlt2MeEKd8kxKur8Uwb0/
	3FnjnIFaeQgivS3hca7eFsDYB/F3IDB6uldNIsQB9JTqD+eWzpSqu31am2veeiftzkXX2+UHo2KsK
	b+KtxS+zxAw3BmFphllnMn6uMVa1Z5ToT3drTTcegcynDw7+zXhtebwBEaox0xN2/+9QvDi4IfX1e
	C6+/kCy9+nghYPmGDgb513CrGVEFw448UzaDOgDzaKYP/pUk4+IMhjKuAO12+d712hbmboQ70dWVW
	1IaB/f2ljAChOFSTqgRJ817ZuWUC8cn4K6r8F0lV0BuFfJ2f35FHLD5f/Uoaov4iFiWjscQ6Va25Z
	ODt5CsUA==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Tue, 23 Dec 2025 22:34:03 +0100
Subject: [PATCH 2/2] ARM: imx_v6_v7_defconfig: enable EPD regulator needed
 for Kobo Clara 2e
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-fp9931-clara2e-v1-2-e5b1cb79330a@kemnade.info>
References: <20251223-fp9931-clara2e-v1-0-e5b1cb79330a@kemnade.info>
In-Reply-To: <20251223-fp9931-clara2e-v1-0-e5b1cb79330a@kemnade.info>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=718; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=4LxVzoYiZ+imSrOKh/GT1oH8ji6K+fpHnPRTQVJteRM=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJneXH9sMs8laIg9D2za8Mtx9UT56aka3OfmfVkpXblx6
 ardkzz+dJSyMIhxMciKKbL8slZw+6TyLDd4aoQ9zBxWJpAhDFycAjCRtAMM/6PrFwvnsj+skb78
 eJOmsKVsXK7+0sa3X16+6Jktefjioy0M/52VTVX1bsju3Sy34pCPjvsJjTrmranVD5pWlK3/Wrl
 qEzsA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

Kobo Clara 2e revision b requires the JD9930/FP9931 regulator driver
for the EPD, so enable it.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 0d55056c6f82..94ef23b272fc 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -251,6 +251,7 @@ CONFIG_REGULATOR_DA9052=y
 CONFIG_REGULATOR_DA9062=y
 CONFIG_REGULATOR_DA9063=y
 CONFIG_REGULATOR_GPIO=y
+CONFIG_REGULATOR_FP9931=m
 CONFIG_REGULATOR_LTC3676=y
 CONFIG_REGULATOR_MC13783=y
 CONFIG_REGULATOR_MC13892=y

-- 
2.47.3


