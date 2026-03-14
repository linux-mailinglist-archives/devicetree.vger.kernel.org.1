Return-Path: <devicetree+bounces-275729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKCOEsOHtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C09C928DCB7
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25D57303D88B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6B8379971;
	Sat, 14 Mar 2026 16:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="InXjng05"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D82377556
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504403; cv=none; b=rkybJ6WAi81fF29OxF2zC6eu3ZOUBJi6eWD4su0/FTab6o21FU2oN+ow7I8VMqcvMNMW4IQDQ2W1lFxxvbkKnhI8Ebm1eGgnUo2b/SvHbbhl+zkTpYg6w45UVacvQA4xUo1fOB7f9jkBKZObAh5np3jUvRaaoQFdB70micPds4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504403; c=relaxed/simple;
	bh=yU/EQoZ1q596/CHvlN7YkhPccRT6mfDqWPXqpjdWn3U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=onI5SygejxbOzYO4LZQRXc8RZ5DQZ2E+uxx2f6ewxaj8PaMprzlA5rPkfkbIhiM+PDe3IpM1nU55t5ZSr3G/AXXjfrZnF0Hs+L67sGd4K7ol8czDdYatMj/4Y2qkpi4NcoP/uEYduoOi28miu8jhSO3Ln3FJEyoSZ/W8qv1kBOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=InXjng05; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b932fe2e1a7so386759266b.1
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504400; x=1774109200; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zfIqfSEipe7Ni8DeiT4tR7mdwm129F2XmqEhRhL601Q=;
        b=InXjng0533pGZC0bIiIint9lnnbG1fMbU1aF903clZ1IZtJLoHiVnlpsnTD6K9OShJ
         MurP1C4iTWA0fH9V62ufxriT2ZXUia4Np18Y+kFI1crWlflGO5xcHjoQr4HH6z4NCjBO
         VWj6TVhJczYETTy2zn92ZQdU2lHwpPgKzw5mmIS3bP7cqOYjTR6Rg0Aa7ywBmBhaZFiq
         xVO7wXdcR4gYC1tx6sajqCubD9I9u/9VG9+9rvWXaCsmpR4uamyxdnN/dOwvn3uYDnK4
         q+1tF/QD33bwvBV/hlbk2Qn2Y5sLrZYS9Wpa9HHng1uca5I3x3TSP7JGMqin0kjka0pv
         MRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504400; x=1774109200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zfIqfSEipe7Ni8DeiT4tR7mdwm129F2XmqEhRhL601Q=;
        b=k+NuweNUNLDFabPCjWhC/nqbRmU4VOKz6kM4pZFTm58oHw8XDh5kBJhCSZGyaEk0ZN
         09pM1bnVcOH9YIAaISyfY5/Lpfx/fZHsH+fffNu4h63zL/N0aYUs2ZfUPnqtsIrUxO56
         167o/552Kxhx0vJKXlwb0jsgJ7HE3EdbbSM7yETHGlWJVw3+s1/NRY2CJCQJxPkl5Qyd
         tH+i2yI6K1+1Ps72zBCPX4pHSAdgYj7dbUkfBzPndGNP/XNjc9oErKs30yWlc6nfjZ2g
         ioS1Gn3e74g6pqQG5eEWwQ1TollCbazJzYWKA+Vzk99hVTA5oSaCbqyPPKXpfcN1r9RM
         Ycgw==
X-Forwarded-Encrypted: i=1; AJvYcCVPVYu+tttjkWkA4IOu3GlfXkQ4fbDSdoh9MFDAvlgGqMVCWaW36/e1uegKCfYLSUCVX0/ABy0wTATv@vger.kernel.org
X-Gm-Message-State: AOJu0YzjslJ6xkRHQ5dKL8HLLucZp3wxuz7z8XjO5VELHQEUNGyckMat
	9a8+wzhRiXvEWG+NLM/7bpykYLbJaN+PHCB0hTXMpKqfmqu2WYpXYC2s
X-Gm-Gg: ATEYQzwido/QFDPsHQbwMLUaNP0/alSPYKNnllT/EpGdSBF5eZ7H0wG4Nw3ggLJ9Ofo
	TGvdIYi0+FNj0J4bJr8oJdqA8Q0HJynXLiN9Gnxr4O53qRK16CJIxWOCd5Ywljvom5XetIEKPLh
	zc9sMf+OF8aLRpIwxMPL6dlxaiZguOU2XKRgFPWl8YhsQuw8fCuazNX31LQMbFzv8jVb1may6zv
	x0w20GJU6jKozzJSgzRpLrHffr4P3ps72gXaVQ9hbWQh81329UgtSBIrDnX8HfD4IatCFqko29S
	9h60lj7E4C66RlemTx1Mv3WubMP/wNb9Mc1I7X8EwmBIYt9eL6OGv2NsJ2hrNPouCRbcKpsrwEf
	hYo9l5lOWE2SH/w2Rwaj80aiRzf6SUoqKV+HJT8bz6H1oQwWTOXWgldgcqglq8+AZLQoML8fkQq
	z1Ufl4tGhbv5bUHXMT3dAs6aLJ+g==
X-Received: by 2002:a17:907:7253:b0:b97:554:f100 with SMTP id a640c23a62f3a-b97650f31c6mr423401666b.20.1773504399716;
        Sat, 14 Mar 2026 09:06:39 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:39 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:31 +0200
Subject: [PATCH v3 2/6] iio: light: vcnl4000: sort includes by their name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-2-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275729-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C09C928DCB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sort include headers by file name for better readability.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 5e03c3d8874b..939ff2d65105 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -18,12 +18,12 @@
  */
 
 #include <linux/bitfield.h>
-#include <linux/module.h>
-#include <linux/i2c.h>
-#include <linux/err.h>
 #include <linux/delay.h>
-#include <linux/pm_runtime.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>

-- 
2.53.0


