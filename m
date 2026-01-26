Return-Path: <devicetree+bounces-259393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJhMK1snd2kUcwEAu9opvQ
	(envelope-from <devicetree+bounces-259393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:35:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D23585849
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46E0C3016286
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94AB3313E2E;
	Mon, 26 Jan 2026 08:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ni4Lx2Zh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6D51624C0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769416502; cv=none; b=ukImeALqGT+6srTIRMRBH453/5xVbl+1AoPCs6m1ozWqhoj6enNQxXoRLcNVgBe96/gCaZNuRBQdixgcGAL3n78BCjlvx9I22aii7A6RDR5pv6a0dbY/IzW0Vys/pqj/SAth24mxYuulxXIIvkMDbaYaMzB42oBFNd9N0OfeJzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769416502; c=relaxed/simple;
	bh=UAvK1cP8UALNlQMx+3Eu3/blR2h64Cv9rSl8aXH7RGs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jTcf5EEn4hWVU/015b0Wg8Lx+gpySCQdoWdB5ni/qds++sxB+QQ9toOZJIgKJvXAUYhcehaM5XAqFmI1BX4wqfpCLHEzko+F8kY7brxKW5i1hIU5wJaYFkQXzozPb5W8ebK4LGxoE/mkf3NCFv2onbL8iMoCWVlieI8c/BLD/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ni4Lx2Zh; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so48041515e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 00:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769416499; x=1770021299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0j7Wk2+zTP3lwV5pf9yVtwWP2p1dijs/jg4mreCnL80=;
        b=Ni4Lx2ZhgYy8f8tjwbE2gXCYcOF/8uevZMCEivET8mhA4iNYYjt77QP3mgUIx9Hvh1
         x+/I2vdls4qvIjylUmKOOdEbeKGe5zfZdf+txJMcIFpx39UlZz5TADtEr43USHzSfekB
         gllF5Zx9nevM9Pg/YBPhMHmhPjUVQgchZAZIdf1i9kqaYbvGuSVs1/RjjJ6hNhwZeGEH
         sW6sprdVTl/8Eu6vCFNq++f703bvdrpLy2aTWKzlwmqAw8y8WJ7iwMHxK0aHdR5p/7X+
         GbGtQv3p+g5TRUefr6AzRWLMzqEmxklqVmZuCZ9LJim1YZh26Vn63D/EMcU8dIPLLRZN
         HpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769416499; x=1770021299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0j7Wk2+zTP3lwV5pf9yVtwWP2p1dijs/jg4mreCnL80=;
        b=jC0lBIXdBBztLCBX4VPpdqEF1kQD0cH6g93+yX6QOZxx0RhS2k4hj/TpXrECbmL6+G
         RBkc8BKDJYw3YnS+Z7E3vPDqqulEoZd3F5ulMdE+RIJicDy8/ITOshId2nKQGUECdsnz
         kM1K7MgsjAF4Z4ffTPb5nOzwyfa6y0CROhOfEtX16FfYFgE10d5UuW4j9zEUNmAQ/YJM
         2irxli4Isf3XH6NJbq7OGQoyf2Nc49bUOe9KM+VVltGFVEGSXlPii+ucXYHyRRyKI4nC
         1Yga3cbarduiVCUY5ubqSHdu2+52M11gNlyl+LjYamztuY4uYbUw1Htprv2I2z+OC5Gn
         pHxA==
X-Forwarded-Encrypted: i=1; AJvYcCW5IWpkZ8JiyeKFelH/5fRsxKGiA8aSK2pe9pIuEL1x37oH8LNqfBlw9pppOoBbHIE7sOaDDUuu/mk4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyi/+zYB+wJV4XG86vf9J/HU91zZVHtiEh8ZlDnkewp9ZMZ8se
	NZQWTPrgkYX14dTMfqJymKOZXCDe9PvHBgDPTxCTqoNVNxTSGH/epsbE
X-Gm-Gg: AZuq6aIOs/mb7rg1s6kpoL/PLnGAcOqlW41RdThGjFER/X0S3EzOlrOPAQMkKW/VXXU
	XRJNyNsmfotTlzOQrHNYQx+GKN6eyiuX6maYnUBG8Wb3yox+XCoaphp2DhgAiDK5DV0laeA68X1
	hphuNBxjV+w2zALSEyY0BTrdkVC14hXWXT1FhVfj5mXFNnJhTKMzGLNKqHsiiW/nEdI+JUCXZFE
	iSb64ADMnUXQYq4lLFEqDpQ5lIGgLJTjbUSfd3Z1BD4gJ+yyLrzQXN5YxdDrfCrf2N8k8vLbN+G
	FlDyLyCK/bkfL+M9EwLU9i5M35qrA3VvFbsiKqGycaCpy0VkD6WmK19RW95l/6ZrN8ISQ5gqNgI
	rVFOgE1OGYsprnzRRoPwJ7Uhh/2Spv0aey4t2ZvnQkG/FS7WuhqMvFM5GA26eMaiZBOFeeFhZIJ
	be
X-Received: by 2002:a05:600c:4584:b0:47e:e91d:73c0 with SMTP id 5b1f17b1804b1-48061934eefmr20850785e9.19.1769416498402;
        Mon, 26 Jan 2026 00:34:58 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d3b4625sm102096275e9.0.2026.01.26.00.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 00:34:58 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Mon, 26 Jan 2026 10:34:30 +0200
Message-ID: <20260126083430.8247-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126083430.8247-1-clamor95@gmail.com>
References: <20260126083430.8247-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259393-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2D23585849
X-Rspamd-Action: no action

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. Only difference found so far is lacking ability to
poll STATUS and COMMAND registers during power on sequence, which causes
driver to fail with time out error. Add polling flag to diverge models and
address quirk found in MI1040.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
index 4ec033c0ee84..d96a57ebcad4 100644
--- a/drivers/media/i2c/mt9m114.c
+++ b/drivers/media/i2c/mt9m114.c
@@ -368,6 +368,10 @@ enum {
  * Data Structures
  */
 
+struct mt9m114_model_info {
+	bool polling;
+};
+
 enum mt9m114_format_flag {
 	MT9M114_FMT_FLAG_PARALLEL = BIT(0),
 	MT9M114_FMT_FLAG_CSI2 = BIT(1),
@@ -421,6 +425,8 @@ struct mt9m114 {
 
 		struct v4l2_ctrl *tpg[4];
 	} ifp;
+
+	const struct mt9m114_model_info *info;
 };
 
 /* -----------------------------------------------------------------------------
@@ -2186,9 +2192,11 @@ static int mt9m114_power_on(struct mt9m114 *sensor)
 	 */
 	usleep_range(44500, 50000);
 
-	ret = mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER_SET_STATE);
-	if (ret < 0)
-		goto error_clock;
+	if (sensor->info->polling) {
+		ret = mt9m114_poll_command(sensor, MT9M114_COMMAND_REGISTER_SET_STATE);
+		if (ret < 0)
+			goto error_clock;
+	}
 
 	if (sensor->bus_cfg.bus_type == V4L2_MBUS_PARALLEL) {
 		/*
@@ -2207,9 +2215,11 @@ static int mt9m114_power_on(struct mt9m114 *sensor)
 	 * reaches the standby mode (either initiated manually above in
 	 * parallel mode, or automatically after reset in MIPI mode).
 	 */
-	ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
-	if (ret < 0)
-		goto error_clock;
+	if (sensor->info->polling) {
+		ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
+		if (ret < 0)
+			goto error_clock;
+	}
 
 	return 0;
 
@@ -2421,6 +2431,8 @@ static int mt9m114_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	sensor->info = of_device_get_match_data(dev);
+
 	/* Acquire clocks, GPIOs and regulators. */
 	sensor->clk = devm_v4l2_sensor_clk_get(dev, NULL);
 	if (IS_ERR(sensor->clk)) {
@@ -2539,8 +2551,17 @@ static void mt9m114_remove(struct i2c_client *client)
 	pm_runtime_set_suspended(dev);
 }
 
+static const struct mt9m114_model_info mt9m114_models_default = {
+	.polling = true,
+};
+
+static const struct mt9m114_model_info mt9m114_models_aptina = {
+	.polling = false,
+};
+
 static const struct of_device_id mt9m114_of_ids[] = {
-	{ .compatible = "onnn,mt9m114" },
+	{ .compatible = "onnn,mt9m114", .data = &mt9m114_models_default },
+	{ .compatible = "aptina,mi1040", .data = &mt9m114_models_aptina },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
-- 
2.51.0


