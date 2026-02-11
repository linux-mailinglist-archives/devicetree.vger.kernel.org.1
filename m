Return-Path: <devicetree+bounces-264807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAEeFWbPjGnbtQAAu9opvQ
	(envelope-from <devicetree+bounces-264807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A10126F1D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 464243006921
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 18:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B214F3542C6;
	Wed, 11 Feb 2026 18:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z0uuZgsi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537DB352F9D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770835805; cv=none; b=BCUNEEMhZ5xtTTK4KKGhakXU2NW/B5t7PDxbzsYONOrQ8Czhr1ONbPL0YfbjS/DyLXY0Vg9OB+tUfG4RvXygcXSnViJsAn5HdNbp8Bjj/bolIVxsyyCimIFFwiVn4+zvp1E/dXdR23A7NWz8FqeX9xQaPfll6LAgzOT2iKL6Npg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770835805; c=relaxed/simple;
	bh=OCqMqTV3Fk0GHlGjVJ0UFzNI1DHV1XFUgzJgSRR9AZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J8mjqcmVZNnxR1CFS3usZ6HgH0eH/Xa91mT1AS2JSVtCrJ+5Bun2Tcqa4wAgjooPqKgSPNC+BdPA3z3NFFvW2YdAEkE9JUqsfU7OycsFRoCPPVAeMQqDWkctWOrjXkSF0JEui4Qmp3uKHyLnuMeH+2lwp7WZrozq5Nsb3TLtn4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z0uuZgsi; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4807068eacbso21315105e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770835803; x=1771440603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+87770G0UGJrf+jBGNAZwy7BjuGZ53X0m5gpUF71N68=;
        b=Z0uuZgsiO0lWjTfML7tP2pVKbRNZAS5fx+tesPWj7cYnm9JP0eOXq52j7IrWibv65w
         c7JzebPje1YUmgV0c7zbiLt+TDP7uUHwwUI4tEtS2csG8SEGsmE6rdq7cRwOtIo+cRP0
         s7nsBkvt5hroFyVUaHDqRTJryFzPho9X7G8tN5B/OkhUIRO55MsYESJ9ilh1VPegOQJ1
         UHfJV1swyoo+bIiCniccCYSJO5+8eB4zQ8DPWUzDID3KQki5F6c7I/vumE5VtjanW+68
         UQ3u9tcLEnFoCmnT6RflUWAze86xVe4v7565GFOloHk+sDsVt613PaTA61tfjSo+lQGo
         AFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770835803; x=1771440603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+87770G0UGJrf+jBGNAZwy7BjuGZ53X0m5gpUF71N68=;
        b=ovyvoaKodavFD5aIku3VUjW54XVGV3kZm+7jdfaMiH4sk53KodnvXbplrJQa6iAbsE
         y5/mb+eK+RWQloUJtobErgvmNb0NZNBIDABuXxvPvGWm+A0K/ffNt3Gl7zm2k/d4Dmpp
         ZUITL1Wk9wWVXfyiNGhbYtPcArPL+1MEMqxfZpxp6BomPJnz9MAIzv76K9qu/68hWuzw
         Mbu5+PgC0RRC0ceE6PN9TSYeIGhK8fk5h2+jsoBOeb/aL4tGFfTqTaPaJg4U3HyPfS79
         8dl7S+98eaDDPhNfqkZPrMMf2zGkRQ5eN7uyt4Gu5iN4nn2CJNSxoSI4qN5fXoSfh4ma
         aocw==
X-Forwarded-Encrypted: i=1; AJvYcCV87jxzdW0sLLjULsgrovtmIEafLd0gW+2wVUBiP2jx+O8RAp7PxKRXlqgly3acF7sowIDSnS7NliCI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0m7uOSr2qNnQZs2X5fH0iVwj/Tz1qE8O+T6UxCm5pwWKkgoD6
	eWWlvGvJzjtPttYOvPpd2fhJZci8DKEV2G4XQIzjtXwdb5WjnaHemiyk
X-Gm-Gg: AZuq6aK2yL62R/NnMAU5iT9HbROWRxU/tw/M6V+4VFNnFp8CLVmlZBwf45DaoUxmHIL
	rmP2qexjaxbxtwNKnAAjwscDlN3Z6B7B2+X04etaG0jX+KhwgpBlingoQEY9xF6aw0qim5hGtDV
	t1VIXUh38QaOMHI/F+slBHF3iP+nn15g7RWA6HmtWKZESuHwcS25poT7ROThTHeOcYbsOyKNcnY
	7hdk2YZ5cHufuyuCNwkjq/zClNTK5zuQRFHwc7jD8fNzehuNP3tkWLetGAaMCgDrKQaPoc4oB1F
	fPWy0afomE+AB5x8E1jvHawyAIAu5yWjqSErtgsx0RGJ028rb7KMUNWdt9VfqOL5JLlXoUKGiDe
	yLKH2ZE22PqIH/6d107o8hmgwuzrrvmKRGzJWkxP8myhvEF3qrfiZhB+E2TwQ8+74X7mecPbZ4P
	FCOD6MiTgdNaV0
X-Received: by 2002:a05:600c:4f86:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-4836570e562mr1994595e9.19.1770835802620;
        Wed, 11 Feb 2026 10:50:02 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm93175855e9.6.2026.02.11.10.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 10:50:02 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 2/2] rtc: max77686: convert to i2c_new_ancillary_device
