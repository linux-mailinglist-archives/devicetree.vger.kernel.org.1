Return-Path: <devicetree+bounces-263075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJARLsK7hGnG4wMAu9opvQ
	(envelope-from <devicetree+bounces-263075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:48:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 141A1F4C1B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45E7630432E1
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D397F426D0C;
	Thu,  5 Feb 2026 15:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="B44ERzTb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BF4426D22
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770306441; cv=none; b=dNN2NKPwN5DoTpvu8NBSwZASWzLaR3wTVoNlUHnSYcWxeX4N8+2LQFPNPImcR7kcI7v0R08GZZfdIUIM2IWs0UEsDMrRLa0/wD22FmUME4ws2NB0L85LgWDOdWSOlQWsycR1Co0WbaxMrGRfU/+fpJM80x/alwOxUrsP2490Vac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770306441; c=relaxed/simple;
	bh=bXXKcGnx4HdkKTWI+Vtn6/XQ/5rDJK1RNM+C7Wx5yJI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EK8o5FxTQXCB0MTpzeYg6sDlQF2AFA4B6fZda2ljZX+tiFtKkDPDAZs7TRiQuBjjG6Y3oX4xxKBCSsBce9q8d7qzx0TvIHzvu0cMKOR4CMtO0t6y1/9VxxwvxymbGoV7xHGVctMdHPBx9Z2v9saaGWjyP3rC85c70mAr1QuWb3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=B44ERzTb; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-3543b9f60e3so462903a91.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1770306441; x=1770911241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHoQ9FrprHWAgMr0m6/UsWHbe+Hsht9f5DvlCrcC+eY=;
        b=B44ERzTbyyb+c8yAzspS36ULDtSed/8a7jm+VM4l5rkLKnEI7QrCDFUC0bLWsV1wcD
         4dAMQhYFx4odMTeSL8gr6FXBdB5G5loXiEWVjloE3veXgs7xn5YOwwChKIav+gh8Iuuv
         Kx7W9s7L4BthUYUIGBBi4I6eAaEAqyWDWq+ulJgwqgqZYyUf6p8yHBbJQa6gNb4/gya8
         PSxj1yvJoP8ATOPTJj6Ac8Nu0h2GcrR09vS5np7GedWAf4XAfTm9C1wNZXSNF0BmBcPR
         HH6zyQ5d4VSi/cy1ZnzSrMaOuypILsDTcYugZJcfOxRuT/0+lxvV/5JmST029aZxDys1
         HAgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770306441; x=1770911241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LHoQ9FrprHWAgMr0m6/UsWHbe+Hsht9f5DvlCrcC+eY=;
        b=L2Y9qjpDJpdu+PUHa2nlS6ctKbCjgmXtlOpMVlzG3b4Aejnvm0LngSKZsW/ivucJM+
         mW3dFEBWDBgQTPoxu4+dFBabnB0z4uU529czDFIS6Z60D5lCtTEfVdhO+YNIOOlGsq8F
         q8SqxvyKY/hjp7hP0lWiQqG+r0Cf9V46SVVUAFdpGcj/dr7R0WvaoKbRi48egUGnRKuO
         U+nzTHGvpPq9/0nSyPAWhFpbrS12sy/w/nI9H0shi/PeMe90pHPezmWBUWzj/DknxUf1
         olq5KwgiqPCFi6eF5WaHx5cWijDS2yw6asF39wywEJFIXCVHxbBNxjDadO3jKZSwZLk0
         c7Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVrsV5+Hm1rZx6r+6i6XqdIKhsRqw19GSMDxBWOFAEJj9i5tsZwyPRzVUPI0hyliC5VE/oBhm+3MCm7@vger.kernel.org
X-Gm-Message-State: AOJu0YzS38gHc21sNMfQUj1HQlfmQDEk6CJasnCnWnaqnp458DgNt9//
	lgbBHdwtIrqdGXo1RFN/uewgT9JMUgY4qxhEimr3k63QiXxIJ+cKTB2FRAgic5cfLvA=
X-Gm-Gg: AZuq6aLKPk5s/1S2n/2E78txZYf/7w+GpA88IVov3R6cvuC5JshDQcM4lXd7UYIkMLG
	4mFbfkrLB5HBolgf3D57vK3h7uxWXFFKZ+tAyBn0yG52MaxVolpFDAXSuhm+XSR5LlHVPwj3DoP
	o/kFhLSLDwRFgmhZmjTX8OLgbOlhlS0wP2DhEpiK4ZcTvKgWRjfVdnP2PSI13dJAD+k2t0TXmqL
	66qnAo5dQ7rOdhBGZIKUpAtRP7wYqrhFU/0N4ypr145oovpp/iqNY3vIoSB6cQmtI164r2zqnsy
	XZ4o4VPxbWkfG9iQ/t9BqItzdAiL2iu6XC1pn572Wgu6uryUYE9j0sAI1+OeRzCcNAlaOt7Zuf9
	yMJeT0cckXub6giTW3qD0AYKUBWmtYZulvQPJ/bb2AP4wUBZDi3/DlfiAlcdxTlP9et7Z6iJkED
	DP77/oNmhBxcxwUBPSWZCiyUtjx1bG1CjFLJdO/gyCya27zQVjs28J5/KcWg==
X-Received: by 2002:a17:90a:c2ce:b0:34c:6108:bf32 with SMTP id 98e67ed59e1d1-3548720ae04mr5927025a91.34.1770306440902;
        Thu, 05 Feb 2026 07:47:20 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09df19sm2792675a91.1.2026.02.05.07.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:47:20 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jesszhan0024@gmail.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io,
	kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dianders@chromium.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 3/3] drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a MIPI-DSI panel
