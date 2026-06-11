Return-Path: <devicetree+bounces-310470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +zC0K7+3KmrnvgMAu9opvQ
	(envelope-from <devicetree+bounces-310470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:27:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 453C5672535
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:27:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JvmpRGLE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310470-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310470-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF818300ED9D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E9940F8C3;
	Thu, 11 Jun 2026 13:27:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A82408637
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 13:27:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781184428; cv=none; b=YtKFb1/wiQvTGUZ/YTGwC8pD8bs2uRrQSFDSDJxBrjnt9zF1XFh9z371g/K6bw1BkfU0EBv8t/fGCe4HiIX21pezVrQuwxN2fYNbnTHsTAkVk+J1TwMIZNE0UZ0SlxUAI17WVjSrkoSlSmoJIS5k5RDVwa3bLbnb5Rhm7PNl6Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781184428; c=relaxed/simple;
	bh=X11O1R4dgLO6ddUHG5Aczt1Wa73h7Ir/uiyJWMPSgGA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PYp/jxMhPit0gXsLu3XA0Bhbf7lQrbz4M5VrDbKFzLv9TTaVGQV+Wc6nCdZ45hOMWpGZywLz+od6lwSspeM4rThSiUUJSxg9ByCIjbimq/5j5Uu0zK7t0R273M27jfotrMqfRF1mGFhNWyhoyc5FGLv/QfhUHRA9YFrxv56N6Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JvmpRGLE; arc=none smtp.client-ip=209.85.208.54
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-68bd9fce347so15120065a12.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 06:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781184426; x=1781789226; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8uvqniZd9e21wQXUD3mgxcObkVWHNbQ1q0T156TwEqk=;
        b=JvmpRGLExR4wM+ubxR2Z3X6LiYFQ1liovJiirtVtKJTI8jW+yfumwv+waevfZiwFdZ
         0o6lv7uYbX1OBmtnWGIWvFgbfF7XkWav7raejqRPvGDD8Kndu+qSszP3YAuz/nZLwD7j
         Oa+ec9QzPnn9CaAaETn4+NYDc/cyFa+hb87Zb0ChYcRpgDRtuf7519lU5vKoHwEULhPx
         +knYzQ4dED4cgeqrHUR3usTLS4bTtkq5RTiHuzEXwi6JgtOUBXkkdD21BxryH6AooXtk
         qKof2XVz3CEhh+uOUgxaOPdVwTzAygp888u5QCxT6r2+zSAIXYSOV8P2w9vjf5DhP81J
         kJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781184426; x=1781789226;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8uvqniZd9e21wQXUD3mgxcObkVWHNbQ1q0T156TwEqk=;
        b=eBby+VKFNr5ZC6RiegQCYpRswq4RS+Tte01e0oK42AYD5LCIBqLY2WIBddX0DqUI/5
         Pvd/Kcv/ub5Jqm+4rLGYXLbwK65CNbcpYQ5lfGEhZa0CdcM/307HbHZTpPUuV2SR7qbe
         4fnZLdKbNZUJvYqyvVzbYPZhPW92aNJVsMBnlSrPQFvulCSrtEm7TOvmCvwmh3OglLP9
         PKyyAvy64yWkxFT+9Ef+PZ74SDBhvmFCSCiy86sOGLbayH2JmqXrPtEO+POOEBl0W7BQ
         3BtHK3elYlXenFXcrMqSdXWsMW5OzOoNBTMefX0A1qtszBK8L6HXsqv8+vZZl5FC10pE
         ttyA==
X-Forwarded-Encrypted: i=1; AFNElJ9H7RctniFZrw2qpVgshL8eE8YVMwLGhvyffGXvi1kXCImpC0+jAu21GoVxpYi2+k8vTCz/hv0RUcWp@vger.kernel.org
X-Gm-Message-State: AOJu0YyPx6fJQrczScX2nA1cmO9lm2pmOrT9WIWxRbfbooZh43XIwm/A
	dDt580o1CrW9RLrrSMoCyQVRL8VaYMJ9efiICptYEMt3BjdoRfdK52eb
X-Gm-Gg: Acq92OFxdkQ8cCYEek+FCjgrLUReb9sdH48CdgwWEK+oFaZPLm9L5Umm8UuJK2brdy+
	cuGPyM+Oc94KPWzCeS9bwm+qNJ9D4kRGeH7UYCd27oYSIPN2pm2ddofU57K7/55p1KgDviTkSgE
	FxvniWJ5iDQqi/Xak4YqubuEx0qN4CSsjZ4KGtCiP5wc6/0qRFI+FKOFS0n6WuzKc8L+ya31/KR
	DNFJsiNNvfz9L9sbTTrnVCHwveWRtZ3naLSLSpNV0MBF9uG+daVv8gTSDWZMM0V9U7cf3x7bZ7q
	IcY8mvevVUTdxCIAUvLlaZFFu86tw6MzN7VR2tay4PXg70XnnD7iZh8wIp+8U4sPHbl++g9y8cq
	5TiFJLfuLVBsFaAwrtI8FrYDh7ixcn3Mqru44h+XvlJbPqBjXAPFnof++sCLaLaqAiFlAyIF/jo
	Nb22Jl/SfdPal3k6YriMf0wRPoqzC9bj3K8m9h98jLyxhyTVUWR6v2lhpU4kKhpRAMyWZ/8IE4X
	3lR
X-Received: by 2002:a17:906:8445:b0:baa:1d9:66ff with SMTP id a640c23a62f3a-bfc85539a45mr110737666b.20.1781184425353;
        Thu, 11 Jun 2026 06:27:05 -0700 (PDT)
Received: from fedora.clients.cmblu.de (p5df027fc.dip0.t-ipconnect.de. [93.240.39.252])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfcb1cf077asm65719566b.26.2026.06.11.06.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 06:27:05 -0700 (PDT)
From: Wadim Mueller <wafgo01@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Maxwell Doose <m32285159@gmail.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>,
	Wadim Mueller <wafgo01@gmail.com>
Subject: [PATCH v4 3/4] iio: core: add IIO_VAL_DECIMAL64_FEMTO format type
Date: Thu, 11 Jun 2026 15:26:59 +0200
Message-ID: <20260611132700.671322-4-wafgo01@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260611132700.671322-1-wafgo01@gmail.com>
References: <20260611132700.671322-1-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310470-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com];
	FORGED_SENDER(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:m32285159@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt1@gmail.com,m:455.rodrigo.alencar@gmail.com,m:wafgo01@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,m:455rodrigoalencar@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 453C5672535

Extend the IIO_VAL_DECIMAL64_* family with a femto-scaled variant
(scale 15), following the existing MILLI/MICRO/NANO/PICO pattern. Both
the read formatting path in __iio_format_value() and the write parsing
path in iio_write_channel_info() (via kstrtodec64()) already derive
their scale from "type - IIO_VAL_DECIMAL64_BASE", so the new type only
needs to be added to the respective switch cases.

This is needed by drivers reporting very small SI quantities where the
existing pico scale loses precision. For example the Sensirion SLF3S
liquid flow sensor reports its volume-flow scale in m^3/s, where the
SLF3S-0600F scale is ~1.667e-12 m^3/s: at pico scale only a single
significant digit survives, whereas femto scale preserves the full
sensor resolution.

Signed-off-by: Wadim Mueller <wafgo01@gmail.com>
---
 drivers/iio/industrialio-core.c | 2 ++
 include/linux/iio/types.h       | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 571b8ba4e..685661cd8 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -713,6 +713,7 @@ static ssize_t __iio_format_value(char *buf, size_t offset, unsigned int type,
 	case IIO_VAL_DECIMAL64_MICRO:
 	case IIO_VAL_DECIMAL64_NANO:
 	case IIO_VAL_DECIMAL64_PICO:
+	case IIO_VAL_DECIMAL64_FEMTO:
 	{
 		int scale = type - IIO_VAL_DECIMAL64_BASE;
 		s64 frac;
@@ -1030,6 +1031,7 @@ static ssize_t iio_write_channel_info(struct device *dev,
 		case IIO_VAL_DECIMAL64_MICRO:
 		case IIO_VAL_DECIMAL64_NANO:
 		case IIO_VAL_DECIMAL64_PICO:
+		case IIO_VAL_DECIMAL64_FEMTO:
 			dec_scale = type - IIO_VAL_DECIMAL64_BASE;
 			fallthrough;
 		case IIO_VAL_INT_64:
diff --git a/include/linux/iio/types.h b/include/linux/iio/types.h
index 3b8a2d82f..1f2f03d5d 100644
--- a/include/linux/iio/types.h
+++ b/include/linux/iio/types.h
@@ -41,6 +41,7 @@ enum iio_event_info {
 #define IIO_VAL_DECIMAL64_MICRO		(IIO_VAL_DECIMAL64_BASE + 6)
 #define IIO_VAL_DECIMAL64_NANO		(IIO_VAL_DECIMAL64_BASE + 9)
 #define IIO_VAL_DECIMAL64_PICO		(IIO_VAL_DECIMAL64_BASE + 12)
+#define IIO_VAL_DECIMAL64_FEMTO		(IIO_VAL_DECIMAL64_BASE + 15)
 
 static inline s64 iio_val_s64_compose(s32 val0, s32 val1)
 {
-- 
2.52.0


