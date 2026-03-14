Return-Path: <devicetree+bounces-275727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJU+FZWHtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:06:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7F728DC6B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:06:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C183F301DC1E
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523F033BBBD;
	Sat, 14 Mar 2026 16:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0FENvpz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CBB27E1A1
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504400; cv=none; b=i9wsdq8hfyNOU9hxl9JluOhpT5IkxEx5+f8RalZ6KEfpgaEKwR9F+0SqImzidZhSf+Q9zkxocrCVRVTMb16K31FyZrYOSv2Y1VXhH0dBjG56uPCYFuuOMo1SUSmjwkBpiMvUzIysW4R9vItJEVG4ENO93BVTsLlBMG4movVgyCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504400; c=relaxed/simple;
	bh=PVNLhKnuvnLq5lryTjPze92pjMzYxlP0inllyDZUJLM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pkLwzh6GiKJQnlU5lpgz9ObspqyXipOcdqqHMsr4iajwJe4jkon02XpDbupSBTfRmJRZUTlpOtjFnng/wMI1buMRrjSeKR7JyxMBrtFsC/OJsbhTOVuoOP+Hvno/Si/oc7+d5GQYO/lP4PLxBJ6pXSl+77+MkAmDQepWdvageg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0FENvpz; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9793fa5371so53485066b.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504397; x=1774109197; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u2gE4AmHfyDdJk2rWgz4dNOtkVHCWBvMjN9Y8lBsN1k=;
        b=f0FENvpzkPEGjHiCvfvsjqvC8KFbPozoLU3EQJLnxV6kbHgZDIAzOdVXnTFHe6VaMs
         F9PGz1IJ01sn0xVK4iHPO4q+DtnoiJXkmX6v0DwEC2aeGwwUAoC+soHV7Y2c/Zt/LuRP
         uVQyaaU93lVUFoPsATnuuWffnjliwqIrWiVIj6rZMQlZ32k7JOmU7KDcYnsiShR1A04+
         sEr7wXcxvGcr9loDgnfT4wRARrAHdY2earvQgLut5i1YOu84r+DUWvb8w+MLjCFoqaGk
         sEoOQIOpdysz5YXjfdzwFnY/6Bb7YDH6BdTFtgolHcfueO1AsnXeNoGhJIBMHwH2Yszk
         uG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504397; x=1774109197;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2gE4AmHfyDdJk2rWgz4dNOtkVHCWBvMjN9Y8lBsN1k=;
        b=kU+jU0EWjcyOqTkp8JMv3aS8wGtPsuA0ii59GzcJEcJqmZYu5sgJMW6/maMlz9bV5x
         FFEiGQuDOXn/YpBPxsKVgSmKN98Ee4nhol9E0j6vBaJ5OSWPp2Qkq/qlooIP9wvZ88i9
         wUY7sfsgxs9Q97JzfWWl6/BYnMlK3gtfiHoEb65sj0BfiERQauEweVnP5G73/3s7tSwK
         7N+EXK8mcByPLFXs0ARHwVvAhVu7vuB/aRGEm/1QeJ/h1Qx0Q8f/xIyuFg3IC+kTxyUa
         /uOjm2n/t5XDWkfHzPsdQmnHZ4lMxbcnqxvEHk0GMq1OORgU5VmYXh8NsbajGnDE4Zmr
         kf5g==
X-Forwarded-Encrypted: i=1; AJvYcCV/93k+NSvXvnoW7FwNefdz+3gfWL+hVfGS6TVFgBIDg2cD0vfpvCAFATCuJnrgj89QLHVwmTVAHmIz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0e4tx6/H67+s4JliUMHCyKZBDCdKXk5OY1KA6W/EM0DWZpo5a
	oGos7nyTjCx/H5vXQhnSjS1Ff3uOpiwFqw3ePIMScu3l2X+ZG5cbWhv/
