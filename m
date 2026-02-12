Return-Path: <devicetree+bounces-264912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MG4hE3B0jWn42gAAu9opvQ
	(envelope-from <devicetree+bounces-264912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:34:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A012AC4A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 953D33162B7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197CA2BE62B;
	Thu, 12 Feb 2026 06:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VHF65xEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481A72BEC44
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877889; cv=none; b=cX7w5rStxXoXCd3oNHbMX0FSl9cSLDAQKbjbkw5sZl+fbthv3YlNgdTvsftZbVpiFwmsKsERGpmLbRrE2jKHrRbNEAGRKvU4uumrE08hsJoCzjl0Gfvmp4w+Ylt0dAJsmaF0a03w11jPsZX1g6X24VNaJ900XycaTV0j8k5/X3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877889; c=relaxed/simple;
	bh=LvjRu9H6aYvcvN+agPz5TpvyB/4Y1E3sFD81yavDq00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kDsSav9Ck0X9aMcgz0cPAY2wlvOP09RIwlLC0u74STMZKEBskvqgf0mYmiSW54LCyAZUAVMjKGTzaWQTyyXZrN4znu4fIWe+72LUwz0ADXqEelSHOJteflFX8v68noXQpFxqp/SpU/dAMIEQY0qbofDwDdC571S+v9i81JJxFq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VHF65xEQ; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2b866f98574so266607eec.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770877886; x=1771482686; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nSLDuf812ujA58X4h0f+xwWxKwx6uBXZNn8+SI0hNGY=;
        b=VHF65xEQ535Jc+VGJTDKu2qMNAdFGdU0wK/xdeKKup+kypIQVFr92GeVa8GBfcwAVR
         YTcBSrVdrpYb1QzcSc4G5d0jp19/9N6S1GS4FmvmhBHoWpCpzTTqtzm8WID3JEyjJXd8
         1Bk3YlJqT/qEntMxyQm0ZFVRGeJpgq5reKkXWOUdP7vrivwdbdwAEkzHWCYyC28K4/0o
         g5Ep/pWws2d2VycYFZjrGqWEZwCjK/m5tydcNWXSH10el/fzdN/6DsEhAEHLh8pySelb
         YD3mRnFj/KxUYwrOT6ltiPhfHd1yJlWMLM3MzZ0cmb4Nf4I03sYD7lobKHFLSYx57XSj
         5V+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770877886; x=1771482686;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nSLDuf812ujA58X4h0f+xwWxKwx6uBXZNn8+SI0hNGY=;
        b=W9XPuN+pO6wCCcoMFT9Hf3O88iMdQOUOWRTErWxyP0asLSQZShx9qlmpQgwnu8OvVv
         o7eGxcA/K2fcq+Fda07CdtLgupbHFSUakoiyMdT0Kb2U7GR3WlmSz9uC/oKB4PCxfKuG
         YM+I/ETebrMhSQDFSYUBEIM5wMdeNArnzs3jywo6TdcVCFe/2ddb2J8y6iQyvc43VKiI
         S9pTkMSC77pQTeWPREAuPwX9Bdxdfdzw8HhQO/h0kcFufyo/RiLYObaInPiv6pjIa1oW
         D/y5xGlMJh1mIxKEEMYrQ6YfcD1iCfk3tmQ115ddTIlS3IJkfWk+kriVakaacQEOHkfC
         pdzw==
X-Forwarded-Encrypted: i=1; AJvYcCVsPEKYB107EnjyGnkim2TUFfmCOfs/Tf0xnKs+L+r6nzxD769wepzPlYhhgNb0aJva69CDKh8sfIZY@vger.kernel.org
X-Gm-Message-State: AOJu0YxP/WAdXum1YB/gY7r0mWHYqHYZBmNfyzRnr5EqvN5Az1Bqa0BV
	icGQR8ocdH3Sya8vU//cek5rt/ZfvEwbpj/H15jVq0sLbgO0Rnp37zUo
X-Gm-Gg: AZuq6aLAMSi1782/jjFvgmjXbIPvgUoVhKe64TR89e3dsxQxcNfXxXVz/Ppdhrmpr12
	J+3vVHFFu2aCEzdcvIt2Mq8JiGJ9b8wK1oln9sgecsp52ZZ+PXrBMJZOikLFvTk91yTYV45GMTZ
	qEygvhcqg7cUdGxZRcvp6tcj3iiIegd0Z3YNHxdXXwGjAiOWoSCQnoHSsOuaFfP7PUTM2thIwgO
	mTGqW180BwXd4ZSs1K9hYbJp+vnaGAj32/AjVQycOJAiKVs0AaHFP9FMl26EX9qu7RINJQDc/q1
	SazgWzSnJfpQNWDvwBbNlp/o5Ih0cfMeIUITBVb/wHW1Z4mUYoeGs14huOldZ00fUldhAYVi3md
	9Hmrx8+/OdpGxQNzMiFzHZ6xnm0sxhZTvbHQTENwMjoYbsl4DpV00Oh6wk+U7n8CQWnLe/iofTK
	zaJQbB5KZa0767ALcystEdZFk/DF3wn/gKGHvb+uxYOtoBO+5RHryTUek=
X-Received: by 2002:a05:7022:f102:b0:124:af80:9d0c with SMTP id a92af1059eb24-1272f69953dmr417178c88.0.1770877886231;
        Wed, 11 Feb 2026 22:31:26 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f29dasm4313870c88.12.2026.02.11.22.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 22:31:25 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Thu, 12 Feb 2026 14:26:55 +0800
Subject: [PATCH v2 4/4] iio: proximity: hx9023s: support firmware-name
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-upstream-20260219-v2-4-2b28fce5d09e@gmail.com>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
In-Reply-To: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1281; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=LvjRu9H6aYvcvN+agPz5TpvyB/4Y1E3sFD81yavDq00=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJm9xcuOyho8sWh98m25+tXUiz5VN7+t2Bbp4aedlxMcX
 m87U+VYRykLgyAHg6yYIsuZ129Y81Uf7gn+7ZoBM4eVCWQIAxenAExkExMjw4Ilc3Wvp2e8LTmt
 cP356+zn9jJTK7bxPL+2Y7XY6X1/V3xiZHiyIWCz6BPnozs22/x3fKvBzzbvlr+m9hHO1W2TJVn
 sL5QBAA==
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264912-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A76A012AC4A
X-Rspamd-Action: no action

Add an optional firmware-name property to specify the firmware file.
If not provided, the driver falls back to the default firmware name.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index e714fe00a44e..b2cd0759fec2 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1089,6 +1089,7 @@ static int hx9023s_probe(struct i2c_client *client)
 	struct device *dev = &client->dev;
 	struct iio_dev *indio_dev;
 	struct hx9023s_data *data;
+	const char *fw_name;
 	int ret;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
@@ -1126,7 +1127,9 @@ static int hx9023s_probe(struct i2c_client *client)
 	if (ret)
 		return dev_err_probe(dev, ret, "channel config failed\n");
 
-	ret = request_firmware_nowait(THIS_MODULE, true, "hx9023s.bin", dev,
+	fw_name = "hx9023s.bin";
+	device_property_read_string(dev, "firmware-name", &fw_name);
+	ret = request_firmware_nowait(THIS_MODULE, true, fw_name, dev,
 				      GFP_KERNEL, data, hx9023s_cfg_update);
 	if (ret)
 		return dev_err_probe(dev, ret, "reg config failed\n");

-- 
2.43.0


