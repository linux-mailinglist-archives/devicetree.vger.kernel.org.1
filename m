Return-Path: <devicetree+bounces-67070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B608C67D4
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 15:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB5821C21CCE
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 13:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E69413F44E;
	Wed, 15 May 2024 13:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="fJkFTw5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF72F13F435;
	Wed, 15 May 2024 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715781275; cv=none; b=AS5KraUw4XvyRFCUN01fIuvVgCDEStMpP2L6ejboeTM9XJbe7ts+LriocGJu8f5oCQphwXrto3aisjRrJLavCAFSfDPhQPaatQUr+3CHPHANC4EpJGLNwP4pcg2cX383Ha0LeGNMrDdG3ALuzbPCeAPgtuavDW8Rhgl0j6nQvAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715781275; c=relaxed/simple;
	bh=flOK/mIX2ug/W1AOqc8WLSXvihx1G+ShXPADnB+aoSo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GgOxIYGGXPi4IIfHTHhivFI8CwQ0SvDDxZPtTv8e+gPmuTk+by9hMZhCopVHIRk60AsoAQH7zhF7VUDYw1Z79C/oKzTh/2/GXCOqHxZGxA7ookNgRHBu4Fd5Su+ZtWkqJZaNTnTqfqdr9Ca4Db6fo1/iIFvV2wt2D5vJNNRxAVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=fJkFTw5B; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id F3F189C590C;
	Wed, 15 May 2024 09:54:32 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id 2UiyIvBMNgrA; Wed, 15 May 2024 09:54:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 5F45D9C590B;
	Wed, 15 May 2024 09:54:32 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 5F45D9C590B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1715781272; bh=Xtwy2ynslADVxZSdln7Ic8Ltb0fWhr99ZizRjpr0t/o=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=fJkFTw5Br7OXuzDrYCSOg0K/DinSW+fNOG8bT3aOggtbxcfxYDdPU/gfZgCQ1L10N
	 FQaWo5frDouTl4YKYATDmgI+DnWJHqpwdWjVbOpN4v2eH2DfmUxSYZHV48LdEI+BaX
	 aGXhNNJTWjhUkbWdGV7VWkSbw60CgVo63ugrWWSeg+8xFSoQFmUa56JX1a+pZQN76F
	 q8zbEWydlvWisFxpYQPiQpQZBV0UVgyZ8/EaEGkbGq0FwT4GsWduIrNNV7JHV6qQnY
	 HEkhHt0bzLy5ohJIpz5uWR3CQ/FVsZGXWvQMyB1c9jDwSJ+9EYwxTvKR+Vlg1+Ujsf
	 j5eRmaBJB/ucQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id jZ1o3eTYvlGQ; Wed, 15 May 2024 09:54:32 -0400 (EDT)
Received: from gerard.rennes.sfl (lmontsouris-657-1-69-118.w80-15.abo.wanadoo.fr [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 633169C58F8;
	Wed, 15 May 2024 09:54:30 -0400 (EDT)
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
Subject: [PATCHv4 6/9] ASoC: fsl-asoc-card: add use of devicetree TDM slot properties
Date: Wed, 15 May 2024 15:54:08 +0200
Message-Id: <20240515135411.343333-7-elinor.montmasson@savoirfairelinux.com>
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

Add use of optional TDM slot properties "dai-tdm-slot-num" and
"dai-tdm-slot-width" through snd_soc_of_parse_tdm_slot().
They allow setting a custom TDM slot width in bits and number of slots
for the CPU DAI when using the generic codec.

Signed-off-by: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
---
 sound/soc/fsl/fsl-asoc-card.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/fsl/fsl-asoc-card.c b/sound/soc/fsl/fsl-asoc-card.c
index 82ed7f4e81a1..9aca8ad15372 100644
--- a/sound/soc/fsl/fsl-asoc-card.c
+++ b/sound/soc/fsl/fsl-asoc-card.c
@@ -751,6 +751,9 @@ static int fsl_asoc_card_probe(struct platform_device *=
pdev)
 		priv->dai_link[0].num_codecs =3D 2;
 		priv->dai_link[2].num_codecs =3D 2;
 		priv->dai_fmt |=3D SND_SOC_DAIFMT_CBP_CFP;
+		snd_soc_of_parse_tdm_slot(np, NULL, NULL,
+						&priv->cpu_priv.slot_num,
+						&priv->cpu_priv.slot_width);
 	} else {
 		dev_err(&pdev->dev, "unknown Device Tree compatible\n");
 		ret =3D -EINVAL;
--=20
2.34.1


