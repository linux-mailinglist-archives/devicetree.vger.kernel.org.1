Return-Path: <devicetree+bounces-278378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHSXD657vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:54:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AE62DE0B4
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CCF7304E0FB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBCCF3D811B;
	Fri, 20 Mar 2026 16:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AeW33kT1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D743DEFE1
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025151; cv=none; b=h/+x+rYc7shvP/krahU3+PMXrXkdmoj7og3D/oj5m6MICn9uN9sXooyFxIh2OahMZH3kyYEIFL5+s68jqIagYKyurEmZ/B5s+tq2rKhdpot0GhJa8EHjw6GchDBV/WQfA3fgIk8mOheN8RNVQx52wwYRnCAxgoJphFmb22psosI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025151; c=relaxed/simple;
	bh=o9yuL6PRLokAleeSzTGeuD72GREI4YTgIHEt7F+oLcQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iC98n+owoxqSAGXjDppWBtsZBuleakTxPJOW01Y75QEUXTu6ndiWL6MlPf+QUhb3CXxattnTUz1StONNeR2DQZMeei72TtX1Gh4zfm3zpvfpk3CvFyouECm3942njrlyW49FT25xdBtFrHZ2ULaNGSCp0uXZpCS38v/hKKIqIrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AeW33kT1; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b9358bc9c50so275656966b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025148; x=1774629948; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u9tF8LrahXLfIcW+pium+UIUX/witzxrg1SajUiru84=;
        b=AeW33kT1roubZ8TdDxaMMszZGe4awa5fx0oQ1VEsE9y+2dCdEEA8c6faqnU1He6Psm
         ngxlm5VOdojvVIGqkhErHR08mzddnZjcTnf66EFU/wOxfNDEuMxWJDl3XsZJYH7B/3Z8
         vthmZQdnaE0YaUZqFqWnnrJaqcEeXBBoM4rgFFyi/C6KnFGPZW6y8uoLMbLbdK8zdFc2
         T4ir5dtRBIj2ay7yzi/X7oVNaUKZyiqg3jBrpBJ9lszua/WYoD2xO4HLSd/6ICcfXS8e
         7CKLvbemsIlUDjbAHXXgSiNET9TAm+VUrGtbudAezzpt8oLcb6qiawcnGbW/DCJdHYDD
         wtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025148; x=1774629948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u9tF8LrahXLfIcW+pium+UIUX/witzxrg1SajUiru84=;
        b=MdbSLYWCOKf//4lUMY6RXYQdFmAzkRXzHDezd0VxCDiV1A2XgM0MQBT/annx3W2/aq
         vwASg11K8qcnquBiLtrI6IsOhnXZ+/6vas8SqO7et81aYiDPY15Xud2aXzMnWzw/Bfol
         LEXXsyFOkK0erdf52bVDTsMhYk58DKoFhtEcd3Yqch4ZFEV7Qd4P4sNpuHiprI/PxslO
         xFd6SjzHocI6PXEYqiWG9e+PywcdlqvWIzPezWMV8clTCtPwL+tnCOC36QnG/YWEU7nG
         GdyxoU47SW/r0coKMF612gnob30dHlrwicqxApaR7r2Zlcfkfah8lH4aWMvgfKYwBg+4
         eCOw==
X-Forwarded-Encrypted: i=1; AJvYcCUxTPwUuILm0L+sTKgWPEE3JvyA9/D6dk/jt34/aFXFtjChm0VR7D0DFGJjvWqxT3vgvrVpz9Vuoi+L@vger.kernel.org
X-Gm-Message-State: AOJu0YykpX6M5fSTEGbX18EkXa3W8sjo7jQOx7dsI4yjFFRpLwagvLHr
	AM98wZo3//ibSx5WQhCHtr9Klme/nywhTcfpFsjwITIcbaQc6isaScy7
X-Gm-Gg: ATEYQzx89qyPjRM+cDASPeXhrhKbuRuic16xKlHE4SFJABYhttvbrgTiNRGriRzRL4M
	YHDLYnArM81YCeSIWoKo7ZPbkVq5ttyspaxI1rYjcCdr0Zgz1lS0PieNDn/SZVNkVg0CQ1TyTiU
	C2oSxs4Tt+JC+6BGg9FaMlxu/NSbKcNmRpuq3R8YU/BYRLwM8LRPqISasiFsGo4J4GrbtKoqAB7
	HsDrS9erxeOnK/NT/hvcS6pdlmk2LVv2wJg+Oxp4Bp5AhOyJscpvy7qt1tjjemYD/lkhq2CHbio
	LOwSRoT47Im83yZ2rtvYDVVnWvsjpFPg4UK739aAT6vnqV3Rv2hLNpCTuS5ZjV4Rza64A+tP5/e
	wD03iENKbuRb3ClCG6IO5y5xqGC+hM4WjqMDqrFu6XwUeci7uDSqYWqGk9kLr7dVPs3Qp23tny5
	Wmb/Zk2IIx4U+2ld85Qrs8QtKhqA==
X-Received: by 2002:a17:907:170c:b0:b97:9139:738 with SMTP id a640c23a62f3a-b982f2f0c72mr221017566b.33.1774025148287;
        Fri, 20 Mar 2026 09:45:48 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:47 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:39 +0200
Subject: [PATCH v6 4/8] iio: light: vcnl4000: replace mutex_init() with
 devm_mutex_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-4-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 15AE62DE0B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace mutex_init() used across the driver with its device-managed
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


