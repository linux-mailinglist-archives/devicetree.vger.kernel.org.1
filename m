Return-Path: <devicetree+bounces-138097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8EAA0BAC8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DA6F7A4BE6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:58:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5073DABF1;
	Mon, 13 Jan 2025 14:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k7LdTqVy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44D428EC8F;
	Mon, 13 Jan 2025 14:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779999; cv=none; b=hnv6gqZFtNbVehjR/kMRfkSmlPrakSkvGUSMuZCQwGW7gj6JEZ2d7oWajnJLPyoeEtUGR6ohLNqanUbUPFHGrSw/gtIt+hgtGRKNAkTlTDfmDxsCDdK90SJnO3APVgHYrTY4hBlvsSUkrh3Dslq4IIdkfxPgh+7P7d0OoQKtByc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779999; c=relaxed/simple;
	bh=GedIFbsSX6/6EX4TXYDKJTD2AnIS6Avole0Kvc9L7W0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZvrbHNUVVCMy8cA4d0YyE9vNbFJTfUTU3iP03lWxCz07bKckty7OoTaXun/WWf59B2VAjugCIlRGGT4rSemzynjcxDL4iLEBEMqMDK2n5YXAcFAtVRTPYPNoxupyEYWbrgGKcJ26612zsNuwJ4YDYbt5MPKr91XR162mvgKJpmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=k7LdTqVy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736779996;
	bh=GedIFbsSX6/6EX4TXYDKJTD2AnIS6Avole0Kvc9L7W0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k7LdTqVyfAOVqsh+cjFStYXoG+qKdAMn0DKQOUWNG1VqOwYuABODWbx5mfwYrgb1R
	 SHenH7sj+kTUGx7d8lFe8nFEeAAZe8rLn4gJm8sRdm8DCMrhvmRxikxAb8PMGXLpj/
	 dsAPLEuRgnTJbkE0W26+KOIYfoAnq+NcuNbvLkOnlS6wGsEAmsmOkf3rCQbMEm1qCS
	 Bftt3jdGi8oYxNkj0iMh7AqHhP/nKx7uEvodJJAtq0Yh8G3UuweQwN9fHwzwS2Pe+y
	 cN+U5ukMb8Qz0X+L5t+CTn/EEEYYuvVqVjZNgnKnuv/4mz1RY9DPN5iDUt/7FY2/yq
	 EHO3F2vUp/w3g==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B172E17E0ECD;
	Mon, 13 Jan 2025 15:53:14 +0100 (CET)
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
Subject: [PATCH v5 26/34] drm/mediatek: mtk_hdmi: Remove goto in mtk_hdmi_clk_enable_audio()
Date: Mon, 13 Jan 2025 15:52:24 +0100
Message-ID: <20250113145232.227674-27-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If the clk_prepare_enable() call for the SPDIF clock fails, just
disable and unprepare the clock in the error check branch and
return immediately instead of jumping to the end with a goto,
slightly reducing code size.

This commit brings no functional changes.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index f6b463aaba47..40eea5c125d2 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1095,13 +1095,12 @@ static int mtk_hdmi_clk_enable_audio(struct mtk_hdmi *hdmi)
 		return ret;
 
 	ret = clk_prepare_enable(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
-	if (ret)
-		goto err;
+	if (ret) {
+		clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_BCLK]);
+		return ret;
+	}
 
 	return 0;
-err:
-	clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_BCLK]);
-	return ret;
 }
 
 static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
-- 
2.47.0


