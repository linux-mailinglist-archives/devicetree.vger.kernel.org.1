Return-Path: <devicetree+bounces-219244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEBFB89345
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 13:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75B1E1693AF
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF46309EE7;
	Fri, 19 Sep 2025 11:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="yPLwlGRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEEC30B517
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758280273; cv=none; b=DewjsLCnzfRpbm+UCPz4BwnLMC3DzZbw/eb6SvI9TyVTmDhpbZG5ZuM67fQlmH9eECM6bht8FNmdhXHpmr6tUXQROuMhf6M6gg7kmZ293LZVv1YOth8G59qxJEhINlHuHuQ7AUUkA/jof3HLgdTD6316C4ZBBhekcKcknhTQOH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758280273; c=relaxed/simple;
	bh=ApaM1dXvqdcnQrx7fXzfNj83Vh3ct1RGFxrK8vOPKBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FlzDJwiE6j/8/1pWOXxjXUnGUTV4a0xCLG3pHHDWtf9BZWckYyVbpO9JVOvwluxNH/ogtApFS7DhUtenzdyaQSSIjtWfwW8Ft5zA1vUKi0UvPD8OEtQOyH+YIlkbBPHReQEeuIHZ8jK4FMMQ3VuoadA7n/oAThQSkGfmiBzgGho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=yPLwlGRS; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77e6495c999so753456b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 04:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1758280271; x=1758885071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=npFWPkSgKvY9va+Ulw2zXaAW/hma517DGdAo/O6uPe8=;
        b=yPLwlGRSXXpJBOVrz+gDSJFyMpJzjON+LQ3OQ5pXtwxDjl6085F5pzjffCiAyFWejx
         mYjkF/x3GMRKNrCpqx9BpuLJFXJ+0HZjkpK2c2AUIS2cC9bhAmQFIQN2gQ6hn+2+osqg
         G3J2AmqkgDL8fKpH6ljFI1qdiG0RVfn7e4EQ5SfTjqQx/07ni2Ac802a8jMpwQs6C/GC
         2X/bKAqp+ROLr6LUvPaWk0csW9DSFJ2c7zrFgTnPB4NqhZQhAnFi0Wy+s9wSLl2X4K4+
         q1V97LlVirqz/23cpATKylhsLV3r8XGm/bddozMvsDBhqnyVepe1CEXlm112bCQZ6+ZE
         U0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758280271; x=1758885071;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=npFWPkSgKvY9va+Ulw2zXaAW/hma517DGdAo/O6uPe8=;
        b=A1b6sXKiR22lOI7Xrp/5v1auxOjxKzV/Dvdg8Gd6Fp+QclhckIEWcpcp7/goUJ42t0
         XuBQgFO+3mvRt19Y6jy5A7ddpJpbYor++mGRjgeBwIoSKCBYjweD61Trm2EL+PwC7+HM
         NF9WnC9yLFaZmXTE8/2JZUjw4nO1zyKV693DaJkOKxw7wL2UxSwAKB+XL75WD/dEa5iv
         mVg/bXiSjwzpJWlIkNvkqWmdA+zoXihUPHhaWT8sm/pAhO5RruVNnD7o9Ps7BxFcFrEX
         GEMwo/1U4EGbDcyaQDkILz2Z0Uce5fa8lyJFCg9Sl/xG6Tdm23rH3pTzzNV9B3mtuD9l
         dfSg==
X-Forwarded-Encrypted: i=1; AJvYcCX4U1VLhYtqcyW8wGfH95UYhUN9VAcCM8o+/hlxLOeiO3vW9Hz7QyxO3oi/xBLSbfK+JZqyPs3UOLPs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd7s0300CbifXEinOFd9S+XdqcH+aFUMvlTNsban8AmqPOAT9G
	it+EZVRDhqHQdNp+o9aogW+cEUPF7TCyDxkfiO9pl9+4Qd+WOQZYDAmzpP6fNFZAs34=
X-Gm-Gg: ASbGncuSFnO5QLx8zjbF1Z+PP/lWhnk7FBPd0vBEkndqGu/QwAXTxsKCd734JxN5LSG
	AAQSpuajCZ26m+gQTo0n1QhvmnIfkvZQkFqJTtwOyzQKrUcqk3ECOUJ7TphWWmZjP37WaYeEOov
	/pn74HJcAMcBdbdBdFgROLyFVuJESVbG5csvKIyw4HV7AubreGoicjRPFtsSct5lFQQghoJID7X
	fKuYaYFHn7TGHgz2X/jJJJk0Z2hH7iRihcjJtidcmNxcZb5Mn6ggIj+Uo+txLFX/EcJeoxdn4Qk
	RVgkx+J8bsy6c5gFpjp3FS3L3tzxlA2ih+WDL9o+gqBMX4AIfx/y/vwjeuWSliD1TxW3AMVqvBM
	vdXcKULbo6Psh2EnKQyzOC5TA9pxd/ptBIi8xRivR72jHzhpHwe3fBEjF0X4=
X-Google-Smtp-Source: AGHT+IH4wTPZqP62XLgmItR38Arrzxl1FUIuRLUNqJycfG24LHcBBRnY/kef0LLseIR49zemaYNLmg==
X-Received: by 2002:a05:6a00:4b52:b0:776:9d99:e3f1 with SMTP id d2e1a72fcca58-77e4eac3772mr3472892b3a.26.1758280271258;
        Fri, 19 Sep 2025 04:11:11 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfc24614dsm5028971b3a.31.2025.09.19.04.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 04:11:10 -0700 (PDT)
From: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/panel: Add support for KD116N3730A12
Date: Fri, 19 Sep 2025 19:11:01 +0800
Message-ID: <20250919111101.2955536-1-yanzhijian@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add panel driver support for the KD116N3730A12 eDP panel.
This includes initialization sequence and compatible string, the
enable timimg required 50ms.

KD116N3730A12:
edid-decode (hex):

00 ff ff ff ff ff ff 00 2c 83 97 03 00 00 00 00
02 23 01 04 95 1a 0e 78 03 3a 75 9b 5d 5b 96 28
19 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
36 00 00 90 10 00 00 1a 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe
00 4b 44 31 31 36 4e 33 37 33 30 41 31 32 00 a9

Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 2c8536c64c19..555e0e2a36ea 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -2047,6 +2047,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('K', 'D', 'B', 0x1707, &delay_200_150_e50, "KD116N2130B12"),
 
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0110, &delay_200_500_e50, "KD116N3730A07"),
+	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0397, &delay_200_500_e50, "KD116N3730A12"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x044f, &delay_200_500_e50, "KD116N9-30NH-F3"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x05f1, &delay_200_500_e80_d50, "KD116N5-30NV-G7"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0809, &delay_200_500_e50, "KD116N2930A15"),
-- 
2.48.1


