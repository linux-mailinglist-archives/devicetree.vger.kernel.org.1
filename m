Return-Path: <devicetree+bounces-147520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4369EA38870
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 598053AEF89
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 15:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B5A22A7E5;
	Mon, 17 Feb 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Kqr14EBC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA6E22A4D3;
	Mon, 17 Feb 2025 15:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739807394; cv=none; b=qGElL6setGjwelAEcSHsAtYalYDEzZx2ARBPLkoNR9HnE+AQECkLPEdRZwYCpT3ow7vwMfPXT52lg/BYGxAY/P5m3C2c8GgbDoFGiSUXD2nA3iYXmwzVjMIQ/yqiCM7guYom11K9B/j95WXLzKm7W24n7me6TGVqYjuRuBCrjrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739807394; c=relaxed/simple;
	bh=IGLnu8udYQTnGjy++8XEPCHJ60TM8dI2yrfyPOUYAbY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jFOoVRmqrWbLMdxkgl5A7DMkZGRuAgRk+5RdUwfm10ND4GNihlCZNznq03KOf81BvzFbqQdcuu6IlyZZ6c7slcCLUgGj6gKGyWTrlEwYSvVhESP27zDyqbNtVDBEQcp0u8VNJjknWkOno6cQB2CQGV249dIhRt2NuhyCyNBKY58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Kqr14EBC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739807391;
	bh=IGLnu8udYQTnGjy++8XEPCHJ60TM8dI2yrfyPOUYAbY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Kqr14EBCc56mUomsEFeQYOmQ2Y+VSB/+ncKF/9hsrrPtnxI80LNkERmTv6bO0wyxC
	 R9tbQG3gsHbIYXVBjgvqnUjJ6sxsZHHd8Yd5wv7FQsdDYL9m4P/FqRIZtgr/NLi7IO
	 /3hwei6Jmu9513mXRefyvVtaZdIOmP4BnNpQY9sEBlTlv3hQ8ro6kPgCb7Bjf5qY42
	 fjiwYW0aZ7GGW24cAD43jJNmHcjmdYiUAj3AeRsDWHL0QkmVkJhc3Q0WMHN2DRP4Pp
	 njLIPs+8vuu2Of+PQo9qD6bgIjoc6ELRvE0FDNus9y/zhbRP4vDi2lmjZtB7RMyLIQ
	 wV2LMoW4LLDsA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1E88E17E1562;
	Mon, 17 Feb 2025 16:49:50 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com,
	ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v7 23/43] drm/mediatek: mtk_hdmi: Move N/CTS setting to new function
Date: Mon, 17 Feb 2025 16:48:16 +0100
Message-ID: <20250217154836.108895-24-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
References: <20250217154836.108895-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In preparation for splitting common bits of this driver, moving
the hdmi_rec_n_table struct array, and the hdmi_recommended_n(),
hdmi_mode_clock_to_hz(), hdmi_expected_cts() functions, add one
function called mtk_hdmi_get_ncts() that sets both N and CTS in
a single call.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 69db6b19017d..e9f2f15e98fa 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -682,6 +682,13 @@ static unsigned int hdmi_expected_cts(unsigned int audio_sample_rate,
 				     128 * audio_sample_rate);
 }
 
+static void mtk_hdmi_get_ncts(unsigned int sample_rate, unsigned int clock,
+			      unsigned int *n, unsigned int *cts)
+{
+	*n = hdmi_recommended_n(sample_rate, clock);
+	*cts = hdmi_expected_cts(sample_rate, clock, *n);
+}
+
 static void do_hdmi_hw_aud_set_ncts(struct mtk_hdmi *hdmi, unsigned int n,
 				    unsigned int cts)
 {
@@ -712,8 +719,7 @@ static void mtk_hdmi_hw_aud_set_ncts(struct mtk_hdmi *hdmi,
 {
 	unsigned int n, cts;
 
-	n = hdmi_recommended_n(sample_rate, clock);
-	cts = hdmi_expected_cts(sample_rate, clock, n);
+	mtk_hdmi_get_ncts(sample_rate, clock, &n, &cts);
 
 	dev_dbg(hdmi->dev, "%s: sample_rate=%u, clock=%d, cts=%u, n=%u\n",
 		__func__, sample_rate, clock, n, cts);
-- 
2.48.1


