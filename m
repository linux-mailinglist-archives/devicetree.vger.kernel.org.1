Return-Path: <devicetree+bounces-14663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FACC7E5E90
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 20:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B75AF1C20B2A
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 19:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B0937149;
	Wed,  8 Nov 2023 19:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="InfcwSPs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D536B06
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 19:29:34 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 535502116;
	Wed,  8 Nov 2023 11:29:33 -0800 (PST)
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 08B0366076A4;
	Wed,  8 Nov 2023 19:29:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699471772;
	bh=skHV6yLqygB24iyWjVzqydymdJD3VIyGNE+PRIszSIU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=InfcwSPse6KMWPwbGex6YxPiuiQFodBVoaU4RS0feLn0o36mDImTOMK3ts76vy5lL
	 Uh3/duaOi+/ftk60TBom6Nc6D8aoVCXwyOJo2Yr6hQprQpwixHmE78sDaS/HATnFs/
	 erGQlP75/ZmeUlWssWUNFdfTtCuEZP+hjMiTzEDsb5Epn84ZM8m/cvcMwRbSshBGQv
	 3Y7uwlu1AIkSiRSD+73MjA0ey+OPbRsXktif50LAOCGCnMDUatQCLgEOBUxJ0gctXz
	 XSBRRSUJCq8EPgNGPOHw13MQCtsHwNqdrxNNkXbbAfbz1FjLc177BNGKclFaAVi5Pv
	 3OxD8U6AB/fAA==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Wed, 08 Nov 2023 20:29:21 +0100
Subject:
 [PATCH v14 2/8] media: v4l2: Allow M2M job queuing w/o streaming CAP queue
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-wave5-v14-rebased-v14-2-0b4af1258656@collabora.com>
References: <20231108-wave5-v14-rebased-v14-0-0b4af1258656@collabora.com>
In-Reply-To: <20231108-wave5-v14-rebased-v14-0-0b4af1258656@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Conor Dooley <conor+dt@kernel.org>, Nas Chung <nas.chung@chipsnmedia.com>,
 Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jackson Lee <jackson.lee@chipsnmedia.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Cc: Ivan Bornyakov <brnkv.i1@gmail.com>,
 Deborah Brouwer <deborah.brouwer@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, devicetree@vger.kernel.org,
 Robert Beckett <bob.beckett@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699471762; l=1342;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=skHV6yLqygB24iyWjVzqydymdJD3VIyGNE+PRIszSIU=;
 b=EpTI7SOT/Y+eiNPBtdvlzROETGWIdBOeroCE4E135OSd2AlHobddLnp6hRzQMJfiiW1oeOdctxsS
 fB3vlBteCZvJLcKcNNdFIRsyhCibpJoZ5rykalbMGJ+sukCIgawe
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=

Allow decoder drivers to enable set the ignore_streaming flag on their
CAPTURE queue, to allow queuing jobs to the M2M ready queue and perform
firmware sequence analysis with just a streaming OUTPUT queue and
available bitstream data.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
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

