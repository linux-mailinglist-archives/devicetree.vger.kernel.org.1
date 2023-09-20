Return-Path: <devicetree+bounces-1878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7D47A8AD8
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76BB11F20F9F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0345B3FB06;
	Wed, 20 Sep 2023 17:50:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CDA1A5A0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:50:12 +0000 (UTC)
Received: from mxout4.routing.net (mxout4.routing.net [IPv6:2a03:2900:1:a::9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55CCBB9;
	Wed, 20 Sep 2023 10:50:10 -0700 (PDT)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout4.routing.net (Postfix) with ESMTP id 433E5100822;
	Wed, 20 Sep 2023 17:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1695232208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pQwUghND64z4zbqjWnqIEtEy0NxbaqCMpc241OsTuik=;
	b=VYXBfEmu1ygEHqH3fhaXBfVCODUYWXYlUAm2s5VwSkIrzBy1EVL0JUvfqGJCB2KqfVgm90
	j7aoOGoBCqoUcGxrxQiePAkOoAYenfUM452VGRZs9dsyJHhh9l8n0R+yPBFIvCJUuYEnsc
	Px1nUcQ039VWGuINGHwlnAiBOV6wiho=
Received: from frank-G5.. (fttx-pool-217.61.152.105.bambit.de [217.61.152.105])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 3BC671006BE;
	Wed, 20 Sep 2023 17:50:07 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] add LVTS support for mt7988
Date: Wed, 20 Sep 2023 19:49:57 +0200
Message-Id: <20230920175001.47563-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mail-ID: 52ab3123-c9b5-44d2-9154-ab57bf928408
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Frank Wunderlich <frank-w@public-files.de>

This series makes allows soc specific temperature coefficients
and adds support for mt7988 which has a different one.

Frank Wunderlich (4):
  dt-bindings: thermal: mediatek: add mt7988 lvts compatible
  dt-bindings: thermal: mediatek: Add LVTS thermal sensors for mt7988
  thermal/drivers/mediatek/lvts_thermal: make coeff configurable
  thermal/drivers/mediatek/lvts_thermal: add mt7988 support

 .../thermal/mediatek,lvts-thermal.yaml        |  1 +
 drivers/thermal/mediatek/lvts_thermal.c       | 97 +++++++++++++++----
 .../thermal/mediatek,lvts-thermal.h           |  9 ++
 3 files changed, 90 insertions(+), 17 deletions(-)

-- 
2.34.1


