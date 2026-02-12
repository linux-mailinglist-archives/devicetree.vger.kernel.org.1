Return-Path: <devicetree+bounces-265102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UET4Mf/ojWkm8gAAu9opvQ
	(envelope-from <devicetree+bounces-265102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 354A612E946
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 65A4130798B5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123BF35C1B7;
	Thu, 12 Feb 2026 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ij2FT/i6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEACC35D5E9
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770907560; cv=none; b=WtBaOyBTYfNC9apd0V+iN0FXiL7ITONtdsCdAN9zacOJ+/8ESnqoL+gFDZfXo3Nn2+VBy0trHKnhDbn+eAtf6CL2Y7Fp4w+rsa3vAx0tP8hA3FQj7SCoyOjw4Xu+1kTuJt7LUJPPuacGCKEpeplaRHOizLTQvzDx5bwdW20OfXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770907560; c=relaxed/simple;
	bh=fy4LXU/WUrRSUNC3KYSIjdzX5OzOC+ZS//OJBVtQK7U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MTV4HvyyIp4PlV0R4WqwRnW3Vvo5kahId2y4r6O77XFRWpLrlYaazV8hP/HfKfinqOtje6nO6wxlp76DeV+MgHUsUjxF7x866kVHZ5mFoCvNrJBWZpUatJxUTuw/yd/QKQYIlrFsPi980YHaBU6D86NG3zT8u4GhUF6WdV0TuEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ij2FT/i6; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-649b5f5570fso2947372d50.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770907558; x=1771512358; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+JG1I3xYlNRfZ4lCELzjfItlxHeuT4mtPnRcvecqAwg=;
        b=ij2FT/i6ctE7yOV/dNstWG7kJntnWslehKJtkBctgjhWLobYRfIxA0yohUJWFDJNv2
         N0GSMGXtNU4NAEnfBe1LHfoNR19e0DR73IkHjH7mspRoQ2ryX5iyUB8Eh0hSA3PvFTuX
         lSMZbHBXmEK/hLeSD6IjN+7cqWisp9HshVL6P/5t+Yl7i80nFcl9zs1JR7r5J5iVoEoG
         vKHy8kpo01NF4HmyS3vCtxIu8x70tLyd/iVzzlT6xc2IGBoNYJ91bALAYMsa40e2hU4v
         QqoOQwGqMcxUHwNWh1h8irfsysXQLfZm5tAy9a4rzltPyliS2NnqbVF1HojXeUd5qY8X
         oGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770907558; x=1771512358;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+JG1I3xYlNRfZ4lCELzjfItlxHeuT4mtPnRcvecqAwg=;
        b=gnYRuw4MyG3AcNNnrl+/YitKo921l1ivauvJ39UNL9oJXFiCD/64MlknjsKOnlCTtk
         fN8kVvG6i7zy5bPx39NDvKJ4Tf1nW0ZM1hvoSIV9NFAeOqRJGwYkrh5fSUXtDQ623Kma
         vyW+ttmKMIS/umKl/wV9WTo1b0qh3SahaTBLa+TkMPyMPaVrGQ5x2lVPTtoD9L46EUAy
         Ra14DpEK/ZMXz8lAv3+L/HIIKnK/x586R+sCxrBVeGfnxgWbLQ22LoTM9JJFjuXj9P2h
         Ij0E6FzF4XQ3nfWCedK+ZrnfqJvfGZbFXANnez1sOzHHknyOngi1N8w7BMJG3XdYLKbM
         oclA==
X-Forwarded-Encrypted: i=1; AJvYcCXzZcXrtfYTl2RarRZoeA9JurAJRpAzLcNtc/Q6IaQo3zHLMvSjIaa6s2G0DgHs2VSNKqf8PHAgIYrP@vger.kernel.org
X-Gm-Message-State: AOJu0YxOQ/K6avZQp7QieQgERmTkWEUucrBKGIeDjAuS7eyL8HcmCnFa
	bnyJNI9i+M9AgRJDOLtxOt2YX8mzjrROiw0J3Q0GjwAdc0+3f91WcMn9
X-Gm-Gg: AZuq6aJiXzbVfF73p/7TnQOGdFVgG6c95O4kB2pIGlwlJZlvKnvnsCT9/06wXVOPwI3
	RRCbeFOfdgmaNdq06ZC7j081Filud9+ZJvnI8ziDhaJwGJMKOvNvhOD5G6Lk0xme8WVVGKqk2/C
	zaR/QmkJtfAoH2Ia6yzjG1uQ9KFQ+Gm3bM1EqPHwgEJbbzXmlTFpZT22OrumUPlkqzlqd3Qzl9V
	rAjQCjMUuRYPlfAp7UproTnyMAaq9iG6nCTAzUzQgL8BcgroUemt7+62s5L/5qr6BJhdXa0wh/l
	idZWCeEH5hcYoRXqZp8QSA5QGXcRe3N8ks0rEa2UWNHSIJxNkhO7xxdS3sFKTDx5iurwzdTd9k3
	ZoxfM5mXnnfQvRq8freOLR2oxPeAPD68LL1qHgtTHmmuu06kvq2YUrAHuCLs+6NSady52AD7SVB
	NlxSae4PKQqS8zhjMB7w4eupOsKA==
X-Received: by 2002:a05:690e:144f:b0:64a:d716:c8e8 with SMTP id 956f58d0204a3-64bdf2f7ce1mr2097988d50.13.1770907557758;
        Thu, 12 Feb 2026 06:45:57 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc83c201sm4897318d50.3.2026.02.12.06.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 06:45:57 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 12 Feb 2026 16:42:48 +0200
Subject: [PATCH v4 2/2] iio: light: vcnl4000: add support for Capella
 CM36686 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-cm36686-v4-2-8f587d4a72bf@gmail.com>
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
In-Reply-To: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-265102-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 354A612E946
X-Rspamd-Action: no action

Add support for Capella's CM36686 and CM36672P sensors. Capella
CM36686 is an ambient light and proximity sensor that is fully
compatible with VCNL4040 and can be used as is. For CM36672P, which is
a proximity-only sensor, also remove the IIO_LIGHT channel.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index a36c23813679..1f8f4e4586f4 100644
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
@@ -2033,6 +2065,14 @@ static int vcnl4000_probe(struct i2c_client *client)
 }
 
 static const struct of_device_id vcnl_4000_of_match[] = {
+	{
+		.compatible = "capella,cm36672p",
+		.data = (void *)CM36672P,
+	},
+	{
+		.compatible = "capella,cm36686",
+		.data = (void *)VCNL4040,
+	},
 	{
 		.compatible = "vishay,vcnl4000",
 		.data = (void *)VCNL4000,

-- 
2.53.0


