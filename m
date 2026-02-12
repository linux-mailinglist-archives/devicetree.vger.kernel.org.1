Return-Path: <devicetree+bounces-265073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L3QN/PGjWnT6gAAu9opvQ
	(envelope-from <devicetree+bounces-265073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:26:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832B12D745
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:26:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07E603162782
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8910C3587A9;
	Thu, 12 Feb 2026 12:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aFohFSa7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F633587A7
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770899014; cv=none; b=kHYlzo1ud1Kw34PEXBNkVnjr4jIIBK/lxinFGDzUpTk4GGGgtly8v8Eb/srVwa3rNPjTTyiEHwUsnCWF9ea1QRzmw8EkRmxnC2yPennsHPMz2/821DZVE493RpZ94CxUFYXdKeVLT7ds2fEuc/aDWmEY0RnxgBZI1M2wEYAH/wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770899014; c=relaxed/simple;
	bh=pW74V5cFkrxHAUpolR7r8O1D0nnf5KOsjp09vfB2x7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L9ztI+UHyyu6OKRg9y3PtdAMedgUAbjFwHHVVoEqSfSyY3QzXLyrQVxDN5cDRPFNNiwZhQvDn+tw04cR6eqETzTGDsHo4tdkT7mnOU4MJ5C1qPjMbJzx5BurC2ldD7Nh2dNDbCt4kL2rm9btp0GRHuQadlwR9+IhmhWdYr3WA7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aFohFSa7; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8f86167d39so154562266b.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770899011; x=1771503811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mcC35f9Jziu32RgFmxZhKjABLtU2XS673ijWTDginX0=;
        b=aFohFSa7ThyqqB9TT+qEDboTtcQn9e2qAE0f4TvJTpn6/MI1D5ug6QXW3cLxoASn+j
         4OooAeDe4C7sfyAXyt0rmJqa8g33iSciOriIn07V5qIwD2IWOSsETklj19ocQDnMS49T
         lDAGYXnr8mLXEaIkTAdKkdd4iihbldeYrOWfVp7iBaUkUGqZayhwcgK9bGakz0B0OU8S
         5vfMkIVZF8E2t1bwBlWw5yXpF76kPLqWSR7zWZCMWjTOtZUMjXVn9MimKMtxPtVeOtk4
         5u2Icydj7j1eDDIsTjAm6Xfe4NyrtM1cmHbPjuLkgbiDFzowBMfoB2oPVnOtQFPiWo/X
         YJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770899011; x=1771503811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mcC35f9Jziu32RgFmxZhKjABLtU2XS673ijWTDginX0=;
        b=TxvtRAjE76KqF9PopGWIq0jPFnTu5a2RENzJ7O+gTHvaQFeO9P2DNpmhGpGv4bOKwU
         ZRMZ0upw3cnsndc923Z+AWE2+j51BFPcnCBV1iufYTKSashD+JZab5iLV3YTtiKfkdod
         0eCO1YvF3k4XbdurA0w+Op11ONr2sm4hgfoC5nLXIvl+GO9lsVFscoQtrhNwH3mP4SEl
         /Ifx+8Veaphah5CK/NqDCtxnah+YnuhvwxBw5aC30eLHpUtyxmoQD62UYe7OG4FG2lRz
         EOhjB9nCBlax6VhZuyZCLfhy2x5sc5bFCS0DHbV1ngHaSRHhBAnWahOItSAEPentEwVc
         73Bg==
X-Forwarded-Encrypted: i=1; AJvYcCXVUivmTcumQSzRIxpDQayLu6YJv84w5ZxMHOYaCYi9e4zBq0Bxec9UmxIlI4UkdBO2CcVqJP5GRK6w@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh+CCnekoZPnZEl5Ro10CqJar+w+nout/h/HMQhl5syj1U5v/f
	+zimAU2CzvMhD8bdboxImqy3q9iFe6K5qawjFkImkQ5AtzMTywfzGPDj
X-Gm-Gg: AZuq6aLo5w39VfZWxeUGN4uYFVaPBKmS+4mvNmiuYEM4URcSUS97F+tZKG64/+ED22i
	tA5f4eJpxffc9q1mBWQgVdwr8R1pIDA0hAKje554IN6azhj/eSyyp22V8tmyzac3a8ArofUVCdk
	p+AQJKOhcmlLjlnzfaYb8BWD8dUPUsoKdvORR4Ls+J/i/zPbWuZ3j1snyyEpJaqoF0bp8Oq7UIQ
	zRiwQVVFGOeFBbu5wBtTBiJaMyayg2ATprsHJg1axBp+xsiMuM27Iq7ax5B2bwWa2WODuaxpwVd
	MWeWbFMtYcBflVoOCWPIHnaX7vDbdcV0L3pPjvNgzqJWV+rhbjLK139OmLC3p2AQPlnr7WqA4NN
	z1H2lGjaRDkICV+uSd8vZcS1LE9Fu6WSavJ7XSCjVCSNSmJoDTXQ1QJXy5XEXGw98HvFSRBhzps
	V7fshgKwyyGtjujz5uVivSXy8=
X-Received: by 2002:a17:907:1c81:b0:b8f:7a08:9e43 with SMTP id a640c23a62f3a-b8f92cbf524mr107164766b.59.1770899010619;
        Thu, 12 Feb 2026 04:23:30 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ec1c753sm155603466b.45.2026.02.12.04.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 04:23:30 -0800 (PST)
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
Subject: [PATCH v2 2/2] media: i2c: mt9m114: add support for Aptina MI1040
Date: Thu, 12 Feb 2026 14:23:02 +0200
Message-ID: <20260212122302.29211-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212122302.29211-1-clamor95@gmail.com>
References: <20260212122302.29211-1-clamor95@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,linux.intel.com,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265073-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6832B12D745
X-Rspamd-Action: no action

Slightly different version of MT9M114 camera module is used in a several
devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
called Aptina MI1040. The only difference found so far is lacking ability
to poll STATE register during power on sequence, which causes driver to
fail with time out error. Add state_polling flag to diverge models and
address quirk found in MI1040.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/media/i2c/mt9m114.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
index d5b142fe68a9..a4b021702a1f 100644
--- a/drivers/media/i2c/mt9m114.c
+++ b/drivers/media/i2c/mt9m114.c
@@ -373,6 +373,10 @@ enum {
  * Data Structures
  */
 
+struct mt9m114_model_info {
+	bool state_polling;
+};
+
 enum mt9m114_format_flag {
 	MT9M114_FMT_FLAG_PARALLEL = BIT(0),
 	MT9M114_FMT_FLAG_CSI2 = BIT(1),
@@ -422,6 +426,8 @@ struct mt9m114 {
 
 		struct v4l2_ctrl *tpg[4];
 	} ifp;
+
+	const struct mt9m114_model_info *info;
 };
 
 /* -----------------------------------------------------------------------------
@@ -2279,9 +2285,11 @@ static int mt9m114_power_on(struct mt9m114 *sensor)
 	 * reaches the standby mode (either initiated manually above in
 	 * parallel mode, or automatically after reset in MIPI mode).
 	 */
-	ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
-	if (ret < 0)
-		goto error_clock;
+	if (sensor->info->state_polling) {
+		ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
+		if (ret < 0)
+			goto error_clock;
+	}
 
 	return 0;
 
@@ -2527,6 +2535,8 @@ static int mt9m114_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	sensor->info = device_get_match_data(dev);
+
 	/* Acquire clocks, GPIOs and regulators. */
 	sensor->clk = devm_v4l2_sensor_clk_get(dev, NULL);
 	if (IS_ERR(sensor->clk)) {
@@ -2641,9 +2651,18 @@ static void mt9m114_remove(struct i2c_client *client)
 	pm_runtime_set_suspended(dev);
 }
 
+static const struct mt9m114_model_info mt9m114_models_default = {
+	.state_polling = true,
+};
+
+static const struct mt9m114_model_info mt9m114_models_aptina = {
+	.state_polling = false,
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
 
-- 
2.51.0


