Return-Path: <devicetree+bounces-265399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJo2IzJCj2k5OgEAu9opvQ
	(envelope-from <devicetree+bounces-265399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:24:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10BB1377FB
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42D8B30F53C6
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 15:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE81363C41;
	Fri, 13 Feb 2026 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="biewx2oz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC0E3624A8
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 15:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996143; cv=none; b=ZbkjyPecIDpHOdQNpU5HZdO5uvg1vrp7UeSrX91tfRxgZ2T0x7hD6XeqmEhtsV65OvTe6kLq8qaV+5TenjhGSXgwS8oDZc5RI7yZEhkUUx4dVCZE3ckxhn5sfk5YpuO4UoB3F4DPLZZFEtiBl0T1kLFw0mLw0qlGsoc6kxNlD2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996143; c=relaxed/simple;
	bh=MdHGnwhc+Xr6C7Tf/QQO37NwJ0ltI3EiKeCTUpJF870=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kX+73EzF/wA28DvZGLhCdBkYIrvJ411nT/+DNu417MDFK+Da1tiOZATxRBZfY23QVC6FaWIaWl2TzZLxMhMo9tOg1tqI38ktgyS17nh0ByiR2Zt+V0yoTLelJCXUMRBRopmXUExrbM4QtuPXvUA4q4Q6Mb+W6MASxP1S7dDEWb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=biewx2oz; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-12736a0147cso71752c88.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770996142; x=1771600942; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0TSgWdTylqNWuh2HONEDIwf377TKen+WMQB+yoZN91Y=;
        b=biewx2oz1YKY7ZCDLO8em1P9ygNKur4C9GixylP6TN7uwPW9osMKYS1CXiJwZzMDDf
         vU6E6vFlNIO5s3ABqKF1ZmFw66ZzZuXbfta5NZefDYfQrePI/1AeDYbw5T2TIfkFyXYi
         8vnJ0gvsgelc8CANa/a0qetGbse5bufsV3hgkHoIPsUHyRZ4GahVjslKv4IKOw/FEaAf
         he588hTnqOwT28nfUcG6WbkF8Ta3gzShM1Cbc1DOB12eqRASW//b9ZeoU65PzGjmilsw
         B0hIhCTqZjnet+O4ODhRPUcLMS6iT2WZGIX9HHLAvL3GRNpELf62JFMcQwaBRzns3W5D
         fvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770996142; x=1771600942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0TSgWdTylqNWuh2HONEDIwf377TKen+WMQB+yoZN91Y=;
        b=isBsFBrVOG3pVbAsDLEIGZfjoAAMz6BsASfSsSUNho2m74B5lOSTKnvBpv1gkih2DM
         0nHHPMGB2SrgLMtKMReO4HNtrMgCbZvtuzC1XY317p57hUQRNNXzOf7Anlsvfr4y6Xxw
         D7YRhSLpFTDKVzY4vVnYgbeihRLwh/2peXdwlqeO9hjWEdy9wcwsRKqASNhiIvZlfL+M
         VV7CY56JWsI3HwWZMSyi/mX+GI1RBA7kaVhWg3wSA50C+2/SQdG0gAlMNm/G/R62SSqv
         FyftaBwDPnOg33DbpRe+s3Rer4iMkpTWEm6AyjYdTttXfZrfOtv9g16tgF3vn2fuXZA6
         korA==
X-Forwarded-Encrypted: i=1; AJvYcCU4vaPoPBqZ3WfLiL8/pp2AzD3fN40BVH1e0TRGFaqTMwSZy68z2iWxJ4vy9GDNnV+crmHRDPhpEAOn@vger.kernel.org
X-Gm-Message-State: AOJu0YxPPirkI0Wt1NTAGuqfDMexSfUZ1/EntyWmUY7u9tWX0x2K376E
	VegIjSomnxW/7ciNJk5ax5oU0IJjDmgYE18BHY4r8W7fcd+tOd8uv2CL
X-Gm-Gg: AZuq6aLs0SrPU8S2rjytsa5RUUl7bTeFxa7AfRdDoHqY3cJSyjVIyUF97kF3My6llOM
	udhqOhjkk4f8E4gdTBTZ6al7CbmoqNT0Mu57UwWg47y4Rbhny+NsihDJXapr8ziNRpp15RWgVjg
	LYpmv0NakI7jJArCM/c8ZS7IvUwK5xlJH72GBhIvBYS9fTwp2QPqXitSYt9lnWMp/k6yDYk4LIx
	fhywtbbvVAfvJJbK/kCgJH/diLiNiOcRY/Wpa6oGxdXkjDW+2GBaaCGHQ/5RyOHH2yrC2fDK3jF
	fLzVcaHeGBfZVINPPxPjsb2WBIimgWDUBt52Au833spUlSLPlGz+mvLFvPEpTG13MC7OwW0gekB
	vr2XWnBE+jLwzJ8WgzhLfoxvSZz8Z41rcOd0CSIfiEfDoek+b3xZS+URp6p7wgQVOEkf3M4Tpw0
	2WjMlsBv4ihiHjFWuoa+1x9+2ud+E5vJqYm7HM0i91F0qBuTNjBr+OufQ=
X-Received: by 2002:a05:693c:2c05:b0:2ba:7d5a:a816 with SMTP id 5a478bee46e88-2baba09cea6mr604050eec.4.1770996141658;
        Fri, 13 Feb 2026 07:22:21 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcd01d1sm6755006eec.17.2026.02.13.07.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 07:22:21 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 23:14:46 +0800
Subject: [PATCH v3 4/4] iio: proximity: hx9023s: support firmware-name
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-upstream-20260219-v3-4-df9371d29f5c@gmail.com>
References: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
In-Reply-To: <20260213-upstream-20260219-v3-0-df9371d29f5c@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1341; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=MdHGnwhc+Xr6C7Tf/QQO37NwJ0ltI3EiKeCTUpJF870=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJn9jn0cOxd8/a5mdiay+V3Eziy9cJNJySuXnL5Y83/Rn
 phbZ1fbdJSyMAhyMMiKKbKcef2GNV/14Z7g364ZMHNYmUCGMHBxCsBEXJ8y/M/XzruW/HvxZanV
 lpE3JDMvub7dsyvj/J/1j55FF7NE7K1h+GfVdiN1/o/yVUWd+3c/uGWxdqpH8p1HFX86SoWcWOb
 lF9sCAA==
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
	TAGGED_FROM(0.00)[bounces-265399-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,intel.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E10BB1377FB
X-Rspamd-Action: no action

Add an optional firmware-name property to specify the firmware file.
If not provided, the driver falls back to the default firmware name.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index 17e00ee2b6f8..9efaa5b6b5bd 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1088,6 +1088,7 @@ static int hx9023s_probe(struct i2c_client *client)
 	struct device *dev = &client->dev;
 	struct iio_dev *indio_dev;
 	struct hx9023s_data *data;
+	const char *fw_name;
 	int ret;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
@@ -1125,7 +1126,9 @@ static int hx9023s_probe(struct i2c_client *client)
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


