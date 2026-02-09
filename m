Return-Path: <devicetree+bounces-263791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE2kBkRXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:40:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7007210B6C5
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:40:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5F56300875E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27672C0261;
	Mon,  9 Feb 2026 03:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A8AiLcuo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C673236A73
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608398; cv=none; b=Qo1HryeVvN8nIvQ0XGcv/2sKeOLIyWn5HgnShzVaTyW2oeOKjdubOGMLZcEWHmrTmf3qb0FlozXgjltGsvHOwKrQA9QZJC1n2ccQnaeX0iWm/qhRgz/WeVC8zeHiAp3ZV/K4EvLsCjBPOCOL5tUx8+0cMakt0ugjNod0NIOh1k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608398; c=relaxed/simple;
	bh=DNGsEtjd1j4ZuRGsLgacguqxXG3+8LAwUt2gLAMGk9c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kpwG7kr83taqiKUHmcDlp7Uxifr9i5DUu/nPl4BcKs9ppwcGRQvLoqq0NdSoaI4FIiMzlVvlX4TikJ8alHE69cGcVqPKD8E/IAgsvcitXXrAQQ4IGJZ0AsnXkpcF7E5l129540go4zwvFlQJzRVFWsT3ZDGu3yCX7wp9AUCkPPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A8AiLcuo; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1233ad1b4cdso263344c88.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608398; x=1771213198; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UsSlquKVu8f3wrVapETiykNB45yqXfDUE6W57yKCxqc=;
        b=A8AiLcuopCS/h1ZmmEy+LoiF99rOl2HMldMwd1kc1C4O3+lmi6VHwdA61Ud5Ln66Bp
         yIcO/JyrI0En/hAH39E/5eyeU/eB6gcyG1Vy6QiU7Pj11gZsXtax29hCAKhYu8mFlfCD
         NcOfr9OmgMotRDFNh/qvfeSdxAq9OT2dD0lMv2x0U5qoSV2AgnDBHXFZ1rpr4tro9dkG
         ReW16YtBrrMmOpTjvYeSxfEJ9TCCsV501gG6UuHR6opxDD9d/2VBOy7zrA2pOjFxWvWv
         4WDhVb/dO2foCscCpL4uzEj+kdbtK20bU5IXFk6cKHgTleEVL8jz1nfhetMgfHK1UiUm
         Qauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608398; x=1771213198;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UsSlquKVu8f3wrVapETiykNB45yqXfDUE6W57yKCxqc=;
        b=KwGnvBKvb6zCrdILQcKBV0Q/p6U0AZydlMKyHqQPvqGQx2cysJW6tDGOG67KFUfo0/
         HLvE7x2lGbNW4o150Grs0eWJtzM8CdNz1x1brHP8eDat2pb5R1UagGFBF+2GDdmmpW/Q
         WkFFmq9YA6d5kPhJMJCCE9/f25lHKv0aVbWBgdnqoR5BANMsyM3ScsD/XTZfQoA+pf4A
         /6SmOnXu6LMmV9NWG0a8rC1dUA8cFoi5/+QsA4Tjo+msEuNhiLu3Rvi0EFzEB2p4ZP8y
         vfHOeRdUCnbLXVrQDqO+edUqw2Unray7F6RDcK3iPu+i+Trg9kp1Xmw+CH48SGUkHvt0
         fkxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVH9XUxzHWM8T6dLQ8IO8Ljv0I3HrIeGg8sETutGkZEwqhBMoJzz8IdaLKcpkmXdNA60O6eMVKX/njy@vger.kernel.org
X-Gm-Message-State: AOJu0YyD12eXS97PTgz2qLtkS8nAr0ygooAAmnCXBG71UCzBKxP5szcA
	D5S0iT7FsWjz8OJb8ulLXUkA4nu9zFxZdItIU9N/4XTv5cqOuorRgzGB
X-Gm-Gg: AZuq6aKSaULQn4SS0jcIu91o8K2BldgCyb1Lf4ssYYvajwkQ7e2M4xZPw0Y1jdX0P6y
	Zea6XzfUCTWli/ZxABUs9IDDPiOlefrbSwQaxirCzgjgT2RZoij9XkqBE5s3SsgIdVsdxNoPl/M
	png3mXaLyGIQcjutmJuWMg4enaYlXBMD3VrXXY6Sz+PpUGtLGh00BcQCtIE3XQEyDReQ3k/AyHM
	gL59wz5ThA5rYQP360hxlxeoQnoOylQpvYFrB6rRnXDrNBr5yLeVZ0jVv+dZdJ3dKtyrl/yqqQ9
	JDhRuXbl70WdqEniTG+gbLCOaFin0FyatD4zs3mgf2p7+8vOIW+Sus4i/LlcYgQYzf7dIzulxe7
	VbPn/wHGeCTTv55AzP/Gj++9T8TJjI+IKnS6mC2GgTbwSZ5H9KYUuAcMVC9miq6OP4qzqd/7sD5
	rHO37ZPMYwe5s=
X-Received: by 2002:a05:7022:e1f:b0:122:8d:39d8 with SMTP id a92af1059eb24-12704020e78mr2435410c88.6.1770608397670;
        Sun, 08 Feb 2026 19:39:57 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:39:57 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Mon, 09 Feb 2026 11:37:03 +0800
Subject: [PATCH 2/5] iio: proximity: hx9023s: Protect against division by
 zero in set_samp_freq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-upstream-20260219-v1-2-2b4d74e309d1@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=996; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=DNGsEtjd1j4ZuRGsLgacguqxXG3+8LAwUt2gLAMGk9c=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYT/Sjb12bWr+PTs7xfTOlAXBawLOTt9VdZRFXmkbc
 9+89xted5SyMAhyMMiKKbKcef2GNV/14Z7g364ZMHNYmUCGMHBxCsBERN8wMvRqz2Nl3XXIwfDF
 /9fzg7SflZoJ/f6k63PY2/7py//n5dwZGd7nWTe2Xr9z6nd9z5zO6g3+0lonvKesu7Vv+Xw1/kr
 3jwsB
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263791-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 7007210B6C5
X-Rspamd-Action: no action

Avoid division by zero when sampling frequency is unspecified by
falling back to a default 100ms sampling period.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index ad839db6b326..eb4902d18d74 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -719,7 +719,11 @@ static int hx9023s_set_samp_freq(struct hx9023s_data *data, int val, int val2)
 	struct device *dev = regmap_get_device(data->regmap);
 	unsigned int i, period_ms;
 
-	period_ms = div_u64(NANO, (val * MEGA + val2));
+	if (!val && !val2)
+		/* Fallback to a safe default sampling period */
+		period_ms = 100;
+	else
+		period_ms = div_u64(NANO, (val * MEGA + val2));
 
 	for (i = 0; i < ARRAY_SIZE(hx9023s_samp_freq_table); i++) {
 		if (period_ms == hx9023s_samp_freq_table[i])

-- 
2.43.0


