Return-Path: <devicetree+bounces-259318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BpUBbrDdmmnVwEAu9opvQ
	(envelope-from <devicetree+bounces-259318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:30:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D288351C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84EAE300F9C6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 01:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2666617555;
	Mon, 26 Jan 2026 01:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ErI7aThN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADE913AA2F
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769391001; cv=none; b=IhkkzNp5A5nQ9g+3XnaOi37PNgVhwqlItzUdlgmoLpGe8jtFf0PlmNCai2NrQT00RESKIOX7+t0+wWXqJdpcJhY4gZQXY1E9FwiRaDfBnrQAlhJ+fTQoSDOXpFCW9dmg2qk3Ykl+uKOWQ1oeUZC4mvI48oj5aLleuVx8ltK+iB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769391001; c=relaxed/simple;
	bh=S8OEpcXpBEONfmjqfR3syMAXK/IV6W+U/9C5wzdJYO0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zhxh8cRMbNFS1TWfYUjGyMIVFogojiZW7V2zh0AjVEMl1oxtlSdqM/WQn4C1CtQ/kOUMjuPGOB/W8hHLbtL4RXB0u/SoxU/Lcm9ip1WomaMo91od6nLJj3fQKHnpm/LcyCsz/OCWmM63mOz7qbIF7uY3NltQ/nkQlpEijaLylfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ErI7aThN; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c2dd0c24e5cso1294622a12.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 17:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769390999; x=1769995799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKre85fWvMpDGBSufwyT7PttY316kDFDWNTXYHvVPt4=;
        b=ErI7aThNgoI2vG+WpnDXeBRby4DpIMoRPVjxUxsYuPmI2GAEMHg1aqA4Es2YK92ClL
         TcwYF7s+vS5dXes5sAVCiQ9gpg0J7NQ2mlgQL25i9wXE7j47GPy2mmR/arucYyBhl0Yp
         Arv7lRR8PYB3QAdPQ1cOATO9zYDoPdCGY4BqiIrUrfJP8v0MlBtoW7hJXEDHwUxDabl+
         QxANgfVF5mkwipYrti/AeMn99xWRillA1+BJRefgJq4wklsmFyvk+tfSJlwHyMNb81eQ
         Vv/DKa0uLdepKJAyCZWZ+ccsfqX4PadE1M4IzADYfP7FH2F8JDrkrO18XI7E1Tm4FGxd
         5q+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769390999; x=1769995799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pKre85fWvMpDGBSufwyT7PttY316kDFDWNTXYHvVPt4=;
        b=eFvrRM3ZzoNX9kfABP8aZKeeGbt8pygVs6/JwKMRQXtMkYS67tPC4+E2Kt7zGo9V2m
         dYhhPyYYFZkvXIjkaYFr4SArGtP8+rxGJ3i05EE5GVAzqoH+TSSApgoxFS5JnvoJtXTe
         kESTRW8xkUVflKLrmk+/dtDIXrPrScbH5m2/zkixlnIQhFQu7+Jyvq7i/iEKuj7jm5oL
         6gmmoa1HvDg+xTWKVgXFcdWIxdQa5HRsfOClYfwr5+91UIq1us4+ML/H/+EdRgYQQlME
         UyT9mvXcVmqCtNh+PRfkCtacIMkDz01Upq0EGvHK6IYW+pVXuxCpXXZS+JCYcd7VhJwm
         queA==
X-Forwarded-Encrypted: i=1; AJvYcCUaXXv/PDzJW3LbOSFHZknwa7WzD6h6mmN96KJXIVCyWHxw7YGoCohJx51fYZUGda906L1wyKwbwJm9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9TPmpYIpmxp8EGELpFyF2VkyZTbpryQh7Or8bhCP/1wTqwqlO
	LDX+ZzPu7mJPjTlX8/ma9caXL4vu7GQ07LrSujrZ8oKmJrELqj3NTl/v
X-Gm-Gg: AZuq6aKZmcRDrAdD2E20jzqjB3lb6z612TEJKImQM2lA3xwLq7O4nImZAIPruZIHBYz
	Io+PTzRX/FfyKRzsZFbRuGXMVsPl14hQw41CE43O9TbnMF81A9BZX6Dk7nz6KiRpn4CUYQ5/V1r
	kGbsHOo78bf2uBWvn7CXSvd1O457JJUmxsBLOSEiPUgyUy0B16iMT6zAx6OLrvKax7osjKeVcjF
	RO760dh/9UYoMHduGI/vG/+IHgTENQtMEaKhFXGmi+pp1ZNQvGQoJKHkOsrZOE8krA10jzUl3F3
	0S4xaZV16iaEVdpWjA5PZJglGRNZeQp5eoXEBVVCa1rzLFkmnkcdkf1uOu6JKdhkQPGrfNFRIkk
	mibD3EfytffOmmOaTQ/RRNYKhxC6tnqeQ6iDc06gcUVRIIG+7IrO+tY0qu3MTkcJ6NbQI+W/QeT
	l1GDEOKYizSXD4A9mXHvmqzqoJQ7+Ek8fWugk5ajOM5AP+3t8Xees=
X-Received: by 2002:a05:6a21:398f:b0:35e:3cac:858c with SMTP id adf61e73a8af0-38e9f166cb1mr2419176637.33.1769390998758;
        Sun, 25 Jan 2026 17:29:58 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a1309dfsm7010359a12.6.2026.01.25.17.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 17:29:58 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Mon, 26 Jan 2026 09:29:41 +0800
Subject: [PATCH v3 1/2] dt-bindings: adc: ltc2497: add support for ltc2305
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-add_ltc2305_driver-v3-1-951349a87f97@gmail.com>
References: <20260126-add_ltc2305_driver-v3-0-951349a87f97@gmail.com>
In-Reply-To: <20260126-add_ltc2305_driver-v3-0-951349a87f97@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1469;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=S8OEpcXpBEONfmjqfR3syMAXK/IV6W+U/9C5wzdJYO0=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpdsOQLuw0cN6rc/rw/ZauqQb9eFcDov8xkV6jZ
 TBh6je1UiOJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaXbDkAAKCRClg0K3CVbE
 gdRAB/425xk+uGr6mgYPZvX4GOzehEQD6w9/7E9SbYEp8sVP5YpSDlk95deXw3cXX5y5EqYcUv0
 W32dkQvj1TSY9iCT1lKkl3EGih5imyLOlJLNuVPARK+9FPmQLOKyeE9zBrUC2Eedjr66o7GOl3Q
 rWPa4gfJd03cYMitIy1a/tUb77u3Vnt0q7F6A2fOuTMOy4paprmhFoF+mdrW41RWDo6eo0AsG13
 HgWUxqpPbuDBA1A7nbXE/m8d2G8qLIEFtEs8u33kmMDKauKi78k0FX9n4xn6wwkydDFC2AGQNyE
 QiVcSYXBXyUYfJis7V0o/zTLxKPz2AkTj+SPZxkMW8x4J+r9
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
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
	TAGGED_FROM(0.00)[bounces-259318-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[analog.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:url]
X-Rspamd-Queue-Id: 73D288351C
X-Rspamd-Action: no action

Add documentation for the 2-channel LTC2305 ADC in the
existing ltc2497 binding.
This enables automatic device tree matching for LTC2305
while using the LTC2309 driver (drivers/iio/adc/ltc2309.c),
since both ADCs share the same I2C interface and 12-bit SAR architecture.
The main difference is the number of channels (LTC2305: 2, LTC2309: 8).

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
index 5cc6a9684077..c884b6e03767 100644
--- a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
@@ -11,6 +11,12 @@ maintainers:
   - Liam Beguin <liambeguin@gmail.com>
 
 description: |
+  LTC2305:
+    low noise, low power, 2-channel, 12-bit successive approximation ADC with an
+    I2C compatible serial interface.
+
+    https://www.analog.com/media/en/technical-documentation/data-sheets/23015fb.pdf
+
   LTC2309:
     low noise, low power, 8-channel, 12-bit successive approximation ADC with an
     I2C compatible serial interface.
@@ -28,6 +34,7 @@ description: |
 properties:
   compatible:
     enum:
+      - lltc,ltc2305
       - lltc,ltc2309
       - lltc,ltc2497
       - lltc,ltc2499

-- 
2.34.1


