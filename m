Return-Path: <devicetree+bounces-263792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLaINWRXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:41:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E6210B6D6
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFE8B300B100
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1535B2C0261;
	Mon,  9 Feb 2026 03:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EmW02srT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47241F0E25
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608410; cv=none; b=S8z4eGc4ZKM/yI0zHNwn/KjwEK8cbgNEjTU+oeKniGlWIxy9axRLOdAe+7b+NouOeVVYw0KinSFC5qiAM0c9fUlKqgvrGN/RNz12jLZQi516NDOV25bF869nqeLChwJM7Y/N5E6AfmVAX502piztxVIiq/XIAEbV4hjZLqckxTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608410; c=relaxed/simple;
	bh=FRQMDMtmr6RuDCT3QnoTS6pq66M/4574XQAa6lYWU3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BstnDWESDE1zN4hE0sRtfQ3rYSwPAcN4fCnpiqZ+OGg9f9clxwfQTZjsJdXLDwcFV+XXDa22sNJNd0FGHDhQq3NeNq2INBrYko7vCRGe4+Puwp0gQ3kE4XsERiwqx3ZIb+198FVvJZg/T8LimdN22bTBokgWBOv1lMORokrsNU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EmW02srT; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2b836208f23so121772eec.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608409; x=1771213209; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MXcQdRWHKbSzK5H4HbSkBU6Vxa0xKwilMdxaH54zctE=;
        b=EmW02srTNKFQJucAEdWl49q1JdPXFhhu6cc9UTEEgo9ORrdA693kqDbX0+MjF96+GT
         vuAXNghzLPtMP3r7cO+vdiFk9xZi20b2RKDpOzeBcqieDHnPWbZGHW100ZxxFFBQTt81
         cL5lGfJCsOcJX+fM56bdu6uWLNEWs6BkCPw/9ItlWEpPe67d3dWYRTCqD0Mf+KnWLrYL
         Onsvmfz0pU5dZ+Af3ehsC2TeK7nULwv6HrxgLSLHTuHrjSGDkTYMvQgzqVtriGWQb5Sj
         6oqv4PuYQ8CAC1ZXaTWAR8IXzEUA4b+KZXKoxn06C3bYsNYCEQ11sO7dnLlv8r9mR/Mi
         uvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608409; x=1771213209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MXcQdRWHKbSzK5H4HbSkBU6Vxa0xKwilMdxaH54zctE=;
        b=LxtsVXWGUooUet70G2edp1faPQz+A8KPK606/5tjE3hm8Lojth/g+Cg1qQTB+r9i37
         q4OUuD7Iiujw2X+/6m41gtg3zhAv9EuyXpRrJOukF7EYznlS8TyKlT8R8PrOuUBbpZox
         aiTEf3I4D+h4XVTSg4s91bbjXZa0+bqckpv/yH+NeBFOlqF84kvyPtzROzZWLboPIl4I
         HCGnAheklzLcHF7StgIG3XBY4As33TLjxNADDugARA4EWWzLoUFoLkOOnxn24j6/7kno
         AQVJvyOe2tUnmdMON3FnPIS1F1Cwnc+NskT6hKmjD0XQtAbHdQuJRY8Xvt4RTVBb2AF6
         OO2w==
X-Forwarded-Encrypted: i=1; AJvYcCVfiAH6wTEIIL6TkEMHnuUeF0cRB4185bZdU6yE/kpuoKGcc+e9VKIjCUTNhYivSRjpbD84Vh1OTG3s@vger.kernel.org
X-Gm-Message-State: AOJu0Yy78fputuSN9lErTNC9ZTkpoF2vtBHxN2G9oKC57OfiHkRIZXC3
	AgfnQWy618JB4+JqmKIoOhKZ/ifIqpy/PAzTpduGfzqeceG1UIlXNGmM
X-Gm-Gg: AZuq6aLs3owoa1JjY17rrkuISAKK4jBYOiWfy3GlBEXtlTfGQwEWLGFmrTpCqKVcaeo
	f3ccQxKNG0JHjFL2L/Rutszhh5gmLIDKn/RgnYqB9nNo50aOQZWtosK4sQbtFgv/QKRHK9vJMuS
	RP7rX8Y1yJvUO0tjF6CcNeitx7U7E5gjVIfGyf8yXi2VEC6zMW9UMKxeavb3jeEysbKbZeX6V8A
	cHxV/oS1FfaewzIAkJO8R36Wu/Vz8mD/EdrCiZ0Aq2ZCfyE6fu5uYALXR/sKCxUfTZsQazCvobG
	mRN/cmpU3DjPvhxgap9mu75srqPlFqqUTbHobdXMgxIbvV/o7rnKT5k5v/v4Gkw8xr9iPZHkw0v
	/eW5bUPv+aPoOmecjaHE6BdiEiIkd/PUPO8yNlvJWmYbU4oYqOPaQPaVNSpYXTMhUBFN5bi1bmC
	oNb5HPfarqVHAYolPnM1WO5A==
X-Received: by 2002:a05:7300:6425:b0:2ba:7321:cf91 with SMTP id 5a478bee46e88-2ba7321d1fcmr339913eec.3.1770608408975;
        Sun, 08 Feb 2026 19:40:08 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:40:08 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Mon, 09 Feb 2026 11:37:04 +0800
Subject: [PATCH 3/5] iio: proximity: hx9023s: support firmware-name
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-upstream-20260219-v1-3-2b4d74e309d1@gmail.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
In-Reply-To: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=FRQMDMtmr6RuDCT3QnoTS6pq66M/4574XQAa6lYWU3w=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYT9XLZPkMXd4Fc5muEj5n9jMcJv8RdauEZ88sjm2P
 OIKsCrqKGFhEORgkBVTZDnz+g1rvurDPcG/XTNg5rAygQxh4OIUgIn8nszwVdphqxlbD7+US1DF
 houvVJ4c/BywSiS/59nSG1uVmpyWMjJcLt3tMzfmz/8XlvOWLfu3vdrM7PYMa5a5/qVvHx/iWid
 UDwA=
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263792-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 53E6210B6D6
X-Rspamd-Action: no action

Add an optional firmware-name property to specify the firmware file.
If not provided, the driver falls back to the default firmware name.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index eb4902d18d74..b680b89956bd 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1089,6 +1089,7 @@ static int hx9023s_probe(struct i2c_client *client)
 	struct device *dev = &client->dev;
 	struct iio_dev *indio_dev;
 	struct hx9023s_data *data;
+	const char *fw_name = "hx9023s.bin";
 	int ret;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
@@ -1111,6 +1112,10 @@ static int hx9023s_probe(struct i2c_client *client)
 	if (ret)
 		return dev_err_probe(dev, ret, "regulator get failed\n");
 
+	ret = device_property_read_string(dev, "firmware-name", &fw_name);
+	if (ret && ret != -EINVAL)
+		return dev_err_probe(dev, ret, "failed to read firmware-name\n");
+
 	ret = hx9023s_id_check(indio_dev);
 	if (ret)
 		return dev_err_probe(dev, ret, "id check failed\n");
@@ -1126,7 +1131,7 @@ static int hx9023s_probe(struct i2c_client *client)
 	if (ret)
 		return dev_err_probe(dev, ret, "channel config failed\n");
 
-	ret = request_firmware_nowait(THIS_MODULE, true, "hx9023s.bin", dev,
+	ret = request_firmware_nowait(THIS_MODULE, true, fw_name, dev,
 				      GFP_KERNEL, data, hx9023s_cfg_update);
 	if (ret)
 		return dev_err_probe(dev, ret, "reg config failed\n");

-- 
2.43.0


