Return-Path: <devicetree+bounces-8121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB127C6BC6
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACE411C209B1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F47E21A02;
	Thu, 12 Oct 2023 11:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="QlVXQA/V"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE9E21366
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:02:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9A4C91;
	Thu, 12 Oct 2023 04:02:32 -0700 (PDT)
Received: from localhost (dynamic-002-247-255-251.2.247.pool.telefonica.de [2.247.255.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 262F56607342;
	Thu, 12 Oct 2023 12:02:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697108551;
	bh=gZD8FwPRmycZ5AwP7wqTItCK+pu51d1GjKx5r6xw4DU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QlVXQA/VADtK//yFCrY4S4jYyc8cPBxsyIZ7podteN1bH4OkNph6n7cPMdpufj74h
	 TeEMmj0Hn6mWM3jFcIUsA3nsP+xNy3mugsLmI0wuDbKJWEBra4tD1Ei/jq+oi8RQXc
	 vb9sW8snw2SxS/eoThKgb0U+vH9ab2SmG7W1GA/K19CqCkqnq2r6mEcQZlYdaFY7qU
	 lyorzqxzjt3LBIl/QlXFuO07mseoWfqFHChPHlOWXWruHDPhOBteWBQGm6+Dg+8q58
	 E69wzEZZAYbBtpkv9vp2ezcuJPxfkzLQiKcpezYBdTponeAHkTZe1IFryXw52pPKc2
	 h78VAp+wDNJGQ==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Oct 2023 13:01:00 +0200
Subject:
 [PATCH v13 2/8] media: v4l2: Allow M2M job queuing w/o streaming CAP queue
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-wave5_v13_media_master-v13-2-5ac60ccbf2ce@collabora.com>
References: <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
In-Reply-To:
 <20230929-wave5_v13_media_master-v13-0-5ac60ccbf2ce@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nas Chung <nas.chung@chipsnmedia.com>, Fabio Estevam <festevam@gmail.com>
Cc: linux-media@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-kernel@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com,
 Robert Beckett <bob.beckett@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Etheridge <detheridge@ti.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697108536; l=1378;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=gZD8FwPRmycZ5AwP7wqTItCK+pu51d1GjKx5r6xw4DU=;
 b=GSWYtrUVYuT1Pr7eKW2BjF17Vp02rE0VkumlNl3Sr/FOBnN6NinB5OalP/F6rXux/kLWAohpAjRY
 3zCiiLndDVg1pOQpMyC0tX5gh5ZWJRWeIyHbF2NdQH7QE8OFnMIf
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Allow decoder drivers to set the ignore_cap_streaming flag to allow
queuing jobs to the M2M ready queue and perform firmware sequence analysis
with just a streaming OUTPUT queue and available bitstream data.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Deborah Brouwer <deborah.brouwer@collabora.com>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 0cc30397fbad..9e983176542b 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -301,9 +301,12 @@ static void __v4l2_m2m_try_queue(struct v4l2_m2m_dev *m2m_dev,
 
 	dprintk("Trying to schedule a job for m2m_ctx: %p\n", m2m_ctx);
 
-	if (!m2m_ctx->out_q_ctx.q.streaming
-	    || !m2m_ctx->cap_q_ctx.q.streaming) {
-		dprintk("Streaming needs to be on for both queues\n");
+	if (!m2m_ctx->out_q_ctx.q.streaming ||
+	    (!m2m_ctx->cap_q_ctx.q.streaming && !m2m_ctx->ignore_cap_streaming)) {
+		if (!m2m_ctx->ignore_cap_streaming)
+			dprintk("Streaming needs to be on for both queues\n");
+		else
+			dprintk("Streaming needs to be on for the OUTPUT queue\n");
 		return;
 	}
 

-- 
2.25.1

