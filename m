Return-Path: <devicetree+bounces-276333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ELKDHE9uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:27:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CF429E2C7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 425C13069DE3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A353D301E;
	Mon, 16 Mar 2026 17:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N4NhUkx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5FA3D16FF
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681596; cv=none; b=frZNGebmcDnbNzLKpB17DvM7hsmYc5Up3WdLCImtdHdasWGC8SYgpwuirWvQBKhDdSYEfz1PF4LwAo9DbG52xctVoBZTZCoD0C06FDDkyqNiBoEtzm1rI12oDN8lgfFCqmTlXP3RGpUgYIPi72HK0McPhTnxcuuAvUhMv6/jat8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681596; c=relaxed/simple;
	bh=FyYL7KjhfBkhq4Z8eKOH65vilPS2pr7+rN80jiOzQpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NWQ4F0p8Ni8E3QBB4EAH2UtuEr22A9B5hMb5b/Tq+ocWKsijoFf57p4svNBoGzz2jYYWffeERGFtIcKMIMUgShu8uKxwIYq8cCMC5lKys98HpKdCpcO6R6u4RLw0qOxGvLbK7uhvksT/oApJ1Y/WYiDNdp6dZ8Ov+JDMmA2F4wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N4NhUkx5; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b97a604e098so268032366b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681593; x=1774286393; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=N4NhUkx5yXG1WNgC3quqRNlR4pOqVEOUR6t8Il2JDWvlcGTLYM7CLixNyI8Mnwrl9Z
         mX/NyoniGiquWWQNCFwgbx4Ly21QuGOEQezjG2b5H1CUm3jMJeeVYxvGzLj78LOC75cZ
         JSIoF/ppNljUvPY82OOyvk5Uof1QCUD+JbDkP9OqIUemhx4TEa7d954jfmJtq15DuugJ
         ELnuSMIsBSWxp4OwADccnLXbKBnj+qCfFaStgJRTFK13npZid0HQ3VrwERqTKNxkYCBr
         3KSbWHBBR7vKFPLyCOTwlXCZa/EPPsdJfm18rvzUhBJ8SxQ/znsdzPyE/gSHUlyzqbK/
         QtIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681593; x=1774286393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=fT0XeJYkdDKYMb3oApwBqH5wZe/XGLmIjWibTornTPF7NbdS0W2T0OTsPN/OzhrrFi
         sdgTVCQlLdQ83uzDMLhPLmwd19SYc66/kzGln1bCKAe/C4WsOghbKljCPdBqUxEx/pxp
         ybkMq+XFXXUyOX4qB+nDx0LM4IPYEB/397C8K6DdshnDkjEjRMdsq6fkxlSmD9TLOfTl
         b2oXjVyKO2EPjeQJkF9+Zo1TAwp9tT5J9bVkKrBv39olE9aJ2Yh8LPuTwePdZzoYw+AY
         FQvoJo7aOjmlD+mfdQWeYt3l5cJ45nCL+gw3CgHKZak8aukNy6AV8mh50mcelKW5HQGF
         WUsw==
X-Forwarded-Encrypted: i=1; AJvYcCVDP2Xvl/szizsgBGYqF0KHN0aF2rxSvjri+juwM/9JnVq0OQ9BMT9Bz+gv9pR4Vfp39icNBEkC00uP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdbok1E21OY3EHpp1MnObASbVntYlGlMHw7mSCDWtCfoTfst3+
	ChizSPfUAnzx6WFLMRtHGfHDRTsnB6dCRf1ezE1eviVbvFpi6y08xZ3E
X-Gm-Gg: ATEYQzyqmZGXUrO672flfeu+M54QjouP9g5xVEF6oEoANof8j4hV+EU/DNgmS8F+Axh
	R92IE27aTp1aGzJAHQv7j7Pm0QWaX1Lx0HUs1LIIBegVafdWwLFllWTUJxxx15vjZ8oD7R9sAaW
	RrUg88VR2X8YrI2uoN3X1Uy0Mes8Sf0cy5//8CJHZsOHKyCXfEYmVrli/hIArIbnSv+wEm5/dRk
	nHLnrYRzojRf+NGRbSpraFnerVCP+ooQFRVM6Xt4TBau0gzc72s4DyPHpSGGDkGsi8qqgOl6oC/
	46oD5voKbmnJlJzvTLVqC04JBq8/dkNCBmMi+DQKde9zV9xiliqKXqQ8y7gnCT5ZMf2rNZnQ3iJ
	VUAldv276gPx92YWrkmCV0ec8esA5IylDAQ9vGEV6jZvfhTDwXluGcOa1FeANE/jrJU2d8cAdOE
	lD2P2wpKqwJeSrUuI6ks6rjcIPAg==
X-Received: by 2002:a17:907:e2d2:b0:b94:c55:81d2 with SMTP id a640c23a62f3a-b9764f4bdf8mr721875566b.1.1773681592603;
        Mon, 16 Mar 2026 10:19:52 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:51 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:46 +0200
Subject: [PATCH v4 2/7] iio: light: vcnl4000: sort includes by their name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-2-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	TAGGED_FROM(0.00)[bounces-276333-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A2CF429E2C7
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


