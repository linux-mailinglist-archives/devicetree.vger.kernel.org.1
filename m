Return-Path: <devicetree+bounces-84586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61292CD70
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:47:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5016F1F24C0A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4F014389E;
	Wed, 10 Jul 2024 08:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="rZ2pRvJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F86514387A
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601255; cv=none; b=ZthBGjwXnwHOftu6iJKqVxS82tNBXBPu6wo7sWYHopXco14/ea9XmdnyUaBgG+ZU3scjuc397nns2q6GMXjN1Hjw6JX+2bsALF6pfzPgSvSB9FBqxYu6J9fK7s4ErzwoQCUkQ4lO0oN/RVVSlU+KO1eaR6qYy6Xfqh+szcR0LTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601255; c=relaxed/simple;
	bh=Zlw7CsD8gPEf2Uqg7ZTy+ewxiv8DS41kxJ2e/u327WY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LLP5xCoPbW8RLfXlHDqil/p19164ICS6zgsqRHUNve9DAXEXOrzU509f2Z+6YmtcMSoeJtx8NAf377YzKll8lTSg74Sm6xUS2mGAexGb3lJqGHoo9X2rpU/NXkUYh5a/hBfOtlsdW1jNtsV3Ng4NBw64vG6UXUSH3FzXFFBPhiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=rZ2pRvJ1; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5c47ad996d0so3318524eaf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720601252; x=1721206052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55WZGuebcKtpAIVCKw+Cj6dfssN2UuSecbLe6BRz/Ac=;
        b=rZ2pRvJ14OpQBJKn1urQWFGBh4Frbd2JBvljfgcUQEpREu+Ik+zb/k806fuWEpSUdG
         IMKr+0xASUSjlO45Mjfkz0hbwVip9jEdnG2S8FtUBV81Ah3LzXToPL/qu1ln0NjHBzMH
         S/M8B+Xhp+y9aLU+sYpSIQqfD55JGg/xQNZJeSmnHqyrjaSk+odSY85gHIXLosQ6Y65x
         r18+9RGmjoCybQUsmHYa7fqtpKI9jDmcuGk26/4eNptBOmeN1w29dk/cxN37FkAVCUHe
         e5TsdmZXAd25RBDQE2W7L9iv++AQ2+FiMyNghgZT3pkZGreaCWpxHNV8LWsIwYuh6Z0U
         bRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720601252; x=1721206052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55WZGuebcKtpAIVCKw+Cj6dfssN2UuSecbLe6BRz/Ac=;
        b=Xs3CA2HPZm4V0FQ4rzEz8oINaeKSMo5vpWQid/NgTWphT/2Yf90w5bFfBbwFqeJUBI
         jswhZ/6OfgL0qJNiWypkshSn0yHs1oVu2pssDAffs+pZWAQyQD6cp7bGJKScGSitTRQ8
         OB8Xau7qSkB0PDKyTTO8qRc5lDcrPGeeznBhZ0xl91IiMILMJuqMO6OI3NNkMkETdGZy
         W8Rna73J33trjtQ0srh2UeUPQOsOPRAmvmTSK0uoXNdl8LwZO5exgcUw71vG193rMHSe
         ET7UJqKEEghPRWryxYGoB5DHUYAXT/qYNr8bPkNV5w3Sit9hQ5nS1P0YBdj50sv22uZ5
         FdcA==
X-Forwarded-Encrypted: i=1; AJvYcCVl0vZb0bHDDiVmDZUofc/AUxkBfeWfAXIUCzsAVu+jdL98HaSUQwEbyFmo5RswKe0rUWmb0ncAYaNeyJv+v/dxsnunbeWamulbWQ==
X-Gm-Message-State: AOJu0Yx2lE4hUsXSq7g3WsKLBNXSDIUm3QqOzA8TALuDOGMVfCm8pERP
	Ee4RzMY7K3GdK+8AilZ2hAVEYWYxiSgCb+bskDDZBkYtvvcpL87DUJQBBkv+rnU=
