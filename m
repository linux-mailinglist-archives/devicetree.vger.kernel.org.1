Return-Path: <devicetree+bounces-85997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1102D9321D6
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A991B21BF0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 08:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3242814D433;
	Tue, 16 Jul 2024 08:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="T/FSo5i9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92579146D6A
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721118556; cv=none; b=W59OKhHjRIJ+/kZYH6omiUlZVk91tbVZPN8zA3bhIpICC3zqTHyru9Aa2X2KkGuWFCqQQBEX1bG5KAp75dVc31l4PXdYzQ2ImIaqjaW5d+JzaM9d3eDadCVM/GQhBKrcJ1nzVb1YgSAxqVQSsWFz/zeJuZyqesTC/rEDHEYUidc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721118556; c=relaxed/simple;
	bh=YPjoDTHK2f2Gmo3FLscRhiM7OSjHCYpEbwln7GQCNew=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ghrWBwI8pR1AbCwZC1TVwuUSbxafxjH3C5esUmYH11V9/ftdnsGLv58wreyVUlcqi95JsOWmexazJcsWj5zcsXn1VWXv6wzFPNnFHLssrFLaN+lZ4dBV7IF63qh9lXALMjzpeTKIvWkOJvTM5EPPqzfrL/SJ0XeOdjwN/PfxP1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=T/FSo5i9; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70b05260c39so3186934b3a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 01:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721118554; x=1721723354; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F4VscS3YS8kYjDJ/yOGc674uy9N5r6MdDESLHfUey0s=;
        b=T/FSo5i9myGtXkXgKZff84mN3BjNhMV9nKd2wDOT/qYpIBHZZ6OLcCU6GODqHq1vd2
         PWOSMzVMDpZcjYNCW3KqWHSlEaxDVXNSixnIf1R2RP7thvcIpiTKoCTj6SPrRopNFgNo
         eG9lpTx8XA4QmxLfwC47W0syqWeOxR2MOrs544AooZHI0hnbjQ7mjtQoZe75sTPhdeEy
         JYr/+k0iJUkYq6tSWmpJ51K86fVvq3KBJW9WpEC9NlB1kTx03vvxHasJ+asd8wZ4ZcFj
         tjBrSctcdXuQtyvZG/LjTCpvI8hxmDzFw6JP7yMViOEYFnBrf7CHXFFD7k1oIOU5TBLI
         YqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721118554; x=1721723354;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F4VscS3YS8kYjDJ/yOGc674uy9N5r6MdDESLHfUey0s=;
        b=HwFDXpN5b4+rtsMjVecUQkLc6uhl0WLash7Df+0qUIDwSrAcybftVjwHs7070RXJ1H
         /qVgi3UW17DBLKEu+byFS1OCh0N1oMvzMs7OiIOv277sAzdFfDSjZiC9AUdWfk7LGjW2
         xHppPqSHr0g/pNK30VdP/p5ROZE99sgnltxrj07LAyt93vY2TAcs32hjulUR6tLCNoWC
         mmDEIy+RHU9fRWyirCvPSRZ5IzCfEw/aF/kCby3p/ry12jDJCnzhXjWfqJemIIguYvR/
         kUeB6bSJqrMaZ2d7IthmUlJYBIMkcXvqm1iZ/pbL3XnWx6usuKmi58P5Zr+20IRwuwfM
         cZdg==
X-Forwarded-Encrypted: i=1; AJvYcCUJuM+WmO5TtFQz/Gownle4qIOOkDM2pvgCQhwH34+7bWNEOSrFbxuVmjJUG2PSBLIdS/2BMBIJ50Nhf5cO2gq0U89uGCulNohfeA==
X-Gm-Message-State: AOJu0YyAmOga6W3IFM067FXz4/W198ogc4EtIwajVopmej7bsmeWiOOX
	q38a/LZ3BwD76Sl1Mg5m6yW4jQ2f91OG8MVVysxhaarIWYHggQtPqvP53vkWDYI=
X-Google-Smtp-Source: AGHT+IFH6uGCvMKeaGDMTFjXeKuRtBVJAm84izd2QqVH5X35wOUvL96rbDdtUAUyInj3udsao+qpmA==
X-Received: by 2002:a05:6a00:9a7:b0:705:a450:a993 with SMTP id d2e1a72fcca58-70c1fbda81fmr1838471b3a.17.1721118553689;
        Tue, 16 Jul 2024 01:29:13 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7ec7e110sm5714347b3a.121.2024.07.16.01.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 01:29:13 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@chromium.org,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 2/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
Date: Tue, 16 Jul 2024 16:28:51 +0800
Message-Id: <20240716082851.18173-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240716082851.18173-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240716082851.18173-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms,
so the post_gpio_reset_on_delay_ms is set to 300.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V3 and V2:
-  2. No changes.
v2: https://lore.kernel.org/all/20240715073159.25064-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. No changes.
v1: https://lore.kernel.org/all/20240704085555.11204-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 091e37933225..3fcff6daa0d3 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -152,6 +152,13 @@ static const struct elan_i2c_hid_chip_data elan_ekth6915_chip_data = {
 	.main_supply_name = "vcc33",
 };
 
+static const struct elan_i2c_hid_chip_data elan_ekth6a12nay_chip_data = {
+	.post_power_delay_ms = 10,
+	.post_gpio_reset_on_delay_ms = 300,
+	.hid_descriptor_address = 0x0001,
+	.main_supply_name = "vcc33",
+};
+
 static const struct elan_i2c_hid_chip_data ilitek_ili9882t_chip_data = {
 	.post_power_delay_ms = 1,
 	.post_gpio_reset_on_delay_ms = 200,
@@ -174,6 +181,7 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
+	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
 	{ }
-- 
2.17.1


