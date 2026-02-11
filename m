Return-Path: <devicetree+bounces-264806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBogHGDPjGnbtQAAu9opvQ
	(envelope-from <devicetree+bounces-264806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B982126EFD
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8477930055B2
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 18:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515CB352F9C;
	Wed, 11 Feb 2026 18:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JXxZnhqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B86350D4A
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770835804; cv=none; b=ZRAELGeI48KzRSH9mnNsS0P9ZqvAndpkNdwkr88ECuWmTTyLM2Op/WS8NSUiEGa/W2i6y9iLH67CNNprYA6biM0gAKtKUPysQlS50pccctaYx5RY/l2P7ISIyhjA5lBzC+5e+ROQTWeYshHYLsvtnSGMH1puIXMb6E5Tv/aegIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770835804; c=relaxed/simple;
	bh=J71dklxyEYDYf5YTi6cMq+9suDt7pHWpZ+XzWgD1P/4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lSkPQUnpmjYG4NEZnsYHgdwDlaCm2lYZNhVMci24AONBAytTOuZ+fFzrynmfpEAtTibjwJF4YXG7pKXTA+kPJHUjFMQeb0krIubelNC39E6jg/WlhLw0XSDsP96zu8dD+sLt89oWw35ShFzoTciOL/i83lBM4MtGS67vHX9bXrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JXxZnhqV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so34477895e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770835801; x=1771440601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T3VFsLlcQS6aLAnq2infiT9hJS84OXuJ8Yy2tiwsBck=;
        b=JXxZnhqV7/FeKo56f2TFWCcjFM6tOxQzxb+Ik+LqDkUKhuMxGCVqglaHaRJV2FAH9Z
         Sis9Vc4kw7Tnb0Cbbj9PqPeCfwzfF9/CEfld+MGa5tTKadiYexEDRp9dCIU3253Bd0w+
         kPV+zNqgwWMBX1bFS5giFBFY/Mup3XOhMz15wTkQmbE/qFuQTgv1GnrrLapap+3MF1n1
         RgnFRBUqp+l8HP0dsWFCNOdeEwdAeB5uDwgPjf5RuXDTIr1xQDX6hbM/Wnrs4szqzSNG
         mtTfYI4aX5+QRuAXDcesvdJxP0jnRaF3JB6CrW+0foaLf3nfR2QlE1H3rq3s6yVPEGd8
         1usg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770835801; x=1771440601;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3VFsLlcQS6aLAnq2infiT9hJS84OXuJ8Yy2tiwsBck=;
        b=bX/T2CjAsjZAMXSITOdN4XFOItyssjhiBWrcHJ516h5wGI51o4L8vB5Xg7sSpS7X00
         LCx8iywIw+60wvYNqlRstMHMk9WXn0Rz5vCS6ytcETvtNDshZa6dU8eOVadYuyX+AYZL
         o/9UX1yPrITJPaC9nk2RdMhVqGA01zf5okhvMblXS+42IlQQNOrADSLmSYRFuyuNQbSq
         /rCBQUN53vCl0YmlE3KqN/yFuu7ehL8aZvEtnPFA0g1i1FIa7t9yUAI4qINIef7yTpfa
         hhvYfLFjknGKaacogmL+BwELpkHHo4c8umJRIOnQoLvOBCEbaOtjPKLZPr0p9r4hNa6u
         m6aw==
X-Forwarded-Encrypted: i=1; AJvYcCW9wE901LIQ+p7Ss5aGufgNrrtXXAAkZXgv1+2FRo3bxI5v6aEqS0bwv/xXIVYQYspAyjCR9fDKQER6@vger.kernel.org
X-Gm-Message-State: AOJu0YxiHpvR+vbPK8PHSYjBULenkc6r9ZAs74q1AnXP5uJrmc8PyxhW
	WINVkG9F/HRdWCOqcyLGEPN9d5fhAMM2wYHawMQZwNQs+Dtuh4crdPAM
X-Gm-Gg: AZuq6aKl2UFv0odw6LbAaA3IiqHp5vlEjsaNk9aXhFtf21pUqfESvO7AsIIoVWPh93U
	5z/c+EBYRFeL3X4k3rtjzV+Z1b2N/Ut9Uk6l5gA8jjY1fqsXESX6xefYZ/sIG1XMDjIzfHSaUGv
	TRsxggWumNec7H6TvNUn1cZt2jO4uTLsEwjS07frXq+bPG6Qdk1eNLQdMpDgfn9PAdGJz2Oci09
	pIc7rKwNM1cludV3Hy9BSiLtcinTdtHhEcBZAmmWdv+Cjuu8yEF0DRJOdNV3YWA1RgulOZ0C5Uq
	auU9knGEflsX4rJr5YiNwBsMtS4s8RZm9Bkhy8AjU28TknkWnAUTR3l4WK8tdAJbDRjSYm/buhK
	RFhWMY5pCjIViCSAJD/pSCIzK0FFWXzBUZPYliEfB9FCw4qnB8v5CIti/9+lWa7fpSTh5cIDDdd
	c9mfmjHOu33fg7XyJobDyG4Os=
X-Received: by 2002:a05:600c:3490:b0:477:76c2:49c9 with SMTP id 5b1f17b1804b1-483656b14f9mr2608675e9.2.1770835800818;
        Wed, 11 Feb 2026 10:50:00 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm93175855e9.6.2026.02.11.10.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 10:50:00 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 0/2] rtc: max77686: convert to i2c_new_ancillary_device
Date: Wed, 11 Feb 2026 20:49:39 +0200
Message-ID: <20260211184941.6756-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264806-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0B982126EFD
X-Rspamd-Action: no action

Convert RTC I2C device creation from devm_i2c_new_dummy_device() to
i2c_new_ancillary_device() to enable the use of a device tree-specified
RTC address instead of a hardcoded value. If the device tree does not
provide an address, use hardcoded values as a fallback.

This addresses an issue with the MAX77663 PMIC, which can have the RTC at
different I2C positions (either 0x48, like the MAX77714, or 0x68, like
the MAX77620). The MAX77620 value is used as the default. The I2C position
of the MAX77663 is factory-set and cannot be detected from the chip
itself.

I have tested this patch on LG Optimus Vu P895 with max77663 PMIC and
non-default RTC position. RTC is registered correctly.

Svyatoslav Ryhel (2):
  dt-bindings: mfd: maxim,max77686: document optional RTC address
  rtc: max77686: convert to i2c_new_ancillary_device

 .../devicetree/bindings/mfd/maxim,max77686.yaml   | 15 +++++++++++++--
 drivers/rtc/rtc-max77686.c                        | 14 ++++++++++++--
 2 files changed, 25 insertions(+), 4 deletions(-)

-- 
2.51.0