X-Google-Smtp-Source: AGHT+IEM/IBkeulMc2mSbWwuUli0unB4679XAQTlgCv6dCchIR+7d+SgelCCZrLmn7kxOW82dW97Dg==
X-Received: by 2002:a05:6870:1705:b0:25e:4ec:8f82 with SMTP id 586e51a60fabf-25eae7b6524mr4096121fac.17.1720601251469;
        Wed, 10 Jul 2024 01:47:31 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b438997d4sm3216077b3a.28.2024.07.10.01.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 01:47:31 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	mwalle@kernel.org,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/4] drm/panel: boe-tv101wum-nl6: Break some CMDS into helper functions
Date: Wed, 10 Jul 2024 16:47:12 +0800
Message-Id: <20240710084715.1119935-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

hj110iz-01a and tv110c9m-ll3 both nt36523 controller, and they have
some common cmds, so let's break them into helper functions.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 190 ++++++------------
 1 file changed, 63 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index ce919a980875..3e5b0d8636d0 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -54,12 +54,22 @@ struct boe_panel {
 	struct gpio_desc *enable_gpio;
 };
 
+#define NT36523_DCS_SWITCH_PAGE	0xff
+
+#define nt36523_switch_page(ctx, page) \
+	mipi_dsi_dcs_write_seq_multi(ctx, NT36523_DCS_SWITCH_PAGE, (page))
+
+static void nt36523_enable_reload_cmds(struct mipi_dsi_multi_context *ctx)
+{
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xfb, 0x01);
+}
+
 static int boe_tv110c9m_init(struct boe_panel *boe)
 {
 	struct mipi_dsi_multi_context ctx = { .dsi = boe->dsi };
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x20);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x20);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x05, 0xd9);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x07, 0x78);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x08, 0x5a);
@@ -99,16 +109,14 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbb, 0x03, 0x8e, 0x03, 0xa2, 0x03, 0xb7, 0x03, 0xe7,
 				     0x03, 0xfd, 0x03, 0xff);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x21);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
-
+	nt36523_switch_page(&ctx, 0x21);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x45, 0x00, 0x65,
 				     0x00, 0x81, 0x00, 0x99, 0x00, 0xae, 0x00, 0xc1);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb1, 0x00, 0xd2, 0x01, 0x0b, 0x01, 0x34, 0x01, 0x76,
 				     0x01, 0xa3, 0x01, 0xef, 0x02, 0x27, 0x02, 0x29);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb2, 0x02, 0x5f, 0x02, 0x9e, 0x02, 0xc9, 0x03, 0x00,
 				     0x03, 0x26, 0x03, 0x53, 0x03, 0x63, 0x03, 0x73);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb3, 0x03, 0x86, 0x03, 0x9a, 0x03, 0xaf, 0x03, 0xdf,
 				     0x03, 0xf5, 0x03, 0xe0);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb4, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x45, 0x00, 0x65,
@@ -119,89 +127,66 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 				     0x03, 0x26, 0x03, 0x53, 0x03, 0x63, 0x03, 0x73);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb7, 0x03, 0x86, 0x03, 0x9a, 0x03, 0xaf, 0x03, 0xdf,
 				     0x03, 0xf5, 0x03, 0xe0);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb8, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x45, 0x00, 0x65,
 				     0x00, 0x81, 0x00, 0x99, 0x00, 0xae, 0x00, 0xc1);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x00, 0xd2, 0x01, 0x0b, 0x01, 0x34, 0x01, 0x76,
 				     0x01, 0xa3, 0x01, 0xef, 0x02, 0x27, 0x02, 0x29);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xba, 0x02, 0x5f, 0x02, 0x9e, 0x02, 0xc9, 0x03, 0x00,
 				     0x03, 0x26, 0x03, 0x53, 0x03, 0x63, 0x03, 0x73);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbb, 0x03, 0x86, 0x03, 0x9a, 0x03, 0xaf, 0x03, 0xdf,
 				     0x03, 0xf5, 0x03, 0xe0);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x24);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
 