Date: Wed, 11 Feb 2026 20:49:41 +0200
Message-ID: <20260211184941.6756-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260211184941.6756-1-clamor95@gmail.com>
References: <20260211184941.6756-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264807-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 47A10126F1D
X-Rspamd-Action: no action

Convert RTC I2C device creation from devm_i2c_new_dummy_device() to
i2c_new_ancillary_device() to enable the use of a device tree-specified
RTC address instead of a hardcoded value. If the device tree does not
provide an address, use hardcoded values as a fallback.

This addresses an issue with the MAX77663 PMIC, which can have the RTC at
different I2C positions (either 0x48, like the MAX77714, or 0x68, like
the MAX77620). The MAX77620 value is used as the default. The I2C position
of the MAX77663 is factory-set and cannot be detected from the chip
itself.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/rtc/rtc-max77686.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-max77686.c b/drivers/rtc/rtc-max77686.c
index 69ea3ce75b5a..3cdfd78a07cc 100644
--- a/drivers/rtc/rtc-max77686.c
+++ b/drivers/rtc/rtc-max77686.c
@@ -686,6 +686,11 @@ static int max77686_rtc_init_reg(struct max77686_rtc_info *info)
 	return ret;
 }
 
+static void max77686_rtc_release_dev(void *client)
+{
+	i2c_unregister_device(client);
+}
+
 static int max77686_init_rtc_regmap(struct max77686_rtc_info *info)
 {
 	struct device *parent = info->dev->parent;
@@ -713,12 +718,17 @@ static int max77686_init_rtc_regmap(struct max77686_rtc_info *info)
 		goto add_rtc_irq;
 	}
 
-	client = devm_i2c_new_dummy_device(info->dev, parent_i2c->adapter,
-					   info->drv_data->rtc_i2c_addr);
+	client = i2c_new_ancillary_device(parent_i2c, "rtc",
+					  info->drv_data->rtc_i2c_addr);
 	if (IS_ERR(client))
 		return dev_err_probe(info->dev, PTR_ERR(client),
 				     "Failed to allocate I2C device for RTC\n");
 
+	ret = devm_add_action_or_reset(info->dev, max77686_rtc_release_dev,
+				       client);
+	if (ret)
+		return ret;
+
 	info->rtc_regmap = devm_regmap_init_i2c(client,
 						info->drv_data->regmap_config);
 	if (IS_ERR(info->rtc_regmap))
-- 
2.51.0


