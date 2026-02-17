Return-Path: <devicetree+bounces-266108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOVHHYZblGmrDAIAu9opvQ
	(envelope-from <devicetree+bounces-266108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3793B14BD1B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCE1630101E5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45C03385A2;
	Tue, 17 Feb 2026 12:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YBjhCn7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DAA339840
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771330421; cv=none; b=YcAZ+gFoaMrJacA6WS4zchyM+h27WRLvxsEB19Ggi7wdNKNZvxRgCeCQQGI9KaCP+iXvoZgL/wVedXu1ZxPM9l707Lc8Sm1Z9owXtAarNPk5t3+4F6o/CPMXX1RObQa24e/3Pd6EpQfU2gwRul1fQnF5MDsx2xf2utmdfIeWXRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771330421; c=relaxed/simple;
	bh=YJwAdc9YN+Ork+lkKKTLcj/O0ofn3u7uG2j/EDfwnM4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MuDJrM4osyE+kqXQArRp6ev7eU+1Eb5+23WOMbHU7y+PbSPb9Mief2pmtV+mt/hbBK50HUPQ2qGOFtY4xagpYuTUQcIzDBANA1mvFoQXjDuoTh5wH/jYBtVqJoDanT6zlsSqwnLrjTg/zkXWR6UKPCEQdi1VibosTup4Xp+gW5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YBjhCn7m; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7950881727cso25253047b3.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771330419; x=1771935219; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JnctnXD+vW2hwHaBIXjEArJKKlKzrQnCanQjG6cUX0E=;
        b=YBjhCn7mcDBt3F835kH3Nt9ts9UiHcI90dYZIGPVhgqQ8hC8LbV1vxdJi7IfR0ZZE9
         5i9bNkGyJFvTstxhHH7MZywNe4+hpEtLIoOOlmKwZPicyIRqFhtCULCJ5I3KfNSrA/+t
         dUavoZgOZFi0tUb2Dx+9386t/XhKJ8IiIKlXAGc1WAuU/Pm3B/A9hG2Plfh/OH4ot9un
         9r8FB+jislQH918hiVXReIh+T730BI0+FHqJnqjZoI7rNJtsEc2EM2MiSKCN5iPT6+Fl
         +R2w2p0GXVYFSlLgK4BM3+Aqnw08Pz1dNO87h7HhYJRF10CGipam7VpehyLVVHYDMY3A
         nt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771330419; x=1771935219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JnctnXD+vW2hwHaBIXjEArJKKlKzrQnCanQjG6cUX0E=;
        b=i+OS3/pV7ep62ZPhW3XxIWBxZq4fOjlFVK2eM9X5hl0jKo6BptxcOHNPAGRbY67llj
         8JkAy1KJj9eucb9PehTLCYw3gvD9GGr7IShac0LtdnxUBiE2cmwP3vuGSi3wsjZuHzaR
         p1+mm7o80SWA3M1BFJ1DoJmez5KIKSM6Sr2tM3RUiRzXMgdoXReTBC/wavM+Y3GBa4r4
         ouPR7cHts4GfzkSGXB0BU2wbomcjaqm2KuZTXCrlgek8VwA3lKYzn9qRSJRF5M6iaqpH
         gzD1afXwN5xg8SELO+G9ptw9lz7qZUa8B1ZfB2HH24y28GqjrpvIZc8JbzHuk+kq75ss
         x5rg==
X-Forwarded-Encrypted: i=1; AJvYcCUFAGV/Id9SxgmT8UXoZZK6OP6qtAqj+7Dry5G0zEbvfHhmZ3NLEe96l9S42ioQqhexkUuIkzWV4AcL@vger.kernel.org
X-Gm-Message-State: AOJu0YzXCSDqOoGmUDcTAvP1HI9ZcVx7qvNfJcOEMG0gY5Q8SKNJq+QP
	TTTNvCeVe8n4JIdJfkkrLGI2wBIH0O0BgiNKA8FHB4Bnpp1mpAYpDPhW
X-Gm-Gg: AZuq6aJnGGHdxpJhD5ZScCG7DcFFIbWvCTp5Ul6EwkllNte7p98108Wqyjm9NINmqGI
	wG24KysLchBQJZO9Gv/Qktw5PDViluDwA47m0F0nEs1T4chBx8o5yL0f8izRqOUbvzsvNnfxwlL
	SbLBxS+u6Nech/TJT/NEEe/5Vr6ieFqRvFtbkGbP4+Rh3bbXRvwcdCsuE+vkIPprzw5ZygviKCL
	lHBTuqolCiNPsE/tG+lPOgRIdL70cquMcMex0riMHiTw76K8GznssGjozDa0e9b9Lo+rec8cUZb
	PNtSnaMWVZgLfpUyfo8jIZ5FTkODiXoR0TqTAD2iC1UDEUqxy6yMXj7FjKdGDMUrlGMO9JbY+M9
	UuyGEkIUl0Y5WExKUi8/jbNhv485WBbJuNrZRPLmHLKFv1RjAGM7QoxJQbNdPQ10Gs87kiK3Nly
	KQWWh9Wy2olxxRjrrwdzdTSjhxmA==
X-Received: by 2002:a05:690c:318:b0:797:ef49:a48c with SMTP id 00721157ae682-797ef49a9bdmr5077777b3.36.1771330419207;
        Tue, 17 Feb 2026 04:13:39 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c16eb07sm115610727b3.7.2026.02.17.04.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:13:38 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Tue, 17 Feb 2026 14:13:16 +0200
Subject: [PATCH v5 2/2] iio: light: vcnl4000: add support for Capella
 CM36686 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-cm36686-v5-2-63c2de9709d8@gmail.com>
References: <20260217-cm36686-v5-0-63c2de9709d8@gmail.com>
In-Reply-To: <20260217-cm36686-v5-0-63c2de9709d8@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266108-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,intel.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 3793B14BD1B
X-Rspamd-Action: no action

Add support for Capella's CM36686 and CM36672P sensors. Capella
CM36686 is an ambient light and proximity sensor that is fully
compatible with VCNL4040 and can be used as is.
CM36672P is partially compatible with VCNL4040 - it uses the same
register fields for proximity sensing, but the ambient light registers
are reserved. For CM36672P, we reuse vcnl4040_channels, but remove the
IIO_LIGHT channel and ambient light integration time.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index a36c23813679..5e03c3d8874b 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -185,6 +185,7 @@ static const int vcnl4040_ps_oversampling_ratio[] = {1, 2, 4, 8};
 #define VCNL4000_SLEEP_DELAY_MS	2000 /* before we enter pm_runtime_suspend */
 
 enum vcnl4000_device_ids {
+	CM36672P,
 	VCNL4000,
 	VCNL4010,
 	VCNL4040,
@@ -235,6 +236,8 @@ struct vcnl4000_chip_spec {
 };
 
 static const struct i2c_device_id vcnl4000_id[] = {
+	{ "cm36672p", CM36672P },
+	{ "cm36686", VCNL4040 },
 	{ "vcnl4000", VCNL4000 },
 	{ "vcnl4010", VCNL4010 },
 	{ "vcnl4020", VCNL4010 },
@@ -1842,6 +1845,22 @@ static const struct iio_chan_spec vcnl4040_channels[] = {
 	}
 };
 
+static const struct iio_chan_spec cm36672p_channels[] = {
+	{
+		.type = IIO_PROXIMITY,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+			BIT(IIO_CHAN_INFO_INT_TIME) |
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_CALIBBIAS),
+		.info_mask_separate_available = BIT(IIO_CHAN_INFO_INT_TIME) |
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_CALIBBIAS),
+		.ext_info = vcnl4000_ext_info,
+		.event_spec = vcnl4040_event_spec,
+		.num_event_specs = ARRAY_SIZE(vcnl4040_event_spec),
+	},
+};
+
 static const struct iio_info vcnl4000_info = {
 	.read_raw = vcnl4000_read_raw,
 };