+	nt36523_switch_page(&ctx, 0x24);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x01, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x02, 0x1c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x03, 0x1c);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x04, 0x1d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x05, 0x1d);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x06, 0x04);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x07, 0x04);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x08, 0x0f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x09, 0x0f);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0a, 0x0e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0b, 0x0e);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0c, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0d, 0x0d);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0e, 0x0c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0f, 0x0c);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x10, 0x08);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x11, 0x08);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x12, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x13, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x14, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x15, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x16, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x17, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x18, 0x1c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x19, 0x1c);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1a, 0x1d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1b, 0x1d);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1c, 0x04);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1d, 0x04);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1e, 0x0f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1f, 0x0f);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x20, 0x0e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x21, 0x0e);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x22, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x23, 0x0d);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x24, 0x0c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x25, 0x0c);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x26, 0x08);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x27, 0x08);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x28, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x29, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2a, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2d, 0x20);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2f, 0x0a);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x30, 0x44);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x33, 0x0c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x34, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x37, 0x44);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x38, 0x40);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x39, 0x00);
@@ -244,7 +229,6 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdb, 0x05);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdc, 0xa9);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdd, 0x22);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdf, 0x05);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xe0, 0xa9);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xe1, 0x05);
@@ -258,8 +242,9 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x8d, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x8e, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb5, 0x90);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x25);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+
+	nt36523_switch_page(&ctx, 0x25);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x05, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x19, 0x07);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1f, 0x60);
@@ -281,26 +266,22 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x61, 0x60);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x62, 0x50);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xf1, 0x10);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x2a);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
 
+	nt36523_switch_page(&ctx, 0x2a);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x64, 0x16);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x67, 0x16);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x6a, 0x16);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x70, 0x30);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa2, 0xf3);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa3, 0xff);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa4, 0xff);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa5, 0xff);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd6, 0x08);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x26);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x26);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0xa1);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x02, 0x31);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x04, 0x28);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x06, 0x30);
@@ -323,7 +304,6 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x23, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2a, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x7f);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1d, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1e, 0x65);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1f, 0x65);
@@ -343,7 +323,6 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc9, 0x9e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xca, 0x4e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xcb, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa9, 0x49);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xaa, 0x4b);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xab, 0x48);
@@ -373,9 +352,9 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc3, 0x4f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc4, 0x3a);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc5, 0x42);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x27);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
 
+	nt36523_switch_page(&ctx, 0x27);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x56, 0x06);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x58, 0x80);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x59, 0x75);
@@ -394,17 +373,14 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x66, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x67, 0x01);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x68, 0x44);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x78, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc3, 0x00);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x2a);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
-
+	nt36523_switch_page(&ctx, 0x2a);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x22, 0x2f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x23, 0x08);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x24, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x25, 0x65);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x26, 0xf8);
@@ -415,30 +391,30 @@ static int boe_tv110c9m_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2d, 0x1a);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x23);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
-
+	nt36523_switch_page(&ctx, 0x23);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0x80);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x07, 0x00);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0xe0);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0xe0);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x14, 0x60);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x16, 0xc0);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0xf0);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0xf0);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3a, 0x08);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x10);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x10);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x01);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x20);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+
+	nt36523_switch_page(&ctx, 0x20);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x18, 0x40);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x10);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x10);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x35, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x51, 0x00, 0xff);
@@ -464,13 +440,12 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 {
 	struct mipi_dsi_multi_context ctx = { .dsi = boe->dsi };
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x20);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x20);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x05, 0xd1);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x06, 0xc0);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x07, 0x87);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x08, 0x4b);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0d, 0x63);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0e, 0x91);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0f, 0x69);
@@ -482,10 +457,10 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x69, 0x98);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x75, 0xa2);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x77, 0xb3);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x58, 0x43);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x24);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+
+	nt36523_switch_page(&ctx, 0x24);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x91, 0x44);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x92, 0x4c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x94, 0x86);
@@ -493,7 +468,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x61, 0xd0);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x63, 0x70);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc2, 0xca);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0x03);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x01, 0x03);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x02, 0x03);
@@ -538,7 +512,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x29, 0x04);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2a, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x03);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2f, 0x0a);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x30, 0x35);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x37, 0xa7);
@@ -546,7 +519,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3a, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3b, 0x32);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3d, 0x12);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3f, 0x33);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x40, 0x31);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x41, 0x40);
@@ -556,7 +528,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4a, 0x45);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4b, 0x45);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4c, 0x14);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4d, 0x21);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4e, 0x43);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x4f, 0x65);
@@ -569,7 +540,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5c, 0x88);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5e, 0x00, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5f, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7a, 0xff);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7b, 0xff);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7c, 0x00);
@@ -581,7 +551,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x82, 0x08);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x97, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc5, 0x10);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd7, 0x55);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd8, 0x55);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd9, 0x23);
@@ -609,43 +578,32 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb6, 0x05, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,
 				     0x05, 0x05, 0x00, 0x00);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x25);
