Return-Path: <devicetree+bounces-7548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7A97C4A13
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F11B8283756
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7581B1798A;
	Wed, 11 Oct 2023 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oy3q07tM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05175171A8;
	Wed, 11 Oct 2023 06:16:31 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 546EC183;
	Tue, 10 Oct 2023 23:16:07 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id 97453E000D;
	Wed, 11 Oct 2023 06:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697004966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y3si6n+8C/3nGddG/bex4gaYwAJkDU16eps4QpP35QQ=;
	b=oy3q07tMkbPmektydjh66Us2GNOb/sQbWWgVFy3UWlMhFAubaEpkrMq+qazlxMhFf9nQFt
	HsXlpjtkSJsFaZYojDudGLURi2kzEPESUVLCfGHrvmyxwJuYuXlEMTB55ii2uL3nTddCF/
	Uj+Ud6EdDSv5dIIJAO3HzFMxRFFwEHBH5Y+GKVJ1ITgHB8mBybWTsl8pM0rAllD+zrYhRx
	uYKIKgOzhBRoCf2CesD7uPyAM/eXHLmT3b6sZIf346PJZCHn/LfeNBp4Ty0ePPKW3wStu6
	AlIEBDD9jII868mVOwmK5usPfaf3ocknToV7hSvmG7nf1SqvaCCVMByspRR6DA==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Randy Dunlap <rdunlap@infradead.org>
Cc: netdev@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	Simon Horman <horms@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v8 22/30] soc: fsl: cpm1: qmc: Introduce functions to change timeslots at runtime
Date: Wed, 11 Oct 2023 08:14:26 +0200
Message-ID: <20231011061437.64213-23-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231011061437.64213-1-herve.codina@bootlin.com>
References: <20231011061437.64213-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Introduce qmc_chan_{get,set}_ts_info() function to allow timeslots
modification at runtime.

The modification is provided using qmc_chan_set_ts_info() and will be
applied on next qmc_chan_start().
qmc_chan_set_ts_info() must be called with the channel rx and/or tx
stopped.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
---
 drivers/soc/fsl/qe/qmc.c | 51 ++++++++++++++++++++++++++++++++++++++++
 include/soc/fsl/qe/qmc.h | 10 ++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/soc/fsl/qe/qmc.c b/drivers/soc/fsl/qe/qmc.c
index b63b54ec0a3a..6e22b96b4e7a 100644
--- a/drivers/soc/fsl/qe/qmc.c
+++ b/drivers/soc/fsl/qe/qmc.c
@@ -290,6 +290,57 @@ int qmc_chan_get_info(struct qmc_chan *chan, struct qmc_chan_info *info)
 }
 EXPORT_SYMBOL(qmc_chan_get_info);
 
+int qmc_chan_get_ts_info(struct qmc_chan *chan, struct qmc_chan_ts_info *ts_info)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&chan->ts_lock, flags);
+
+	ts_info->rx_ts_mask_avail = chan->rx_ts_mask_avail;
+	ts_info->tx_ts_mask_avail = chan->tx_ts_mask_avail;
+	ts_info->rx_ts_mask = chan->rx_ts_mask;
+	ts_info->tx_ts_mask = chan->tx_ts_mask;
+
+	spin_unlock_irqrestore(&chan->ts_lock, flags);
+
+	return 0;
+}
+EXPORT_SYMBOL(qmc_chan_get_ts_info);
+
+int qmc_chan_set_ts_info(struct qmc_chan *chan, const struct qmc_chan_ts_info *ts_info)
+{
+	unsigned long flags;
+	int ret;
+
+	/* Only a subset of available timeslots is allowed */
+	if ((ts_info->rx_ts_mask & chan->rx_ts_mask_avail) != ts_info->rx_ts_mask)
+		return -EINVAL;
+	if ((ts_info->tx_ts_mask & chan->tx_ts_mask_avail) != ts_info->tx_ts_mask)
+		return -EINVAL;
+
+	/* In case of common rx/tx table, rx/tx masks must be identical */
+	if (chan->qmc->is_tsa_64rxtx) {
+		if (ts_info->rx_ts_mask != ts_info->tx_ts_mask)
+			return -EINVAL;
+	}
+
+	spin_lock_irqsave(&chan->ts_lock, flags);
+
+	if ((chan->tx_ts_mask != ts_info->tx_ts_mask && !chan->is_tx_stopped) ||
+	    (chan->rx_ts_mask != ts_info->rx_ts_mask && !chan->is_rx_stopped)) {
+		dev_err(chan->qmc->dev, "Channel rx and/or tx not stopped\n");
+		ret = -EBUSY;
+	} else {
+		chan->tx_ts_mask = ts_info->tx_ts_mask;
+		chan->rx_ts_mask = ts_info->rx_ts_mask;
+		ret = 0;
+	}
+	spin_unlock_irqrestore(&chan->ts_lock, flags);
+
+	return ret;
+}
+EXPORT_SYMBOL(qmc_chan_set_ts_info);
+
 int qmc_chan_set_param(struct qmc_chan *chan, const struct qmc_chan_param *param)
 {
 	if (param->mode != chan->mode)
diff --git a/include/soc/fsl/qe/qmc.h b/include/soc/fsl/qe/qmc.h
index 166484bb4294..2a333fc1ea81 100644
--- a/include/soc/fsl/qe/qmc.h
+++ b/include/soc/fsl/qe/qmc.h
@@ -40,6 +40,16 @@ struct qmc_chan_info {
 
 int qmc_chan_get_info(struct qmc_chan *chan, struct qmc_chan_info *info);
 
+struct qmc_chan_ts_info {
+	u64 rx_ts_mask_avail;
+	u64 tx_ts_mask_avail;
+	u64 rx_ts_mask;
+	u64 tx_ts_mask;
+};
+
+int qmc_chan_get_ts_info(struct qmc_chan *chan, struct qmc_chan_ts_info *ts_info);
+int qmc_chan_set_ts_info(struct qmc_chan *chan, const struct qmc_chan_ts_info *ts_info);
+
 struct qmc_chan_param {
 	enum qmc_mode mode;
 	union {
-- 
2.41.0


