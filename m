Return-Path: <devicetree+bounces-5506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 596487B678A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 3F2F2B209FE
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB1622134A;
	Tue,  3 Oct 2023 11:14:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924742134B
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:14:15 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A817CD7;
	Tue,  3 Oct 2023 04:13:56 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0C4026607325;
	Tue,  3 Oct 2023 12:13:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696331633;
	bh=UO7hVIO9relB+JvuVz+PxxqsIIDZTWVoNwtpPPpJAHY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XlvIHte13uNTQywA8mO/EUDLbFh+8uBxQX4Koc4oFuhvLsCNQtT0vI39LxbmgzOeR
	 D1XNuk3clQsAsPonI2PONHqVVhF+M/TEL7tkz9aFpQEWWbuwWDU2tiIJsSadakdE77
	 ZBlWH+Cpfuzp0mBG2yusXyZUsR56xuRoRemEqTqDit7uUWAn8w0oCoaQgzC34MhHav
	 4FZcmsq8fVytNQmW89q6GJg0IBspUXuIkj9uaZW2zDu2XtFvffvcfROijr3B6fYHlI
	 TgTXZDjHv6Pz00pFoUaVBfPixK413Ne9D+JK1sQwI1FC5MT2BQnBqNh9FskvQWM1eb
	 s2C1DvBvCk18g==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Date: Tue, 03 Oct 2023 13:13:43 +0200
Subject: [PATCH 1/5] MAINTAINERS: Add Angelo as MediaTek SoC co-maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-mediatek-fixes-v6-7-v1-1-dad7cd62a8ff@collabora.com>
References: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
In-Reply-To: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Miles Chen <miles.chen@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Sam Shih <sam.shih@mediatek.com>, 
 Frank Wunderlich <frank-w@public-files.de>, 
 Jieyy Yang <jieyy.yang@mediatek.com>, 
 Tinghan Shen <tinghan.shen@mediatek.com>, 
 Seiya Wang <seiya.wang@mediatek.com>, soc@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1479;
 i=angelogioacchino.delregno@collabora.com; h=from:subject:message-id;
 bh=UO7hVIO9relB+JvuVz+PxxqsIIDZTWVoNwtpPPpJAHY=;
 b=owGbwMvMwCU2y4zl/NrpLRWMp9WSGFKlv+e/ufF/tX3u6QLfx94+3wLjsqLSNI7nLN8+t1lwk0F1
 6JS3HaUsDGJcDLJiiizqd2uyn69ZyXik/WwJzBxWJpAhDFycAjCR27wM/93Xf/UT8z67M/9X24NV/a
 VFE14pqvVLb2GdtPJ61IHOR5MY/vDOcJNK+NN7Zsa2++/2zXKYr6zz43WEzJSpy3ezWUjpXWYCAA==
X-Developer-Key: i=angelogioacchino.delregno@collabora.com; a=openpgp;
 fpr=57152E620CAF29C5DBE574766833ABB5BEBAF7B7
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

I am a top reviewer mainly for MediaTek SoC related patches in most
subsystems and I've also been upstreaming both improvements, fixes
and new drivers and devicetrees when required.

The MediaTek scene saw a generous increase in number of patches that
are sent to the lists every week, increasing the amount of required
efforts to maintain the MTK bits overall, and we will possibly see
even more of that.

For this reason, and also because of suggestions and encouragement
coming from the community, I'm stepping up to be a co-maintainer of
MediaTek SoCs support.

Acked-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Link: https://lore.kernel.org/r/20230929082009.71843-1-angelogioacchino.delregno@collabora.com
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..57f82fcea1e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2327,7 +2327,7 @@ F:	drivers/rtc/rtc-mt7622.c
 
 ARM/Mediatek SoC support
 M:	Matthias Brugger <matthias.bgg@gmail.com>
-R:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+M:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
 L:	linux-kernel@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)

-- 
2.42.0


