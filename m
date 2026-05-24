Return-Path: <devicetree+bounces-302195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CXYLEG9EmpW3QYAu9opvQ
	(envelope-from <devicetree+bounces-302195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 10:56:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 705995C1C12
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 10:56:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D83E3303E8F0
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 08:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75A9390C84;
	Sun, 24 May 2026 08:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cVypAtYq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F539021D
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 08:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779612846; cv=none; b=oeLwuUgP6tg9qLfwNuakbBGIRKgPOF2qtFSUfWXla4GL9eFGxMmEPkLCzrYDxwxReWuwwIWlk8lUgZCd1yG843C3VtMXDJPbDstX6nvmtmfDPwY1WRuOwgKWBNepH8P4w1oZo72HE0MBROOhQzWfHiAseSNSevuCMvF34rjEa98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779612846; c=relaxed/simple;
	bh=KoZohLAP7FkG0DiqRHfnK9gUGT1fB3petwusbNr1K2A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rH+ZBVohYopWKTJknebbY8hzSFLNpUcpnUsh2FBnuv2SKJISjqEPxPpWAyRbbK2sIEiwn2oAXR61qFQlb9Bp6XdUQmTkFDE5h9cfaSjE5s5SgV28TIwDX35zpzR3JCvK6GSbEEhfjlT2IDfSc1K4ZhK60zhdViR2ietO6W1TFsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cVypAtYq; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-835c98b659eso7334453b3a.0
        for <devicetree@vger.kernel.org>; Sun, 24 May 2026 01:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779612844; x=1780217644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LU/cOHKYJiwHIi210zVuGwmaJ7REyB2Sgsxuvm9SfTg=;
        b=cVypAtYq0H3iaxgMjzULJipOh4J4C4aXmwdu/PiyIyQmy8YS5xAAS/DT8/cxh2bBu6
         qrexfovdHBXPynz2/3RsSvwC9ZwNp1XvC4INqbmMhXPLieyl0kKIJ+KDOgGycTKagDby
         V4tMF//E+2h+I2LrEMdr1zlxLTxeAFTU0Ad9ALCLQgvZKDyEf9gMCzzpwposYHQi4l3y
         GE2LXKakOgbH6WqK8w8nEUBzGd39L60jmXCLsSk9pBBaxWrcdX4nauSzuV6clgqXXEaJ
         gb1pdH7Q+zriQQ9DhEouz+zUYEfpqjwB4hsJDaSAQ/b+PSe+Zmlq+G5Ds0Yem9bJ9+uH
         mI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779612844; x=1780217644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LU/cOHKYJiwHIi210zVuGwmaJ7REyB2Sgsxuvm9SfTg=;
        b=NqkZxbEWlNoVrddEv3FureM+YfouYESidNyUhvj/ErQMu815mhtCvN+XEV+W6pD2HS
         5qLjOgSt572ZMl6US5t1IzeUWXNugP02A5f/HDOH0VV+8xy06eLOgddTasP9MHlSWPal
         aEy1g5GOiwmFBJJ6ZSU7qVsMkPtfv5N8jZB26RvGEAxzNsLTO6FpNT0yEQbcRTulFiJs
         xlZNtFAscCNgNXfcejhu46KQ8HtZwHKP7V0rkzRxJn7r4qln5nHomVlX2uaVo5GGNF2b
         4xWxiD0RpvoOGPfP0/OZyKWFk+OqfFdGI5TTgRhHU+f0IQ301C52fgM04PhKoS9wCqEB
         pIIA==
X-Forwarded-Encrypted: i=1; AFNElJ8ll24rHHFQL6np34XbB4HXmbEgOikz1oRRmm5zv3l8Rdyl9r1f8FkaRDY5MZGLaZDDwokNF+8wFirb@vger.kernel.org
X-Gm-Message-State: AOJu0YxIW6jVf6N2SJRqvHXqqx4LVNwFVjt3y91X42evWjK/f1r1fiqQ
	BMBxhS9tnEe7pDQdADyu0JxoY7DfwqdikifSDsI9E7H6yrg2jy4wT0opqRixt+leb9c=
X-Gm-Gg: Acq92OHAafb7P611M3RPjBv/hkf0uzXZypeh3rfu4zSEZoIdCxKsn6j0E9ECwAhSLgR
	e+A1xXEY91GDIGZnbaF0aoSXXvT5denh5E94digkDbESqjme9fps03s6FiqYqSRPg0lTc4begEy
	kPEvvEcU8QfvFhB8aCJTsawZPQvdnJV+dwLf+8eflHbVOeCAlLYe04k3gdYiND+AEw+r9L53pA1
	c0UH6cU1ysNCXxBsBLoUsq3pmOkYxbGKdm2PxQbmcz+ZRfqrsIkZtHxDdetBvM8chpfZmX0N4l+
	kBQs/t247D+yDgkLgY8pF6mOIwEq5lmoxJjSdgg9De4+/XZLV5WLSNmR9E/MbEtpbVVDl9f9xnD
	JcgVcUsgWPflRxZemk58CoEw0P7gV59j8YtUqVIo3wT/EvU2QVRGQqK43k7ce4Y+fQIJJdRlbw0
	UxE8CouhaHCtErtsChNEnnyODoPapVcFu0nocx04Tzkl9ID0vtU8tU7YiLYhn1uRFQF1HmhnwY3
	8KR9Fs0BPVfgDP0BBR//KJ+AbC1ZHfwZgs0TQ==
X-Received: by 2002:a05:6a00:3d11:b0:839:dd77:3501 with SMTP id d2e1a72fcca58-8415f11f2d9mr10041656b3a.1.1779612843893;
        Sun, 24 May 2026 01:54:03 -0700 (PDT)
Received: from DESKTOP-G3E0OSP.localdomain ([112.172.255.242])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164ea4de4sm6353116b3a.35.2026.05.24.01.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2026 01:54:03 -0700 (PDT)
From: Jinseob Kim <kimjinseob88@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jinseob Kim <kimjinseob88@gmail.com>
Subject: [PATCH RFC v2 7/7] MAINTAINERS: add Open Sensor Fusion IIO driver
Date: Sun, 24 May 2026 17:53:12 +0900
Message-ID: <20260524085312.15369-8-kimjinseob88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260524085312.15369-1-kimjinseob88@gmail.com>
References: <20260524085312.15369-1-kimjinseob88@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302195-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 705995C1C12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add file patterns for the driver, binding, and protocol reference.

Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c2c6d7927..9238701f4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19977,6 +19977,15 @@ F:	Documentation/networking/oa-tc6-framework.rst
 F:	drivers/net/ethernet/oa_tc6.c
 F:	include/linux/oa_tc6.h
 
+OPEN SENSOR FUSION IIO DRIVER
+M:	Jinseob Kim <kimjinseob88@gmail.com>
+L:	linux-iio@vger.kernel.org
+L:	devicetree@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-uart.yaml
+F:	Documentation/iio/open-sensor-fusion-protocol-v0.rst
+F:	drivers/iio/opensensorfusion/
+
 OPEN FIRMWARE AND FLATTENED DEVICE TREE
 M:	Rob Herring <robh@kernel.org>
 M:	Saravana Kannan <saravanak@kernel.org>
-- 
2.43.0


