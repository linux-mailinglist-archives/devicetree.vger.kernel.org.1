Return-Path: <devicetree+bounces-277750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BiUOdDlu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:02:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D73742CACFB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB4B530325DB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8003CEBAC;
	Thu, 19 Mar 2026 11:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l7OQDXqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9153CF032
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921558; cv=none; b=Lqi2ZloGgPOkOn2CKDDrtOQwvqqyxChtqswyHwi8f/CFalkkFizhwufwqLKr0mCRRv8wtdI7TjGyCeV3xu4nEQg+qX4i8/Qv99tMtozAXxJ6RuF3A3svN+GiY/bgvRf6JtlwgWnZ/6has4h7ierTnpGrXyAFsJWA4A4769zL2sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921558; c=relaxed/simple;
	bh=vP7EEpgruq7jb0BDTrxCYCk5LMVt/Xx+6zryX3dg/1Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sPFVfN3kqSfywo0JKZbk3YQphsKLGWA1kShx2xQYGKnB2WOuQejYhvzIdJLAHXBI/5vZKdkZd1hqngSCABs81nMtc/vrDH6pCKHVS7evhFQF8J2AHpzEF62TQ3p5gXg2Lqbn67v6LZFBBr71WnxiawJF6bL4jpsh9qQkUf/A/Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l7OQDXqI; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b9382e59c0eso131398466b.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921552; x=1774526352; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kmQLMk8d0z4Tj8kbX0Ny9TubbIjksPecuXhm9eaS99k=;
        b=l7OQDXqIkrquyEl9F9P++NtxrMfAcBxbuN1XXy4/TavPtiQQZz/KQ6Ltr9bdn4scDm
         Y6ASrV7Zf8b2dZsYPVqXSwAIzTkrqKurpGeHR+vHxBHKDEo38DO7WVL05AHkEYP8DxVW
         cgPT3Cm2a0vG4WQ16j7HZhZdVCigCVd/H8JowXiOpwxs8xYTvG9ombgdSx+rWrlmALyY
         S7N320pFRbB7AM39GAoSTMgpSennphYZjQujPsl7AXcu+tjP84HHLLCorEg0Hj3mA3tx
         jLGm7VTuCagDBbCVdRMjme2ymHcHc2+yj6j/fAhEBEDKLgluL6/pXzvhDj7/EJ419dm+
         BQjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921552; x=1774526352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kmQLMk8d0z4Tj8kbX0Ny9TubbIjksPecuXhm9eaS99k=;
        b=RgWgunvUWznI97hInJOHp+mBJkl2HZSqVyVJ+HrxZZAYsWC+sAvLjRy1FIqUF2xmkk
         eABxUHrVCz5YxW5kzwFGo1CXPajZ9oxEK6e7yhQfX/3DIpwad1rRFPCH3lEsgxUA/jnb
         4IVxm11HUYhrDoCwdhC/uPqxgI6VJTUBxMvhqJhuQd6VsC15lNQX3JrFcuSvvVWG5kh7
         OOduY7gWCJmpAb24ioD/YPH6ptjqYo3ockxDasyu0ZxR5BgUC1TZfKxSxTJZduPl/+qD
         wa2Phum0BtEk7k9pMzsSUJoKsmabJz+w+fEnEhLEEEynbsb9n2Xdt0UuZ8uCtUqcib65
         MneA==
X-Forwarded-Encrypted: i=1; AJvYcCVz+9qtMc62CqXIAspJIOQtNGRqG/zFV+6+iH+GdI4Dp54lvnZcfHVuRtQM0JHwn93m/jGBfNP8MPkC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2MhAahJrz0n5CO6H7YDhttJH7opyV1znx1rGu3W6uL2zvxd6K
	OskKz0Koz7NoiDRK1uyb+5AGhdU5PTekQAtGLy6K6RLz5Wr38vlbw4QJ
X-Gm-Gg: ATEYQzxd9DikfoiYUCQpHnA8THfJD6DHE4ZrBaaHhF46K2yDETjNh/1ru95PezM3mBw
	iOwu+4d7QBSjH49Q8aMyyOrQaVMO/ebHrZt+giZEjmYl2+yaRIFEYvfCawGZONNCln/yAaZ58mk
	Mlc0MbecFq6VtgadHjxmxO3IVc/3Hot7wCv50svYHpFbEN2tsf+bICz5GxDA2aY9d5HKQplgIQV
	ph20PEZMjNN6x51tpWQVfKjEE0hScfsS09t9VVoAMXWkdIZuq6K1yBGSzu78SkZbPjVeF15ZRGG
	aW48aaov/CqOHS7GorDtVD8LoDdiOwfX3Y+jvQ7TQ8RhJ+kQDpv5Ad19kLduBMR+6bkxd63dBO0
	kuMBFzTtr8AhzBoA8xQSIGq163MbfuO85Iu6lAWR4Q+vzJLTqAWw0B/p2ymVxAAVLJGcup1Hfyw
	41rwJDK1Eb+uTBj1uRZiCwIKoGtA==
X-Received: by 2002:a17:906:1d01:b0:b97:91c0:fc3b with SMTP id a640c23a62f3a-b97f48c1dc4mr394199366b.16.1773921552076;
        Thu, 19 Mar 2026 04:59:12 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:11 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:42 +0200
Subject: [PATCH v5 4/8] iio: light: vcnl4000: replace mutex_init with
 devm_mutex_init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-4-a025d3332805@gmail.com>
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
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TAGGED_FROM(0.00)[bounces-277750-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[dlechner.baylibre.com:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D73742CACFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace mutex_init used across driver with its device-managed
counterpart, so all assigned mutexes get destroyed.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 287ccd89cfb2..cd7e6ee42cc5 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -356,6 +356,8 @@ static int vcnl4200_set_power_state(struct vcnl4000_data *data, bool on)
 
 static int vcnl4200_init(struct vcnl4000_data *data)
 {
+	struct i2c_client *client = data->client;
+	struct device *dev = &client->dev;
 	int ret, id;
 	u16 regval;
 
@@ -400,8 +402,14 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	}
 	data->al_scale = data->chip_spec->ulux_step;
 	data->ps_scale = 16;
-	mutex_init(&data->vcnl4200_al.lock);
-	mutex_init(&data->vcnl4200_ps.lock);
+
+	ret = devm_mutex_init(dev, &data->vcnl4200_al.lock);
+	if (ret)
+		return ret;
+
+	ret = devm_mutex_init(dev, &data->vcnl4200_ps.lock);
+	if (ret)
+		return ret;
 
 	/* Use 16 bits proximity sensor readings */
 	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF1);
@@ -1979,6 +1987,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	struct device *dev = &client->dev;
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
 	int ret;
@@ -1993,7 +2002,9 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
-	mutex_init(&data->vcnl4000_lock);
+	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
+	if (ret)
+		return ret;
 
 	ret = data->chip_spec->init(data);
 	if (ret < 0)

-- 
2.53.0


