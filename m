Return-Path: <devicetree+bounces-277755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFvqNPHmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:07:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B31C2CAE8C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A77A32AA232
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44C393CE490;
	Thu, 19 Mar 2026 11:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zvu8xG6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB383D170C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921564; cv=none; b=kmr5jvItKRQvyVp15e2AGRiITtdj0tAgH+g3h/67x12jL+t7iGY0Hy4OJwMtpd5uzZRhryD48zwuvgWR+3PHx566svGXd1G5n2YzrerUH4jQS856suV9uYKudPcFZ+i0hm9v4A3KgReVYrf8cbT9Iq7q8xDB+3CI9KoHjina4Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921564; c=relaxed/simple;
	bh=w5xtoSN57Gl+VyOZOhDTahGIJ0RwHfPPzLNAzvBUd4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ky7IuxRPNdjBsjfiHswA040mhCnqK0m/sczGRY2q1hu4UB7T7DXJAcx+u1EpTevMNLONSJ5vWjZzVRxYik5VSd7Ts8DUngsD0P/SJlKfA1+Jb30UWPUM4obPwbWxsQDICb8zJ7tPC2E+8tu4gjmuIuj1pA/JM9A0RdYufhL85GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zvu8xG6r; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b98069e41b0so135354566b.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921556; x=1774526356; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0qPqA1xbNhE1Dv/S7BEHSx+8WdubNnnHdrMlRxqcOc=;
        b=Zvu8xG6rcyOuEEd2lpOn5kftwGlhOXPHnSb9o2l+mee9JE4OOS/qZoa76kImD2Fp0G
         kxj2D446KnYb2Sgtow6s5GHVmKzi4ye62m+SaO8t4X2gS2JRl2WyYp2JXLcBAUU4ADxe
         Kutq6A8q8D44EpmqC+Ea5CjE288WYX7q8VOXM7eoUjNVI3xs9/x7FoqxS6hrWgF6lqmH
         Wb6P0Gf+gbsYf5mYU1g8PlI9M2z3cForTawzKAD9fBQ3uD42T8uQGe0w/kTex+NMEhDM
         LCTTfVCo3fNV3/QrGw/nuzo3kpJf0PLc1TA6ZCrW1F27D+cCaiIYrKqNG1I5qXxraPFj
         yGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921556; x=1774526356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j0qPqA1xbNhE1Dv/S7BEHSx+8WdubNnnHdrMlRxqcOc=;
        b=jzjiqRXxo8EFjzDJRbAl5Hq1t/KUZ4Lz3vgJQONfD50w7CZqU0NgTPfMXWcl7dLyw5
         dGGOjMltGl+/+ur0vcKktuzZ1QC5MSHkTUN+Konh/kLDSs14MsOjMBBcYbr/16Us0cjJ
         FtHsd/ziGL/ch15H7qrCQyaHxVFSnwf9r+daZGcKdwvB3QVUPwKdvy2FNYna0jl/h5V1
         Wk6pvc00yy2Aqxm4hIE6BssUX05AZIdWvTskIxRKgXfBGtw5WWAW3Q+ilK2YqlRB+tX2
         pgNpnI9LpJO06+eQfzkQuE9DEV/PnQG7PZhmlXFN5Xw7p1VT7N3G/W/1gY8+jqi/3lXX
         MS6A==
X-Forwarded-Encrypted: i=1; AJvYcCWcnLzHpyOTUV4GUBhWvqt+KCExxqpOZbmjKQ8QxZOIhA8XAls+NTv7zVn7vf251u3td1qg+QO4RzCu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Ua6DzHQ31XDkDma5aqfRi7NbbvHbPq5Qwemhe6H9SOrQ6dj0
	JIR+rql+PSS3QSRALKZdDiPHThFlxnpAOhVREWiwTNuNM7Iu75B/IpcI
X-Gm-Gg: ATEYQzzSZhbQCAFrvSeZs7vBMEWJfbpnvgD4YdZu14ECP2K9uFbtOODYacU0PIpwIAL
	OjKy4ajSyr4eCpIsXzNjUJ+CBeNGllVayyXPVGCOpkf2xGJybfFmWMwcN9GhboY7diniD3ryMAy
	sscJfIyw3GYMIzpufy7pKLEPffXpTFU3oHbzszJqGRtHZx7iSLDzECOOfUlooE5APfdXY/hONSP
	K/AgSJ2yBPs87XkIPRIMUBvam322DH52935Ae/9wCnTGL0zD1v85W5WcBlOgYeC/j0etQYjzCUT
	iloVOEssHhaQjN/iroM+tGwfwTAprjvByEfAsRq8vSsZMGxxaDnKl5ctCCN0Le1NMhIGPJze4DF
	9w2j3dDkMB4AX3l/gXR5myWjh6L0hPcIhG235r82d8f5mNgHXDIR4UeocKLveplaOoJ6hlIcExl
	H2TLE6aD+c2s/EfGZPeCeJfC3WNg==
X-Received: by 2002:a17:906:c102:b0:b96:f4f6:2a02 with SMTP id a640c23a62f3a-b980faad336mr197971066b.25.1773921556389;
        Thu, 19 Mar 2026 04:59:16 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:15 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:45 +0200
Subject: [PATCH v5 7/8] iio: light: vcnl4000: remove redundant check for
 proximity-near-level
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-7-a025d3332805@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 7B31C2CAE8C
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


