Return-Path: <devicetree+bounces-277754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBhVD4rnu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:09:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AFA2CAF64
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:09:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 405993207093
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD453D1CD6;
	Thu, 19 Mar 2026 11:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMkyFP2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049513D1CB4
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921564; cv=none; b=CdiqoIeufOHGwPfQQb/oGPcGXVPtztOZ2lEkSlRQSDCOTLfcA/FLyN132fBoG5x3qpNuA054cL/vXrk67RM0S5ekcVujpbllVR0YwUy7orRVIE24IGSgkCx4yz3LR3rSvR1wxOb7IO1s/9Qq17cS5vbDY1Qy1wECM2K+8h32SBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921564; c=relaxed/simple;
	bh=TzB0TDBcyModHlhscKkRyhu+DntXkSWYAGvIUGrcGVo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Brp4C3lNoOhbICnOxUQIPDytnGOC1AbQeicMGuolLRtXOGzkuR56s7LVOaGDmJTvoG6uRQrrWRTS5GwTFutmmNrI5cTnPerfMUBk+iI4rNOtWwkS4bmZcWP5Wbov6FMa7jFQ6gdEX9esQcsNkJD2AJn68mNSYwRGGXL2RQ4YpmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMkyFP2+; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b941762394aso73517766b.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921558; x=1774526358; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUcQHeprPMeRllf18ooNN99GRIW3qgL3Mo3SFM1oI1s=;
        b=DMkyFP2+RoShdqM5fkCewz3/YopJRFfIKyjB/7aWy43bEWh7HaSr/E5vUqANaoMSuX
         epwv4rj/yKxfFnO5X7ZoNgVkm/eLO5nUnAKPaZolMz/hEvbO9vzUkCqbJcf/5tiFR8xK
         lJNhKfZL3YFeyYEb0R2KAWan3neVPFB5CzaPTHyj3ltIPH0ECgf2aWlbwVlRFe/qCTJf
         /ecaUNRmxeNcWfc7BNh4H7VxZORFDn+yd9o3UEAq7aBhCQsYbvuMm2DQ3mvRS9rU5Fxm
         Ssc08XU5QG2VdaDTCJPv1Ze9w/2da9rPljuW0wFIs2r46kQF5Tjy6YY4xQ7rRaORXjel
         2vqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921558; x=1774526358;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WUcQHeprPMeRllf18ooNN99GRIW3qgL3Mo3SFM1oI1s=;
        b=gDIVRpSZI++4nN8A56uD30pBbCyWMc5T0Nz1JlEW+2SSnjVQZ237Q4FY3s7pdE5kvF
         3FICruVtqDllp219mEjaCvb1iVblk6HtRQB+7cCwenJl9y8TkMrYUr5TMWTwNmcYVouv
         BQdFZTG5VtRwkB3Gpe9gh6JFmiaFjufo0e9flXCsghI5ExwI6gRL9J8V9p3zZN0mDG7N
         y5rQOykBfPUmDcPO6fIpUCEsu8xvGhBtjAKZ0dSZvtiq4zQ58kWbrm9fDaxn48yfJtS8
         lHhCKF/fdbs3TF8mLDGDVWuT3//NNk8AvBbkj+ti9ozoKrzEzknXWgQtbPVI+z4e/xpW
         8pgw==
X-Forwarded-Encrypted: i=1; AJvYcCUR52Ebq1H4PyhdaLnAcDJYdMBpL++0ee+7Lhe5mu47EbOsDxABSfqCRZcQxaM/Oxan6JbP72WrTlLf@vger.kernel.org
X-Gm-Message-State: AOJu0YzJQP4XiRswSd6NbKU87Ndx2A0mztfQJhsGkF6zGMuZTRIhmU/0
	v6+XZxFqzb3wwGWCDEKPUQVcgchwwOFIYjoK0VuICLccBWylKvSh8vBt
X-Gm-Gg: ATEYQzzCM+rDpEO6VI3TdcR2X3s/CYGgTsiq7MoUh8H4/e9Q5mdiC53J2oLEYiiHaiC
	2dmGQFEQOYLlJKR2E9VTOiaUxLffImaztiBx9CjHjp9ZCjEjenH18FhQ5ncvGslKr//kOzI+9el
	I5zSI9GMpH0N4wgt4H2HKpbIqPAu4m35r7lOgvaqBl16GQogb7JRo1cO2NeQ71dv6j16mNHokKd
	NGstn2SEH7dxBzWeM58vktY3oMDlTmcIlLpfaYAyONHWOxWFxUkgnU2N8MJEXIKj59A7i+ebZpb
	eXEot5/A5jwD1v7uffWbQFDBB+hG1f03RwgTr/j4hNTxiaqNqML/7qqUoL/0r+OSs14CsPUtNq7
	Vz052pR0+dwXBwvKATWo689lw3HiYnwW8FRNUGdovrK3Y2YU6BhJUFVZq7tVQqWuWbMAPyj2wdB
	Swy1sWwM2B/1TE1YwV8ARUsYjqxA==
X-Received: by 2002:a17:907:806:b0:b97:a9ac:5e05 with SMTP id a640c23a62f3a-b97f4a700e4mr524920666b.35.1773921557711;
        Thu, 19 Mar 2026 04:59:17 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:17 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:46 +0200
Subject: [PATCH v5 8/8] iio: light: vcnl4000: add support for regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-8-a025d3332805@gmail.com>
References: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
In-Reply-To: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277754-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email,baylibre.com:email]
X-Rspamd-Queue-Id: 90AFA2CAF64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.

Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 0a4d82679cfe..9650dbc41f2b 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -24,6 +24,7 @@
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>
@@ -1985,6 +1986,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vio", "vled" };
 	struct device *dev = &client->dev;
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
@@ -2000,6 +2002,11 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
+	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(regulator_names),
+					     regulator_names);
+	if (ret)
+		return ret;
+
 	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
 	if (ret)
 		return ret;

-- 
2.53.0


