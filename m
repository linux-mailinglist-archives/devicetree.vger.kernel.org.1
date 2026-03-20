Return-Path: <devicetree+bounces-278376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uK5wD9R8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD872DE1F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 96D2F303050D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 375D63DEACB;
	Fri, 20 Mar 2026 16:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ggb+tcOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24253D8126
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025149; cv=none; b=W5mBoYsKMybqA6fnEew7L0tAdPIcXFxYwh231n5CrXJ1ejvbx6n37g00MUudBx5wEAZDoT+FiP6xl7KHGU6XpDjlq2fLqL3ajJuY8KUfzmT5L1NSwwN7kifrs1REu8WZeC07p0DXjaFAcuggihWijIoqBt2UK8G/DkXHSjXzBbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025149; c=relaxed/simple;
	bh=FyYL7KjhfBkhq4Z8eKOH65vilPS2pr7+rN80jiOzQpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TrMHxy39u1/86FnOtianmViX/Kcew0mOGQuWzd/x+Gtx3SBHBBaNjfgEQpyOCBCNNvuEau3rAiCRnNoMjDujLgaAH2epNx3z99X+e5145MgWH1q8+rIKkWAQdt0KdbmHBQctMpYsDZjAFPyeILhsojySV5+9LhGz5J9gekq1Khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ggb+tcOd; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-667f8794e97so3883197a12.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025146; x=1774629946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=ggb+tcOdscs9eAYb2e5tKZQk+kYeBWr0YUE4G3u/8CrB98na6hfC4/nlQ9YZY0vG4G
         J/qMUikmGXDksQECftmOJ7t34pgaEgTAXbN0Y0ViNimfZz01VakjTty+H74kwEPnZX2M
         mkcw8Ztd8WVUGaxIwHJ3doZ2+jCv/Pl0BWYcSTu+d7GXXdkmJOmR1KYGBauuWrt3Fmi5
         TLkVcoQ5HLWg3S8Hnhje2IsFZDM2ZayW4ADGsN4dTeay8nxR1p3FAm3gDs0pN5r42L0k
         6ejQDQVHWsL6j1i+Ldjica4ALzeKpVDxvuH9/PFeIb+2PNQQq5G7CUR35fSdj1OwNGZ+
         VmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025146; x=1774629946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=WchbjcJCeF2yU9wcz0gEtQR5UvQcamz7+C7T7rX2WbRwONRKxV7gTloMW5xdhndVlK
         WQyoaG/ekntQVhblVqMwzxi+jg+48NnXP5rjIlNkxXky4JYHDSoUvyB9jKDFM0bAGh6b
         eiYT1tOR9CJhg8CjdxXStytiqcLDqmF0K+1ViEbH1FsBQPmAqYOjGPAvRZTbFOP7mGXo
         jUqQMWX/NXP1+eZZjaoI98wOPIr0h25v/sjJr8ZadfOPNooXsMIY5gRggvbx9IHFGTlT
         y3qmcZhOBjARFnoZAxbdvWm80H23v+XvluB8W+0jMiuSUzrOGBMML0YKuxG5C3P7k7Xj
         q2pA==
X-Forwarded-Encrypted: i=1; AJvYcCWd49bYeJ2QQ+RbenqvI4WMKGEx1QxZqEvQq7qoxDtLTOLMtkFe4UOLo5buv+M1qQHgON/08FNSpVjA@vger.kernel.org
X-Gm-Message-State: AOJu0YyGuNHZ7Lsce/4gibTmuttl8E1rggfBnTIhPYlQA2rSjkk7MtUP
	7aCgIzC1dWzSRPuXOdXxfSJy2JqmRCezKohqemL2Q1v0KFDzu6euksBLaPpwKwTn
X-Gm-Gg: ATEYQzzFf+MNhOVtqtAKzWrfB7jO0ckGDVz7jTTfrodoh5/HoN3eIPmPLI7nlmceEzR
	IGzGn7G1AqWNaMumZs7jY+OSG6mBfLvrC9JEfhdYZ37D5KIm0qle6nyRUIKQ55tx/whpAqmZCJP
	N/siW/h4vWL98ClHY8hhO33L8oHpQVi/iUyqJaQTfotYPY8k0U0fGBTZtDnNlaKp9sCUNTI0nSo
	m20NIA43augh21vk/3T02kN0JFeefhu5vbQTjJZC0aqHgbdPJnKTcaUDoP26DkI466gGLR+/ghe
	cjCYLfQgKuAoNpYXfOEiiOIKd9ZnnggW+5bDf0iO/Qe9Txh2JxFvBiUaLpxKPcJkAIomNFZbQ1Q
	R/NthNRi0WMqbxdTGPk81WD00ubuH+lzN9qPu2t5AGzPj5Q4FHu7T225vbeIlPffhUbqXSoOSlU
	I7vL9XCIfQe3Y/PRynmOOd6Cw3hA==
X-Received: by 2002:a17:907:c70c:b0:b96:eb7e:bc55 with SMTP id a640c23a62f3a-b982f1edf01mr278179666b.10.1774025145822;
        Fri, 20 Mar 2026 09:45:45 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:45 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:37 +0200
Subject: [PATCH v6 2/8] iio: light: vcnl4000: sort includes by their name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-2-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278376-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 0AD872DE1F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sort include headers by file name for better readability.

Reviewed-by: David Lechner <dlechner@baylibre.com>
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