-
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x25);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x05, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xf1, 0x10);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1e, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1f, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x20, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x25, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x26, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x27, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3f, 0x80);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x40, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x43, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x44, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x45, 0x46);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x48, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x49, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5b, 0x80);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5c, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5d, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5e, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5f, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x60, 0x32);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x61, 0x46);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x62, 0x32);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x68, 0x0c);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x6c, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x6e, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x78, 0x00);
@@ -653,9 +611,8 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7a, 0x0c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7b, 0xb0);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x26);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
-
+	nt36523_switch_page(&ctx, 0x26);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0xa1);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x02, 0x31);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x0a, 0xf4);
@@ -674,18 +631,15 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x18, 0x86);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x22, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x23, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x19, 0x0e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1a, 0x31);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1b, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1c, 0x29);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2a, 0x0e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x31);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1d, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1e, 0x62);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1f, 0x62);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2f, 0x06);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x30, 0x62);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x31, 0x06);
@@ -693,11 +647,9 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x33, 0x11);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x34, 0x89);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x35, 0x67);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x39, 0x0b);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3a, 0x62);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3b, 0x06);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc8, 0x04);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc9, 0x89);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xca, 0x4e);
@@ -711,21 +663,18 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xaf, 0x39);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0x38);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x27);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
-
+	nt36523_switch_page(&ctx, 0x27);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd0, 0x11);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xd1, 0x54);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xde, 0x43);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdf, 0x02);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc0, 0x18);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc1, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc2, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x00, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xc3, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x56, 0x06);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x58, 0x80);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x59, 0x78);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5a, 0x00);
@@ -743,20 +692,17 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x66, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x67, 0x01);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x68, 0x44);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x98, 0x01);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb4, 0x03);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x9b, 0xbe);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xab, 0x14);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbc, 0x08);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbd, 0x28);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x2a);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x2a);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x22, 0x2f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x23, 0x08);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x24, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x25, 0x62);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x26, 0xf8);
@@ -766,7 +712,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2a, 0x1a);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2b, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x2d, 0x1a);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x64, 0x96);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x65, 0x10);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x66, 0x00);
@@ -783,14 +728,11 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x7a, 0x10);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x88, 0x96);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x89, 0x10);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa2, 0x3f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa3, 0x30);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa4, 0xc0);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xa5, 0x03);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xe8, 0x00);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x97, 0x3c);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x98, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x99, 0x95);
@@ -800,7 +742,7 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x9d, 0x0a);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x9e, 0x90);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x25);
+	nt36523_switch_page(&ctx, 0x25);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x13, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x14, 0xd7);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xdb, 0x02);
@@ -809,8 +751,7 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x19, 0x0f);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1b, 0x5b);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x20);
-
+	nt36523_switch_page(&ctx, 0x20);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x24, 0x00, 0x38,
 				     0x00, 0x4c, 0x00, 0x5e, 0x00, 0x6f, 0x00, 0x7e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb1, 0x00, 0x8c, 0x00, 0xbe, 0x00, 0xe5, 0x01, 0x27,
