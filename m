Return-Path: <devicetree+bounces-245365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CA8CAFB09
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CB86303E651
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18BA42E370C;
	Tue,  9 Dec 2025 10:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="skvXhomS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay90-hz2.antispameurope.com (mx-relay90-hz2.antispameurope.com [94.100.136.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BF1221554
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.190
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277637; cv=pass; b=fJWsmCyQOk0EO24VbS7RTEXblSjD9lX0vwdl5+g5YQLN2hzGbpZ/kccWN8TyJ6j0RccftBnFq8L9U84qU+5nVGkZ2UiTa2Yaf+TJcSFxyugavL97CRArJQrbcNs5gKKaoWjBhjcwF5ID4iSDFkQDedD403mjnICGDGJ2ZUBERlE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277637; c=relaxed/simple;
	bh=jTsRwS42tI5mx4ug5QK2yMOBtfpB3rHUg4f6Us7SdHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IKqwXmJ0TyNZS/jB75RDu6vCzKcrEpiGhqmCIHDdju556ugs+n7siovd5HFtZuDep6Bev0I7y47vrEfwKClzXIKiYV7jhC8zvYlaSd1Qd+qlnMaoGaNScA3axKeSzroVh6OUbCYBAuENbNnTrL98blqDt70W6M93L7UVoVLNf4g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=skvXhomS; arc=pass smtp.client-ip=94.100.136.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate90-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9Tj97bgHVDN13VarG25MeBuEY3cF2iNUf5mx4TIglo0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277609;
 b=NjE7HHTPs/BtoORmToTI0o4ihrQyfadBnbzLSuMxGTmJjr8u5E+H25xpPb2f4E38U3i3pyzf
 BbOqJnZHq0Z/CaH4A3bF+G5PnJoIESjWZcxfSCZiztFcghLykqAjbQ3gYB54APH2CeuLozRtzsL
 tjsQSZde9b1KrfI+F1WDCy2EEYqGyP3uzGTnt2VlbgbhjtJnfofs/QKjdWbmBW/q+jWaqqiDrAX
 lNtAXG3MQ+muJf9r9drNDCGYilqBi47msSJLb55evZIxkS9BVCUwDaDIuFLWSd/+ihy7LkdOFxQ
 M6SiNC2w3k6BoP4Re5MnuFBGTeE3O+m7Qz4/CRGI/eXpQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277609;
 b=BIIwYXd1nDzeVlMdiNG7lJIj01noMRWQuTfvgiPMOLICXC5x7ZdGP3eJN1gr7L6F7lVJk+Ca
 BaHRJlRoDknjjvwtfzq0o+pOcl1g3WECbbZw9qDyidDI3xu/PX/z9zlZ76L4JhZbzpqLSfOc6s/
 tKffnty2VMc3v5vR4lO33FOtDiQ8N9/i30N3R8YC3PP8Wfz2uJ278aiGqbBQGovDC3P2jtKeO33
 ox06fWkGTA1d8/0UHUokovoB0y4VJfQuoqbFRgTQthr5VKtcJLvkGzG7vsrRDMVFGKhOnORK7An
 MuMSLQH55wn1H06qVVzTdfRY96bgL0vUaiOl7xq2bTAcA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay90-hz2.antispameurope.com;
 Tue, 09 Dec 2025 11:53:29 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id E3CEBCC0E8E;
	Tue,  9 Dec 2025 11:53:21 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] arm64: dts: tqma8mpql-mba8mpxl: Adjust copyright text format
Date: Tue,  9 Dec 2025 11:53:07 +0100
Message-ID: <20251209105318.977102-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
References: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay90-hz2.antispameurope.com with 4dQbLB4ZrZzWxV2
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:5cdad8a37ec4edf0a973856c329ef64b
X-cloud-security:scantime:1.663
DKIM-Signature: a=rsa-sha256;
 bh=9Tj97bgHVDN13VarG25MeBuEY3cF2iNUf5mx4TIglo0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277608; v=1;
 b=skvXhomSgOTWA/iIHJ4Gx51OLxPJ0KgNNQRiH7NbkxrR/3+FcG38dYzAPIQMw2F35WV+bwmb
 A8JePCpfbgAMJnllxXFG+514T6P5Gw+4L0pH1cdc12hDlmWfiuC8jwQ7Gp7Jk2RlFRVhncrMbd0
 fA4D7kA4XRM6tHlbZSwf8XaQMqZNgM7jykv0SXc+1wTlUU+enWdm9zCn0uK9HKVuuRAt2gDJaWh
 ItUVfu8twiXfc4Fq/IoMTXYzJZRrbaD5OTaiS++JdcDEseHVTTT2mAjkxDvU0vVnQIhJlM4QO2x
 hPVpPHQv9fZuF/7eLwOaoksJtKzGP5g2JRQ9WP3BJGBTA==

Replace personal mail address by mailing list.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 59642a8a2c445..0605cf2faf83b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -1,7 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /*
- * Copyright 2021-2022 TQ-Systems GmbH
- * Author: Alexander Stein <alexander.stein@tq-group.com>
+ * Copyright 2021-2025 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
  */
 
 /dts-v1/;
-- 
2.43.0


