Return-Path: <devicetree+bounces-254706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 729DDD1B1EB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECABA301F8FB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972C336E491;
	Tue, 13 Jan 2026 19:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kZ6vB+R3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3805F2222C4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334390; cv=none; b=SUt2sRfqZqK/ESLTBLENCWwuTjwwXdCX5srD38U3LkV7Z7dvUSOyORViEkoVBSmOm0VhyDoGyn13EauPFIkoKRjEWXzAOAbeqmMn4QGBKrRRP8+wKATtu1MLGu3Ke+/e7UxUlmPDn4UKqA4X7hq2nviFLDZIDfL8/8OkRzhNI5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334390; c=relaxed/simple;
	bh=eimc4tWNeX0peQ5MH00GK5wAi5BKkFYZAe5yFj6cGSk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jEymOlJE8Zv+noWTH/tGN94KX79Fteu2yCYN9W112ovAMKN7uwNXITzKs+U8N0wSjtGkf3SavQKwfoPonVxxIwR+wSpPR/biMnxJ9THFLn//NzdIAWLAjGb5onSMAdoxORtSv/ttiGfzZrI+511SAIFIQY9Z5ISGEY9+mso/ppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kZ6vB+R3; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c6da42fbd4so4433086a34.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334388; x=1768939188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJ3Ahf49hlWnxKtsDsKhHCo3RwD4rUKnAOeXD4F8idM=;
        b=kZ6vB+R3/JTkIdDYx5E7zbYpvRj2Ory8COVwkP5fQ/cM0rAjv1X5mmusYjsRi/PvfX
         1FXOaIESqZSi3Ezsa0yTPUtMxF+1s7sikAEJE+CCesJhTlFbAzTE4S2ut71oQ6m2+F9z
         poPk/hEzq0Xb37Pjyss8IcuyZDk9wBh3uucgUJ/dlmPd3Q1eweqFLLIN1/0fsRFaJ+LB
         lXd/jq1Vr6c6NwBrrJ68MZStBKRWIsuFP/hPVQ3Z6Lm78O4eV19b6mqTPPoO43kEWrsm
         xFk87MHT4Q1if1LO0UKwbHizXMj+nsM5GXNHBP0T5VNNjmvrpg7n8YqEE2H/ia9/YzDh
         T2hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334388; x=1768939188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dJ3Ahf49hlWnxKtsDsKhHCo3RwD4rUKnAOeXD4F8idM=;
        b=Pffr33hk3mevAFRhKwNDQuHzRnMzjqIhBXhbdbpgQrr3GwMSxdVapMv3GFnYTH4knU
         b3MZ3Cl1wXsVBPYybANKPGhoqdMoDioZX/nadH3DS5bRBr/bCtKILkwvL9LZdEV3ehfz
         oLgCDP3PdPCsMdwZwLciqGRQDdnSFF2jPnQU2oOih97y7RJ/Q725LVZN3FSRwg/4RPRv
         839yCmdgsdxeST93zbKps1jgUAHCFtRCOdE03+DUAaUiCFWcqUfuzjQII290BhkRHv6f
         bBhGeqU3x7tmXIb1FnM7YNhDJIHMVaQylsCBfUzx0w0zJ3vTm+YyFFlRkzz6jMGlxb6i
         WD0w==
X-Forwarded-Encrypted: i=1; AJvYcCX8hT7tMe639D3VYYMV9AgOVZ3ungHV1Hw40CQaSfIjyjlezLRmpE7LvLDABBBMh8xpRt6eHEmTjh/+@vger.kernel.org
X-Gm-Message-State: AOJu0YydN4sitMXxtkiKbhwjNHSNegFZN77gVOTru4uUaWLwCnzMfTry
	MlMH2Xo6s5avwp7Rt1f6ecbnSbgCA1EDnt6nBt+fajLkwRAdTLNYjTG8
X-Gm-Gg: AY/fxX4jCygYexccz+gNW/G+dRYUMHPGFbxjTbmZwdBaAYIxpH8WhP3zEOeEVtW87kR
	aOG7mH7gkvMTWqps1BGUeJ2pmAfnFczQsYNX6FTuyo991TBxJT1FAz6Srh7j0uiQ0sOKV1vy6rF
	/IYIAF1ADkgGZtBE809OfnyNZPhZHP4VlZXhyrJSAEkLfX3LRrXiRXCyk40CJzzZsFLad5pVJzY
	MbZugVe9ir/+Mq8yhT1or/Nbac8pW3HZ2MTf9I2P+EKB3CZEo29k996HxdFKQtYUa5CaeGrFanV
	2TY7DMaF//3izORi8nJGvfyt5S9MpX4UIQk6c0rKErwprHD4jpzfiBJejmsBsh5PlosaZydIjI2
	PCdDOLGxp5QgzhsGUC97gmnjzs2VWQb+rCv1rj8BYPnjPHnp4z3MU0CxdtyQ2wevbPmjCjzDLpE
	Mct581U2wy
X-Received: by 2002:a05:6830:6408:b0:7bc:31fe:57a9 with SMTP id 46e09a7af769-7cfc8b3b8f6mr195237a34.31.1768334388271;
        Tue, 13 Jan 2026 11:59:48 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:47 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/6] drm: panel: jd9365da: Use gpiod_set_value_cansleep()
Date: Tue, 13 Jan 2026 13:57:16 -0600
Message-ID: <20260113195721.151205-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Change instances of gpiod_set_value() to gpiod_set_value_cansleep().
Uses of gpiod_set_value() generates warnings when used in instances
where desc->gdev->can_sleep is true.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index aa05316dc57b..063ed9646d53 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -109,13 +109,13 @@ static int jadard_prepare(struct drm_panel *panel)
 	if (jadard->desc->lp11_to_reset_delay_ms)
 		msleep(jadard->desc->lp11_to_reset_delay_ms);
 
-	gpiod_set_value(jadard->reset, 0);
+	gpiod_set_value_cansleep(jadard->reset, 0);
 	msleep(5);
 
-	gpiod_set_value(jadard->reset, 1);
+	gpiod_set_value_cansleep(jadard->reset, 1);
 	msleep(10);
 
-	gpiod_set_value(jadard->reset, 0);
+	gpiod_set_value_cansleep(jadard->reset, 0);
 	msleep(130);
 
 	ret = jadard->desc->init(jadard);
@@ -129,11 +129,11 @@ static int jadard_unprepare(struct drm_panel *panel)
 {
 	struct jadard *jadard = panel_to_jadard(panel);
 
-	gpiod_set_value(jadard->reset, 0);
+	gpiod_set_value_cansleep(jadard->reset, 0);
 	msleep(120);
 
 	if (jadard->desc->reset_before_power_off_vcioo) {
-		gpiod_set_value(jadard->reset, 1);
+		gpiod_set_value_cansleep(jadard->reset, 1);
 
 		usleep_range(1000, 2000);
 	}
-- 
2.43.0


