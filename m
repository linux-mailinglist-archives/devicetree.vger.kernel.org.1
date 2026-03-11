Return-Path: <devicetree+bounces-274028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHkdGUhUsWlHtwIAu9opvQ
	(envelope-from <devicetree+bounces-274028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2C5262FF3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8AABC3040FC3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B011C3DE443;
	Wed, 11 Mar 2026 11:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nr6q6dl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4455B3DDDCA
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773229108; cv=none; b=OAWiKiCzP9RoXNVKNt6tZWBUNIP7sWvoSJPMFcDVw8Y2ewx4kWRRubaIMED8GXEIp6Q3E5R5ks1yjR/FdrZ9qczb1t/fA7Er+/vNzo+jtJtjYbx6w6Cx/xwl6wvR4Nz01kOiD03t92ysOsQYdCDaSkTumZOClOCi5AwR1vQKbfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773229108; c=relaxed/simple;
	bh=vIOc3szKuAs6MKztBvppxGhHIOg85470ENNPXOdUN/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IMA9bWlNy7YcftctkoMliMLnYrfZl/htEI+tHbH5P1Y6iO27ivT1iIQLjMLIQRF2uM+MDtqylnaoYDfANSjvvzfrvn7thAn2kFYwpXv/0s7Co3cloi5ml33+JCWeTo5CFWuh4RuAmIRZsusw9kzE6sGGe1WTAWXYX9cjahuJoSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nr6q6dl2; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439d8df7620so3732947f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773229105; x=1773833905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojRYufuVUErs9SrvfS/o2JtWS0LCRbBp7UX0FlqvdXA=;
        b=Nr6q6dl2Gzb3DS2/0VgsT30voL/Kdw1sTIzZx6Y78rR98arrtmvNH6JuEwygihyMDl
         pfIfyMNMCPng+Ocgy78lfbH55ziqcfHm9jURe2CfZ/Td5VD6gP/AwaqaffHhrl9QmtZG
         RLcvCZtWibmLTDWfqfg8xXU+nP2F2rD1wkDicb8QjhuZ2rq83ieyFopAJzfsLmmttL+R
         sXao+dUuzRv82h1ccxz+9hnpuXULDqfne2R4aUVDuhJOU1NAMBAv9/ZOK3aaqIuTNwnK
         Ixgv7JPOuMkVl/JVu9C4hV9/Y1qP3x3lnbJU/iKSENgRtLPfWCoQ9D8QJk3dX4X3rNtg
         5OVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773229105; x=1773833905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ojRYufuVUErs9SrvfS/o2JtWS0LCRbBp7UX0FlqvdXA=;
        b=mEiB14FoaznXpG8D9Ej4DX0WPiA4pSyYgBLXu/BZ8aFRge8gwE+zS2UR29ZRvqQdx7
         BrItBJhecANOt6ZMJxIsaJJYDdmuMo/PqZMSn2GbY9spcjxuc7J01QciQtCNdUoHgWm/
         lnChGyDFPTvY6uSzzzsRh72LZQidwKoOrt3OeTlVzow3urGMOT1uILl39fyUryX07+tu
         9mVoyGFRukjbsLSem1bL+8eMOwKcGQyFj3oguljFHYujxyAXhyNizmKRZb7PnMrUdbMf
         Fj4zlEWrV+iaFzHS4EKA8xNzBPE6vFd4TZCd4jaYveiS2x037gujRbWwg4DU7k6KQVBw
         m0ow==
X-Forwarded-Encrypted: i=1; AJvYcCVkdGaD1fY/Vb9XdkRKDMpw2EnZHA2hpus/adrq3gEog8nhC10vpalBMYeTjDfL0C8qjcczmc2GklZt@vger.kernel.org
X-Gm-Message-State: AOJu0YzJopeYGwMczUyqYGqkJ3Nlpis/1n0raS+cHkshXUWkmfqWZjGq
	zvf0WwUEq8niXmeJJyyLUFX4i+h3IKRS6VXNo7Wq+kPcokB6VLx3aIn2
X-Gm-Gg: ATEYQzxi150DTMxLSuyizJ2cBiL9Pf8opKtyo4yGvL9xAOY3qrNz84WbbPI1rKNVBhl
	K6L76szOXF2JE8QL+wyDb7YqgJtb4/+UC7rbS0HkxmpXoGFovtevYZEuTH/xnC0eItR1Atk0ucF
	DcWh28eVYisDClbRQ/Z4Kko0Fce29UlGpZBwwmkshI6AS4NxmkonzDOkRi3kEDpzEfkGepc5vwz
	K/yYGlx9XUaRinUOmt931w5RfsD4M2tBahHy334G9dDqmy1wL8OZjPn0UNYB4jRV3IJbyyCti9Z
	IU9RictZviZwAnucscZnEdM/nhoWhCjJINiFnFhAp4+W+QEtoekrR8db/V2I2gzN6OXGeIr3/pK
	DAu1SwK20RZU9oft6KuaBMGtPKVbK6ZtSbvRBCwai5AEMF77tr1gFt7ERCkQARvFRp2AG8bjbC6
	V676HU/XkFFmWeSEYHipYRBqc3/w==
X-Received: by 2002:a05:600c:4693:b0:485:3f17:410 with SMTP id 5b1f17b1804b1-4854b100db9mr33547225e9.16.1773229104383;
        Wed, 11 Mar 2026 04:38:24 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm188681855e9.9.2026.03.11.04.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:38:24 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Wed, 11 Mar 2026 13:38:03 +0200
Subject: [PATCH 2/2] iio: light: vcnl4000: add regulator support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-vcnl4000-regulators-v1-2-66b6038ce563@gmail.com>
References: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
In-Reply-To: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
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
X-Rspamd-Queue-Id: 4F2C5262FF3
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
	TAGGED_FROM(0.00)[bounces-274028-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,protonmail.com:email]
X-Rspamd-Action: no action

Add supply, I2C and cathode voltage regulators to the sensor and enable
them. This keeps the sensor powered on even after its only supply shared
by another device shuts down.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
Reported-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 drivers/iio/light/vcnl4000.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 5e03c3d8874b..967589d5f246 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -17,6 +17,8 @@
  *   interrupts (VCNL4040, VCNL4200)
  */
 
+#include "linux/array_size.h"
+#include "linux/regulator/consumer.h"
 #include <linux/bitfield.h>
 #include <linux/module.h>
 #include <linux/i2c.h>
@@ -1983,6 +1985,7 @@ static int vcnl4010_probe_trigger(struct iio_dev *indio_dev)
 static int vcnl4000_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
+	const char * const regulator_names[] = { "vdd", "vddio", "vled" };
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
 	int ret;
@@ -1998,6 +2001,11 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
 	mutex_init(&data->vcnl4000_lock);
+	ret = devm_regulator_bulk_get_enable(&client->dev,
+				      ARRAY_SIZE(regulator_names),
+				      regulator_names);
+	if (ret < 0)
+		return ret;
 
 	ret = data->chip_spec->init(data);
 	if (ret < 0)

-- 
2.53.0


