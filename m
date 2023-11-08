Return-Path: <devicetree+bounces-14662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9827E5E8F
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 20:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BFF42814BF
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 19:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CBA937142;
	Wed,  8 Nov 2023 19:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DkWc+2wO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B921036B06
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 19:29:30 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 838071FF3;
	Wed,  8 Nov 2023 11:29:30 -0800 (PST)
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0395766076A1;
	Wed,  8 Nov 2023 19:29:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699471769;
	bh=cGOweYfxq9nnkhXXEN78c1BIl1bT21hvfnRwjm5+EWU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DkWc+2wOl7TZr2lgzNV6wvD1baeXaP+7a2MQtnyY7RkAjS66BmF0RGet8nD95mY7k
	 CMvvshro9kPfebcqEQF6PRQG6Mv14soIbTckCkY7ToR8nVsIwn+KtIh1L48ck6pptV
	 tMyI2Qin62vf2UBq9g7+O/JBx0/nvhG8QxAhzgc+L3TzTMpibZMV3BjdNsJchPo4qJ
	 o5q5L5+x2qCNPYNlAQtQy31yoJHBHwEds/xV6CT3BJ1b+weBiF1FL3G/2cX5L5SCKE
	 3bmL++iwFunrL3jJx+oszoBN7w93sUBWOnezhZeXajwYZrDqtQFQ62nDOzAkdVcA8O
	 CI9wGMnE8mdIQ==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Wed, 08 Nov 2023 20:29:20 +0100
Subject: [PATCH v14 1/8] media: v4l2: Add ignore_streaming flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231108-wave5-v14-rebased-v14-1-0b4af1258656@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699471762; l=1867;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=cGOweYfxq9nnkhXXEN78c1BIl1bT21hvfnRwjm5+EWU=;
 b=qgoFR5YHyrLgwpt94fHa9DUFnBayF/kmFDx+LRoPS5xqxCdaFN6NO1gti2cm/txGrv3xgLoczPYB
 LllqukNzBCqB96usyV4kBDMfCLGsu27V0cezxEpX4ETRSeA5xuFB
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=

Add a new flag to the `struct v4l2_m2m_dev` to toggle whether a queue
must be streaming in order to allow queuing jobs to the ready queue.
Currently, both queues (CAPTURE & OUTPUT) must be streaming in order to
allow adding new jobs. This behavior limits the usability of M2M for
some drivers, as these have to be able, to perform analysis of the
sequence to ensure, that userspace prepares the CAPTURE queue correctly.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 include/media/v4l2-mem2mem.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index d6c8eb2b5201..1288fe364fab 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -84,6 +84,12 @@ struct v4l2_m2m_queue_ctx {
  * @last_src_buf: indicate the last source buffer for draining
  * @next_buf_last: next capture queud buffer will be tagged as last
  * @has_stopped: indicate the device has been stopped
+ * @ignore_cap_streaming: If true, job_ready can be called even if the CAPTURE
+ *			  queue is not streaming. This allows firmware to
+ *			  analyze the bitstream header which arrives on the
+ *			  OUTPUT queue. The driver must implement the job_ready
+ *			  callback correctly to make sure that the requirements
+ *			  for actual decoding are met.
  * @m2m_dev: opaque pointer to the internal data to handle M2M context
  * @cap_q_ctx: Capture (output to memory) queue context
  * @out_q_ctx: Output (input from memory) queue context
@@ -106,6 +112,7 @@ struct v4l2_m2m_ctx {
 	struct vb2_v4l2_buffer		*last_src_buf;
 	bool				next_buf_last;
 	bool				has_stopped;
+	bool				ignore_cap_streaming;
 
 	/* internal use only */
 	struct v4l2_m2m_dev		*m2m_dev;

-- 
2.25.1

