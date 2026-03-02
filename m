Return-Path: <devicetree+bounces-270031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFjKIciSpWnXEAYAu9opvQ
	(envelope-from <devicetree+bounces-270031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC1C1D9EDE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0576730DCEAF
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E014014BC;
	Mon,  2 Mar 2026 13:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hff56t+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B03F3FB047
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458346; cv=none; b=tA43pWSPEx+Jj0tniHl9KXUtjt+EF982ZKm214IufdfysnwYU7t/JFn6d56/vPoDxOIhy84l/JXIVDdFqh9OdjngOw9vsC4NCLO5YB0u7EoM837M3WVOxZJFTDPPAWXBlI1mTPBzzXbW+ShdRFz/Dj/mSelpY6kcPNMkZXswwyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458346; c=relaxed/simple;
	bh=LPFo+cbHAqVk13TeD20IZOD6+0vm00q2KSHAwRPC2xY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qj9qFXJn+0s46IeJLnXHdEwIeUnMfQ0c5S7UULSGM9HeWWC+l1AldxPqUpDiB6lrb73jaguNd3pEXZNSsFVI7GJ688yKktwevoq8+FX7EVMh0lyGmIjPH6HFZ49RevWs/8Wj4FjDk2nlw1A+zgKBdrkAuy8cAShgnCuQD+Q+Yro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hff56t+b; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-65c0891f4e9so7777712a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458343; x=1773063143; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+eENY2ZIGyWtFsoRnN8y2/UmVBJToSMdJv5r4cjednc=;
        b=Hff56t+biGVZwEXE9FoTzuSQMTIoAWi6V+v6RIBFK9U1PUYysFEM2gZb7p7qTfrWm6
         MIwMsxwpNSkOIMcAlkVV3tH5dDpJC1hMSqD0aTo5USJpFxRoYZFJbKpyjhOdVMFYRG4f
         0XxKTrNc+KzqscKUBcpnkWU0r83otpyfuyA7SmtWEgeLcfgtskXV/s1ByUoQwzWIFjdI
         rmVmyLRdlyj69lm2wZv9L6+0GZmBvn2i9mVutpRKGpW0a3JEwFlTH8bLLGxnxAIXmrgJ
         ZRe4WdqyrRb/2WgfysMhMFydCyqt3a36y64Q5o2KlnkagZfS2ORWQ5p/ANhabx/wfgUx
         U5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458343; x=1773063143;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+eENY2ZIGyWtFsoRnN8y2/UmVBJToSMdJv5r4cjednc=;
        b=lwGK9TqS+Rviz0XfXHyREeyr95w84kWC9VepesE9s+hAmZySo/8nYv7Nv+yOEz4uzd
         BUgYEVD8KMc6yy3HcYm0nIGuZeI51h8ygegXErlrrmiMF8b957v1ZdV5R7r5drHKnD0J
         pLMtoRJXXOEHIFORViadBnJFXy7d1QC0L/ERmfwa8+OOZpEgaYgAB1sEJtx3Zg8zWV8O
         TrE9cb05dVMxbZe+/EesaEtUN90Zt7PBe3cEll4wfBi95YS/+oMkLerjs9izJmRVRp/p
         m1Dn+Adz9lF/f5xuUYkMszO2II5iK3DYKj4f7MSPk3K4rsA7SqBzjWBTwJrtRU1KViFS
         GA7A==
X-Forwarded-Encrypted: i=1; AJvYcCWIg4+7w/O9W9KMMIVE6QWeEyJswL7QiWK+7jT5CYlptE2veSUoE9cwC8K1JgfSMkyvmnoOghV+BEAY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7dgJTYfVE4B3PQJvZrTrwrWjXiYqEaUjpN86alLDqopytoN/u
	NEzmP6IwF6xud2+wxQENLf/P3ApF3k7Um1BgK09OOefP+BRp187lNfWmVdGYhyq0mtQ=
X-Gm-Gg: ATEYQzw65kf9gQOGoFB2rLyB70/Xrem5H91kyZiMH1uVolpRImww8+yMkclbYUO8c37
	m8qTk5NQ5SaoyFf396HNCc09ypI83FgHN4Obps+WpIg1//IiDqGLfWlqg1cOfUUaJTlcUTKLiFX
	jwOSw8zrpv7Vms8+cfAs1d8tyywIWPRlebnhQtwuE0RLy/bYCb7q5fsZiaM6wfEdEaYbksgncQ5
	GUC0igug20SefPA0sF0C+4EPUnc6SmtxTDXyG/U7pzihV5yd7rkVaw+i1KzJAS2AGIQJ7+giwD1
	lCZSm/4p+ei/v2m40iEicxoloEQ3dhhCg05Wo+Wxp5sdg0uXFc7i2fwKFYX2q0t5tan6ABSfyb/
	Ocg2gGEK34oiJU/bP3SWDfSbHTguxWM91B4RWkYcpJpGfojBHoe5KavRGhvvQBHBZnr++RBqI5f
	oi61w7sx31En+K1kq/kUUHdXQ8GNjHui86MvFYlhOSG1Yw7tDoSwCsOz+GhHrT8LPs7rP7eAfXX
	eOT64uG8CeqhLM=
X-Received: by 2002:a05:6402:2755:b0:65f:830b:1034 with SMTP id 4fb4d7f45d1cf-65fdd6bd91bmr8277137a12.6.1772458342742;
        Mon, 02 Mar 2026 05:32:22 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:22 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:10 +0000
Subject: [PATCH v3 11/11] power: supply: max17042: report time to full
 (max17055 & max77759)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-11-3c5f01dbda23@linaro.org>
References: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
In-Reply-To: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ramakrishna Pallala <ramakrishna.pallala@intel.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270031-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2AC1C1D9EDE
X-Rspamd-Action: no action

Report the remaining time to full as calculated by the firmware for
devices that implement this.
Similar to time to empty, the reported value is only meaningful when
charging, i.e. if it is != U16_MAX.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
- limit to max17055 & max77759, the datasheet for max17047 and max17050
  describes the register as 'reserved'. I was mislead by the comment
  and enum ordering in max17042_battery.h
- report as POWER_SUPPLY_PROP_TIME_TO_FULL_NOW (not _AVG). The max17055
  datasheet is a bit clearer than the max77759 one on that.
---
 drivers/power/supply/max17042_battery.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index bafbf8706055..167fb3fb3732 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -89,6 +89,7 @@ static enum power_supply_property max17042_battery_props[] = {
 	POWER_SUPPLY_PROP_HEALTH,
 	POWER_SUPPLY_PROP_SCOPE,
 	POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW,
+	POWER_SUPPLY_PROP_TIME_TO_FULL_NOW,
 	// these two have to be at the end on the list
 	POWER_SUPPLY_PROP_CURRENT_NOW,
 	POWER_SUPPLY_PROP_CURRENT_AVG,
@@ -443,6 +444,21 @@ static int max17042_get_property(struct power_supply *psy,
 		if (data == U16_MAX)
 			return -ENODATA;
 
+		val->intval = data * 5625 / 1000;
+		break;
+	case POWER_SUPPLY_PROP_TIME_TO_FULL_NOW:
+		if (chip->chip_type != MAXIM_DEVICE_TYPE_MAX17055 &&
+		    chip->chip_type != MAXIM_DEVICE_TYPE_MAX77759)
+			return -EINVAL;
+
+		ret = regmap_read(map, MAX17055_TTF, &data);
+		if (ret < 0)
+			return ret;
+
+		/* when discharging, the value is not meaningful */
+		if (data == U16_MAX)
+			return -ENODATA;
+
 		val->intval = data * 5625 / 1000;
 		break;
 	default:

-- 
2.53.0.473.g4a7958ca14-goog


