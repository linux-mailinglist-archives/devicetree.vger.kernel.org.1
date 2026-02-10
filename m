Return-Path: <devicetree+bounces-264547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CIcKlOZi2k3XAAAu9opvQ
	(envelope-from <devicetree+bounces-264547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:47:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 443AD11F18C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7F5C304A8A8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53D532ED2A;
	Tue, 10 Feb 2026 20:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QDO0fcyc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A92331A7A
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756418; cv=none; b=hfS6B9NFIswVnIhN84RTcWHXG62d7j0IcgdC0F2veu0tiHCT/IKZ08FIppJBM9oqRYd8ImzOL/voS++YwYg50RfyfKBJycqxmj3PsdeB4B92gDiveMEVSJjlforyNSW9y7ryonjZwOcyGi+zpptCWo8gVednImJj4ilcQvt5ozw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756418; c=relaxed/simple;
	bh=L2xsjNTQ2sKBAoSEbdRhmHvgPTTi44GQ14ajC31jI9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KZhwfXThi4U0ppnKSQiGWXhLbSi3Mez3jIEo1s36E64sn3DuAgcgAQBYpnWcY+SFMCgjLaFeXA7wdna9Z6+QTlxUM8xA79Q+9Nx80wOo9P3jG6KlrWP7zPDywd88cuLtDbc39oAonH46FRVn82Zr1OKbT9F21F+9lmnQPvlDPKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QDO0fcyc; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso2243965e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770756406; x=1771361206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LUZ/YRPT1sN8gt3KA41XFNZVcdYG5u6xhlqAIrhH5jc=;
        b=QDO0fcycCir1m/MKpzkiZSleQV357ZqE+Lh7Q6Uu/5+R5P7rA6bWXTC4w28ZcGFOPT
         vY63c9xb5+YZL2KvMtD0z1ePE04X7YrqFhBpBCE1L+v+ULv9MMa8Ll32bdmG61qYmBO1
         YudVtxFvodGbguCEjdIug9Dz4wzFBq+/3qPgyGBIqAL1pjHROM268d6S5tJ1swZ9AIO2
         CvquMaAq4Wk66MoxwEcRlpD0jZiPShZ44cBGkjgay4IqGdu5WCBwNMGXoNMnnXq2qXwW
         691ryol9zXuTIfZ0bZKgaRBQepJUKj/2z4YqQVmMhhlt36UlPNPsai5f5ul5RZhyiKcr
         T1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770756406; x=1771361206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LUZ/YRPT1sN8gt3KA41XFNZVcdYG5u6xhlqAIrhH5jc=;
        b=kCAINXoZjnES+WfNNYVSHqHnLeJ1h4DK2gsYTIjuw8kvtFVohJYX18mbcnECKe7NWi
         rb6XUFNaVnrPbPgW5R/cgQfsYsNHHg/AtfCmQx8RvGFM/iXOrKUsIEU3T6kQ6cFBQ1qN
         RXM0ec8YWWF/VSXe41p9QF5D3/RuXIbSCwhvzSRuJJ9Xl4yev8QzuY4k+3ieslvKD1Yx
         sFGhpC4Al8kiSNKOcNheo3eNt549qp7xNeDQVNAqjZaEW5ReFpSCbrk7F2552MPEHepn
         Ym2w12lpLR9u/+VpzzQfMsgOogvpHJs4NUPfbjK029THi+Pi42WmajxamOjmCHj76yID
         u3dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYInWg5e99dQsxIVCU4BAnoyy0r79VtHxYywzoTr99mzO/wWYonkfVYXN61lSzvIf6vopF82pc4At9@vger.kernel.org
X-Gm-Message-State: AOJu0YxUQDgXGD9VVw82ddEQ+Efa4WbVFFRKPcAAhDhynTRUS5MenWi0
	sZL8+k3E3VOeMi6pVEDsICblriOtmB18eQrQigSr9tVlvbpCr87LXVPo
X-Gm-Gg: AZuq6aLjR1H0NlNi3RxhK0ZCLipxPvIaR8V2P3lguZYfPu3OtbggguOATQKCMndmKc9
	Ny2totTzjLyIDq6Axhid3bjoSQhScdEj8jVyoeF2FPBjBj4+TaAupPgHTSdv1ZRTMZZ9PS4Ne7z
	q6nXjGC8MmYH9JVIhWP5AVC1tuaVMH0uEhcBjCViH9BvBCrg+t+ypQb6muAp74kK6xZz/l3mSZF
	vFkhzvhVNS6dO7dlyJUehTmX6DcaKHnRQSoXZwlpFRttswwgNbxDFUjue5NbMnZ+zm483x9Br7s
	iSTKebFIN79z4vL274a1/C8Rg6AepY+w3fodRGzLRQgHsG/0hUUogEOZ9WPKkBX0B+bUd5NbLAg
	FVQAlCogADjcRJYVWeW42waNRZpJcM7+DjBwuChLu7yUBvgS6T55UXMjSwMy0ngbP0buJROWI9z
	3p5E9PA9RJqbuyvkKQWf/yd/R0UQ==
X-Received: by 2002:a05:600c:820c:b0:47d:333d:99c with SMTP id 5b1f17b1804b1-4835054f3f4mr58429895e9.18.1770756406345;
        Tue, 10 Feb 2026 12:46:46 -0800 (PST)
Received: from [192.168.8.10] ([2a00:f502:160:28bc:a26c:adcb:8da8:2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d7d6f3esm71451965e9.9.2026.02.10.12.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 12:46:45 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Tue, 10 Feb 2026 22:46:11 +0200
Subject: [PATCH 2/2] iio: light: vcnl4000: add support for Capella CM36686
 and CM36672P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260210-cm36686-v1-2-aef68dd46ad4@gmail.com>
References: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
In-Reply-To: <20260210-cm36686-v1-0-aef68dd46ad4@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-264547-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 443AD11F18C
X-Rspamd-Action: no action

Add support for Capella's CM36686 and CM36672P sensors. Capella
CM36686 is an ambient light and proximity sensor that is fully
compatible with VCNL4040 and can be used as is. For CM36672P, which is
a proximity-only sensor, also remove the IIO_LIGHT channel.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index a36c23813679..97dd930d57f6 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -185,6 +185,7 @@ static const int vcnl4040_ps_oversampling_ratio[] = {1, 2, 4, 8};
 #define VCNL4000_SLEEP_DELAY_MS	2000 /* before we enter pm_runtime_suspend */
 
 enum vcnl4000_device_ids {
+	CM36672P,
 	VCNL4000,
 	VCNL4010,
 	VCNL4040,
@@ -240,6 +241,8 @@ static const struct i2c_device_id vcnl4000_id[] = {
 	{ "vcnl4020", VCNL4010 },
 	{ "vcnl4040", VCNL4040 },
 	{ "vcnl4200", VCNL4200 },
+	{ "cm36672p", CM36672P },
+	{ "cm36686", VCNL4040 },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, vcnl4000_id);
@@ -1842,6 +1845,22 @@ static const struct iio_chan_spec vcnl4040_channels[] = {
 	}
 };
 
+static const struct iio_chan_spec cm36672p_channels[] = {
+	{
+		.type = IIO_PROXIMITY,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+			BIT(IIO_CHAN_INFO_INT_TIME) |
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_CALIBBIAS),
+		.info_mask_separate_available = BIT(IIO_CHAN_INFO_INT_TIME) |
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
+			BIT(IIO_CHAN_INFO_CALIBBIAS),
+		.ext_info = vcnl4000_ext_info,
+		.event_spec = vcnl4040_event_spec,
+		.num_event_specs = ARRAY_SIZE(vcnl4040_event_spec),
+	}
+};
+
 static const struct iio_info vcnl4000_info = {
 	.read_raw = vcnl4000_read_raw,
 };
@@ -1867,6 +1886,19 @@ static const struct iio_info vcnl4040_info = {
 };
 
 static const struct vcnl4000_chip_spec vcnl4000_chip_spec_cfg[] = {
+	[CM36672P] = {
+		.prod = "CM36672P",
+		.init = vcnl4200_init,
+		.measure_proximity = vcnl4200_measure_proximity,
+		.set_power_state = vcnl4200_set_power_state,
+		.channels = cm36672p_channels,
+		.num_channels = ARRAY_SIZE(cm36672p_channels),
+		.info = &vcnl4040_info,
+		.irq_thread = vcnl4040_irq_thread,
+		.int_reg = VCNL4040_INT_FLAGS,
+		.ps_it_times = &vcnl4040_ps_it_times,
+		.num_ps_it_times = ARRAY_SIZE(vcnl4040_ps_it_times),
+	},
 	[VCNL4000] = {
 		.prod = "VCNL4000",
 		.init = vcnl4000_init,
@@ -2053,6 +2085,14 @@ static const struct of_device_id vcnl_4000_of_match[] = {
 		.compatible = "vishay,vcnl4200",
 		.data = (void *)VCNL4200,
 	},
+	{
+		.compatible = "capella,cm36672p",
+		.data = (void *)CM36672P,
+	},
+	{
+		.compatible = "capella,cm36686",
+		.data = (void *)VCNL4040,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, vcnl_4000_of_match);

-- 
2.53.0


