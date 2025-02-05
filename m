Return-Path: <devicetree+bounces-143371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A220A29817
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD3C8188465B
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 17:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BC11FC7D5;
	Wed,  5 Feb 2025 17:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3bUbfs47"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756FF1FC0ED
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 17:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738778067; cv=none; b=l8AXUgPEfu8lQ5iKVB/mxM2bkZqUtKF9GXgJt0ccHfoCVmES55LlmRMnuGM+2GwieK/EgiXPAa5b8pp4fKgghv+AT0W0A4NG7YAH6m+K5EDPD18z7PDXTtJOV6lyfdL0uIHhyWnrmWVdcxjsb6CTJfDMQSNw1l0GsTCcCSeY3LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738778067; c=relaxed/simple;
	bh=y7Oa0HXBmU0/PvBO5RRFWrwovXtwoap5Pkcr2yApIVs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pU4eipeoITXEAG6Q2uO/IDOX/G71lafikc3oEo3bLVFmTkptEUL3bXE9nwJZsFtWVzE9mf9D3lmRxZLAeUfc9urxwy5gr5VcdowmcGs4UqEm7R7b7ten/SCe7tQssxDAm3usOSsomnAM8CuCZNQWbEBgGgxfcLSiL/q9qSJRHvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3bUbfs47; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab7483b9bf7so10271766b.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 09:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738778064; x=1739382864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ejWrq6TGbjAd26qleaa7jEfcM/wgJg4o/vWWPpGilgU=;
        b=3bUbfs47UVTy32N/jptZGN0Qs/mLM9zFhSm4AcKcQ9rUSQloZW7tjOYvIxNcT8/xXk
         sCgEx+UIcusE7FRIiv27ASsTqS1l0H4yrk14V9fDZ7K5nvBIFHzrOY2FCb3vPuyaTVPD
         bvUytddJPm6vyDg+aw51bv10KHokz8qVyaSV0KSE8mVh1xkYdWSgIukWRtYGYgHWl0H8
         Mjyi0SCnZg+llaHX8odrXdhxSETARHYTugbisL56TUSphupMh3kDqffyWnHbHEWm2TL9
         DQACzg0Zb7nUWzc7Oy/EW1kLZ7Ty6YGDEOKUwUGnbMxNbSJE6Nr3PpjOUPLzGfNVqJYa
         1muA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738778064; x=1739382864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ejWrq6TGbjAd26qleaa7jEfcM/wgJg4o/vWWPpGilgU=;
        b=ebcGkHi+WfWSgcWhjNE0MFGYJ3qX7ZIM4OTRugcZvcREbi9BxuGb2P+WGqEDQagqYz
         7++edHisCcdNQwL+0s7dAvT0AN2JIyN+Khe1UAltKDPHmF82fST/zvX2X8cz3qhZmtnB
         8PAoOGNnukb2IURg+9Ti8F0eQXiJTWt6AoIle74k5WbeLV3ikKNxpVpFLAn89t9PWDYb
         sYbUDcPicAWkUzMopR2R4E5JclGoytU6moO+y6hXCXB3o4AlHitliAYXUaCo8WJ5OJqu
         rSgV6LbsUJ9FAGCvqWaRwqErpt5dUBbtX74bM8I8smQfvJiHJgPm9Mfu9e58iSGbVdnp
         nXQg==
X-Forwarded-Encrypted: i=1; AJvYcCWod3bzt5oKnbab/4660JMb7zDmmwbuhci5oxOCLj7lhG5yAKhWyXSDFBT3HSLbUp5+4eLrJhk/+3K9@vger.kernel.org
X-Gm-Message-State: AOJu0Yym6IDDIYK1X3ale1ERtqdQh62Lc2l9CYqx6ALgud0qHq3KztdH
	uEm8l7RCavrFSjvY0faEpM2VS1fqLR/i8GM/1ljd66tebCHzJGi0lQeeEuhYfxU=
X-Gm-Gg: ASbGncvBxmtzgIRE31XvM2JOvc8HBNb0VK0MJxgxKCpLRHCf+5R/He3nkXRDoL5gbTu
	nMKRFcArCTvt5r0DMM2ZnQwroEA/MtXFNJv3Iw66zbDIszs7Dp8bJ7Kc1qC5klNW9BWvBGBmqtF
	jwDyDIZ6RRiX8Ba+kv650TzwsNZ3VyOS6rG+twsT5Hh9KvHs1h0TTzg2xeSBxiTXqLn2kkulrx1
	YzW3OcYsFwoSOFikPGwTnFy8uu7O/zdr22M4eLdTKrZ1px8iwZJzhJLTNv1Bx1sszuYf4n70Ece
	9dM7Cau8u4gD2RYP84ZLkRtIsRjjcQRTWwWF7/fHI0ihitehg5p/vR0uWA==
X-Google-Smtp-Source: AGHT+IFi+I2QYC8SCv1Thd4fTlvD9JpT7oehKfpn2hd6Q7dIRYgFRRv14859tXC16oyIXhFfgdVHFA==
X-Received: by 2002:a17:907:7da6:b0:ab7:5c95:3a82 with SMTP id a640c23a62f3a-ab75e216488mr361291566b.1.1738778063563;
        Wed, 05 Feb 2025 09:54:23 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a560afsm1116492366b.163.2025.02.05.09.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 09:54:23 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] pwm: Add upgrade path to #pwm-cells = <3> for users of of_pwm_single_xlate()
Date: Wed,  5 Feb 2025 18:54:00 +0100
Message-ID:  <1829c1a040c707326d9c53aee3577763e2139d58.1738777221.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
References: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2059; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=y7Oa0HXBmU0/PvBO5RRFWrwovXtwoap5Pkcr2yApIVs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBno6W63WuM92iNknmqYpooawZh3QTBAcb8wp4Xc xEhAhPpMxOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6OlugAKCRCPgPtYfRL+ TpnDB/9o3E5Rkl1Ie3Dz1olMCefNaINVPnui+wUhfYEqUbZraMf8EyoN2Is75BF97QrKk9EVG/O HypieBoLrrq8NTPejeFFWGOWqMdRvydtz/dm1RrryJBV4w1fEO8/egw0MNdwD4CtUkoL69q7N0s GfMipxg5eX5o4eEyibOheuTG6DgGnHHKVl4xkOftWNaaCKmvl2FBQmzlhZQahhnEzJTGZLQIAzF LIJ1vpsJxkN9EWvNp38NXdvcR9VCaGwdddPR+ko+Kw+vul3HuiCTrDls2fcXgFCctX10IbJHoj/ GbS2ikJyLim/5wOOqAcVWPfi/MCu+yjoKCupZ7Wi2c8tyJMW
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


