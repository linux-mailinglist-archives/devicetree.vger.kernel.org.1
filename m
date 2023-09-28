Return-Path: <devicetree+bounces-4026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 364337B1146
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 05:41:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A53A4B209A5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 03:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD6C6FBC;
	Thu, 28 Sep 2023 03:41:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259716FBE
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 03:41:41 +0000 (UTC)
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id EC4DF114;
	Wed, 27 Sep 2023 20:41:37 -0700 (PDT)
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1978118:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Thu, 28 Sep 2023 11:41:10 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.25; Thu, 28 Sep
 2023 11:41:09 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1118.25 via Frontend
 Transport; Thu, 28 Sep 2023 11:41:09 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>
CC: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai <tiwai@suse.com>, ChiYuan Huang <cy_huang@richtek.com>, Allen Lin
	<allen_lin@richtek.com>, <devicetree@vger.kernel.org>,
	<alsa-devel@alsa-project.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] ASoC: codecs: rtq9128: Add TDM input source select
Date: Thu, 28 Sep 2023 11:41:06 +0800
Message-ID: <1695872468-24433-1-git-send-email-cy_huang@richtek.com>
X-Mailer: git-send-email 1.8.3.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: ChiYuan Huang <cy_huang@richtek.com>

This patch series create a TDM source select property and use it to
decide which TDM data source is connected.

Following by the below patch disccuion
https://lore.kernel.org/lkml/1695780376-32301-1-git-send-email-cy_huang@richtek.com/#t
It may not be a good choice to add the user controlable mixer control
item. Since it follows the board design, make it as a device property.

ChiYuan Huang (2):
  ASoC: dt-bindings: rtq9128: Add TDM input source slect property
  ASoC: codecs: rtq9128: Add TDM input source select

 .../bindings/sound/richtek,rtq9128.yaml          |  7 +++++++
 sound/soc/codecs/rtq9128.c                       | 16 +++++++++++++++-
 2 files changed, 22 insertions(+), 1 deletion(-)


base-commit: 3efcb471f871cc095841d411f98c593228ecbac6
-- 
2.34.1


