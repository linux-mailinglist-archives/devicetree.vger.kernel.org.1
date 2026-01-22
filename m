Return-Path: <devicetree+bounces-258224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGnqOnXScWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0162828
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C18D8562263
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B031D480349;
	Thu, 22 Jan 2026 07:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="fhkMbWs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E15E392C25
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067028; cv=none; b=ReD4OIqOpS9ZDoZYwui0Ols+XKgqTkVdn7b3Tu0dWpjAi41qu5hJNa3hl4aDJqyS4YR/o1/lRNqfhRhRwrYRiZWYrhhQa0v1Cg+yqsnw+d0YnjPuRzyTw46dIonSNIZ0Sy2SPhiSgtLAXmHlNlBchgDsxQTAcq4zALNsdExH85s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067028; c=relaxed/simple;
	bh=8siO8agI3GrxN1B0BNfhRFjRtrJW4gj30PGQr6G8Bf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f2KfxrtK4L09XJ3aInwhYdQK6CLwbztgMEZ9frWdtJiVrBs7Z5riCgJg7+97kNegChgBuiTunhQBb69gau1zT4oFj7pqJA+N2SyTH4yjWKmLKqXdLaMCgcchDxx2LQiQWkU0sGrBJyfXDcRA2xfNhU/IDOT4wBHeT7TdIwnnphE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=fhkMbWs8; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a75a4a140eso3487665ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769067021; x=1769671821; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8p3LGTyptRJ/1/i7rxaDyy2ppqLP8OP36gHwpWf/wko=;
        b=fhkMbWs8c/s6HF2AKA6IGhBaWFqy9BpFoWc5iET1W8qFE4a0uDtH4MUtuBo2GaPOjs
         FV72Ppj7woMU+xj8G/MQPtil/Ceqig45fGXwaTn6QDqPDw7lMLzpN5H+JaVFtBSCvYhz
         yPqiPGIg+tTWjpYJlwK9ObrVqWXlBPr+ozeS8cQAUTCvidSiNBZbmxi6of8KcJAVD/Ef
         xNfiamg/MMFAiQZ3Mx7bkwBe93aIPAjgHnGZlobmPXm2x2B5paFUUffk2NcZZY77hO9R
         wpaaxIbJAIejQW3olidirROHczobYuitreIOObzUiShBJ/mPm3bKbCcsivIaidG3N4qz
         zeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769067021; x=1769671821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8p3LGTyptRJ/1/i7rxaDyy2ppqLP8OP36gHwpWf/wko=;
        b=bu35jVAfSSv6r8DoxkH/ZyYVU6CKAYKqm37V6i3QM8tpy4PqMZHJ2jCTS7S6VBmR8S
         2CF8vujyTzjjDi6yp3nSOVjyVjVHovrOzC91KzjYAIJtKEHJWxN3Vn/WbNFeXbUoEHa5
         vS0qMASI8DqMY9gasiykDBungyIBivTiSgMx3RXN9ESlfR1L8brjIQtzT/5UzQf8Q1++
         fr1Nz502PB1Ci2nPRD0KOuTKJ61EE8ICFr7r8lLR9UWDCeD3Smc/vbrGvtOQ68XEf0IW
         lYlCXlEsirCL7NfXnF9ztGa8r6CsBvkueCxjjM3SKeS2VAyApQAX+9FveqbJzwwjAw6j
         kIYA==
X-Forwarded-Encrypted: i=1; AJvYcCUOH991Qa+EG+zn11giRnac7ztdCYTwpcXk2c11TYYoBT3JlLH+suUYOIdcn4mxGVt+4oO4LZMm56NI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx82QUsJJUibvNYh4iZ9ugrAx7Gte1dLDUf59itrgKTYHoqEefv
	+9xZdypYid4cArt1xQGOC3zbhpTzDQllBxMTXuH1RrLaLLTMrvFFYzX3Bqb3uZxhjmU=
X-Gm-Gg: AZuq6aLDo6yPtJ4J7aHFGC9eb3CiV0yPeRksVZzb1ft2V2ATBgToc1lJW/jDk/Oeu2M
	gW8Wixm1lwUKAWDhAYAKmO9bHyU3xU25HK0F6z6RQn2nr9V7j4+tc4OGbL068hgox+4IWYwQn1i
	h7QbUpcysrqpEa36r0upnHiLz3o5PDM2TLEuopIpbwCjh/ynjIMpa0orKJdcT1yUdqWY9qoMlom
	XtO25hAlNhU3nMUP5QF9L7LGvbIgDFtWOzDAeL5FS8uy77lIiZP26QVz2zRvs4Gu/NN1sJyzFuO
	ikolzkZJ5afDV3l0ehmOkkxAK2apfWTzVvM9hRGNTLfNnRkIHc01NHQJxcocewrG0Q95TnWSOK4
	l5vzEBsOxLM8tX0rub9Isjbt59DPBrNLIimAhtVegXTy7apED7ROLDncFpyQ7o7W0T6xMC4O1d/
	De0/WwuaoeAZ2YlnmQeRKYbqmCfdWCVjo=
X-Received: by 2002:a17:903:22c5:b0:295:c2e7:7199 with SMTP id d9443c01a7336-2a76ad6be42mr77946605ad.29.1769067020954;
        Wed, 21 Jan 2026 23:30:20 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm171691845ad.23.2026.01.21.23.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 23:30:20 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 22 Jan 2026 17:43:42 +0800
Subject: [PATCH 1/4] regulator: spacemit-p1: Fix n_voltages for BUCK and
 LDO regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-spacemit-p1-v1-1-309be27fbff9@riscstar.com>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
In-Reply-To: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.14 / 15.00];
	DATE_IN_FUTURE(4.00)[2];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258224-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: DBE0162828
X-Rspamd-Action: no action

Higher voltage settings were unusable due to incorrect n_voltages values
causing registration failures. For example, setting aldo4 to 3.3V failed
with -EINVAL because the required selector (123) exceeded the allowed
range (n_voltages=117).

Fix by aligning n_voltages with the hardware register widths per the P1
datasheet [1]:
- BUCK: 255 (was 254), allows selectors 0-254, selector 255 is reserved
- LDO: 128 (was 117), allows selectors 0-127, selectors 0-10 are for
  suspend mode, valid operational range is 11-127

This enables the full voltage range supported by the hardware.

Fixes: 8b84d712ad84 ("regulator: spacemit: support SpacemiT P1 regulators")
Link: https://developer.spacemit.com/documentation [1]
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/regulator/spacemit-p1.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2bf9137e12b1d0bc7a857213d77f05387536fe17..2b585ba01a93d0ce163c33e14c8022a506bdce11 100644
--- a/drivers/regulator/spacemit-p1.c
+++ b/drivers/regulator/spacemit-p1.c
@@ -87,13 +87,13 @@ static const struct linear_range p1_ldo_ranges[] = {
 	}
 
 #define P1_BUCK_DESC(_n) \
-	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 254, p1_buck_ranges)
+	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
 
 #define P1_ALDO_DESC(_n) \
-	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 117, p1_ldo_ranges)
+	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
 
 #define P1_DLDO_DESC(_n) \
-	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 117, p1_ldo_ranges)
+	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
 
 static const struct regulator_desc p1_regulator_desc[] = {
 	P1_BUCK_DESC(1),

-- 
2.43.0


