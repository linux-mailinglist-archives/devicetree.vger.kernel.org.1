Return-Path: <devicetree+bounces-206088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 423AAB2B7F8
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36CF352514D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B09B2FC883;
	Tue, 19 Aug 2025 03:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="SK0IFcNx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC362D877F
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755575351; cv=none; b=WILsXXHh7UU2HGAVGxQ1RyArRoOsoZAF6ZRdtZmM6S5vNPxd5O4twUK3FYrQx4wxOnCmovJatRIGwf6OVDgD48OqfDBHBRgklU8ZIXm056lqD8OXiV52q8+Ma8RG2TQ///HtvbkZHynZEpCvu32QNND8rC48u4rfAhZY1eHl1L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755575351; c=relaxed/simple;
	bh=BySrjUWeZWttEYxEcBYXCwbkflh2Zyv8/0xNGM+AD40=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UWpZEqdvj9N/1KQ0pP5emivFMNDoKZDXcbc0mXDdWTy13lBkjIL3POTVyf2Ht9vaQ+CmEzrGyrFHlYJzDMwe00XgJcEIL4S/P53jYouvBBvD9bkGQYpXO5Ont3uzedOOzzULJz7n0BMiRpVtj1xDFzwQjx7VSLepWkF9ns7e5vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=SK0IFcNx; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76e2e6038cfso5769991b3a.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755575347; x=1756180147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmdG5DlYugS6q7DtukrVNJuzOFU57fMjmsXm7FON0so=;
        b=SK0IFcNxMzzcT4FTXPFR0yDq4TmtYk7haLJ50Pyx24jTYQbkjGhMuR4DugYSdDlYWg
         osJwkj/mrR4gi+e+7hYm0ZIPuyGFH3cecSdKYHZTaqm75OJ7RQVfmEQaIauBsP2dBY38
         8Ead2X0jqMDOLKr5QODOpflSaOYOdvShv6Z0MruyOLv59209iDWBsT5H7daSbL7zWlDt
         4OrSo7ZBZvP0Cyuch1WPlK7d/fEq1FPdwzU5nOOcvlNWWqa3zomhCSDKo5j4IwnIKtVg
         XIUdq5tpQZcOiZPpiu4LCpWyxYMGyqwZ3SFzIbhxYrcxlXgedvgEbI2AYr048s0tc0M2
         6nTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755575347; x=1756180147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmdG5DlYugS6q7DtukrVNJuzOFU57fMjmsXm7FON0so=;
        b=uZa68vEsDvHgS4STTmYdQdVddrySuFtVjhgYEk6mxoyWApJKy2/htg/Bt8fc0oK4Pb
         5RRnZWTN7cYpQtNfA5RNq1JRkwuYOQnTmy5F3GHraf3aQQzhG+o++S3YJTwoD2Tw9J1m
         mOxEeM0+pqqZ9PThePKlmUvUnf1wANhbH5vIS2sUEFftk12N/MzputRL2nn+b6FjkOot
         Pru5t8gQ8C0U/lFAsRyP9PdAnhejyrRVyM9B+8LFqM8e8r2jEjfw2ksLIsCiMDcc8sq8
         IM2X4NqdCyzFvQRf1fVc2RvcETmHByAswSuynGi5xY54qfDlSoH/b8IXoZdmjLqZpqzW
         /mdA==
X-Forwarded-Encrypted: i=1; AJvYcCXPHOe6Vxelfz9VWRKFrWQYBZvmD/1DjEGIfnBw5aH1QyMpqacUl0cKQEUi5/gigSZiVWdLCM0iZnoX@vger.kernel.org
X-Gm-Message-State: AOJu0YwJCc+WM2cb4MJTX/r2JQ1LJLNNHDuudY46uPeEWmtP8kuReqo8
	DXHKZAV6MlwyX0/RPqdb8MuoYJz2SrYz+1qzxCAB3zBsZh8CKbaImmPOAPEl0Ed0Erw=
X-Gm-Gg: ASbGncuyj3fsE1sErZ86VyfPAn4bYYau7BBKXZuvsv72YJNC6EAqg3UHCztF6Ce3OnY
	HEqyzeNJYXRbvaohnoYbpzerLP/gokcuXFFLtwWKYQGUJ24abr05RdV9Rs8CNgnwUe862xlSX/n
	9Z8L4o0/+iX1wKSWGUjDBnbuRwxdUgloE1GvHqaya6UIFC5Ys00UPO4tbdmziayOKRqlyOv8vDb
	Bhpv7Uan0/OmIB8fEzk2af87ITl45gxcXTWXYE3fT1WDF8p79ueyXfIpRUxsdhRuvXNSpvFi9LL
	0QpAn9eoQ6iYc2f0edKvSTCn55MOPiyNEfU3IdT66iRjnnFHWj9qKEieugKXJyTlhc96VupRhoS
	JFmxZVGTVGeln6V6ck/pXdWifNWiUhUBMMGxhY9Qq0aEa50VorlECT2Mv0TuO1oucK75pvA==
X-Google-Smtp-Source: AGHT+IFM0Fshz5IEB6AwHhBOB3eiEz7iW0S9l+xXsbwkiYN0l8ttjfsQMj4TzpXSRFsdYflO2Gqf6Q==
X-Received: by 2002:a05:6a00:14c1:b0:76b:d791:42e5 with SMTP id d2e1a72fcca58-76e8110b33cmr1159735b3a.17.1755575347339;
        Mon, 18 Aug 2025 20:49:07 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e8538edb8sm28953b3a.67.2025.08.18.20.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:49:06 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	dianders@chromium.org
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] HID: i2c-hid: elan: Add parade-tc3408 timing
Date: Tue, 19 Aug 2025 11:48:52 +0800
Message-Id: <20250819034852.1230264-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parade-tc3408 requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms,
so the post_gpio_reset_on_delay_ms is set to 300.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 3fcff6daa0d3..23826cb808b7 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -179,11 +179,19 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 	.main_supply_name = "vcc33",
 };
 
+static const struct elan_i2c_hid_chip_data parade_tc3408_chip_data = {
+       .post_power_delay_ms = 10,
+       .post_gpio_reset_on_delay_ms = 100,
+       .hid_descriptor_address = 0x0001,
+       .main_supply_name = "vcc33",
+};
+
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
 	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
+	{ .compatible = "parade,tc3408", .data = &parade_tc3408_chip_data },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, elan_i2c_hid_of_match);
-- 
2.34.1


