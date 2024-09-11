Return-Path: <devicetree+bounces-101900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE80974B53
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E45C2B25154
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A54149002;
	Wed, 11 Sep 2024 07:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AWqja8Do"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A714A61B
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039718; cv=none; b=DVFxiZiChkOSgRfR3cBnIZgmJU9n/ACNkbInZD6ta57mv5eGBFwCmZzybGkH6GbggndQf0A84SvPdA715GBIVDWjjr5SY7NEgxFvFZ0vQlK59pOwJnZo2hRZ6TzvmSem8zXgvhgt0HUmEYsUsjMQaLWT1xqzhCswUwVoanVm7RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039718; c=relaxed/simple;
	bh=XxiTjlQcSLEHrjz0okO6v8gsp7M/kr47QP0mR5JSK08=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QBrEhaUOUBkRUeaFslnaObjX7H/JMA4q1MpRzEu1sOiXiUM3Rke874NIh8cAAaKbwZgqL7KFjlZQj4GPh69ptZKCXMjxZNg5tTMC/YMAjDHl3FuJ5+e0Juj7R5CVsLqjJF4U1MRP0ivO4nXY5u57Upl8dIoyQDaTmJY1wLTYNic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AWqja8Do; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7db174f9050so52635a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039716; x=1726644516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZj+Rwt2K/givoXdUXg/sARHG7LMQ+JDTIquBzN2oCY=;
        b=AWqja8Do11n2xY2bO0h7B7OseZ4raQjQ86+PRPLDN7Bb7g3d2kQX/PGqZFi+cRCacC
         Dam7Wx8/GIrN5M/VGsQxOuDdphRIAMhEKn43gFOVxIRq9GbVjXOGb+/GWJPlvRpqOQw2
         81uvN2vw7OIRfE9fzi/SjQuYwdjgin7HOoja4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039716; x=1726644516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TZj+Rwt2K/givoXdUXg/sARHG7LMQ+JDTIquBzN2oCY=;
        b=rE2UMZ150LOqLMGsllrDwxUu2Oq6Njn5G017nm6DjPRG9qoTCNFz2v+YgjdmO8CM+v
         LnJMmZc5B6+tbb+OamTyjY3OODTJKH3nMnWkcy6rjeIm/Auw6wyCcsfMN7NbZM7j/hP8
         gQmBR4d1cf57JMlAbsT8QEvVrPA8JyUJYSKm9dkiMV3GIsHrv+/WtApb2cvszrdoHtYN
         XTGZ9Q8I9X6n5y0CwIQckXgoy6Vi7GfxOJlXSQcXwR0MSs1Tksn9OT15r1W4uToWWkNT
         6kFKh249EBMGW7lhvdxB/Cd/80gWbUwZpKK9PFJq+41sLDDjCq2usi5JZ+l9TDgdex9P
         5XaA==
X-Forwarded-Encrypted: i=1; AJvYcCU9hwUn1HIHFjrDTSfGq7Ux3R+TgMpM53wp/wrtIUaxAq3d8L2gQ3KcYuSGVSt43U477K9v16n/xHM2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6ft70lXr/I2F2N1RXq93MNA8zeFftnX+VG71Azcm9mb/y2njr
	fBiSpf8SvLl5ggsiaFgBy0MMPvQofQ97xDswe51nv/XcSQyEh1p07TpIxCDUWg==
X-Google-Smtp-Source: AGHT+IHedUO15STr+MI+20JywnkGwOWN1412qS2q6DZSwhZSeZ7SKRwPtcyUrKy5SFYgpsHfqp5wRg==
X-Received: by 2002:a05:6a20:cd0e:b0:1c0:eba5:e192 with SMTP id adf61e73a8af0-1cf5e0f52bcmr4279897637.27.1726039716399;
        Wed, 11 Sep 2024 00:28:36 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8398:fe34:eba2:f301])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e7esm2399415b3a.80.2024.09.11.00.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 00:28:36 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v7 05/10] i2c: core: Remove extra space in Makefile
Date: Wed, 11 Sep 2024 15:27:43 +0800
Message-ID: <20240911072751.365361-6-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911072751.365361-1-wenst@chromium.org>
References: <20240911072751.365361-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some lines in the Makefile have a space before tabs. Remove those.

Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Closes: https://lore.kernel.org/all/ZsdE0PxKnGRjzChl@smile.fi.intel.com/
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
Changes since v6:
- Collected Andy's Reviewed-by
Changes since v5:
- new patch
---
 drivers/i2c/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 3f71ce4711e3..f12d6b10a85e 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -5,10 +5,10 @@
 
 obj-$(CONFIG_I2C_BOARDINFO)	+= i2c-boardinfo.o
 obj-$(CONFIG_I2C)		+= i2c-core.o
-i2c-core-objs 			:= i2c-core-base.o i2c-core-smbus.o
+i2c-core-objs			:= i2c-core-base.o i2c-core-smbus.o
 i2c-core-$(CONFIG_ACPI)		+= i2c-core-acpi.o
-i2c-core-$(CONFIG_I2C_SLAVE) 	+= i2c-core-slave.o
-i2c-core-$(CONFIG_OF) 		+= i2c-core-of.o
+i2c-core-$(CONFIG_I2C_SLAVE)	+= i2c-core-slave.o
+i2c-core-$(CONFIG_OF)		+= i2c-core-of.o
 
 obj-$(CONFIG_I2C_SMBUS)		+= i2c-smbus.o
 obj-$(CONFIG_I2C_CHARDEV)	+= i2c-dev.o
-- 
2.46.0.598.g6f2099f65c-goog


