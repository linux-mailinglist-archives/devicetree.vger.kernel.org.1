Return-Path: <devicetree+bounces-48967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F487478B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 06:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6E241F231A9
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 05:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4125B1B7E4;
	Thu,  7 Mar 2024 05:12:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-66.sinamail.sina.com.cn (mail78-66.sinamail.sina.com.cn [219.142.78.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0E817BAB
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 05:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709788355; cv=none; b=ESvi9HmKgAfcI+gtYngaPEWTHYniYFarDvBz/2ihcIN3Jlau2heLd8KM5mIwynongjKRHsgpmArj5jGTsoOfrj/OWFZN15Ho9NtEtYDWgQHBp1LXUMFFjeu+LfZu8WX3JNCxKTNFYWtPQCU9KNyAD8N4yLjL2qYupuQYB1SLlKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709788355; c=relaxed/simple;
	bh=o7h8D68XuKpUbWhzQ5giwG7GjdYbrQMBGY5wZ3X+bbk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=W/9uLQJBOXbSf5OgfJ4OgSAL0bpNUp314afGJxaxmJ7unYCD9lQ0ZBAk7uYd91MKHgM7kDAGmiw1ZRHjMbQFmq9ikeSWAPG3OV/2sy2PxQsmeJlCvg/ygrv2cK00UcYVHyzOlnmBOHs6vKRW1Ex4HAvJw0s6qCwgbZuagNat3a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.239) with ESMTP
	id 65E94CB900013490; Thu, 7 Mar 2024 13:12:28 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 924257DA11B742E8838AD976B829C33B
X-SMAIL-UIID: 924257DA11B742E8838AD976B829C33B-20240307-131228
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v2 1/2] ASoC: codecs: ES8326: Changing members of private structure
Date: Thu,  7 Mar 2024 13:12:21 +0800
Message-Id: <20240307051222.24010-2-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240307051222.24010-1-zhangyi@everest-semi.com>
References: <20240307051222.24010-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

We don't use mic1_src and mic2_src.so we delete these two members.
We changed the default value of interrupt-clk for headphone detection

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 sound/soc/codecs/es8326.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/sound/soc/codecs/es8326.c b/sound/soc/codecs/es8326.c
index 608862aebd71..15289dadafea 100755
--- a/sound/soc/codecs/es8326.c
+++ b/sound/soc/codecs/es8326.c
@@ -31,8 +31,6 @@ struct es8326_priv {
 	 * while enabling or disabling or during an irq.
 	 */
 	struct mutex lock;
-	u8 mic1_src;
-	u8 mic2_src;
 	u8 jack_pol;
 	u8 interrupt_src;
 	u8 interrupt_clk;
@@ -1092,20 +1090,6 @@ static int es8326_probe(struct snd_soc_component *component)
 	es8326->jd_inverted = device_property_read_bool(component->dev,
 							"everest,jack-detect-inverted");
 
-	ret = device_property_read_u8(component->dev, "everest,mic1-src", &es8326->mic1_src);
-	if (ret != 0) {
-		dev_dbg(component->dev, "mic1-src return %d", ret);
-		es8326->mic1_src = ES8326_ADC_AMIC;
-	}
-	dev_dbg(component->dev, "mic1-src %x", es8326->mic1_src);
-
-	ret = device_property_read_u8(component->dev, "everest,mic2-src", &es8326->mic2_src);
-	if (ret != 0) {
-		dev_dbg(component->dev, "mic2-src return %d", ret);
-		es8326->mic2_src = ES8326_ADC_DMIC;
-	}
-	dev_dbg(component->dev, "mic2-src %x", es8326->mic2_src);
-
 	ret = device_property_read_u8(component->dev, "everest,jack-pol", &es8326->jack_pol);
 	if (ret != 0) {
 		dev_dbg(component->dev, "jack-pol return %d", ret);
@@ -1125,7 +1109,7 @@ static int es8326_probe(struct snd_soc_component *component)
 				      &es8326->interrupt_clk);
 	if (ret != 0) {
 		dev_dbg(component->dev, "interrupt-clk return %d", ret);
-		es8326->interrupt_clk = 0x45;
+		es8326->interrupt_clk = 0x00;
 	}
 	dev_dbg(component->dev, "interrupt-clk %x", es8326->interrupt_clk);
 
-- 
2.17.1


