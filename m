Return-Path: <devicetree+bounces-266015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LXeEOMilGmqAAIAu9opvQ
	(envelope-from <devicetree+bounces-266015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:12:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D94149BEB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:12:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F0F7A302085C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46132DEA86;
	Tue, 17 Feb 2026 08:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jUJwPgRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208E32D8793
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315933; cv=none; b=ICHqJHrrbgY+5Tx8afgo3IGx747Me1hYkt5QaxuYkMhC6yZ337DbXGN9OW6oCWH2LwcV2EMDvqQKHn8nrLVZh3KijGP/Bopp4rOSGUKHbhwBDviUuDzvroyCVivfEp1U6mYa0YrcjJsMt/CNWdBZdi4yBZ1wPYFXmGdUvjY0rJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315933; c=relaxed/simple;
	bh=nUEhTFG/7UBE/bp1GdYkZho+b3xUavo+boubP6XYsBw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hRpJf/YiIdzTvtk9dBeqriJnAOmkzflzdAQ8iDu3YOWvBnoH0Vy3GSRJKHBN/ma8wO4HOq8p41LTKkougiEPDz0TFUAusGlkXzGC++fW8KkvdGMnqhXgv87t93pgHaEv22JQiw1tnFpctwErqnjHktJTcodT5f3gCzbj6A6xO4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jUJwPgRG; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso30990175e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771315929; x=1771920729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gb6W1GryaZfBbGOxIz34ZV52pWSStvnj73mIghaUYWU=;
        b=jUJwPgRGOdcXz9utJSkIrokB+h+hNDJpOIhmYbEEGxq50sWZ2dDPoZ/Vi2NAvUNkdd
         plJMKeR8pBbdg9DwPtW93YaO8l0qXFlZy6MlfrPXnd1fMi6GduR6nzCe27wuJMUwHhdb
         EFChAFAhmMTBHSe6u36h1Pe+amsCEZxcQBGcqkhx4CtzDLjtwNaCvpt8aoSXOR/g3iCy
         ScCiCTsMlq3q5cxwbaUqZnlHbmitj6CB9t+BJO1CGTYw8faG7Behj9LrvRqzZT2UmwsZ
         Ap9jhvu2r8zF94ft42+jOpdN+6Qi02F7WBUUV8/bnKukaKfzNrodyj1dcAi/fwyf/1JS
         3cXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315929; x=1771920729;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gb6W1GryaZfBbGOxIz34ZV52pWSStvnj73mIghaUYWU=;
        b=dF9pZkgG/ZDnslqM/MzF1A0TU1QVa3KwZNvXR86ae9ka0gKziHWh/Dzhy1QryxJUmf
         y0+UPZTM9ZZl4oX+0fuXiNzj45KC8ylGrtpnalhm/kbYtspveO+GQOQpSNh+0FjL7zno
         pAHSojr4la2FQsLV/4vf6BMipJNZJk/Oc8cImheKMjw+5INsvKhlb2Z1TAfYGBxeCDDT
         SX7IQy/TUkZPBeV0cX8uaE+gHGle+gO9zattw9ohwOD6xDwSJps+B789DaQcBy7dX2w1
         YkCVUObcy3jQHdtSCOvZs9CwNuzmN8ED0X/lq83WdCQJXRjVjQGYLLh6l1HDrrq2Q2ww
         tMPw==
X-Forwarded-Encrypted: i=1; AJvYcCVKVCj61CmgYooIQb9NuMeNWhpStz1xDndoezscmRP4V8oV6dHqt6y7uPl3hDBnuLL4DvbWtaF7or8o@vger.kernel.org
X-Gm-Message-State: AOJu0YzWb/x34SAs1Dcwb5sH8+JrE6Y4NZyxlT4kuGQhfe/Le+xapMdt
	ZUq3uORgElCRbIrf5a4vD0DWegDFHCRH9VQCj0FzPZLQShrLK+pA2EYXK8eWurIC0LM=
X-Gm-Gg: AZuq6aL61KM/kC74jP72zFUkdtLTO0iXL9q21VcdUJp5UVEj3HI42+eXF2t2bVcFcfH
	Ljx0DGqxALI5VmRUC3ZMhBn0Zbu6IVk+G32HHS06z8VXIesI4j6A5G4miUItyUULuzAbod/8mdN
	geII6IujaQxNdR/gt1jPn6SuxQKKlFyjZRfLCkRF77VuS+4jAIYP8YRegAwk9GO3yS6BUdWAp1D
	siHr3ZS0ZjPOwJF3BpEutB/klXp3AXaE1UJu0qqx3wQKH48nDUyUE0TGGFOUhOrsZ1k3CO2Q4/r
	pzzY8MCu3H1/njQzMf5KcyAHi37G9fw4p3zhV61tEB4U/p9UGSPaQWZrnnm4JcEBZGyHNC3wf4B
	Z4r3S3hlBAjwsYQOfV8sL8AFkieVMv1eb5fSUSccpepbBcElyyu2EN2E9tA3Z8k0+cXroVx8u/0
	aAYGi+l2wvRvI5+Rj8/GaSarCI9XoFgcCw/JjOfOtokaEladEwf+GCOMjw3D/Cm14RSBgEUf3cV
	9c0DU12FQ==
X-Received: by 2002:a05:600c:3d87:b0:480:3ad0:93c0 with SMTP id 5b1f17b1804b1-48373a5d6d5mr188570635e9.23.1771315929400;
        Tue, 17 Feb 2026 00:12:09 -0800 (PST)
Received: from silence.. ([46.10.240.40])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5d156sm35757690f8f.5.2026.02.17.00.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:12:08 -0800 (PST)
From: Stoyan Bogdanov <sbogdanov@baylibre.com>
To: jbrunet@baylibre.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stoyan Bogdanov <sbogdanov@baylibre.com>
Subject: [PATCH v3 0/3]  Add TI TPS1689 pmbus eFuse
Date: Tue, 17 Feb 2026 10:12:00 +0200
Message-Id: <20260217081203.1792025-1-sbogdanov@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266015-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sbogdanov@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03D94149BEB
X-Rspamd-Action: no action

Rework TPS25990 eFuse pmbus driver to provide more unified way for
non standard direct conversions.Remove existing defines for TPS25990
conversions and replace them with enum listing all supported parameters
and structure using m, b, R. Add functions to covert raw to real value
and real value back to raw. Add data structure to hold pmbus_driver_info
and local_direct_values for direct conversion.

Add support TPS1689 support to TPS25990 driver, since both
chips are sharing a lot of similar internal functions with exception of
work range like Voltage and Current.

Change log v2 -> v3:
- Fix error detected from kernel test bot regarding division

Tests:
- Test builds for x86_64, arm64, i386
- Retest driver on arm64
- Validate driver direct conversion functions manualy

Stoyan Bogdanov (3):
  hwmon: (pmbus/tps25990): Rework TPS25990 non standatd direct
    conversion
  dt-bindings: hwmon: pmbus/tps1689: Add TPS1689
  hwmon: (pmbus/tps1689): Add TPS1689 support

 .../bindings/hwmon/pmbus/ti,tps25990.yaml     |   4 +-
 Documentation/hwmon/tps25990.rst              |  15 +-
 drivers/hwmon/pmbus/tps25990.c                | 190 +++++++++++++++---
 3 files changed, 175 insertions(+), 34 deletions(-)

-- 
2.34.1


