Return-Path: <devicetree+bounces-278381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YK0TAvx8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9F62DE223
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 15216307CA90
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90653D1CCF;
	Fri, 20 Mar 2026 16:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lc4SFqw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6FA3DF00E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025155; cv=none; b=FzTEdOZt9N5jJwkexKnp1KmSF9pEjNo5PX92PrAkQ+QAOVHVXIexBy6e5K0EhFazo8V+rkYU0QYvNY+H+POedbj+Sq9pYPNMmAMwNfwj1kzIeO+tDFLu5oAOL7vjqWd4AV8iqcHMzoZzip+ER0fCUM/qLk+T1C/f8KRXqhJep9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025155; c=relaxed/simple;
	bh=w5xtoSN57Gl+VyOZOhDTahGIJ0RwHfPPzLNAzvBUd4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BVK3o9q7Rn7qskuSgyZdN9RFdSQmbbAoF9adHO6zJw4N8NQMP1wd3fUYgvT9XNtWfEBQzkxj08IVXexEG1d4kQn8wd4c+DcaIb1cgAkTurtyR2d1Hs1MjKuZAYp1fCktYjlaVvNYpHSlnBdqlRoNznK0f17oRL+ggG7abfl6n4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lc4SFqw3; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b980b35534eso385405566b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025152; x=1774629952; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0qPqA1xbNhE1Dv/S7BEHSx+8WdubNnnHdrMlRxqcOc=;
        b=lc4SFqw3tDDgj3o9HCXTb7+nXRJFpX4ZaiwTkJpTpIP/+Ly0xmWWzSbAZ1Xig3TD4t
         6fz15OCBUoZRTO1YoKS/2eV42poQDniH+6bW49c5eb6C5xcPlSXkNgBEoUVMoqa8GApK
         IZMHdvOCpZT69AgQTztYkQwk5UBqM5umYZMhc2cu8t7bRofWimKcDo56KS/Mz9le7856
         rQB7YsvAfS4T9hQds7rVBP3b5IACItFBDFix2ixAZMMLHygmb3KxgtasvuNh39MbRftT
         9endyul2xwRpjC+2GLPaK2eBgY/F6gr7o5EUtyAtmT56xaCutbn7YPnj9JJi0PhWq/E4
         uH+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025152; x=1774629952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j0qPqA1xbNhE1Dv/S7BEHSx+8WdubNnnHdrMlRxqcOc=;
        b=aDctwfXCK0cyWFH8B6qtypWUrJL7pczMz/nu1KntST4rQXEbzh6whs3cuuLF5JzjDI
         w2L/g3vFLeR2pMLrPn5NVI7bM8HVSFkzKPU85/OafIJRPhbTyxXdK9dPFM/DyQpgZvsO
         KFPNlVLlmEUVXPZwLr7inGbBl/L8oYT9EXRAUj0p/87/ZhlN2ZFEf2ThIzeFnvHw3501
         F/GWWv4AdzFVbm93MjjyYztK8VtXnwd4NuRdd8LgwWftFZ3ixWdKFuKwEAonNAmRWbJt
         0+5PSdjIeKVr3MHLiEQ8AX24OM7TeolSGFX32/L0hnafTey1Xe82FBqGNd5eu7UCOdjf
         rMxA==
X-Forwarded-Encrypted: i=1; AJvYcCXhphkYrTqcVn7cq7HhfEjs04tLhGOIU9p1cGoWUDPlECFMfpjxfphbjG86vxqQV/H94tjzbs/+CB5q@vger.kernel.org
X-Gm-Message-State: AOJu0YzK/aklwJhBD4XeEKvETfftx314yRy/4g1qB48iT61yQXEb+MjF
	R1ltSnwYXIIViIpOp8hDkuClxLF6HS6y+oEgkagNUvWBGR9bDy3Z8EGj
X-Gm-Gg: ATEYQzxN4timfCqqHC9M1To6Ah17rXwaJQcSchPWQCmkv4QU3T8V7Ktrc8yP5EI+Gem
	o2fwb63P65+A9Cg2voX6wxq2w2piJ4Qm+JDq5/HBrx7ZIEUr2C96JPn1qlocFgjtU5aSdVR2Mu1
	hU9261qAVclEJI7VwruzcOvRT7EhY+/yQurBg9OuQEplQTaUoITXFfQKZJ7MgiWAwPmMngQqpN6
	Qmz3/B3vYk+BjEtcggzOKKB2Zi8dY3LVu+YAEkzhIog7KW6/HvY/bT9CY9BmWmjlg4bDtu55iXL
	UgPpUuJ08IYZlYytU2wqbBBjhCqbrXcgscU6Mx84M0Kf15EZXsTFj0xvG1ni24uCqqtDxLsd72i
	SijEtOm57v7DWHf/VAhhuR2r1s5hEOTbO3aj1Vi72D0BVoYgwFoTp604n3D/eptUkZ73J4JVgbU
	o3lUxwJp8EpDIWO+PmLzujdgN2YSYUNC/RHoOG
X-Received: by 2002:a17:906:174f:b0:b98:42de:3700 with SMTP id a640c23a62f3a-b9842de3755mr92361166b.17.1774025151974;
        Fri, 20 Mar 2026 09:45:51 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:51 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:42 +0200
Subject: [PATCH v6 7/8] iio: light: vcnl4000: remove redundant check for
 proximity-near-level
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-7-0d24d20b1a5b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278381-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 9C9F62DE223
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The data->near_level variable is already assigned 0 during
devm_kzalloc(), therefore checking if the property is present and then
assigning it 0 is redundant. Remove the check for device tree property
and let it fail silently if it is missing or invalid.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 34b52725aff6..0a4d82679cfe 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -2015,9 +2015,7 @@ static int vcnl4000_probe(struct i2c_client *client)
 	dev_dbg(dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 
-	if (device_property_read_u32(&client->dev, "proximity-near-level",
-				     &data->near_level))
-		data->near_level = 0;
+	device_property_read_u32(dev, "proximity-near-level", &data->near_level);
 
 	indio_dev->info = data->chip_spec->info;
 	indio_dev->channels = data->chip_spec->channels;

-- 
2.53.0