X-Gm-Gg: ATEYQzzeuMOxpL8h1Ljp4YBtL5NCxW3cdSsDiIBLTE13QclQb2A+o0q6EE6cXZt4ubf
	n7TtdGmZg2k/T4ogrT/E/mjzqs3mFdPLJaNm4wZ+FzzVhtFINUf4KZJM55kRHLu9W3Kth+tGshc
	EXDu0n/qRkOGjh+KvW2YweUBg/WBb0iWGxI8Lm49Yg0nKNN6CBswPYIcddzeOplKlpqD4HY9Vkh
	+kiAehbyoWloSeWLzcKqsN3LXrcXvHxXLx22U//HX2h9MXGi0gNic6EIWejzhLjMjFwI+7V4TIF
	YhkAMkeqsvbJ6WTscUOSDulhShM3NZB7gBaAebxit0uc+6O0FqSflZ9MPpjvBeb/RRNeo7UAilV
	4k2q9hUMSDwrXIKCkqxQFqoed8BORCCjUeIZnIn402rslROtz+JXHzLKhb1Bz5T7/CrutB1jZp1
	mWBGE7gp0SoW9gyjgunWcjINSqagfFBrV2Lgzq
X-Received: by 2002:a17:907:3cd2:b0:b97:3734:8d49 with SMTP id a640c23a62f3a-b9765145762mr437909166b.38.1773504397154;
        Sat, 14 Mar 2026 09:06:37 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:36 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v3 0/6] iio: light: vcnl4000: add regulator support
Date: Sat, 14 Mar 2026 18:06:29 +0200
Message-Id: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NTQqDMBAF4KtI1k2ZxBqkq96jdJGJYxzwpyRta
 BHv3igUXLh8w3vfzCJSYIriWswiUOLI05hDeSqE6+zoSXKTs9CgDZQKZHJjfwEAGci/e/uaQpT
 oWoW1BeXIiLx8Bmr5s6n3R84dx9z7bk+SWq9/Tx16SUmQxmBu1I4qU978YLk/u2kQq5f03tDHh
 s6GxoYQHWJV272xLMsP2sEiRfoAAAA=
X-Change-ID: 20260310-vcnl4000-regulators-bcf1b8a01ce6
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
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
	TAGGED_FROM(0.00)[bounces-275727-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
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
X-Rspamd-Queue-Id: CA7F728DC6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series introduces support for voltage supply, I2C and cathode
regulators. This fixes an issue where if a regulator is shared between
the proximity sensor and some other device, and the other device is
powered off, the proximity sensor would be powered off as well.

One of the commits includes a Reported-by: tag without a Closes: tag -
the report was done outside of LKML.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v3:
- Added a more detailed description for supplies in the dt-bindings commit.
- Separated sorting includes into a commit of its own.
- Replaced all occurrences of mutex_init with its device-managed
  counterpart.
- Moved client->dev variable declaration into a commit for adding
  regulators.
- Removed redundant dev_err messages in probe function.
- Replaced all direct usages of client->dev and data->client into usages
  by variable.
- Link to v2: https://lore.kernel.org/r/20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com

Changes in v2:
- Removed double quotes in includes.
- Reordered includes alphabetically.
- Enabled regulators before the mutex is initialized.
- Replaced direct usage of &client->dev with a variable.
- Link to v1: https://lore.kernel.org/r/20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com

---
Erikas Bitovtas (6):
      dt-bindings: iio: light: vcnl4000: add regulators
      iio: light: vcnl4000: sort includes by their name
      iio: light: vcnl4000: replace mutex_init with devm_mutex_init
      iio: light: vcnl4000: add support for regulators
      iio: light: vcnl4000: remove error messages for trigger and irq
      iio: light: vcnl4000: use variables for I2C client and device instances

 .../bindings/iio/light/vishay,vcnl4000.yaml        |  7 ++
 drivers/iio/light/vcnl4000.c                       | 76 +++++++++++++---------
 2 files changed, 52 insertions(+), 31 deletions(-)
---
base-commit: 6e03baeeb160e6cfd72f2c39f26c50bcd925c7a0
change-id: 20260310-vcnl4000-regulators-bcf1b8a01ce6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


