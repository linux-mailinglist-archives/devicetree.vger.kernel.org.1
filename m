Return-Path: <devicetree+bounces-14667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 504807E5EA0
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 20:29:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D652628151C
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 19:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8468037154;
	Wed,  8 Nov 2023 19:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WxlDFGAj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF5437143
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 19:29:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A152580;
	Wed,  8 Nov 2023 11:29:48 -0800 (PST)
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8A34C66076A3;
	Wed,  8 Nov 2023 19:29:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699471787;
	bh=6zVh5ZRGB94zYWwPnfDMw9/tOA79poxhEzq+D9eHqX4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WxlDFGAjdFh2/XiyUkmQnDUINnmBROZN+rX0rAX4BCEXsY9Fp5UM2wFbiHfyL5qAI
	 vka9cI8LEjl3JbkL5x8onoajzhgNLOJUyujPH1eaxHr4ZiRFdU6w8TqVhYKZ3r7Hn2
	 8k/Pm2PGMtPenrv9qLcWF63/ttNIu2xL77OBtoRB9lkf7vVhEUEi12y9a6grIuT/Pf
	 XK7wIPeK9gY58lTEjOfvbGS+e+NjD5T4cZiYsYUcKFyEGoTFcYR5INLuvegFdX5BGZ
	 ULvnopIIAPLBczKOidDKLGWoLUz1taHbZSlOsgU65md0RAOXk9zY0yZmYSer51xz8J
	 UUkqcd46YyW8w==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Wed, 08 Nov 2023 20:29:26 +0100
Subject: [PATCH v14 7/8] media: chips-media: wave5: Add wave5 driver to
 maintainers file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-wave5-v14-rebased-v14-7-0b4af1258656@collabora.com>
References: <20231108-wave5-v14-rebased-v14-0-0b4af1258656@collabora.com>
In-Reply-To: <20231108-wave5-v14-rebased-v14-0-0b4af1258656@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Conor Dooley <conor+dt@kernel.org>, Nas Chung <nas.chung@chipsnmedia.com>,
 Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Cc: Ivan Bornyakov <brnkv.i1@gmail.com>,
 Deborah Brouwer <deborah.brouwer@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, devicetree@vger.kernel.org,
 Robert Beckett <bob.beckett@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699471762; l=1012;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=pkGDwg92UIV8PdVq9WgZQLHgj/O020tNNUqapWxKG5E=;
 b=OnDCp0TdFPZHfi6uDiYcc+/ABb5je8EDo1XosiScLjsBGd0EWAuL0ehcUhSxw4lCpmgl2syIRMLc
 f1+Oa9iwAC51iQHLFrQCnXwn64vsx8BNVycG3xsOx4sIE5i/RKiY
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=

From: Robert Beckett <bob.beckett@collabora.com>

Add the Chips&Media wave5 encoder/decoder driver to the maintainers file

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 93225b546030..50758d1fcbf2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23234,6 +23234,14 @@ F:	include/linux/watchdog.h
 F:	include/trace/events/watchdog.h
 F:	include/uapi/linux/watchdog.h
 
+WAVE5 VPU CODEC DRIVER
+M:	Nas Chung <nas.chung@chipsnmedia.com>
+M:	Jackson Lee <jackson.lee@chipsnmedia.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/cnm,wave5.yaml
+F:	drivers/media/platform/chips-media/wave5/
+
 WHISKEYCOVE PMIC GPIO DRIVER
 M:	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
 L:	linux-gpio@vger.kernel.org

-- 
2.25.1

