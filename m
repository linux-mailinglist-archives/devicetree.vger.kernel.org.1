Return-Path: <devicetree+bounces-309186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p1+bMz48KGrxAgMAu9opvQ
	(envelope-from <devicetree+bounces-309186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:15:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B38D466239F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:15:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mHQgtB0i;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309186-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309186-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2668B305B0BB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8FC371885;
	Tue,  9 Jun 2026 16:07:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD2C36E493
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:07:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021264; cv=none; b=OSN2iLK6XLPB3adXfHddvNWEp36w9/tmMvp/bBUmFCzvXHUqRW7GonFMWnT6PZPJE0po9R7oHNVzK1yYg7I7D0Qs6nD56M0xPCrCeW8MDiTh35G88nP+lygvy+mGpJI55mO/wdIodAShBCN0Q30IVZsRTeEDwi9KtBycyUpFYGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021264; c=relaxed/simple;
	bh=361oEKtxig/ZO4ZBGEPBYw1FqFEZJe2SX/B1yZfG8zg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IR2pojTx9jN73JbiNjyYG5YxNVnri7zs0eyXMER7AH0t0vfCjkYYbInVHQnl7+aiWoD5odYnk+98jcC2UccDATaN7vF7cQIyr+1HC1ssJaVcWf3QgG2WRlmel8+6zALP+aK0O4TOaLz4onyW23sfttpnJKVdYBp7MV952ROHr1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mHQgtB0i; arc=none smtp.client-ip=209.85.160.41
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-43ca73487d2so3504305fac.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781021260; x=1781626060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRgcfOA2oS4UODi/g3jRay2TiYVv7cy0S1ZZ/4hXi6o=;
        b=mHQgtB0il5002K27XzTJ0nEOiDEeu4jpXNmJeCWshk9/ccnRBFtFE5APt42AHJ8B6w
         SKDUm8CHayF9yr+vJ9oSYBpcHi3oBq6LHRl/wat3IkYPiMZ3KaS5BUcBZ2sIuEDixT57
         jJ6uQBrTP1tYp8KbHXcQzwfsjuDTFtIncj/AayfLEIF67zwEGrY9JrAxYSZdSUZLoxqU
         qxurnChCARs8+7Yq/rWJX+sCfjkqLWfv1yQjtC9XquCTNZR4G1oT/8qMmBpfq10FZwVi
         6TwzXMBnvhCwjsGiilRLQgqIrod6NatgPVjt5J8Z+ZRw+k7QPM0hJNm6lg1hHcSecFiv
         2odA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021260; x=1781626060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uRgcfOA2oS4UODi/g3jRay2TiYVv7cy0S1ZZ/4hXi6o=;
        b=r/bsHMHCeaCc1fBHrfXc5RRiNvEAH2HTnvfY8B43vOUs7M1BcLMkrZqCD41b89feb7
         4NlLzixOR6eJkFcOPaVjwMcgJPw1ohILWlry2Q38NqHmYdjks77gG5oR/8hAC8owGo4i
         rgkishX45iOoJqqLe4eTAR3lNWZFizkNdKwow/4yVG93p75ts4NFP8mhboVcEZAagWG1
         GDS+jrJWc8R7L2Qwm1RAAHpoYiAL3k9Z8crj5ItPg3de8AVUDnL+RLGqcnEeyoao0K/C
         ymFPZVGb7GBrrg3pHzRvQr3o0mwfMit2cL8XbwZh0vfwuchVGEl8/rZoccKvpp6z9xu4
         LYtA==
X-Forwarded-Encrypted: i=1; AFNElJ8cXRQ1IYM8Dr9FR/KaBe4vObCXH0kT3o6sjM8K9811E2tXYFJwLA8Dy2AWc5dtMFWYZsYN17Pa92jF@vger.kernel.org
X-Gm-Message-State: AOJu0YyVrLz098EsAJczNsuxio1mJMk4BDBgshcfG+aKQFqo2aTKqNPG
	fMwcuaO757pFCcweOCA0TEzVXRLxx/bYa9t1c6ooNseJeu3gDZcGeXJW1EldT31/k2A=
X-Gm-Gg: Acq92OGSU8gBQ4DEk3yEEcRpW8ZW1hm8+B60KodchIUPSpnXqTILbLIE4bdt7m0u6UW
	3d8O66rVPVIdfR9+GVrn/mTUR7qZ0kPwqOHgR2Giagpz/exI3wpMlkG92pPN5ZnK4EWTCtxUlp3
	7uKYgsec6qMpF/ny5qEh6PvjGTU4XeKElVFGKOJJtvaxHB0B4cPxcRqHhf2u88q7xtca4mXA3us
	pYfq5FBuB/Su6vVqLjG22LwMfhmJ/uUzD5OrTboCqOtlAhByLJV2Nf9ZfMlhZrmvVPaQWav/ZWw
	Qs/kPz5xezTUY9duqzhqgVVIRjP6LkaJh8eA5HghEZIrt4rUEGjG+qY6B0eupfGlkafwZFNJG10
	KiBgtm7r6MHMN7mePwtg1WGtiFz0C+QR+dyy5p3s9VMrfyo8UEEWSfVD/j2DxxS0biX4BylI+uV
	IER6an3ZxkvSkUHABGaOgpgEHUFE6vNvUC1ZrgxVyH21KG6hJZoF3TW9/ENdQrJpY+v2fV
X-Received: by 2002:a05:6820:81e:b0:69e:3360:6338 with SMTP id 006d021491bc7-69e6d3bca9bmr6683557eaf.13.1781021260326;
        Tue, 09 Jun 2026 09:07:40 -0700 (PDT)
Received: from linuxescape.lan (23-88-128-2.fttp.usinternet.com. [23.88.128.2])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e464050fasm11393859eaf.9.2026.06.09.09.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 09:07:39 -0700 (PDT)
From: Maxwell Doose <m32285159@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tomasz Duzsynski <tduszyns@gmail.com>
Subject: [PATCH 1/2] dt-bindings: iio: plantower,pms7003: Add myself as maintainer
Date: Tue,  9 Jun 2026 11:03:25 -0500
Message-ID: <20260609160326.45123-2-m32285159@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609160326.45123-1-m32285159@gmail.com>
References: <20260609160326.45123-1-m32285159@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309186-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m32285159@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devicetree.org:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B38D466239F

Tomasz's entry is no longer valid, as he is not active anymore. Add
myself as maintainer to replace his entry.

Link: https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-huawei/
Cc: Tomasz Duzsynski <tduszyns@gmail.com>
Signed-off-by: Maxwell Doose <m32285159@gmail.com>
---
 .../devicetree/bindings/iio/chemical/plantower,pms7003.yaml     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/chemical/plantower,pms7003.yaml b/Documentation/devicetree/bindings/iio/chemical/plantower,pms7003.yaml
index 1fe561574019..292e32d9645b 100644
--- a/Documentation/devicetree/bindings/iio/chemical/plantower,pms7003.yaml
+++ b/Documentation/devicetree/bindings/iio/chemical/plantower,pms7003.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Plantower PMS7003 air pollution sensor
 
 maintainers:
-  - Tomasz Duszynski <tduszyns@gmail.com>
+  - Maxwell Doose <m32285159@gmail.com>
 
 description: |
   Air pollution sensor capable of measuring mass concentration of dust
-- 
2.54.0


