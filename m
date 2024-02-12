Return-Path: <devicetree+bounces-40986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED57D851D4C
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48A9CB28F47
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66EB740BF9;
	Mon, 12 Feb 2024 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hbrKlJgu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7E346436
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763803; cv=none; b=dU9YFgCv9Kuk3j0UMVdpZVTtabAqBdcSN0tLPJSx5aq8xFezuEVw6FHDWtD0vr3kJnlkLySKNkOryuk0131Ux4eqivKl6csawxzgZHGeOxH5M2qd5+TzNBlcVclG9qG4xlpbKdYxqnZupnIzagAOHTkymmYOT9AgLLiwxcTRKVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763803; c=relaxed/simple;
	bh=KiQguUNSMTlsNR79EOGNC+vqJr5FR4o3Ky9HPnW5gR0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VJfgrLZbYdFemhRMoVs199sSa6meLQukqs2Lu4JYh1krBf7zFE8To/GUfcYDOOc+zz0S2Lvg60c+N8xVDWSWik6OwPipOE129ZQFvuwg/3fyNQ90GkoGri5XyLPdtmEGwm0P/38wWW/IoaQ5uxuNKeIw9P8d2RhbewWfTjUdHwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hbrKlJgu; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5957ede4deaso2216044eaf.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763801; x=1708368601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMsXKmpw6dLT65KkRINMdKyXBzxk9IKeYWz+mH4JfHk=;
        b=hbrKlJguASrDSyEcB5IOxgF+iggUD16/1SFeb58jPXwGSF+rg0B/AGykbTRWdkwt+r
         m4qGzYqizcV/pJe9o9HqbNhk032SSY8c+fm9dz1M3uSMxlsMc9KOoTeF/Jx/4feBelFu
         gqPgQ3MHqHXOjCNWPcCiuFC37LO4uPPeNWw8MSlQBxaU1CewjkuHGlRs8k2Fxrv/C+/u
         ZlCl9qCHPlqnSt9cV4bV2CTB1H9Uot9S2IkkYW4zPQ8sTNkvoHTMgObvp+mmC8qoVV66
         K743//Xd13pyfIbqRiwiePXK680Wn6hLKvw+bFjSxBqpCsf5MPk2jNtonRQsFjQu9kuD
         hMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763801; x=1708368601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMsXKmpw6dLT65KkRINMdKyXBzxk9IKeYWz+mH4JfHk=;
        b=pwa2SvgUNaRZGz3aO+kOK4Izx3F6zoewTUDEjGS0zrMUjaB3qU+8slwj0jGf3f8ME2
         i0mlbzsLu+7SPaQJMbliXI5AJjCDYq1vW5LGuY2rClh6Vb/ci79oQL9+ein5s/NrD8ZU
         vQrUBnGad8fKfsc5oJzt4BG71q7xWuv6eQK67hXINyFfWrmjMih51HxGrj98EQTsbEWo
         z8MvPkic1bKff7P0cky4OJhhXhusCGSO8YXRKclbcy1nI+i94KPWCnw7xlKDn1gVp7sR
         aAwbTOlTJTeZykPEh+ObeEOnlmH6HAM0kVjhVJHJ6XrTMVQVwGcR5pF4JtVozMSkHdUB
         4KYg==
X-Gm-Message-State: AOJu0YyhBD2WX+QZlLKfGGiUjTSb4h0bmm43RuRKcb2pLyvn398Gv6jb
	9VOiqDZ8FEAtwIoGJfhzuzbYEbVWm3Kisow9OyfnqbxDsoVcLJM7fTdlmpbR
X-Google-Smtp-Source: AGHT+IH21rnnnVfgZxMZxLUtwT8WNw2n6SGokaZ3Z2BAo9BcO1XqzYus1bbwbxmJwBapyjsetWPvxQ==
X-Received: by 2002:a4a:6c4b:0:b0:59c:8dea:ad3 with SMTP id u11-20020a4a6c4b000000b0059c8dea0ad3mr5149094oof.9.1707763800850;
        Mon, 12 Feb 2024 10:50:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVeJe5sdeCNV8dOxqKNJ9p5ZaVFhlpVYq2mMRB0iQCgeCAmy4SV/fbbtMK7Gv3j6SSGe4sJ7VuAF1+TJbw/86y94Eng46FiRZUGjaGIuPMN6IEjjHBTUQNA6dOgerspmMSEvhynLEv0Aasw1sCwXDvrTCAnKyQJIxUOE263WYCGTjAyObHHtwWdsJhRNqI+4yJJrDGZ5TaEbsdRRTMHaTyI7Rq9OtAF9n8spX4CUBU1mHJoVHOVEqLbH8RzSkVlbfGGPy7JZl5YDXYR10FlFS/7IaNHH4D063iejoOIDBiOS3HYqpn2abyQ+m7FyEDd6bqhV7ElNtkkkRkzBbu9YVyQtjDgd1Az/OprBux2PDozS9C5JsI4fRcqdY22gJVQP9n7UT5mnF8mi2yqUSycVtu6kccC+LRThhEQw2zHHEit/yK121dpMaJAIElU0fvKIM9T75f+S8imX/IfWrnJczKtehNeZyVlR9K/OGDNdMs3WMjApO+Y1I2qihS9rKKMPIVQ1vadUKwVbLq8tJz87XBQ93vKeSe6l2yNSwWg15RB+woEo0fnEv0+e5qh
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/7] drm/panel: st7703: Add Panel Rotation Support
Date: Mon, 12 Feb 2024 12:49:47 -0600
Message-Id: <20240212184950.52210-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for panel rotation to ST7703 based devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 939ba05c9b58..a3e142f156d5 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -62,6 +62,7 @@ struct st7703 {
 
 	struct dentry *debugfs;
 	const struct st7703_panel_desc *desc;
+	enum drm_panel_orientation orientation;
 };
 
 struct st7703_panel_desc {
@@ -743,12 +744,20 @@ static int st7703_get_modes(struct drm_panel *panel,
 	return 1;
 }
 
+static enum drm_panel_orientation st7703_get_orientation(struct drm_panel *panel)
+{
+	struct st7703 *st7703 = panel_to_st7703(panel);
+
+	return st7703->orientation;
+}
+
 static const struct drm_panel_funcs st7703_drm_funcs = {
 	.disable   = st7703_disable,
 	.unprepare = st7703_unprepare,
 	.prepare   = st7703_prepare,
 	.enable	   = st7703_enable,
 	.get_modes = st7703_get_modes,
+	.get_orientation = st7703_get_orientation,
 };
 
 static int allpixelson_set(void *data, u64 val)
@@ -817,6 +826,10 @@ static int st7703_probe(struct mipi_dsi_device *dsi)
 		return dev_err_probe(dev, PTR_ERR(ctx->iovcc),
 				     "Failed to request iovcc regulator\n");
 
+	ret = of_drm_get_panel_orientation(dsi->dev.of_node, &ctx->orientation);
+	if (ret < 0)
+		return dev_err_probe(&dsi->dev, ret, "Failed to get orientation\n");
+
 	drm_panel_init(&ctx->panel, dev, &st7703_drm_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
-- 
2.34.1


