Return-Path: <devicetree+bounces-264910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O9rNNdzjWn42gAAu9opvQ
	(envelope-from <devicetree+bounces-264910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:31:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC5512ABEA
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 07:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 757A830A4543
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286CE2E401;
	Thu, 12 Feb 2026 06:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EbWa82w7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32F29E0E9
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770877880; cv=none; b=fzykPpVw4mjxYIz3gHXwcH61TDhRi5bm4lomrFYTslW99Am27IGH0mBm2N48I44/4coF3rueAJYFdzxvsU4De8/vawgF8yXp8RJTVrLMI9n2HtRQIvRpACBfG4gym2y4QUciZ34R4U06PBsYVJoguMXm5yfjxoHh6ov9TY6cFww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770877880; c=relaxed/simple;
	bh=Cwukr+asA9q81opMyHdC2mH8rdLJNfh+2ybtKX0oQjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yw6xMg9CflxIPXxBp5pMP+86RCA1fPG81Rex5c8pyKCj4i+MgNDCMlRnx6t3f+VICaYCE0lpS8fP8TH+IznbmtIKzPHd3q+6qI7ucyq/qKNfIWEumVBtscG2JaOSDU0TR8ASQWUIdfe2Tetbz7xVHSvf0ZEjjqCjqKu2xcVRP1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EbWa82w7; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2ba6737fafbso251704eec.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 22:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770877877; x=1771482677; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0wTHjf1tC7HZoXFDboB9BM1y3uG0BFOwWiKdrJ7KGQ=;
        b=EbWa82w7jw77s2M9lAbs4JGc7VenOCRl6RWbinHKv2+nbhlRFmXovRbfwEBvpQP8y0
         mUeLu/M4ruPtlBFZeI9iUgJCSDTC+I9zi8Hq2rmDLbpPr3BWd3zzxHVgKwg1+ERpys/S
         wpQKztyGt+MxxQ9NngX/+nwFgL2W+x0gQ80MIrn9LAiFBsEh4L5eW1VAKvvSN+/xZSt8
         tmQMmOL1iHqpEmzG4RhNP6wJ2gFh+SR7yrwW1MxlyiGG4D89KfYPYFh8g6XU/bOBoz4N
         WZYDcJPXPBVs89ENan56kofAHJ2+/BBCDCn+P2sRrDs8oanrDsvrpPIggIckmS3Nypr7
         Gjig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770877877; x=1771482677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0wTHjf1tC7HZoXFDboB9BM1y3uG0BFOwWiKdrJ7KGQ=;
        b=oj3pWPq5d+n2PVKhROg/B92WpYfcvB7XgJJkrwv0KzZUhZPoHNIrEU3d2S/8cacZf3
         b9tka7BC8i1TzSeD36gaehcpW4lWKCMHw1/nRqLhMb4Bhf87LCPUbzGvEs/EWmwCqUeZ
         AMLjbusrL4+jGT34Ib5T65wM9KsN/tXsmvZwJVkd3lVMFRSXlWGIBHfx4rOyQAWEwIxG
         PtnYIKO0eld2NCt/uqXeUWx2YI2b/m1l9ColM5XUPyIOiLai/Pyt8cKeEgl/TjrVPmak
         vFLZfG92FDf05D2yQFSIvn3BSBBvQCSYshw7wGy/GwChYfs/NySZKm/bu1iEpdWTf+Hp
         9gDA==
X-Forwarded-Encrypted: i=1; AJvYcCXknZuaFTSiDxTYv++0CeYT+738U1FwitKFnmGFJj5mOmjixvUlXH8NFKg+udjDIxqVzW30unfgtP4j@vger.kernel.org
X-Gm-Message-State: AOJu0YwfMEhl6O3a3ijCyixdb0N+/VDGy/VdHIQm5N0svgaQqer/VL9v
	y74Zns7IpyNh1pyNJwO6hhOL4NijNv5meQ6hzpM5zNrYN7Zwx/hAh0cm
X-Gm-Gg: AZuq6aKJHumxdgK9VA7dvFW8aZBMh9Mnlk/Y+7hTlHJ62a6Bgj3naOOYeE7XI7bR6PJ
	tw3BYZBYA+JPHn99tTZFW2oDh3xidK4k+TCzU3a5FtU/ZQPeDGNbJYNuPEIgLMCtIBY4cDX3M0K
	7VpBrTRU2/V/QUG+Bo6mtPxCOM7It84xS4Rw7LyG6HqChBz8mU6ArNsH8f83YbLWHxbCsK0sjKE
	8bgDhykeCwJPSOXpiDq6G20QL6NB0ql/M6Ah66HxwFDdIbkbTRXjXa7EX9cmv6RkqLgSuMkaklW
	mQG0pjaZbbBreZ0Wf7c1fBjoD0R/YTDSBvxBxxJq5RZuFwhIXa0f3QqA7NyW6er9Zb//1vsJSu/
	/Zvna/3JgOyaHaMXxaC/sFV7sAxqVd4SW+cLCtrmwBzDQabHgtCUlMaiz1Nib/f1eBafD5dwwUz
	cWe6dEvxCBcOy26kNtXdHs1oG/i6wLl+p2hM3WLMxXBsozLGr19QH78/I=
X-Received: by 2002:a05:7022:6993:b0:127:1186:8139 with SMTP id a92af1059eb24-1272f79ca53mr428488c88.7.1770877877169;
        Wed, 11 Feb 2026 22:31:17 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1272a6f29dasm4313870c88.12.2026.02.11.22.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 22:31:16 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Thu, 12 Feb 2026 14:26:53 +0800
Subject: [PATCH v2 2/4] iio: proximity: hx9023s: Protect against division
 by zero in set_samp_freq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-upstream-20260219-v2-2-2b28fce5d09e@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1101; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=Cwukr+asA9q81opMyHdC2mH8rdLJNfh+2ybtKX0oQjI=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJm9xUv3Fbw7OM2UdZHq3f1/nSuOZxhNDl6hGqn6r+74+
 zWlYmV3O0pZGAQ5GGTFFFnOvH7Dmq/6cE/wb9cMmDmsTCBDGLg4BWAiK/gYGebGVTctVqyfdy65
 OcVsQ5qbk5KAv/Gls1uyFuUw7p6p/JOR4XzdzdQ1tvZXu32Wy6lcunP2463oFa+/ST3srFNMm22
 qGg4A
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264910-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BC5512ABEA
X-Rspamd-Action: no action

Avoid division by zero when sampling frequency is unspecified by
falling back to a default 100ms sampling period.

Fixes: 60df548277b7 ("iio: proximity: Add driver support for TYHX's HX9023S capacitive proximity sensor")
Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index ad839db6b326..e714fe00a44e 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -719,7 +719,11 @@ static int hx9023s_set_samp_freq(struct hx9023s_data *data, int val, int val2)
 	struct device *dev = regmap_get_device(data->regmap);
 	unsigned int i, period_ms;
 
-	period_ms = div_u64(NANO, (val * MEGA + val2));
+	if (val || val2)
+		period_ms = div_u64(NANO, (val * MEGA + val2));
+	else
+		/* Fallback to a safe default sampling period */
+		period_ms = 100;
 
 	for (i = 0; i < ARRAY_SIZE(hx9023s_samp_freq_table); i++) {
 		if (period_ms == hx9023s_samp_freq_table[i])

-- 
2.43.0


