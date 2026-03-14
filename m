Return-Path: <devicetree+bounces-275730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBKcFqqHtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 428DB28DCA1
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 94F51301A2DF
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316FC379EFD;
	Sat, 14 Mar 2026 16:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Db0+Hzbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B4B3783C6
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504404; cv=none; b=u+Ol1WnCjRbZTGF5LXfW5pHo+zSZ6WVn38HA2TKvsONCvndwd7W3eCPhosqG9tBt7FXCipEXTbWaEMTII+7wB+wZDTDlh9dutT5pXYpXITHUbGufOGYzkNPj7jpOu3ReslYJm1RC/nj76/viwbua0paCg5YQZOel/1PMKK/tFbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504404; c=relaxed/simple;
	bh=3QQmY5CvKjA1E5rLrX7dDBxYJh7qOARmrpAafvS7J+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a9RhQXsl8xA1K3CVhw5JpgAhwA+IzZsqWvo8rl+Xx5Hcr+mLknPsR33HBsFDg+Yp5UVtcLBlVClzunn6cmbQndNE34kJOsiFn/SttuVH4QUFj6l8zQAcZ8/NpXUq6Cfdq1YsASlhn+CbiHXa60kG8Wnd2HXZT8yv72mK7BPQf3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Db0+Hzbg; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b9795ca4e6dso68440466b.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504401; x=1774109201; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jgo0ap3z9r3Z/5/BkWKWT8DoiYsa3x1eda5HahP1HP4=;
        b=Db0+HzbgF5GmjcmoHiXDGdO1My9I5q8mAL5FCQvV2Jd3BVIOVbLSiFOcfpFyU2yzYw
         mo8H2DQOoLvr6rrjQjReAHmE9FAzMJm5ox9zv2goWBEc1W8DvzIGJYiBnTEu2M0Cz5h3
         ZJMV0ox8iXPBV193iDFW9Mju7rck5JZzIUQ5f/iX5An7GNiatM9Ml76t+SeU3CVTZHrq
         81kzhcQfIIrQxRacSjoehq6d5X3f879xNRumQtMK9m/2dPaDvn81qT+hiuwLXUGSifaI
         bR+3KF0pdr3Ws2rXvkK/22Wvw3VsYlhldy0S+cmpcNvyuKrXKm74a48YFh0IbDkxXkew
         PlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504401; x=1774109201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jgo0ap3z9r3Z/5/BkWKWT8DoiYsa3x1eda5HahP1HP4=;
        b=HmsQ/zVLwivFZYSs+NJrUhpfmlYI+KzdUc6f9R2OksflooaM8fBVXA34p8i00jQkIT
         cEWQnS6DaUP6C1y5+23lNiUTa7oujcL4eRBscZNMtl5pLdD6WUosSG74ILdpySYbCaMm
         d1KMfOEaj8wXQzBFN4QjPrKYhEx2F0o+PVsr7hmzRhAQK+w4NJTmRGRJmOKmzxNUxB+I
         Z/wzSVqjV1pf35qq3tZDzoXGghyCfFJjgW6yEcHC2OVipkST28pWGn41xGTPyCtUVW5B
         xVAEEyxF6mUum/XHIlhlA2Tt86OJMPP3KDt69TpWdQz14Xj44PV9QXR18912+NYO5w/U
         OQZw==
X-Forwarded-Encrypted: i=1; AJvYcCXB439sbrdupnzQoGefQ0ZBcBh3WproSOedLlx0NAXpqu/PtnLFC/L3DkSe16VPktys6Ze6sE6D2Hjb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5U05HUf5I7CWmp01Adnnu/Xqo6RjiKG2EjUczdMhh4YUo3br1
	fB0SMmnAUgKZy08n+6aa80+IfeCH5dAOOgitaHOJGqCcx1SgpPF5xPR8
X-Gm-Gg: ATEYQzw1kliIg1p0nYlu7KmcEluBwbP5AIgJZXw1kGOa1v4tuiliR6oJAm12w7PFVZY
	XoOdfto8N0fS4JkgRAyB3cVI5j113KoCeR3sIOZyCdJtnInyitP2msyXI+uHdXM0AouYVk7i5oA
	XFUrV5yiKdH4cVQ3T95Bq0VxyY9uvM8Mnj8luVxg1bQA2W0sWlj/m3spxPtbnLEgC8lSrmVv/5A
	vvtDgeQEz7/IJ3Ocgwhj7IW2VDx7pH4+jwCnkpC79ur62KYsrFxZ3XnlxC97Y+mxHX429w6SkLx
	4BrHlZeBko5rOd8YGdupOOup25Qls1QbvCS057M1eMzHA6nFoVerxS6ko6K+V+becr6vPqIYIEo
	Tarz43D45K/hXGpYFhf9s23n51z9iYyc1DJmwXXqsrToUMh+11NVs/rCQ6Yz8uMROctXKy9UUQe
	ZqzZbh/8R8U6DcYqXPPaIwl74kSQ==
X-Received: by 2002:a17:906:dc90:b0:b97:6a80:38b6 with SMTP id a640c23a62f3a-b976a803ab3mr374400466b.13.1773504400837;
        Sat, 14 Mar 2026 09:06:40 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:40 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:32 +0200
Subject: [PATCH v3 3/6] iio: light: vcnl4000: replace mutex_init with
 devm_mutex_init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-3-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-275730-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 428DB28DCA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace mutex_init used across driver with its device-managed
counterpart, so all assigned mutexes get destroyed.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 939ff2d65105..0ee307fc5ab7 100644
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
+	if (ret < 0)
+		return ret;
+
+	ret = devm_mutex_init(dev, &data->vcnl4200_ps.lock);
+	if (ret < 0)
+		return ret;
 
 	/* Use 16 bits proximity sensor readings */
 	ret = i2c_smbus_read_word_data(data->client, VCNL4200_PS_CONF1);
@@ -1985,6 +1993,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
 	struct vcnl4000_data *data;
 	struct iio_dev *indio_dev;
+	struct device *dev = &client->dev;
 	int ret;
 
 	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
@@ -1997,7 +2006,9 @@ static int vcnl4000_probe(struct i2c_client *client)
 	data->id = id->driver_data;
 	data->chip_spec = &vcnl4000_chip_spec_cfg[data->id];
 
-	mutex_init(&data->vcnl4000_lock);
+	ret = devm_mutex_init(dev, &data->vcnl4000_lock);
+	if (ret < 0)
+		return ret;
 
 	ret = data->chip_spec->init(data);
 	if (ret < 0)

-- 
2.53.0


