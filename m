Return-Path: <devicetree+bounces-273683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHNMKLtZsGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:49:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EE15F255DD7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4064F3028249
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5D03D8116;
	Tue, 10 Mar 2026 17:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MP1ZjwMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDA93D6CCB
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164940; cv=none; b=u/k7EyZ80bmeVlwr14ZnWZkw1FhuG4jqxQesU89ZtxzQ/oHcEdZ2WOybBcBUJZuPJrNwAgG3psagu4YKMhfUt2wJBM8P2x11GCIuUrtRyahotxqnXc+wkWR1MIsgvl4F4NbDCg/BRfu7s8ZwRk6Cm+AkUwf0P1qfN2FOLicQs1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164940; c=relaxed/simple;
	bh=RwbHXRCoVmTWoeGYZD5/ykMLkxfjTwmcVo/8jjaLucI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dlBw3YPQgiDP4h0HM4XDIKOFuKJxUst5tcnBo1lsSWjjGD18voyk0TvcziG2ubs3MgU7lZ6N0GQccVdCKnfQROe6w0P8CW3dT3MHsq0PBYVGniS2ZvFBfnoycXUwhfut4euggm04T5rxWy40CHSAiV4TZuLflO0jSeSr2sbxZcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MP1ZjwMk; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48541edecf9so16327875e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164934; x=1773769734; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q3ExWVYtTjOCeiXkdLArD0AHGSvrIoXmw1MBLiE6OHE=;
        b=MP1ZjwMkLhpKIMrUsE5TyKhpzwzbxU83503eEVGKSuaap6BuyNhsKSkK8dwQlSf9lz
         DI3unISjDRHmXaBp0HqSDvM7Jdp7QG3zCXDD4331upsEMQcp1PoNbXof1yXVao80p7o1
         970IiIfiwxxoYHvCCTJG/67NySbpAB45ZwHljGoaT72BM7ZLiPlsJe9tdlO4LbAIOsiT
         jDQUNPf695acW8LLfE79z/6JKYO5rFKpPvJVbC0t55aRqBytMmiBTM/c0TW6IoBRBAJO
         5ROKZ481TRJ8+5K7eerHRgZCUJ30C8MZKICIxYD5xoBeoT82SkVHKaPx1nksXe54diTa
         dvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164934; x=1773769734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q3ExWVYtTjOCeiXkdLArD0AHGSvrIoXmw1MBLiE6OHE=;
        b=q6gOimqP3TxD28dWgpDK/N4G5EUDu9X8dhAGjD200F86vesW/vtxOmWabcUyuTpnJ4
         oAWjY55FELJTnkdkWf+weG1ECYIY72O8qeYPIcWcJ+LYcvOLDeeSEpwd8zgJFWnNTLXC
         EuoViBwWVTuY771bnhTDkilfI2Owvp8rlorM3drgBKvcCUK7kk4+9P8FcY//ERXnC/7u
         Se14ZJwKtGfCnvE6r+ESTG2EJFq0GbUDbolWGJqBHvnCDRNex68rNKnDhtdARJj//lNe
         4oJBBlXWLI5k3fRoBHiLT9SNyOLSyVfZsTut0OttrQCQUKGs2EtQwL3meOKsNX+LZRhP
         wvlg==
X-Forwarded-Encrypted: i=1; AJvYcCUw1y+8IgrLBBu3YwbOJre9ZOfWfy8BNfoFsr+qM5u42mUke4+UlIxCVYGsglzaOqurl6aNqXzfjU7K@vger.kernel.org
X-Gm-Message-State: AOJu0YwKQ+x1m/ZFyLUUNvQNiwwRCVyzVvFBH3YtnvmDH65tctuD+T+i
	FG3ix4tnkRO5mQnB+UcN+oblgaECt+/XA+/HVU8M2jJGc6uNiH59K+di
