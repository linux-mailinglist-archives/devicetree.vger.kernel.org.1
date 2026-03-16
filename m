Return-Path: <devicetree+bounces-276334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG6fEAs+uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6F729E3ED
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF3F030BAEDE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8043D3488;
	Mon, 16 Mar 2026 17:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l4jO7IqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA2D3D1CD5
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681597; cv=none; b=Qdqrs1r75Looj3rLF01TzM8lBTnqHtmMx9u8BJWYP7gFfc8d8bKSVj9Ep/Fbs9R8rj1rG9JRQvyyvIz0oIe68Jm0oWH1KH6iKxiMIo6M+aAniljicDsXmwOWvIoxzr0d6FRFqBmmnqhJPxY06OCdWLkyJiBg+fpNI20AcU39n8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681597; c=relaxed/simple;
	bh=fwyYVczkGGhNbbtuDw6wb0iPQK79Hav8hEBxFnyoihs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HWj1WWvzlNZWWSPBNqb1WgLaH9fMYh4sEBJ4OpNLRVYFD0aSv3L0ImKux8DR/cHCNrEMClEoOnecxti/1uOFSLmjuQxinyLBjfdzn52qvFYNaokOnbG9BDfmF1HYliS2ElPZOQKQ+xuoMgStP4do8+ZK3BxAk35fGJsFaVPeR9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l4jO7IqV; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b942424d231so597515266b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681594; x=1774286394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l5lDxPgHMLUWf4KOAgcF/BaGDb9kL4QT6S8GOy/ie+w=;
        b=l4jO7IqVxgcgLUJJZSXH+fqmT1n1VQSP3xwRcXDBMj0sVhNGdUL6jHWoaUjETIDdaM
         uGQzxXGnitAcjqy71ublk7gqpi+vbU0KEYBKxcYRD7qkhdcX6MQ1kdqHRsJQLhRLL4Nt
         Ulo2YYNjFnxDkEcR+BNVnEhQZrhQLpURiaDuITnb4OgDi1/8V0miq814s013JPr3NHPE
         xlFYb0RpcFbOWyt9lVwfnvkC5pl3lXsAQ+mMlAP9yN7jcQuPaOhxeY55dRwMLNYa1g1b
         43pzma+5Wz7FwVVSITsXn2eHqb9Tx/0Vt440c2sHQ7f9AwfASz7Nh7RKLiNv/WGjgsdW
         IIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681594; x=1774286394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l5lDxPgHMLUWf4KOAgcF/BaGDb9kL4QT6S8GOy/ie+w=;
        b=gJLb7QyQRSVhVnT4A16r7y90/X5bRjCnSmGNDUUViiAVKDVEOxfU8YbJb7tL+9YHv7
         D5WsfZvZJCKMgrJRidyOhTES3Vm8eKxmwRtTVzS/vuFoWS5qORggHii5ZmCpt4Ls0Kco
         AZ1muTTc+DMwkeKgfkJ++S80AeuSy3Gf28Th/YoI4wLQc0iEKkgPvwWiggTGSXiQ9rFJ
         COm87yCN/3lIzRTeR8/w22wdW3AEk03vSqpWydq8h6VxUr9+NN+bW1I+Z5NyQH3iC7jD
         guu2t4qPexV7+hmaIm13kB4S+qv2Pfaj/4cTQTeX0jMEHeg2w03/NKCbuIy2YrcBhhqp
         1H/g==
X-Forwarded-Encrypted: i=1; AJvYcCWO5cz0TdBPPIGC4evFbdyoR1mcbs0HawK7Zb+KQx3fDBLub5cfly3dABlg9j+eo4G78UWnE8r6ThMj@vger.kernel.org
X-Gm-Message-State: AOJu0YxdK7Pk0dclRkhIcXAR9Ic8X38yIN67sgiTiaSTCh9TUiMSNp8L
	FwmkgxYoeCQkLj2PVWRnq/CAIdT4eYl2Xy2/KL9Xdg4gff+Zh9fPv94e
X-Gm-Gg: ATEYQzyMX7dwYz/LgpF5bvin1Zjhkj9gFWVY08BCuWCPMZYC091RiJp7LrQ90JDH+bQ
	eRmQASbqoOwrHby3I/pOTMC0HiJZ5ejg/AIG0OskFS5CXDRwF91zf/75wDdLEDxbqIevKujxAbu
	Ym9wO2L/zII1Nngn6XfYBib8i1eSvQte71EXv0WJpI5+E6LJZOiw8q+Ly+wvFqGwjwMBBrVsuAc
	pZQL/QmA3xhTeU/nxCukpvsBg4xiWE4Xg2LTMKkhwEgLA5JvpSUVc46WnDOFC6uCDz8AjFHCEV4
	PV0E+agSz5wpqdhkwQHxZztsQ6q0IOzOan9jNTvnZ7Y2AEFF6l5UqcAxNG1qZpONZvgkgzN5uFn
	lm/VT1oJbYwHhOMWMWbZy34mOKpzp2odwLeQavTIeJTlFnB1ZQzHoCdDE1Pw/Soi2zt0Ku918vC
	Uo6TtUmaz+ibvtgS+ZTL859cRMtw==
X-Received: by 2002:a17:906:3396:b0:b97:464:956e with SMTP id a640c23a62f3a-b97651d0b0cmr575179866b.34.1773681594087;
        Mon, 16 Mar 2026 10:19:54 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:53 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:47 +0200
Subject: [PATCH v4 3/7] iio: light: vcnl4000: move power enablement from
 init to probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-3-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TAGGED_FROM(0.00)[bounces-276334-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AE6F729E3ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Given both vcnl4000_init and vcnl4200_init end with
dev->chip_spec->set_power_state(), they can be called once from the
probe to enable the sensors. Move the set_power_state function from init
and call it after init function in probe.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 939ff2d65105..287ccd89cfb2 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -280,7 +280,7 @@ static int vcnl4000_init(struct vcnl4000_data *data)
 	data->rev = ret & 0xf;
 	data->al_scale = 250000;
 
-	return data->chip_spec->set_power_state(data, true);
+	return 0;
 };
 
 static ssize_t vcnl4000_write_als_enable(struct vcnl4000_data *data, bool en)
@@ -425,10 +425,6 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	if (ret < 0)
 		return ret;
 
-	ret = data->chip_spec->set_power_state(data, true);
-	if (ret < 0)
-		return ret;
-
 	return 0;
 };
 
@@ -2003,6 +1999,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	ret = data->chip_spec->set_power_state(data, true);
+	if (ret)
+		return ret;
+
 	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 

-- 
2.53.0


