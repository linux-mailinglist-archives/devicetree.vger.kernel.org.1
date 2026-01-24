Return-Path: <devicetree+bounces-259144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDPDObdKdGlu4QAAu9opvQ
	(envelope-from <devicetree+bounces-259144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:29:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A97C797
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 996C9300290B
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 04:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5398B155C87;
	Sat, 24 Jan 2026 04:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gfdvjo7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0865E14B08A
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228979; cv=none; b=g/IWcUrOHbAVw7qYS4K0Zy+i4Kw42dm7qTv5lE4J8IFyKReut6fZqy3BZip6y2flIYG1jCQwabZ1PX5+ZRugXDCncY35xEyK4F3VVtIM4aBcHAw6tLrS6xugaDNf9vbaVFNyF6ungJ+kyWN7m3eYiUvR3Rjhe99qZ4/lYPWKWSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228979; c=relaxed/simple;
	bh=sx3UyKFDuIEPkkHlPx4r27kZUF2Y5+jMgWB9/8tyLq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DWpdoLB2WjWu7t4AKNxfvg78hLGcPFsrYSDRfdE2I/dzNdRS6j/KTpuBRVDPDnLMv3gKpwRQIFnYJVgMrwQIC8OQDPRHmqlH/RP33gKmn20j0MNhWs+1RfsOfxjnKxkIutH4ks07mYejLjxfjZd7brzzTWCdUnsGgS3rktmjlV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gfdvjo7w; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c56188aef06so1200926a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769228977; x=1769833777; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jzuiHQbYslZI5xHIBCbYXnuCh07OaFGFeD1UZM8yZnk=;
        b=gfdvjo7wylGC4X+jvyxUvvSQAoYHkuG0ADUfWtmCesKRpuQ41rFr5vj5vRNfO+Omwb
         HN8umpDqgLKwXorwa/HuXqrj2JQsQcVuMZFDrZU92K5wQEGf72jsxhqVyhYtosBHUzNQ
         vvPYXm3j3V+53K8LEMEf9X3XxIgknddoYxn98xWvUf0W37FMgnKwm2VGmaSjcyiIYhHr
         d7HN1pRCabR4kaebevOSfadevYHjHWf0GRBeho18nEm+10zHgVT3AIFUx8d/8Z+PEr5r
         mWJEiq18CaasNb3X3JfPEjmQIfNFMV/chUcrj43F3JWaPupkyROTihjJhaB0Q7wjRzoA
         UK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769228977; x=1769833777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jzuiHQbYslZI5xHIBCbYXnuCh07OaFGFeD1UZM8yZnk=;
        b=DRz5o5gINOcZGf/X2HIlZQtnY/nZuB0HvjDOlwOJDyJIeLJHVGuxCS4dPTUMaEtJut
         HtNE+d4gKvv4N2A6oRwzTme9a/nt6efizVYcUnMQ1X2B7Zc5lrtRDhn2kpr1CQPe52OQ
         DIBW69elLGAq4v4Uof7zlH29AT9z0AL4wzlEmgrrz0FWSgjFeppXr71NvnSKRQ4RKPpM
         uugJOP5EQifAkgGETOeswRQlUc54OB9XJq+dpi4Vm2jZG4oaFffCr4AhD1SLXpUkluGT
         Kn1mQq7e7swb4sy/Ed9AYgWSDXR03ijYcmzh/mWotU1Uy0+nr41s2o3EwxS53gw63Vfx
         cLsA==
X-Forwarded-Encrypted: i=1; AJvYcCU+ZxwmlnXaFPvRUeE7RsCHwBYY3UWXauRnaLG2O7tKL0HDEfsdHjhuDcj0XoZ0hSzfQ+z4AQzOi98d@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1qDdBZ4Ur8Zm208TCzi/9JkddlfaoP5hs6TheWtQxOWSFWN0q
	pAcHb3pbtJELyeNl584TDi5dvsZH705MUwgtkv+7LGoli02uriuryEpT4zkrhBUS87g=
X-Gm-Gg: AZuq6aKzvMzehbEIYjdkN7K+ecChV1Ngy/rc8aJDW+h9aa8ooPJOaVeYiiTCCOvGYGt
	b/ttq5rr3XuUeOhQb8rU/Jq9F2jj8uhW55FnAiCgoMVYni+L9pqOHBhpEAikdY/bLWxHgV9R3JA
	nHRnrtC7ZHq4MaOoK/aIyzNSfQL0g1tMHiuCakdVJo2z0KNyv03irgVmKhOvmXDjC0Jjsq+YjVd
	do5pIeT4SwRSRshKeOIHJrR17KBCiIx1uJiL0EZISfMJ/jUioif2aas5a/MtIGHKDqxPf9wVXpm
	+GdhZoW0Z1BGdk4qx5uVcDPVas2y3Dbbyu/aaEs3B2jSv9C3Vu369/cKRg1gOQP+CAvHjk/1Ije
	5PAEkxwVISkCZm4hKSb0/zKdPQyPDlpcJ2nTD7RQugafBBjqYLA2P2xtdOenMa+xtFleXDiaasY
	NK0JJL7bjeNMUkV0x+N30jNJabJIDSNE4=
X-Received: by 2002:a17:902:f68c:b0:2a7:99c9:1086 with SMTP id d9443c01a7336-2a7fe74572bmr45740975ad.47.1769228977300;
        Fri, 23 Jan 2026 20:29:37 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871d51esm3469423b3a.38.2026.01.23.20.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 20:29:36 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 24 Jan 2026 08:20:16 +0800
Subject: [PATCH v2 1/4] regulator: spacemit-p1: Fix n_voltages for BUCK and
 LDO regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-spacemit-p1-v2-1-2c86b06694ba@riscstar.com>
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
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
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259144-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email,spacemit.com:url]
X-Rspamd-Queue-Id: 1C9A97C797
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
v2: No change.
---
 drivers/regulator/spacemit-p1.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2bf9137e12b1..2b585ba01a93 100644
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