Date: Thu,  5 Feb 2026 23:46:57 +0800
Message-Id: <20260205154657.3085820-4-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.34 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263075-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,huaqin.corp-partner.google.com:mid,huaqin-corp-partner-google-com.20230601.gappssmtp.com:dkim];
	DKIM_TRACE(0.00)[huaqin-corp-partner-google-com.20230601.gappssmtp.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 141A1F4C1B
X-Rspamd-Action: no action

The taiguan-xti05101-01a is a 10.1" TFT panel. The MIPI controller on this
panel is the same as the other panels here, so add this panel to this
driver.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 244 ++++++++++++++++++
 1 file changed, 244 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 5386a06fcd08..c3103d631f11 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -1366,6 +1366,246 @@ static const struct jadard_panel_desc anbernic_rgds_display_desc = {
 		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
 };
 
+static int taiguan_xti05101_01a_init_cmds(struct jadard *jadard)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
+
+	jd9365da_switch_page(&dsi_ctx, 0x00);
+	jadard_enable_standard_cmds(&dsi_ctx);
+
+	jd9365da_switch_page(&dsi_ctx, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xd7);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xd7);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x78);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x6a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x2e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x58);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x39);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x35);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x27);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x2b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x16);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x2e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x2f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x4d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x3c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x36);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x31);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x24);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x58);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x39);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x35);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x27);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x2b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x16);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x2e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x2f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x4d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x3c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x36);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x31);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x24);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x02);
+
+	jd9365da_switch_page(&dsi_ctx, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x52);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x4c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x53);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x51);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x4f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x4d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x4b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x41);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x13);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x0d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x11);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x0e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x75);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0xb4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xbb);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2a);
+
+	jd9365da_switch_page(&dsi_ctx, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xb3);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x61);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x58);
+
+	jd9365da_switch_page(&dsi_ctx, 0x00);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 20);
+
+	return dsi_ctx.accum_err;
+};
+
+static const struct jadard_panel_desc taiguan_xti05101_01a_desc = {
+	.mode = {
+		.clock		= (800 + 24 + 24 + 24) * (1280 + 30 + 4 + 8) * 60 / 1000,
+
+		.hdisplay	= 800,
+		.hsync_start	= 800 + 24,
+		.hsync_end	= 800 + 24 + 24,
+		.htotal		= 800 + 24 + 24 + 24,
+
+		.vdisplay	= 1280,
+		.vsync_start	= 1280 + 30,
+		.vsync_end	= 1280 + 30 + 4,
+		.vtotal		= 1280 + 30 + 4 + 8,
+
+		.width_mm	= 135,
+		.height_mm	= 216,
+		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init = taiguan_xti05101_01a_init_cmds,
+	.lp11_before_reset = true,
+	.reset_before_power_off_vcioo = true,
+	.vcioo_to_lp11_delay_ms = 5,
+	.lp11_to_reset_delay_ms = 10,
+	.backlight_off_to_display_off_delay_ms = 3,
+	.display_off_to_enter_sleep_delay_ms = 50,
+	.enter_sleep_to_reset_down_delay_ms = 100,
+};
+
 static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -1463,6 +1703,10 @@ static const struct of_device_id jadard_of_match[] = {
 		.compatible = "radxa,display-8hd-ad002",
 		.data = &radxa_display_8hd_ad002_desc
 	},
+	{
+		.compatible = "taiguan,xti05101-01a",
+		.data = &taiguan_xti05101_01a_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, jadard_of_match);
-- 
2.34.1


