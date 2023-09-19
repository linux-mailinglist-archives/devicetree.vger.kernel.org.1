Return-Path: <devicetree+bounces-1324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 965337A5EED
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51F17281FAE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B55B2E633;
	Tue, 19 Sep 2023 09:59:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E651C110B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:59:45 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94B35E8;
	Tue, 19 Sep 2023 02:59:44 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3981666003B9;
	Tue, 19 Sep 2023 10:59:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695117583;
	bh=vdjqwvikUTSEg0RbloUXKWZcw3Q5awlw9Ycji3qqMhk=;
	h=From:To:Cc:Subject:Date:From;
	b=ETgSxmKdx+EdOECb3X6z/Eufhpv6ukE7JbBn15ai3osywNTl4eRwy2/z83jcsMhtF
	 kJ+EiRyyk1XijgpKCmY6PuWhxGhLqARkr+99xP28ojur82Np2/OZUDUo05svC4slJ/
	 J5isqL7u5HS3t9PnWHWXSUGVNuhrG7eDP7L8joqwI4571NHyy9Ui3ZumHl03RwEcLW
	 9W+qdcfAGLIRwLf/fPSLqj07fQkrpeCET/emULTLZs4OmUUwcPPWZdAAky+PKJQXUe
	 S1raQgsjZm3RZx9dnQ1NhGvAIm3cy+/9o7hbx0Ax5Hw9AspXjQRO8GyngAy9ysXJZL
	 h3QN0hOLzqmKQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: mchehab@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	moudy.ho@mediatek.com,
	hverkuil-cisco@xs4all.nl,
	sakari.ailus@linux.intel.com,
	u.kleine-koenig@pengutronix.de,
	linqiheng@huawei.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH 0/2] MediaTek MDP3: use devicetree to retrieve SCP
Date: Tue, 19 Sep 2023 11:59:36 +0200
Message-ID: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Especially now that Multi-Core SCP support has landed, it makes sense to
retrieve the SCP handle by using the "mediatek,scp" property (as already
done in MediaTek VCODEC), both to select one specific SCP core for MDP3
and to avoid walking the parent node to find a SCP node.

AngeloGioacchino Del Regno (2):
  media: dt-bindings: mediatek: Add phandle to mediatek,scp on MDP3 RDMA
  media: platform: mtk-mdp3: Use devicetree phandle to retrieve SCP

 .../bindings/media/mediatek,mdp3-rdma.yaml       |  6 ++++++
 .../media/platform/mediatek/mdp3/mtk-mdp3-core.c | 16 ++++++++++------
 2 files changed, 16 insertions(+), 6 deletions(-)

-- 
2.42.0


