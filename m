Return-Path: <devicetree+bounces-325033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ERAbH/Z/U2q3bQMAu9opvQ
	(envelope-from <devicetree+bounces-325033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 13:52:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A8474489A
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 13:52:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=h8hoPcSw;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325033-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325033-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 929893004D0B
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA10A3A75B1;
	Sun, 12 Jul 2026 11:52:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496B23A4267
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 11:52:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783857140; cv=none; b=m5v7PYwzO/32zh+v/ql/u6shbNQPoUsHPvet0m9aKMk7RaOy/mHfn4koSjkRTIJo+W/JGNFINgoNF7rx77NlivBSPX3Zw18/Au30yppZu0CMkf+ME+nqC70Eu+V+478TS4c+fCK44uQ/9WwVCWa0mhVaQMiMqB8xhQEXA7j182c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783857140; c=relaxed/simple;
	bh=ELSJMQXL8Zru1De6Jbuvh+FbhtE/z4ZYFGJkBObEBrA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CCYosVqjd+sG5hlYMzddAezoQhihOYc4ZadhBkWbsQu1H8HqCZn9ar/2UdNowI66e0SUKGdu3jiVnLmCmGDTnIdhJq3MCioS7hbSyAXcCmJwKP4RbUD2gonF6dX+qatRSVor8QFLNfOxsOrnKPQeMhXcLZGNobP2tatrXWxzJIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h8hoPcSw; arc=none smtp.client-ip=209.85.214.172
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2c7c61b5292so40049625ad.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 04:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783857139; x=1784461939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G1McK7dycxu+dxlJjQrMq0eguudKjuI/eVOvUi+pvIE=;
        b=h8hoPcSwk4ysL9Patlmx28a2XN5Hn27V0AJpthK+LOZLj+fGt/sBHnfcjEREyVH2jE
         vOkHjTy8uFW0MJ5eu+b2UMFSsIQiU7/pAKbZIy6xUFsJV7KYzb+s17UOtelUNxm67Att
         ZMorQB5cvjFJEXGRUOIJkuybNlLHNjTvgsWZi4BXSwGRigs3vOyQ1h7C171Pi6+xCRWF
         kOpFoO5+wxj9+cEyfBZoUV2WuyqwMDN563O2RtYB7WXEMu8zJGUUtxH6ZmXxkuRtwqe7
         F7dsWU/MBtIZzrEW/DXRPhixyAvp4NRO+scSEaQcWBpWfN+RjYEUl6y9UUd32V8XTHNA
         bUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783857139; x=1784461939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=G1McK7dycxu+dxlJjQrMq0eguudKjuI/eVOvUi+pvIE=;
        b=pXDgiefXDtGw0lrVWon4axvK3Nk9GQFQbJuMxfHZKPbrL3WgGOGJVKPwQX49AeL+ER
         J9DZvAMC7Ozoi3olW2c9W4ztBEDhPUEaQZphe8twz4DzovHuPs9i79qwMr4aXuCUY8qk
         fLsw6x7q/oUqooBxc5dv4iyuMSlA7TQR82Mv8Sj/QnTwX5kCtx5oYMguGxwOKnLMUSmQ
         upQhaXX9suyVtf3uxbPvXJhxIfogiWGPxz4zC91fOdh+S4yUHlr8YrmhuNbHzKcPK6mj
         kEFNNDJsflayoM30h+FXEz4qiN4a8WxC6a/qBHzhHh+/GU/I5L8lPShQ83GTld14EQBE
         tecQ==
X-Gm-Message-State: AOJu0YxBoLOfoQSRHTxpcvKoU21fslhAcaL5ZAzEh84oR0J/E5KDUGyB
	pQgytch/WB8uL8+uWgEgJliXt2OTjxwOY3CLMsTyUJDgIeM6erLAYsS/
X-Gm-Gg: AfdE7ckkQInn1vusPc+hl/fqaWsHpw2jQh9wcSI+MCQAoDp/rX1hzJ+TsDQtrk9pMl1
	3doFVBC9a7c4eSZNrzUjklvhF1zuKw4ifH97iLdOWN4q4bLtHMrsnNwIjekCUnw7kEFe/gUVeku
	plQMChtidxjw3AUQ1ArsSyh/2Z/3dmrUPYst4rHzWxdjFMKebui3GapBeUC15apmiKGEIVN9i0m
	hlZ6bTiAzzsSXLEU/Ql4tPTkmhTiJ4U+rfslb4eJHPim4TbhzU33N3fDzzcfSfNRd7Nip0aoQ2L
	Eg3Gxj36ewFlf4iKnSZfHm5KKaca/5SrtdOPEdiAg6iULqySJvfNh2f/PNeeP6yyrFuirK3QgZC
	hyzJu4Nyg1hgknjnIZ9J3mdMx21CAb4tgN7mukgmv/ldS8o2Xlf/z+KnPs5b+wHrC4riHehRDRj
	/kGI7WnRbdtFhnZ8SJxm5lGNsQaJFpeH57T4UBzb0=
X-Received: by 2002:a17:902:ef0a:b0:2ca:9ab:e725 with SMTP id d9443c01a7336-2ce9e59d62cmr57706585ad.1.1783857138522;
        Sun, 12 Jul 2026 04:52:18 -0700 (PDT)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9bfe040sm84538295ad.31.2026.07.12.04.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 04:52:18 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Martin Kepplinger-Novakovic <martink@posteo.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v5 3/5] media: hi846: Fix modes handling for different lane cases
