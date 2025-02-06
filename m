Return-Path: <devicetree+bounces-143588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD63DA2A818
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26D523A741F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1BF22CBED;
	Thu,  6 Feb 2025 12:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J4KsLeZi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDC822A7EC
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738843610; cv=none; b=PCX+4QKARY9fhSz1Dssb7HNjyweM4QKgTU7Mv1M7oYFAA7GsGe+c4l4vZrSSxSvwfH4qJb/1ZnbS/zG3QSDaaKJ+S3HV16LFhufk8U5F6U7PIsfDGP00UrDp2iNzWPvtT5U4MsgotwfsQC6QjgsgmP7hM13Gar0ir22U/2omVOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738843610; c=relaxed/simple;
	bh=hB4Y/PN8/M4xgeiRJgl1lhme90Lz9h74cogcmW6hNbs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M7OTIm21+CjjQzxRoUJOPhezIpBXnVkVTbjRYzr5yxQjOPlB/e0K70y/Lsjp2l7TyPmKwXqrmMfRsTPc/YPyfmJaUo3TfUDXMfXx44JJS3QBKI092qujUnk/3oJwWRigBVdTn4In+9barQCzIJOK3poGEIyrosUm6HhUQq+AKSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J4KsLeZi; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab698eae2d9so153549066b.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738843607; x=1739448407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NReF8zJPQ2mkoOGGZ8LIj6uOL+cpVio09VFK6cVJRwA=;
        b=J4KsLeZibRlxhvsgauAcUHsvHPIMQsakXgMO5ELyFm0A4Sldy0rXiVS/hzslZQ4oxT
         Xf9HiM4KlWc2jUPrNuz6+K0cyhXWn8bIbpCcp88A2It8OyTAnLOX+ZOfVFcPeU9Pq/Ia
         qJfgmIS/LZW0xSUosT1OIHd/N2p8ESCcB6fZo1BhLBjn8M2g1ZZ6xpql5uBIYVt5vSSO
         PQSux2TdnzChdGj0jOAvTKW+Htlekf/rfZoKmHc9IpghU83YuwRHi7b/65DFCjdiytKl
         A1s44yIHHAvHxc1yT012HGSQUX8j/wFDcdoJyYOnaFFemoZYJLgUHUeFkgtZ0NU7Rfh3
         9MEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738843607; x=1739448407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NReF8zJPQ2mkoOGGZ8LIj6uOL+cpVio09VFK6cVJRwA=;
        b=dwqaSCxFF34m0nuMxY/dR2fGvhptaskjVTh0W48ZrQZCLxC7GiFNPYPcgiPOVByNHb
         Mz84YyTF3ziRiSnshIUU8o6X26oqAwgkLBXTkn+cQ24TOC+i6hWuvM+GDZAifQ0rY7W3
         ZjfZPJMHY/NpOQp8ZoevFkD9iVw93qv/ixf9BLVWM44Q8rlyGqmEl7wIIWiDWz8OSimz
         hmvGeuF2dAY4h+buVCQfxU14nQ5vlDNSolrdy67BYxzU/gL0JKMfbmSNp+kXzq9u6vV3
         rGleksbODxnmOoTDHUCnia9uhzHDY2M0u3cc+RRYTgGWSrHokS4qBguzi2fgYrdqvqws
         2/LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm59sOBU03QmeVF5Kizr9aaw9oQ4QprYfkEoRShEL4PQLLKW/4Ti66iQOoifs9nmsoU3L8OZe07Hd1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsd1+Q6u1+3pw0Z5N098EM/rGlweiAhoIg+Q3Al0GKBOgf9pCF
	PO13hrL0UnVMI2yt7u93TQvl75BQct2xpBaWoxd8akt08qRpkhgrR9l4V77Ksm0=
X-Gm-Gg: ASbGnctaeJS7YltUP0q906RvefnS9Gbk5QJwtSBvb4IYyRx2qCWLQgtom32NWbjahc/
	Bj/TPejaLIv4vAcsz0Ksw8AlFDaHEB0BuGa/8Vi0B9GaUDD3FkCDdUi9IBEkDlbVd/VG6U4Kc7g
	XOxe8+J4dLBpXleDt1p/T44OyKLYu5JCP715vDIFuCndC6HmmLD9EGEK8d2ec9Xsuj+hxgz2rzk
	rcqYEamf7mYOWPJ7bTenkfwTzTovyq7pWHNQJG+/azx6P0UZLUvzhP58dvWp0Pc1PiCYfub/3Ql
	ycAKloKxtyiP08YpBGotY2Ys62wxM54TSRqe21OEXrV1Tnl7PgWueUjpaw==
