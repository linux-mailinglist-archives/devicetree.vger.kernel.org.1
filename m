Return-Path: <devicetree+bounces-60557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1ED8A9A61
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECB821C21A21
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C4501635D1;
	Thu, 18 Apr 2024 12:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="sQf11lHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC69165FC4
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444518; cv=none; b=XY5dtu8AMoCteYYr4xZxsplz4bEeGggkB5FGXM/1X/FpQLJFVOxU3+qLju0mFnD+h8rOBvm5tri54SfNG49FBcW60dlccZUMGiiF/XRgkskoiT42mtgQMvHlasMwoyvSEqQ/RthmsXI79aMKMHACTIrRuN0liMykE+td435W/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444518; c=relaxed/simple;
	bh=5AN52fvuIGpZ7M8dMmpZFYqxQTNW8ioM6dCfXkkJGVY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=E+oL+1OMFmBtlQemx1oWIaQ+EMfoSzk2tLMNQMUX5shdEp/ggEyMADtk7WlvyIVzBdgtlAKnl+AKCBTszhsnfHn2QtsAYe1kGEU1kqWPFbuzCzbf6e1f23eIVGJs6E3NcBMrOZhMUZnBndVsApLy4Q2PlQc2Kpo/RzW4N3nWyLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=sQf11lHi; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1e2178b2cf2so7054355ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713444516; x=1714049316; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0M78v9nKtcu9aDQjEM1qTGU4tk87ySL7DtZXrv0/mjY=;
        b=sQf11lHieGFQMWgBmc86ov7fAqVarrfIb0F3DENxhj3Ssbr+eRM4VRP+isNKES+m28
         5w35eiXHVxh7ZHUmUgiZKGD2dyFStvpt+kbgCDpCc+E3kpTg42jawCxTS7pcfYOZztA/
         /B5bYHhhMK9fpxujf0aPobj30Pjk1H0yxmPIWg0uZcuNCBYfYxT5Nc93mPSHQasjPpc/
         QkpMTnBPF7t1A0Ock/bANHR5O4jv3vsDM8xYkPygdv5xJozVZwaGTMWB4lnf2dcLKZz2
         ZRJPaTOf2Tnvgdo3FMrzsqcNpQqIVL1An1nOB3Ldp4mvHRdCSUJ9WqbXmEXDZIirxwgG
         KCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444516; x=1714049316;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0M78v9nKtcu9aDQjEM1qTGU4tk87ySL7DtZXrv0/mjY=;
        b=L/zR0/6yrII1fQ1NlUhVSKEu2MzYp3BOCtOw3kp+zysjyEwFb2GPo84AJVyvR6m34i
         fBgaYW6dvyUXPkMOPoIsxzanOjIrmpuPuoH9STSVN+YM+qxjxBRzaNyHwUdF/GYteCER
         aOx1pWzGtch+LF0rKXh75etTy3mdxxs8ufbSyeOXTUKZMzM/R85cZyFU+jxEKJVT7wWs
         Hm1Urn0Wstd9wnJw4qDYuSihy4VJFut3UtXyv2hUhCSzy+u7lSQRD6/ypB97ny+4BOcq
         bYeUpCpKqhzACmGGg7n8keXKoapiD6zc9WQNFzA0fF/HOEIVDHO7vkhP4FmSfGkX0sF+
         hEjw==
X-Forwarded-Encrypted: i=1; AJvYcCXfDiEs7IiFLo8xQhyIckx1yve8OdhWVwP8fZKIJhaI/ZHKlsOp9yWIQJQBC6LK+BDddp6zNmBwOW3wDf7/ovMcdhfppJWLGPHSYg==
X-Gm-Message-State: AOJu0Yy9eZSWBEpafePIY2alm3I+zepY9eopxgSeCZZ/MmBtb2DSI23c
	YWjfJPIPBM9E73kKZmY/HVG6CkCaLtUxrRDnttjk/S9GRSkjMNODDJ/WxXg8VCU=
X-Google-Smtp-Source: AGHT+IGNj2qyqpmKhYF5SNexUkkbj2Eqj5W+/wzjibv+mQrOYEFftw0xcyN8tor6A7xrYppfL8hXHg==
X-Received: by 2002:a17:902:9a0b:b0:1e2:ac38:2674 with SMTP id v11-20020a1709029a0b00b001e2ac382674mr2553527plp.46.1713444516478;
        Thu, 18 Apr 2024 05:48:36 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id ju24-20020a170903429800b001e3d8c237a2sm1423509plb.260.2024.04.18.05.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:48:36 -0700 (PDT)
From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] HID: i2c-hid: elan: Add ili2900 timing
Date: Thu, 18 Apr 2024 20:48:15 +0800
Message-Id: <20240418124815.31897-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

ILI2900 requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 100ms,
so the post_gpio_reset_on_delay_ms is set to 100.

Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 5b91fb106cfc..3073620b2dec 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -137,10 +137,18 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 	.main_supply_name = "vcc33",
 };
 
+static const struct elan_i2c_hid_chip_data ilitek_ili2900_chip_data = {
+	.post_power_delay_ms = 10,
+	.post_gpio_reset_on_delay_ms = 100,
+	.hid_descriptor_address = 0x0001,
+	.main_supply_name = NULL,
+};
+
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
+	{ .compatible = "ilitek,ili2900", .data = &ilitek_ili2900_chip_data },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, elan_i2c_hid_of_match);
-- 
2.17.1


