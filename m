Return-Path: <devicetree+bounces-263445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPpfEjolhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:30:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B043310108A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4127E3028C06
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C2C423A80;
	Fri,  6 Feb 2026 17:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fdN5I5wj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E82742317D
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398957; cv=none; b=mRDarWp9qbkFJJOPnbBQ1gXE4XIZX7VrxXyV6ldfzOnt/EuOK1DxftcwA9/i3GwJd/c2aqYl8Zqckq7vPBzrKj+X9HPZ9BB5fJK/55aZrDH5B8YUsAzsg2wphHE04L9Ng2ITrZc2YyBRZC7Qr3U9TjxGLrEi60tWQGQPOZ7ECcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398957; c=relaxed/simple;
	bh=zDdA6Z/8E3qzcgVxUJG9XgVMg2hV9AEwM6u4bLx3TbM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S/3M7fKFIqsOTDfqO84+7ajEcP+YZth7EXEtYJaM5ueJ9YcqYio3UAVVBT/5WpnA79G2zg0TOY836b82nlgqpymE0qFmDhOQr4ajF8zvLdGYZXQf3pi0krthUQIGYAr00xzhXzvV/uU4IROg24s9i+DWRC6WGTIZTd2DcPJuw3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fdN5I5wj; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4362507f396so1720307f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770398956; x=1771003756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3NXIB170Miy5U8AUdI7je1qnmIqOJUqz+7CF8NtEdwM=;
        b=fdN5I5wjE2WPpeZmJrs2RKKds7Z8CciRyzg9TQKKINNc3TbY51b3CHbwd5CRsO8Fdl
         D/bRgw6zij3btttKrnf4ku31E5FKVm0Olu1OOtQFA6NnD+I0IXleCXTQQ1L3ACuAN/mX
         uVCvxs64sBHXq7EGyt2RgD05BkCNHJp+DqZPfXsdJDqkC4B9swNLgRrV04XKxqcbvVNA
         6ukFI3yJRxYkS5U/jAvINak46f1XVQZ/COOqhUv3JaDCSpAk0W6PQBSvx7zpbvQGtWMU
         iKhcKY7LUEi8QWvbr/lq+Pwh0OgnmrwSfpI9cKAgz3rBKqA3BHWaGupA3jzdXhiT6l4/
         RDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770398956; x=1771003756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3NXIB170Miy5U8AUdI7je1qnmIqOJUqz+7CF8NtEdwM=;
        b=rdKWgfDOklsowPIR+AY1BtoBqwe5SrXMmJRlQZ1vMDiI8oOCtc1i0AqQA66IefwJ5L
         ar6OYaKBaRT6GmaB7XBuAT6dh5I4kd1EXNECBHKoDHhbU5ryRc9bjhffAYwUA4Dz9QMn
         Y68bWDgXRkfCgR51cs2W/fKZG4mWW8l82W6surLv1tReImCAxP/STRMDVnf4zpEkk1Ht
         hLc97nSJDkdlos2NTwZkitzjo3qyTlpBcGCOdXWwNZHNKKRpHh5cUqwHAg9Ze5rc7Oe7
         f7Yam0N43yEBcyDdGYGwX5cmkyeAnZzIYKQR6GiWL+GP8WnZyUrBbXhtAZwzLvy5fzrO
         XIXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCBYoqyzZq4bP9qWeySleF5oVie2NgIxbgj9xSvLyTuaandnp2CMJw3HyYNjHcHwXRIO0QlpJrah4+@vger.kernel.org
X-Gm-Message-State: AOJu0YxLyvTSU/aBEMOAbCmO6oQ5/yHaiC/+cEY6Bzl3SHcnblPPu2re
	rRuXXPUmtUd5iKCwvF/INVoHbWudj01U5JBCqXhy2qU4+2r0mzCbpcB3
X-Gm-Gg: AZuq6aJojFsPnDfgqkk2MK2RyuGRmqeJm3BsvaWGn8QXlYGTYHKzbtZ3hTE9WubI5VX
	xrjdXBzh/9itGLV1iG2Jy8FX6MiZc/FNqnQNA4ADrnu/WwWD03s9cM6DwikXtZxKTcP9R+lsePR
	XrX/aE5DfaBHe3RryXHVkfdIEXJVYpPEsgOg40kWHUezFnRVFPL+ez1NU68O22GD/9ragNcYsZi
	B1WrKo6XWd4nL/hs3pbiYCjJdlK4Jmt/eZsA+LYXgXIbrgFiRYEje525tsOrROXrYHgmyy8xXcm
	yBAPe0QyOnAC3lvtc7vqEnnm6Fk/ACole2igL15IzsjpkU1PtkMdAh59HVC/qlYvcS50hGqV7//
	LBdEzsdEt1CgEXIMFFCfxu7T/hNiY5PgT/ZBRVRdbl/v90q/thz9+tWPOzt/iHzfrx/r6Oup2CI
	pI
X-Received: by 2002:a05:6000:603:b0:435:dbe3:c6b1 with SMTP id ffacd0b85a97d-436293413e2mr5847642f8f.25.1770398955843;
        Fri, 06 Feb 2026 09:29:15 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629734268sm6846033f8f.24.2026.02.06.09.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:29:15 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 05/11] iio: adc: cpcap-adc: add support for Mot ADC
Date: Fri,  6 Feb 2026 19:28:39 +0200
Message-ID: <20260206172845.145407-6-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206172845.145407-1-clamor95@gmail.com>
References: <20260206172845.145407-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263445-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: B043310108A
X-Rspamd-Action: no action

Add support for ADC found in Motorola Mot board, used as a base for
Atrix 4G and Droid X2 smartphones.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/iio/adc/cpcap-adc.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/iio/adc/cpcap-adc.c b/drivers/iio/adc/cpcap-adc.c
index d9ee2ea116a7..f6f72efcc6ed 100644
--- a/drivers/iio/adc/cpcap-adc.c
+++ b/drivers/iio/adc/cpcap-adc.c
@@ -934,6 +934,17 @@ static const struct cpcap_adc_ato mapphone_adc = {
 	.atox_ps_factor_out = 0,
 };
 
+static const struct cpcap_adc_ato mot_adc = {
+	.ato_in = 0x0300,
+	.atox_in = 0,
+	.adc_ps_factor_in = 0x0200,
+	.atox_ps_factor_in = 0,
+	.ato_out = 0x0780,
+	.atox_out = 0,
+	.adc_ps_factor_out = 0x0600,
+	.atox_ps_factor_out = 0,
+};
+
 static const struct of_device_id cpcap_adc_id_table[] = {
 	{
 		.compatible = "motorola,cpcap-adc",
@@ -942,6 +953,10 @@ static const struct of_device_id cpcap_adc_id_table[] = {
 		.compatible = "motorola,mapphone-cpcap-adc",
 		.data = &mapphone_adc,
 	},
+	{
+		.compatible = "motorola,mot-cpcap-adc",
+		.data = &mot_adc,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, cpcap_adc_id_table);
-- 
2.51.0