X-Google-Smtp-Source: AGHT+IGQ1DA0hZwXcuSSWYUM+Nwt3fhgw1zzCRs+JlqWF6tyiwu3NKdw87WAG8YCeJ02lh0EqQN6Ug==
X-Received: by 2002:a17:907:1c29:b0:aa6:b473:8500 with SMTP id a640c23a62f3a-ab75e2f35d6mr665775566b.42.1738843606248;
        Thu, 06 Feb 2025 04:06:46 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7733399b7sm88700766b.158.2025.02.06.04.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 04:06:45 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] pwm: Add upgrade path to #pwm-cells = <3> for users of of_pwm_single_xlate()
Date: Thu,  6 Feb 2025 13:06:25 +0100
Message-ID:  <b33a84d3f073880e94fc303cd32ebe095eb5ce46.1738842938.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
References: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2213; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=hB4Y/PN8/M4xgeiRJgl1lhme90Lz9h74cogcmW6hNbs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnpKXDTGJARL1cSvb+WvKKbPpN9O1N3KQQQTDB3 QWnCB5cXhSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6SlwwAKCRCPgPtYfRL+ Tv9kB/4k1C64n/wjXyMEl2YAPPWhoTmdH82Ps93+wOk3K4f0TLrMY/v3IE/7doFskqR4mprAuUS 7ho/c3R44ScCD3492ffliwGypxz6Hve2qbgzjCOdIpiExgUY7CbTNNbns6kPQEXKQcruOYMSJeW 2ktRsj66bLtA8UIEuNqVC5sBXQ+hS1oSZXyB9v6bc8Q13RTFvMK8f1eVuyPT5/3oLVnySTMEy+8 0IdEKIGXZk5gPm/kmEaPuYgE9cYlDTAZpg+gn3fTA3u3LY3Kskedyfwe6rW5iD9kwwVW5Fgb1SC aFz3p+GzT/LuUpu2kMYs1J2mETTHLnBRQ5J+T8F+F38FwIfG
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The PWM chip on PXA only has a single output. Back when the device tree
binding was defined it was considered a good idea to not pass the PWM
line index as is done for all other PWM types as it would be always zero
anyhow and so doesn't add any value.

However for consistency reasons it is nice when all PWMs use the same
binding. For that reason let of_pwm_single_xlate() (i.e. the function
that implements the PXA behaviour) behave in the same way as
of_pwm_xlate_with_flags() for 3 (or more) parameters. With that in
place, the pxa-pwm binding can be updated to #pwm-cells = <3> without
breaking old device trees that stick to #pwm-cells = <1>.

Reviewed-by: Herve Codina <herve.codina@bootlin.com>
Tested-by: Duje Mihanović <duje.mihanovic@skole.hr>
Reviewed-by: Daniel Mack <daniel@zonque.org>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/pwm/core.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index ccd54c089bab..bc05818fa370 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -1000,11 +1000,27 @@ of_pwm_xlate_with_flags(struct pwm_chip *chip, const struct of_phandle_args *arg
 }
 EXPORT_SYMBOL_GPL(of_pwm_xlate_with_flags);
 
+/*
+ * This callback is used for PXA PWM chips that only have a single PWM line.
+ * For such chips you could argue that passing the line number (i.e. the first
+ * parameter in the common case) is useless as it's always zero. So compared to
+ * the default xlate function of_pwm_xlate_with_flags() the first parameter is
+ * the default period and the second are flags.
+ *
+ * Note that if #pwm-cells = <3>, the semantic is the same as for
+ * of_pwm_xlate_with_flags() to allow converting the affected driver to
+ * #pwm-cells = <3> without breaking the legacy binding.
+ *
+ * Don't use for new drivers.
+ */
 struct pwm_device *
 of_pwm_single_xlate(struct pwm_chip *chip, const struct of_phandle_args *args)
 {
 	struct pwm_device *pwm;
 
+	if (args->args_count >= 3)
+		return of_pwm_xlate_with_flags(chip, args);
+
 	pwm = pwm_request_from_chip(chip, 0, NULL);
 	if (IS_ERR(pwm))
 		return pwm;
-- 
2.47.1


