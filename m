Return-Path: <devicetree+bounces-274549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AH8cHmCpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:54:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6838271509
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD03830AA160
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E01391E42;
	Thu, 12 Mar 2026 11:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lbtg1hK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578653659E7
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316402; cv=none; b=pP/QuRkUeW3uxwr5lfTpGl0tZS6XgD54wofSwU3J3r+N7tbSKaGvt/luKfO1JxHBVtlyO6p/cC9apKyoUUo04/BxTlnmg9c+koAwd+z9sAdTw8SZMqUBs172W6F+A+LVeALOEivtWUwZnaXV16mlaW321BKQZr6Xj1Y4ysbokZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316402; c=relaxed/simple;
	bh=J+U5drShINo5+0B3DYDVjx3TPOFOzJe4Hqp6zGMExds=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ExPMR1gmL61DoIGHbDwn2DAWYy5O0kr1YTNbWMkPZzkAkaE2DiLqUESBTroTwS7igC1nexbWNw41Zq9k7bETxVbi5yrwcJtRJkuYZJhzxOij3kKMqU25Auq/RgEJNjgfoBla+pKRBeOYPAiNX7G9ilZwkMXlI0FEPM3rC9igWOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lbtg1hK3; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439d8dc4ae4so1045538f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316399; x=1773921199; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=44LXRHinVhycilszR/4yNd78RLiYQ/Nblg4COhfoEQc=;
        b=Lbtg1hK3yB3gYJ56R5yPo3Tx9k2eZYG8+itJUNHVDWUJUXTDBu0kzBHMQqaureLXVj
         qxNOepIhvFJrhr1W6ECWaS18js0pWx3Pa+6tMb6EHuY1RR6glc4uhuhrTT62hJptXQD7
         E3CzztCMcd0AC46SSWKREQxHRjVWAwp0eZqclmqvY9vUhs1BSzmzysIQbOweXvdGs2iQ
         8mrzW5gptAhciyV2B6lPdb5AXdTw9R1jR/C10oikQZC/NMdQQliwskkXGD6Ng+v/NJoy
         dJjcoH07vL9XdLuGI5Oqyb1SOH5hni1V/nnss9KX71lUd76R94FNL19e8eU5ayciAXX+
         VlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316399; x=1773921199;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44LXRHinVhycilszR/4yNd78RLiYQ/Nblg4COhfoEQc=;
        b=NDTK4nGm5YOcubQzPozOPSC7K/pyaRyLzVLirbu5pu54SOSiBTj7QTYPLVecpCsQ4t
         POCO2wlRBILv6VBWP5oqsl4NntwF4wMtbi3niM/LzZZ/uAomfZ8TmiMGjMrb8BfiGnij
         LPQm49YVeGxrZt4VMY9KRTDzJfy7cf02pEnK5nIzuWPwIz7e6GawCwRrNmKDLtc9bLHO
         7oiz3ewUhJHhQiFgjDi98OpDT157kNsqi+Rov+khJFyOffBZvazJrH97nopAFCr1RHN/
         IXKdg2L5zcjkLfFM0SSV0gpfunXeTAgh6lTABYJ41l5Lo1aI+ryY/6jO0tbsChZu37p9
         97SQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXJj9Y78gFi5gAA7HG+ltwm3jpWtF8hsG7i2AtAI8cq5x3UvJnJF/ujgCxTVsi2TNz/CM+sbaKxb3T@vger.kernel.org
X-Gm-Message-State: AOJu0YxQr4zThJlOMkHPIb0fOPM66wqz/GXYjMKZkriKJk0Fbw1KrPNR
	DNbmuPyV4WZm+LHDVRZG8zNCKKA4lBcl1gujgetQErOLgjFo9cFE8CAG
X-Gm-Gg: ATEYQzzFa8OpKZOtxcolDHXDn3q6EdXpDB04bkUY2pqi+sccFcGBHgOGtcFhZft4AGs
	/U3FboBqDmyJUUOyRVEYvnZVYU+bv4FEu9tKaRffGywXwF9inorAAPvvw2E6CqstPIW6cRuanuw
	NMtleolsOHqACCgmnggSvSqEYxBO9SwqP+OLnBZ8nouglYyA4f2h4vItZGxnf2dOACbTYE23EIg
	Os9doN2XpHfqcEGlD/MXRFBqMQU2gLsIbY4Mdc6zAYMHef70ZCTuOfuj7DuE7G9nj2mu/1sAn/U
	Uu6aAqszOsTEN5eHX41cyiVSNb9JZAtABlXzpMpwxHJ09vYdaV4JWHX6uogGvotWYVfPewhsgvh
	6fJWiUcOv57AVzKz1+xHDxg3faSo+Tld/Rr1d8Fo+wEOC9XZkuaLfakuAHzZ0qLXufyS8hMusEa
	1/G9XarumKhAM2DECP0AwkG4Y8eQ==
X-Received: by 2002:a05:6000:186b:b0:439:b046:2044 with SMTP id ffacd0b85a97d-439f81f2334mr11880791f8f.12.1773316398625;
        Thu, 12 Mar 2026 04:53:18 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7044960f8f.31.2026.03.12.04.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:53:18 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v2 0/3] iio: light: vcnl4000: add regulator support
Date: Thu, 12 Mar 2026 13:53:11 +0200
Message-Id: <20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NwQrCMBBEf6Xs2cim1VA8+R+lh3TdtgttIokGp
 eTfjQVvHt8w82aDyEE4wqXaIHCSKN4VqA8V0GzdxEpuhaHG2mCjUSVyywkRVeDpudiHD1ENNOq
 htaiJDZTlPfAor93a9YVniaX33k+S/qY/n/7rS1qhMmYojZb4bJrrtFpZjuRX6HPOH0D/Ida2A
 AAA
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274549-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C6838271509
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
Changes in v2:
- Removed double quotes in includes.
- Reordered includes alphabetically.
- Enabled regulators before the mutex is initialized.
- Replaced direct usage of &client->dev with a variable.
- Link to v1: https://lore.kernel.org/r/20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com

---
Erikas Bitovtas (3):
      dt-bindings: iio: light: vcnl4000: add regulators
      iio: light: vcnl4000: add support for regulators
      iio: light: vcnl4000: move client->dev in probe into a variable

 .../bindings/iio/light/vishay,vcnl4000.yaml        |  7 ++++
 drivers/iio/light/vcnl4000.c                       | 41 +++++++++++++---------
 2 files changed, 32 insertions(+), 16 deletions(-)
---
base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
change-id: 20260310-vcnl4000-regulators-bcf1b8a01ce6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