Date: Sun, 12 Jul 2026 19:50:10 +0800
Message-ID: <20260712115012.91600-4-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260712115012.91600-1-mitltlatltl@gmail.com>
References: <20260712115012.91600-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325033-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:sakari.ailus@linux.intel.com,m:martink@posteo.de,m:mchehab@kernel.org,m:hverkuil@kernel.org,m:sebastian.krzyszkowiak@puri.sm,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:mitltlatltl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,linux.intel.com,posteo.de,puri.sm];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14A8474489A

When using 4-lane, v4l2_find_nearest_size may return an unsupported
mode, 640x480 mode, use v4l2_find_nearest_size_conditional() to fix
it.

Reported-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Closes: https://lore.kernel.org/linux-media/OmTXoHZJTSGePymL9I-1Cw@puri.sm
Fixes: e8c0882685f9 ("media: i2c: add driver for the SK Hynix Hi-846 8M pixel camera")
Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
v5:
- Use v4l2_find_nearest_size_conditional() to filter for different lane cases. (Sakari)
---
 drivers/media/i2c/hi846.c | 58 +++++++++++++++++++++++----------------
 1 file changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/media/i2c/hi846.c b/drivers/media/i2c/hi846.c
index 6bcd862aee30..1223567641c4 100644
--- a/drivers/media/i2c/hi846.c
+++ b/drivers/media/i2c/hi846.c
@@ -1688,6 +1688,16 @@ static int __maybe_unused hi846_resume(struct device *dev)
 	return hi846_power_on(hi846);
 }
 
+static bool filter_by_mipi_lanes(const void *array, size_t index,
+				 const void *context)
+{
+	const struct hi846_mode *mode = array;
+	const struct hi846 *hi846 = context;
+
+	return (hi846->nr_lanes == 2 && mode->reg_list_2lane.num_of_regs) ||
+	       (hi846->nr_lanes == 4 && mode->reg_list_4lane.num_of_regs);
+}
+
 static int hi846_set_format(struct v4l2_subdev *sd,
 			    struct v4l2_subdev_state *sd_state,
 			    struct v4l2_subdev_format *format)
@@ -1710,20 +1720,6 @@ static int hi846_set_format(struct v4l2_subdev *sd,
 		return 0;
 	}
 
-	if (hi846->nr_lanes == 2) {
-		if (!hi846->cur_mode->reg_list_2lane.num_of_regs) {
-			dev_err(&client->dev,
-				"this mode is not supported for 2 lanes\n");
-			return -EINVAL;
-		}
-	} else {
-		if (!hi846->cur_mode->reg_list_4lane.num_of_regs) {
-			dev_err(&client->dev,
-				"this mode is not supported for 4 lanes\n");
-			return -EINVAL;
-		}
-	}
-
 	mutex_lock(&hi846->mutex);
 
 	if (hi846->streaming) {
@@ -1734,9 +1730,12 @@ static int hi846_set_format(struct v4l2_subdev *sd,
 	hi846->fmt = fmt;
 
 	hi846->cur_mode =
-		v4l2_find_nearest_size(supported_modes,
-				       ARRAY_SIZE(supported_modes),
-				       width, height, mf->width, mf->height);
+		v4l2_find_nearest_size_conditional(supported_modes,
+						   ARRAY_SIZE(supported_modes),
+						   width, height,
+						   mf->width, mf->height,
+						   filter_by_mipi_lanes, hi846);
+
 	dev_dbg(&client->dev, "%s: found mode: %dx%d\n", __func__,
 		hi846->cur_mode->width, hi846->cur_mode->height);
 
@@ -1819,6 +1818,8 @@ static int hi846_enum_frame_size(struct v4l2_subdev *sd,
 				 struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
+	struct hi846 *hi846 = to_hi846(sd);
+	int i, count;
 
 	if (fse->pad || fse->index >= ARRAY_SIZE(supported_modes))
 		return -EINVAL;
@@ -1828,15 +1829,24 @@ static int hi846_enum_frame_size(struct v4l2_subdev *sd,
 		return -EINVAL;
 	}
 
-	fse->min_width = supported_modes[fse->index].width;
-	fse->max_width = supported_modes[fse->index].width;
-	fse->min_height = supported_modes[fse->index].height;
-	fse->max_height = supported_modes[fse->index].height;
+	for (count = i = 0; i < ARRAY_SIZE(supported_modes); i++) {
+		if (!filter_by_mipi_lanes(&supported_modes[i], i, hi846))
+			continue;
+
+		if (count == fse->index) {
+			fse->min_width = supported_modes[i].width;
+			fse->max_width = fse->min_width;
+			fse->min_height = supported_modes[i].height;
+			fse->max_height = fse->min_height;
+			dev_dbg(&client->dev, "%s: max width: %d max height: %d\n", __func__,
+				fse->max_width, fse->max_height);
+			return 0;
+		}
 
-	dev_dbg(&client->dev, "%s: max width: %d max height: %d\n", __func__,
-		fse->max_width, fse->max_height);
+		count++;
+	}
 
-	return 0;
+	return -EINVAL;
 }
 
 static int hi846_get_selection(struct v4l2_subdev *sd,
-- 
2.54.0


