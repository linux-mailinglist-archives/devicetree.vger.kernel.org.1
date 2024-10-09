Return-Path: <devicetree+bounces-109345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BB996175
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:52:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CED9A1F21B0E
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91328186E26;
	Wed,  9 Oct 2024 07:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4B81865F1;
	Wed,  9 Oct 2024 07:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460358; cv=none; b=MheuNDoB0q2dJ27afDiGo3sQDJ9ti2fZFLFhR4fFU6mFhEy87px7SmtjzhUl4JIJOokRkBhEg3ul0LK0Pxm05GU7vky/z9PZe2QiRQ9S9nd2yMafZiFQ14U6dfpRYRlamO+kM0Afot5usZ72o1UyKinczCpuNj9j7II+ShZEIYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460358; c=relaxed/simple;
	bh=Zi99jQdFstst+vAd865WwNWecwtynvGvS1itGFMg/5s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BCkey7xlq5cJePkojWYmqFAP4s5Ek8ou0PQXZ6D7DKj1oft8Vzldqm2SE/X0rpJo4l1OEuyRo/VAZNFyXwsXrWUg5NDS8Nl/Cw8nSt/2DXwjUZcVChneCA09Be0DGPAJI2fOc0dtSuE4nixyIHSANolqAbc2B+06Vt9GRyzzbPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8CxLOtDNgZnXbIQAA--.23607S3;
	Wed, 09 Oct 2024 15:52:35 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMBxn+Q9NgZniRYhAA--.37100S3;
	Wed, 09 Oct 2024 15:52:33 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Shuming Fan <shumingf@realtek.com>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v3 5/9] ASoC: loongson: Fix component check failed on FDT systems
Date: Wed,  9 Oct 2024 15:52:27 +0800
Message-ID: <6645888f2f9e8a1d8d799109f867d0f97fd78c58.1728459624.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1728459624.git.zhoubinbin@loongson.cn>
References: <cover.1728459624.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxn+Q9NgZniRYhAA--.37100S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9xXoW7Xr45XF1rWw48Jw4rtry5Awc_yoWfZFX_Ja
	42g34rurW5JF43t3yDXrWUCr1IqryfG3W5C3WUtr4kX3W2yw4SqryrAr13CFnrXr10vwn8
	Xws2gr4Iy340yosvyTuYvTs0mTUanT9S1TB71UUUUbJqnTZGkaVYY2UrUUUUj1kv1TuYvT
	s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
	cSsGvfJTRUUUb6xYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
	vaj40_Wr0E3s1l1IIY67AEw4v_JF0_JFyl8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
	w2x7M28EF7xvwVC0I7IYx2IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
	W8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Gr1j6F4UJwAaw2AFwI0_Jw0_GFyle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
	xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
	ZF0_GryDMcIj6I8E87Iv67AKxVWxJVW8Jr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48Icx
	kI7VAKI48JMxkF7I0En4kS14v26r4a6rW5MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCj
	c4AY6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxV
	Cjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY
	6xIIjxv20xvE14v26w1j6s0DMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UMIIF0x
	vE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWxJVW8Jr1lIxAIcVC2z280
	aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x07juXdUUUUUU=

Add missing snd_soc_dai_link.platforms assignment to avoid
soc_dai_link_sanity_check() failure.

Fixes: d24028606e76 ("ASoC: loongson: Add Loongson ASoC Sound Card Support")
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 sound/soc/loongson/loongson_card.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/loongson/loongson_card.c b/sound/soc/loongson/loongson_card.c
index 7379f24d385c..7910d5d9ac4f 100644
--- a/sound/soc/loongson/loongson_card.c
+++ b/sound/soc/loongson/loongson_card.c
@@ -144,6 +144,7 @@ static int loongson_card_parse_of(struct loongson_card_data *data)
 			dev_err(dev, "getting cpu dlc error (%d)\n", ret);
 			goto err;
 		}
+		loongson_dai_links[i].platforms->of_node = loongson_dai_links[i].cpus->of_node;
 
 		ret = snd_soc_of_get_dlc(codec, NULL, loongson_dai_links[i].codecs, 0);
 		if (ret < 0) {
-- 
2.43.5


