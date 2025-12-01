Return-Path: <devicetree+bounces-243462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 027B0C97D54
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5AA13A1AB1
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E8A31578E;
	Mon,  1 Dec 2025 14:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="NDRmiP+H"
X-Original-To: devicetree@vger.kernel.org
Received: from xmbghk7.mail.qq.com (xmbghk7.mail.qq.com [43.163.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B66A3191A2;
	Mon,  1 Dec 2025 14:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.163.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598938; cv=none; b=ctTd/e7o81SKo7Q35G/D8KnVTnJewuUdJVptLOaubx4bESKlbWVbYtEzu1KcxZeQiC1K1sdjn0eNYshnaYhWmWWtevmS3qttfDsQEMEr94q0tjfDUkOVAUEgZwwAUfhnqtyLG4tRVKCO4qE4W2/515ALnawTcgsUqnkPDPDVaUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598938; c=relaxed/simple;
	bh=xv8zK0OudJEaUWvg6u2mwbN6RlQ2UBl0845DmfjVV00=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=N+EAyEoBDn7uPmmepJ+pZwiPUJzEhEt6byX4H1hK6wvGkbW+SYpxDKdakQK3n/e6+gXc7FeAkGcTzckik/a6BUnA2hAxc24A3fczXTJKuN9Po0hge+PzerDQI8nA2HGijFIOLMvcVrKYJAj8FrQFzSDxWctkmnACHSMQPt3EYkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=NDRmiP+H; arc=none smtp.client-ip=43.163.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764598931;
	bh=A46fsy9EF7CRu4Y9aOSl3UqvkUzQSeDu2M6rkC2ypzI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=NDRmiP+Hcd6r87ybCCNSUj6YbaT63/4VQg5jzkQUeExI1sMBpUHeCZlVDjrNbilTP
	 PUAKIo4TJgqS+Kan6YzwS7LR6VwQIs2L7+Xfob66nahzTvJJQbccXBYFWTRoDGcgte
	 Zoz0nE877kv2LG63bNjv7YvFeEMaRpd7S0kbdhgI=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 587A4AE8; Mon, 01 Dec 2025 22:22:07 +0800
X-QQ-mid: xmsmtpt1764598927tshydvwaw
Message-ID: <tencent_FE5819B397B5ECC989623C67A7D68D246907@qq.com>
X-QQ-XMAILINFO: OATpkVjS499uuUDTIspOO8xGFMp6qi3u4HWEUEueZopR9GNCDR6BsaRkVDtpT4
	 KVY9zNFDdjT3GJW05DLcd2UuoIbeJBUTwMSMS4vPu/YATh3eyrkgucS8zwCYUIGw7XGJyO4VpAJM
	 QBHR5Zqo5ggo4M/OdOSeV/YyK2WPd7wACC6axIuxpJ9VkfEfkXBQsr6HeB37SsZG2SNF12qYPLLX
	 GHuApCYvFeMMPNaQBAmjeMqHQx8UNJk1fLhyzvamQjOl+Ot1bc4SKXTowidRPnESm1+cMijTflCn
	 JOKvvYQ84HdjXjvVnWfTSeCFDXQ++zwb8AtO05ElPyGw0KfADYNsfbs7a3R8pcx9WaCmzAnSHwnJ
	 kMx0N2+zDzsq12/PdviMV/c91hB3Yc1J0s0YrJ61w5ofHAY7IIfCW4VSQwBSPBLUPIFjW4znDV26
	 efSZtEjSbnkYzhQ6PUqouarfDRWY6r2PhtvaGY7qDZGKJxk/K/0FMjMsX8BjwAjcZB0jyVU4ZAT0
	 7JZweH7wELLKm3YsfUratOGFo75M4/hsb1wErbiHANGm5xPwe1Q+3LqWSsVZDUhWFZ8zAIUdrDOK
	 4ubl9a2VVH2/0VpEskGX4WGSoRgnojRueFGTk0jOha5GiUqAgMzYAyPLIcd0FM/QCqtIdzgU+hTd
	 SE0+MOB/IDUsQ3fiubaKYuluUkQLahiyibLltb4ZzxKOpBovJ70K1sae6/BiEuplXmAX1l8nRHGi
	 yCUrVmk9AmfyBcIdiNy2uZowmy43VxGBq9hFkFsVMjdKMlHl/42kQneNDaARHf3pZzQuEtohu/Zq
	 eK75V+L+DWENLCNOgSSJV4R0nW/BbIZzaKq2o1ZtMjOfgEDaUez2ZGZGUnsL3lb/UBlu54Ja10vT
	 KTgddER8R0ty7syiSPzsD50xWNa2euvplQ1uDu6oDjwy13iVjxA4WrK/3D//yE56P+IDtSZHGnvQ
	 fXOW2rkmwqds85xiMGLNeYmkHIGXtudUizKgZJskGxxa3B/sV68dhThlbdr6f4rY6Xq22GpH1KQw
	 S+4SHnRItYHyl5Sm9A7x83k9J5dZ9iMW07LRBauUfxIC8E/CF+PItLERmuearhEeKMY3OxagyfMr
	 lhmmdhnPYk20Z+Hhc=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH RESEND 2/2] drm/panel: simple: Add HannStar HSD156JUW2
Date: Mon,  1 Dec 2025 22:22:06 +0800
X-OQ-MSGID: <20251201142206.31180-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
References: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Hannstar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel support.

Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 0019de93be1b..057ae6735806 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2509,6 +2509,31 @@ static const struct panel_desc hannstar_hsd101pww2 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing hannstar_hsd156juw2_timing = {
+	.pixelclock = { 66000000, 72800000, 80500000 },
+	.hactive = { 1920, 1920, 1920 },
+	.hfront_porch = { 20, 30, 30 },
+	.hback_porch = { 20, 30, 30 },
+	.hsync_len = { 50, 60, 90 },
+	.vactive = { 1080, 1080, 1080 },
+	.vfront_porch = { 1, 2, 4 },
+	.vback_porch = { 1, 2, 4 },
+	.vsync_len = { 3, 40, 80 },
+	.flags = DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc hannstar_hsd156juw2 = {
+	.timings = &hannstar_hsd156juw2_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 344,
+		.height = 194,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode hitachi_tx23d38vm0caa_mode = {
 	.clock = 33333,
 	.hdisplay = 800,
@@ -5166,6 +5191,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "hannstar,hsd101pww2",
 		.data = &hannstar_hsd101pww2,
+	}, {
+		.compatible = "hannstar,hsd156juw2",
+		.data = &hannstar_hsd156juw2,
 	}, {
 		.compatible = "hit,tx23d38vm0caa",
 		.data = &hitachi_tx23d38vm0caa
-- 
2.39.5


