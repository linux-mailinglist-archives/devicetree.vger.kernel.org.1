Return-Path: <devicetree+bounces-271491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNpbIlJaqWkL6AAAu9opvQ
	(envelope-from <devicetree+bounces-271491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:26:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC7620FA9E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEDA43036630
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C937C37FF7C;
	Thu,  5 Mar 2026 10:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O5efC91G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F15137F737
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706110; cv=none; b=eefahEhrFUsCMAubwXwP/0dLvU9yxuCpUilKjgZmbylLm9DMW2RwHpONtxu6zxVww3ChR/UQMB98OuAdZ77tvEiMFSQhSeUe38qPyyAJbdgNORQ+NKE7gh5UCFPK78/vjOyuzZoQh966MhO8NjOWM1OxJIjvZBvmJeJcPMgvWO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706110; c=relaxed/simple;
	bh=2+U/ZONee4dT26Jw5gWNEb8dK26/hW7z5aXQpBzS04Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pI/kjaFD0EPW6pW+szWf2VMR5DxqG2L8xy9QxXMwwOmlh+ddz/8cAC0fTUOmMKAkH1vEv54gI751oahMyC6ZrHtZyNJ/VjUohvPIcTSL5nSeYMQKkuVBMqifnzqQlaoIBlqVHMsg+fY3QHZhUYms7IAJ9TsDENFM2CQsxSXGKDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O5efC91G; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so2739086f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772706107; x=1773310907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cx7lcE//ZT+Yr/4kAurpDNP3t7qSzC1pEGhI2wYTnFk=;
        b=O5efC91GcGdFmdzXiYREL7pqXJHcRK1THkjj3P4RuEF6FbwSUWAllnndaWHtkh0hhS
         Eha9+nLieN17Q7q0bhzOyPcSZAwvcvizNsUBGp6k4ly6I4qxutg7o3TKPmkV/zF161tn
         PB8vqrV7If9Hh0401+QgPt93rDCT91pZThZ+xEIw61dqHPd/uihV/pGwx5wXWkSBRxbL
         F9NgB2Hf3/FxVg29u8pZe7tPSPqbRgomdzCj6pOXE91MKFOBNWJG1aGAFF+LyIYVfLib
         Z3RU6NAcmuMIFosO+A9WKcRGJ1B7PllhYex2m/CWD0DpsHNrGTlMSRTxJWycdlJzNIYf
         AsBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772706107; x=1773310907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cx7lcE//ZT+Yr/4kAurpDNP3t7qSzC1pEGhI2wYTnFk=;
        b=S90NyTqbOx11DfJki1Sq5jkO4iWug+K+JeIF9riTrUa17pawkHjL4uetI4jTh9Zqf0
         gDj5DT3l6C1EwO8BLVz2SAOBzSbFfll0F+1hU0KVfXkag363M/oxU9lSQRbPargluyXI
         r+GmiZu6QUKLXLnZLi95DK5wfnpZc2qTT/ECZt/J+FxExZcGLHXdkoXg1oeePF9syXP/
         OpylPcY6q3HUbVUptO8FwtJSt9bhLvGhjNCRgpaulcgqHdPbGRVpwAM5t5fgcdGUC3FG
         NfLtiXo4f0yTElu+V2D9JEiNyh5N+O1r+pjLUQSs+vuCAgdcF34DpxF3isZcG3SJfzGb
         s81g==
X-Forwarded-Encrypted: i=1; AJvYcCWdMZ8ziqbQovFLv2NKbh0mlWb5MmUKs3WxQu5xXZh7d9axr3xTQ8tJosDt0PYiM0DDT7DveoJ1AfhG@vger.kernel.org
X-Gm-Message-State: AOJu0YzvU09RYdinH57SAKgAxtkZLcktrlbH5qT+D6jTdTrjTwOrZ4sS
	U34+K8dTuxI4o/zSh8784kP5TrimLBTgk9qBesvQrFshYw1aDVOdR2Pg
X-Gm-Gg: ATEYQzw8W17Mbsi64HbuV+YVwzEkX7JLVTlsLf0fAdsj/UVHPwN9jNcnw5gxy9SbxhK
	H75XLVzMmekvrieGyS+lmJM/wHk5vrybnLg8hEXlRMxi1kNGITiEFagSszgXWixStkf+j0Uaf6c
	ftuNMVgYCE9pXIhGGVUKwISor4TKbasmqo84/IGo+bmons3d8QU4474KATo+o+Fq6LcjlO2cpZ8
	3eZpsfP3WAPrqHDnr11npbVqCyQ+BiSXs3+FUHWVpXo2rFFs4XCbNPabvOQebyYcX83oJKbksBf
	wNaXl+Dni0z5ie4yWgYo64Tn9HjDPWrP7QcSVDuJjN8XregIKpfIF6uz/l1+HaUvGHjQwbM3B4Y
	0ChbDLKrA/kPZSp60Wf9af+/Kb4AEFRrGqT/JfsSennpsFoUiVC4z6vVWDwfchNv9iLZplFxsJv
	jEaEJ6K8xMSWis
X-Received: by 2002:a05:6000:4312:b0:439:c4fb:27f6 with SMTP id ffacd0b85a97d-439c7f79e1cmr10500857f8f.19.1772706107351;
        Thu, 05 Mar 2026 02:21:47 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm32625444f8f.25.2026.03.05.02.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:21:46 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Thu,  5 Mar 2026 12:21:22 +0200
Message-ID: <20260305102123.17216-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305102123.17216-1-clamor95@gmail.com>
References: <20260305102123.17216-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DFC7620FA9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271491-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. The only difference found so far is lacking ability
to poll STATE register during power on sequence, which causes driver to
fail with time out error. Add state_standby_polling flag to diverge models
and address quirk found in MI1040.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
index 16b0ace15813..e395e2d14e97 100644
--- a/drivers/media/i2c/mt9m114.c
+++ b/drivers/media/i2c/mt9m114.c
@@ -368,6 +368,10 @@
  * Data Structures
  */
 
+struct mt9m114_model_info {
+	bool state_standby_polling;
+};
+
 enum mt9m114_format_flag {
 	MT9M114_FMT_FLAG_PARALLEL = BIT(0),
 	MT9M114_FMT_FLAG_CSI2 = BIT(1),
@@ -417,6 +421,8 @@ struct mt9m114 {
 
 		struct v4l2_ctrl *tpg[4];
 	} ifp;
+
+	const struct mt9m114_model_info *info;
 };
 
 /* -----------------------------------------------------------------------------
@@ -2284,9 +2290,11 @@ static int mt9m114_power_on(struct mt9m114 *sensor)
 	 * reaches the standby mode (either initiated manually above in
 	 * parallel mode, or automatically after reset in MIPI mode).
 	 */
-	ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
-	if (ret < 0)
-		goto error_clock;
+	if (sensor->info->state_standby_polling) {
+		ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
+		if (ret < 0)
+			goto error_clock;
+	}
 
 	return 0;
 
@@ -2532,6 +2540,10 @@ static int mt9m114_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	sensor->info = device_get_match_data(dev);
+	if (!sensor->info)
+		return -ENODEV;
+
 	/* Acquire clocks, GPIOs and regulators. */
 	sensor->clk = devm_v4l2_sensor_clk_get(dev, NULL);
 	if (IS_ERR(sensor->clk)) {
@@ -2646,15 +2658,24 @@ static void mt9m114_remove(struct i2c_client *client)
 	pm_runtime_set_suspended(dev);
 }
 
+static const struct mt9m114_model_info mt9m114_models_default = {
+	.state_standby_polling = true,
+};
+
+static const struct mt9m114_model_info mt9m114_models_aptina = {
+	.state_standby_polling = false,
+};
+
 static const struct of_device_id mt9m114_of_ids[] = {
-	{ .compatible = "onnn,mt9m114" },
-	{ /* sentinel */ },
+	{ .compatible = "onnn,mt9m114", .data = &mt9m114_models_default },
+	{ .compatible = "aptina,mi1040", .data = &mt9m114_models_aptina },
+	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
 
 static const struct acpi_device_id mt9m114_acpi_ids[] = {
-	{ "INT33F0" },
-	{ /* sentinel */ },
+	{ "INT33F0", (kernel_ulong_t)&mt9m114_models_default },
+	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(acpi, mt9m114_acpi_ids);
 
-- 
2.51.0