@@ -1867,6 +1886,19 @@ static const struct iio_info vcnl4040_info = {
 };
 
 static const struct vcnl4000_chip_spec vcnl4000_chip_spec_cfg[] = {
+	[CM36672P] = {
+		.prod = "CM36672P",
+		.init = vcnl4200_init,
+		.measure_proximity = vcnl4200_measure_proximity,
+		.set_power_state = vcnl4200_set_power_state,
+		.channels = cm36672p_channels,
+		.num_channels = ARRAY_SIZE(cm36672p_channels),
+		.info = &vcnl4040_info,
+		.irq_thread = vcnl4040_irq_thread,
+		.int_reg = VCNL4040_INT_FLAGS,
+		.ps_it_times = &vcnl4040_ps_it_times,
+		.num_ps_it_times = ARRAY_SIZE(vcnl4040_ps_it_times),
+	},
 	[VCNL4000] = {
 		.prod = "VCNL4000",
 		.init = vcnl4000_init,
@@ -2033,6 +2065,15 @@ static int vcnl4000_probe(struct i2c_client *client)
 }
 
 static const struct of_device_id vcnl_4000_of_match[] = {
+	{
+		.compatible = "capella,cm36672p",
+		.data = (void *)CM36672P,
+	},
+	/* Capella CM36686 is fully compatible with Vishay VCNL4040 */
+	{
+		.compatible = "capella,cm36686",
+		.data = (void *)VCNL4040,
+	},
 	{
 		.compatible = "vishay,vcnl4000",
 		.data = (void *)VCNL4000,

-- 
2.53.0