X-Gm-Gg: ATEYQzxHCH67HBG1bUZ6NowgbjexKNjRoh7xYTS4+EXvo3JF9rK3DHbZTCp90t8jCLQ
	eTjcOPWQB7qUntKbc7gQFFOxhxLnbuAqjHS9qepJByeXldN6+WCb0SxVSxI2GdB+UZtNbajhVq4
	MS6n7DCp0cLWhbMwI1BvOsx6DwPcsYVeGcahvLMIaPyZWQ5JdezVFN43BIwnhm1iYX/ggquVQN9
	k1E3M21mYSaU+sMdPFGbSxlZ1peY/TBgAuoNkKVyFFBwGd8xQr0wqmbpE/0AWPA68/un6ANuN/a
	4JTP2nSBse4ZSEHXVteMoyi+mfa5MbIF6I8Ogk9jIBFX4yJK8Xjr/S3pZoI8OjuXA6Gn/x4Mfuq
	UCHRx7bzApwou4sY0J/EiWECNigqEFxpcX7xPXo0h+d36xsV3yPN+A8OtOAJBno57yHPI0EsWNC
	8O3XfIciLkpCG8vn9a15evV6VX+GbjD2I6adft95NnE/hcLLHAD82xVmvjUA==
X-Received: by 2002:a05:6000:2881:b0:437:711c:8754 with SMTP id ffacd0b85a97d-439da55541cmr29415959f8f.7.1773164933500;
        Tue, 10 Mar 2026 10:48:53 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:52 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v2 5/5] iio: dac: ad5504: add optional GPIO control for CLR and LDAC
Date: Tue, 10 Mar 2026 17:48:35 +0000
Message-ID: <20260310174835.24209-6-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310174835.24209-1-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: EE15F255DD7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273683-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add support for the optional 'clear-gpios' and 'ldac-gpios' properties
defined in the device tree bindings.

Use devm_gpiod_get_optional() with GPIOD_OUT_LOW to ensure the pins are
initialized to their inactive state.

Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 drivers/iio/dac/ad5504.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index cd563460fc0a..58538f5263fc 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -7,7 +7,9 @@
 
 #include <linux/bits.h>
 #include <linux/device.h>
+#include <linux/err.h>
 #include <linux/errno.h>
+#include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/mod_devicetable.h>
@@ -48,6 +50,8 @@
  * @vref_mv:		actual reference voltage used
  * @pwr_down_mask:	power down mask
  * @pwr_down_mode:	current power down mode
+ * @gpio_clear:	GPIO descriptor for the /CLR pin
+ * @gpio_ldac:		GPIO descriptor for the /LDAC pin
  * @data:		transfer buffer
  */
 struct ad5504_state {
@@ -56,6 +60,8 @@ struct ad5504_state {
 	unsigned short			vref_mv;
 	unsigned			pwr_down_mask;
 	unsigned			pwr_down_mode;
+	struct gpio_desc		*gpio_clear;
+	struct gpio_desc		*gpio_ldac;
 
 	__be16				data[2] __aligned(IIO_DMA_MINALIGN);
 };
@@ -299,6 +305,14 @@ static int ad5504_probe(struct spi_device *spi)
 	if (pdata && pdata->vref_mv)
 		st->vref_mv = pdata->vref_mv;
 
+	st->gpio_clear = devm_gpiod_get_optional(dev, "clear", GPIOD_OUT_LOW);
+	if (IS_ERR(st->gpio_clear))
+		return PTR_ERR(st->gpio_clear);
+
+	st->gpio_ldac = devm_gpiod_get_optional(dev, "ldac", GPIOD_OUT_LOW);
+	if (IS_ERR(st->gpio_ldac))
+		return PTR_ERR(st->gpio_ldac);
+
 	st->spi = spi;
 	indio_dev->name = spi_get_device_id(st->spi)->name;
 	indio_dev->info = &ad5504_info;
-- 
2.47.3