@@ -819,7 +760,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 				     0x03, 0x00, 0x03, 0x31, 0x03, 0x40, 0x03, 0x51);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb3, 0x03, 0x62, 0x03, 0x75, 0x03, 0x89, 0x03, 0x9c,
 				     0x03, 0xaa, 0x03, 0xb2);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb4, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x27, 0x00, 0x3d,
 				     0x00, 0x52, 0x00, 0x64, 0x00, 0x75, 0x00, 0x84);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb5, 0x00, 0x93, 0x00, 0xc5, 0x00, 0xec, 0x01, 0x2c,
@@ -828,7 +768,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 				     0x03, 0x01, 0x03, 0x31, 0x03, 0x41, 0x03, 0x51);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb7, 0x03, 0x63, 0x03, 0x75, 0x03, 0x89, 0x03, 0x9c,
 				     0x03, 0xaa, 0x03, 0xb2);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb8, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x2a, 0x00, 0x40,
 				     0x00, 0x56, 0x00, 0x68, 0x00, 0x7a, 0x00, 0x89);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x00, 0x98, 0x00, 0xc9, 0x00, 0xf1, 0x01, 0x30,
@@ -838,7 +777,7 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbb, 0x03, 0x66, 0x03, 0x75, 0x03, 0x89, 0x03, 0x9c,
 				     0x03, 0xaa, 0x03, 0xb2);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x21);
+	nt36523_switch_page(&ctx, 0x21);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x24, 0x00, 0x38,
 				     0x00, 0x4c, 0x00, 0x5e, 0x00, 0x6f, 0x00, 0x7e);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb1, 0x00, 0x8c, 0x00, 0xbe, 0x00, 0xe5, 0x01, 0x27,
@@ -847,7 +786,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 				     0x03, 0x00, 0x03, 0x31, 0x03, 0x40, 0x03, 0x51);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb3, 0x03, 0x62, 0x03, 0x77, 0x03, 0x90, 0x03, 0xac,
 				     0x03, 0xca, 0x03, 0xda);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb4, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x27, 0x00, 0x3d,
 				     0x00, 0x52, 0x00, 0x64, 0x00, 0x75, 0x00, 0x84);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb5, 0x00, 0x93, 0x00, 0xc5, 0x00, 0xec, 0x01, 0x2c,
@@ -856,7 +794,6 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 				     0x03, 0x01, 0x03, 0x31, 0x03, 0x41, 0x03, 0x51);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb7, 0x03, 0x63, 0x03, 0x77, 0x03, 0x90, 0x03, 0xac,
 				     0x03, 0xca, 0x03, 0xda);
-
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb8, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x2a, 0x00, 0x40,
 				     0x00, 0x56, 0x00, 0x68, 0x00, 0x7a, 0x00, 0x89);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x00, 0x98, 0x00, 0xc9, 0x00, 0xf1, 0x01, 0x30,
@@ -866,22 +803,21 @@ static int inx_hj110iz_init(struct boe_panel *boe)
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xbb, 0x03, 0x66, 0x03, 0x77, 0x03, 0x90, 0x03, 0xac,
 				     0x03, 0xca, 0x03, 0xda);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0xf0);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0xf0);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3a, 0x08);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x10);
+	nt36523_switch_page(&ctx, 0x10);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x01);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x20);
-
+	nt36523_switch_page(&ctx, 0x20);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x18, 0x40);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x10);
 
+	nt36523_switch_page(&ctx, 0x10);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb9, 0x02);
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x10);
 
-	mipi_dsi_dcs_write_seq_multi(&ctx, 0xfb, 0x01);
+	nt36523_switch_page(&ctx, 0x10);
+	nt36523_enable_reload_cmds(&ctx);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0x01);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x35, 0x00);
 	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3b, 0x03, 0xae, 0x1a, 0x04, 0x04);
-- 
2.25.1


