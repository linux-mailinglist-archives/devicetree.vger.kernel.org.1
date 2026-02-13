Return-Path: <devicetree+bounces-265213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDkwLCJtjmnuCAEAu9opvQ
	(envelope-from <devicetree+bounces-265213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 01:15:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEACB131F44
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 01:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3731B30138EB
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 00:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187C11A8F97;
	Fri, 13 Feb 2026 00:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ByKOXRJY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58282E571
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770941721; cv=none; b=r8HJqFreNlavUdGBi1BZygfyVRRfBASZhdDQID8DeDAcQVIJUBkDUzahgYg4TmLlYsJWr6Q36Zyr7dsBfy2e0M3vShdfykL4bfQaIIZIRNFcGSaDfTTIkTOZ4TDG61bXBNGsIC44iW7tmUOs+63bh08LDwyhVyudoQ+M6JO56b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770941721; c=relaxed/simple;
	bh=/59rGIqsmF4WshNdFxUG9ogPXvNXVfB7MoZDczfEldg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JmO6TjHXxAK7UmusAMxa58mWS9JfR3Vtyk5q9lg0H4MhVDVw+CG40sNmePRiR19b/lmqOyxAqmseqQ9P41NYmGddjOR+m8+JshMd17P7fEvatlMj/k3UD4HHfrLApLdyW87CsGHOC/I9wSTnvbIh2MNGd5Oezi9Meo138L6ws28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ByKOXRJY; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806bf39419so17993685e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770941717; x=1771546517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iBcBAJOpsKdY0lf+0KvuBm9F2SiCUmZwqgnRHrAG5Ag=;
        b=ByKOXRJYP0hFvfdXG9g4Zx5PGYv2chrA8Pg1XuyECYpmbH40mRCt4Mw4NAT+EoIvrL
         TskvzXYDrLoIp3VdbP8/43hS8LHO7v3mglyEZgZGek1dSbgUNcF67Sw1p0qeMoE4o0G9
         tEgGCv8Dc7Q/6ZsVnOfnNsWXN8iq90u5MGkdzJeD/mltMgbJD44r9YL31yFlQ44/Vgi8
         fMaK53Hk8+yXagWXhET3YxWtntTzdVhLhi1YeYiO0P+I+YE3F0MGtKa0C5IyK+bYzgy5
         fnHov9qptwZ8BMvUCHA95HUxBfLhBsn+36k9aT2IH6eZvqdquQb3RyOYzi1vIt20wOWZ
         2KKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770941717; x=1771546517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBcBAJOpsKdY0lf+0KvuBm9F2SiCUmZwqgnRHrAG5Ag=;
        b=D5AnDPV1Qsk4UeMcgO3HXfnErzpvhGSJbLQg5TCwVSEqSaipzvsP0XzsXEC5UReUJ8
         2A+9KMEugNPvz0KqlCGeqTtw6zFdpB1jWlmoPuL67NZIfio4XJSx7NSidbAFRxxh4HJL
         8mQmGpffMtijGgk7iW6AKHpZbBqKOn4tvAU4SQu8BTv1nJdu043Xg0LJkw96NuvU1CZG
         sYOcXRxTM8ium1FhWGAyUxofPuL36PKaGTs2TNHdef4u1J7bH5FFnKrubvP8EULP0Rq5
         itlb9oVkAQJ0GGgmLPWf4XrRDQMHQwKpsyMXxZV+NjPIa3/UofXBC14d7tiBX8OpN1Xv
         uFew==
X-Forwarded-Encrypted: i=1; AJvYcCWFtKvxGq3P1YkjBPSBWKNzc94R3/UgWP72V7bgWAS5ZsOffg18CfrcFxfJYtO828s4AGwu8DNhrWUv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw90yriNxucekYuXJzJ20+33tol3U6abxv2bVQDzgbHfBlOo0Ki
	KHvVMG/Axl3TZPV93hKH69PrCcG4pM5fk5SvhnN3LfbTbRXYJNRBFU/uLFqoxEOhyTI=
X-Gm-Gg: AZuq6aIaiEjHfcGxn75xpkvCAyQvCO5Wi9HPLTg0XdcvWhLmPmplp/8UjIyFK+XCmZv
	kT/gbL49JxseG9JstFelSusXql/pxFOen4+k7UCTMGqPLfHaLz+Z39V8L7DnaplIercB2AFxe5d
	g0kZeQEM2KsmCrPZxk3kEa8eTV/ejivm+gFLwf5kFLL1bcfKo9/R6U6saQ7cwz3fdcmGTqN/53Z
	xwAYlKaPT3lbENLlAXQLkqZTY+c9W+IHni1hu4mZOYGgjJOtbxY/yM8Oj6syETGufCgxIl9s0ce
	jjP+4O/ayuznCsgZikM9xA0o2QTsGlyHFhsclICM/3rPl4kUiDMWRkk0mIFD5RMBYKsvIfAUza9
	uUzYvfcwW0fRQYsmtBvIVbBWE8K3zhc4Ir6FNk0E06A6kfJYmhyG4b7hHxuGZjR0gkRd52/RHQL
	SCLGzq2voPzddx9GvDO8YtX7fwhL7Dn4BS4qT0TrT8kXUI/yJ2+xUhZ5+0MLfFsYuV0Cd65mga5
	KWuckV7Kg==
X-Received: by 2002:a7b:ce14:0:b0:477:991c:a17c with SMTP id 5b1f17b1804b1-48372f1dd02mr872455e9.6.1770941716393;
        Thu, 12 Feb 2026 16:15:16 -0800 (PST)
Received: from silence.. ([46.10.240.40])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm234440945e9.6.2026.02.12.16.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 16:15:15 -0800 (PST)
From: Stoyan Bogdanov <sbogdanov@baylibre.com>
To: jbrunet@baylibre.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stoyan Bogdanov <sbogdanov@baylibre.com>
Subject: [PATCH v2 0/3] Add TI TPS1689 pmbus eFuse
Date: Fri, 13 Feb 2026 02:14:05 +0200
Message-Id: <20260213001408.2454567-1-sbogdanov@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265213-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sbogdanov@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEACB131F44
X-Rspamd-Action: no action

Rework TPS25990 eFuse pmbus driver to provide more unified way for
non standard direct conversions.Remove existing defines for TPS25990
conversions and replace them with enum listing all supported parameters
and structure using m, b, R. Add functions to covert raw to real value
and real value back to raw. Add data structure to hold pmbus_driver_info
and local_direct_values for direct conversion.

Add support TPS1689 support to TPS25990 driver, since both
chips are sharing a lot of similar internal functions with exception of
work range like Voltage and Current.

Change log 1v -> v2:
- Fix error detected from kernel test bot
- Add Acked-by to dt-bindings commit
- Drop "support" from dt-bindings commit subject

Stoyan Bogdanov (3):
  hwmon: (pmbus/tps25990): Rework TPS25990 non standatd direct
    conversion
  dt-bindings: hwmon: pmbus/tps1689: Add TPS1689
  hwmon: (pmbus/tps1689): Add TPS1689 support

 .../bindings/hwmon/pmbus/ti,tps25990.yaml     |   4 +-
 Documentation/hwmon/tps25990.rst              |  15 +-
 drivers/hwmon/pmbus/tps25990.c                | 185 +++++++++++++++---
 3 files changed, 171 insertions(+), 33 deletions(-)

-- 
2.34.1


