Return-Path: <devicetree+bounces-67072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A3B8C67DB
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 15:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 533A7B226BE
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 13:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539D313FD9D;
	Wed, 15 May 2024 13:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="vMUehRHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84AC13FD67;
	Wed, 15 May 2024 13:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715781277; cv=none; b=nsFT01+apPrPS95UQBHCpoSu3IoEtF3c3ef5mpv1OcBY633pc8m1hpU2fKRRx1MY+h5wSK6DCM9ONYzmFlaXFcBmzXJ0CTK+6O8kdf4VfTfSFYgQOlOl9oUqBYUo49YIiYK+Bmx1rToLbg3K/TEqkjBPdCfAtch6ZT4sY69UZag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715781277; c=relaxed/simple;
	bh=bhWRrMUlx2a8en7Ipe0p+UfOzImcfrvx71Td5O1XZsc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GdMs/TOQbcZAaQ96vxtCszf4l2CQJgzT7OQ3uuTJxU/bzUMxSFuC36PA9u3cIOHCdOjxk82ppxhym/rUYfAtzBAoJSVR/MNR6J2Gce3nhXUAKlknvVRaDf4BdNUtxlA/7v0o5xJubWKhxeU5B27Y9TcarfDSd9wAWwLWn2TefkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=vMUehRHq; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 11B5E9C58F8;
	Wed, 15 May 2024 09:54:35 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id m0WPzNXEVoGy; Wed, 15 May 2024 09:54:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 7355B9C590D;
	Wed, 15 May 2024 09:54:34 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 7355B9C590D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1715781274; bh=nu7o1F7oIEou/u3jOCXnPY2pTDR7854IaHJOM1bAKP4=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=vMUehRHqDDVo2kj6Ju1ueqGjelf7gRGlQjYT41d1N5scjrS/yPZncD7lJpd0rskuZ
	 aKA2TboPx3OhWky3irxzrgBJaVT0AhZ1ayReBG+MTLcdC78rKeXljQkpOsZZOqLLTe
	 5XNdlIn4DM92AuShphnCosh5Fppeeq+KM1l86nYSAnR4q4L+c3hgTlXg29X3yZva9o
	 V7H38tcxbD+bXEUEINMgjRFwJPtmIgjft3RikVE9R3kpNdZ8O2G6daWBOCLp1xN2qx
	 TR0+85Y8BP+vYEKlW2GYvYHs6z5e32G+EQFhDEpmfbAULRrxm++rfkBLbJ9gElic12
	 +gEiYF8UrfjQQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id DnxX3Sr4PIu7; Wed, 15 May 2024 09:54:34 -0400 (EDT)
Received: from gerard.rennes.sfl (lmontsouris-657-1-69-118.w80-15.abo.wanadoo.fr [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 78EC19C58F8;
	Wed, 15 May 2024 09:54:32 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
Subject: [PATCHv4 7/9] ASoC: fsl-asoc-card: add DT clock "cpu_sysclk" with generic codec
Date: Wed, 15 May 2024 15:54:09 +0200
Message-Id: <20240515135411.343333-8-elinor.montmasson@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515135411.343333-1-elinor.montmasson@savoirfairelinux.com>
References: <20240515135411.343333-1-elinor.montmasson@savoirfairelinux.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Add an optional DT clock "cpu_sysclk" to get the CPU DAI system-clock
frequency when using the generic codec.
It is set for both Tx and Rx.
The way the frequency value is used is up to the CPU DAI driver
implementation.

Signed-off-by: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
---
 sound/soc/fsl/fsl-asoc-card.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/sound/soc/fsl/fsl-asoc-card.c b/sound/soc/fsl/fsl-asoc-card.c
index 9aca8ad15372..c7fc9c16f761 100644
--- a/sound/soc/fsl/fsl-asoc-card.c
+++ b/sound/soc/fsl/fsl-asoc-card.c
@@ -754,6 +754,12 @@ static int fsl_asoc_card_probe(struct platform_device =
*pdev)
 		snd_soc_of_parse_tdm_slot(np, NULL, NULL,
 						&priv->cpu_priv.slot_num,
 						&priv->cpu_priv.slot_width);
+		struct clk *cpu_sysclk =3D clk_get(&pdev->dev, "cpu_sysclk");
+		if (!IS_ERR(cpu_sysclk)) {
+			priv->cpu_priv.sysclk_freq[TX] =3D clk_get_rate(cpu_sysclk);
+			priv->cpu_priv.sysclk_freq[RX] =3D priv->cpu_priv.sysclk_freq[TX];
+			clk_put(cpu_sysclk);
+		}
 	} else {
 		dev_err(&pdev->dev, "unknown Device Tree compatible\n");
 		ret =3D -EINVAL;
--=20
2.34.1


