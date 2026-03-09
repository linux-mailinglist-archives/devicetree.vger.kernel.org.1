Return-Path: <devicetree+bounces-272845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GO5ZInyormkFHQIAu9opvQ
	(envelope-from <devicetree+bounces-272845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:01:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 792102377C2
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:01:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6596300DF7E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4F4393DEE;
	Mon,  9 Mar 2026 11:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="abhr5uNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB27393DC5
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054068; cv=none; b=unHO7Jb5Em1OMyAsOSKTFEkV7RQClUohxAukmmmkopleIzne8hPoy5VJxqgHLlLI6KRVW5gewhAgEzEvLS6dz7NgNXS2izvJkDF5q34JYMCWs9MybPZxJQ02nobczZ+/SnU08LxRE7lC22NXBwqMKiLME6JLZe/Za/vkSJruvXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054068; c=relaxed/simple;
	bh=gKhrwmRy1/But6o5WM7jY3uT6q9+gXw34J3KmZB341Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qAHU1HVr/4KMDXr08loV0Dlsc/TLBNBb5zE0KA72ORg3O1+SkgvibDsHJNL/J74iiYMZsfgOomHws5iDtgQnZmi0ZyTvJkdhCG3FOC6uV2AFQiwvq1PJVykK9sk37wfZ9otcVqveyuLRQ0Wl12lC/VAk2EilVpPG6TB7vxRVSXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=abhr5uNJ; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-359832fc558so6368487a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773054065; x=1773658865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6qS9+QDrPf/of251vEjU1bJ/OgJ+OlOTQdnd6J3ZiR4=;
        b=abhr5uNJzayz7t//5uTPlWM/kqh0SKBgDUJtUNtbtO0J/aLDKd07ZbeNQK1FLiRqI4
         WHOo2yH59tuLUUY+f3CR3siCoPEPmu6geN2e4sxct3or44j37yC7+RenWGS3fKE769Mh
         OsdO32MX3fSaYL/4JfY3GDQGANpScgi64ACCA3bURJ/Bb8pstnvunli/7M45344WDPTG
         IJAnw69pU7VGFOiICzqSqreYy28UN6+o3Ux+slQ6WNQRfF261wi9rBa0ng8FeMsd6sqk
         HbwdIMCOmdivj7dGiGr1bzFEvKlkUZjJzRhfsrHU+5KeZ/JwrOSdKaHnKAQjrzN28bBy
         087A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054065; x=1773658865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qS9+QDrPf/of251vEjU1bJ/OgJ+OlOTQdnd6J3ZiR4=;
        b=QHDNxC3NnkuqM0GwVZ0gHPeXtuTvILqxrEz5ytCssLpClSa3DsLP8WcGSKyREcOiBX
         f9lquxdu04AoMH+RASKuUOv+Lywt+l9w89XQmNfCxH6fzmYWiMHNdfufAi8zr1zHq35C
         zbccBFamRbpBsWNy5oyqYs0SOXmsdeCqMmGSPGOSqVBZdRHgnCqPOYm4L5ZV11bR85lo
         77OX0Ky4+DMHtEcTJr2150z4UFCn0Cjh41rtEdfgR1O6XwRanIR/8SgiGOHMb1hhUWRp
         ypdob+w2skj5kN5+A3j+TNTCQmuXHcCKgXPzhdMoza52vfBNqlZKuocO8bgNGdbtCjLw
         gUXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkAKqGFYTcd9NOIYC52mB0Y6GP6is4Eoi/xhv/69KDxdq+d4WNoUY0LfUG6yzqp7eaGch3mOCZBZ2m@vger.kernel.org
X-Gm-Message-State: AOJu0YyDNhteJww8+xa2WnGDRCHB4s8qfWU4W6+84xzamynyJxvKY5Nw
	4NcXI0wu7sMbt8ev0qicB0UtWMUOZI/aK7i6Hm+fp2obreDJd4I4baLK
X-Gm-Gg: ATEYQzyU7mKRdyGTeaf1Bbr0TsvO59Lkil451M8vI1dMEHV4ruCi08TYfX/73iqzgXd
	UCVAh0b+s9tMMOtWuULtfkRKnM5Fxjnoz2DC08dbWhYzvMUje+itwVQOgbncj4LhzLu14coVa2K
	ej+2JAQ6JsalqU+7brLazTfVB96W0S86IxuIv0OnTUttcvghVrSwjZ7c6ygg/nM1qFFi67ibIBd
	FEfHEO3/GFulnqHuH8VZCJR/QOmJVma9OM746y34agRjRQuxHIpqCER8KxL2QddcKEVAF5YluDG
	7LrF4H608/qnw2k406ONTKQ6A5RkfUmB6XlKwBkeGk2GHDho+W1YdwsIoCukETSwnHSlQEgJ2MT
	T66uFUbldguZlOoKpE604dJYkxdgo23cfPz0b4MjKfDHwIgWwBiHg/Ztj1dGtai8hszkENG3Ozk
	5wZRaj58XMwvOyoSUkmiyO2s3sjk/UW6pVLrJiFsmTsJHxA2YAFx+FZ27ELw==
X-Received: by 2002:a17:90b:4a50:b0:359:8c89:96d3 with SMTP id 98e67ed59e1d1-359be297579mr10350265a91.15.1773054065108;
        Mon, 09 Mar 2026 04:01:05 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bff279f4sm13268296a91.0.2026.03.09.04.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:01:04 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Michael Welling <mwelling@ieee.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 0/2] Input: tsc200x: Improve wakeup source handling
Date: Mon,  9 Mar 2026 18:00:42 +0700
Message-ID: <20260309110045.108209-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 792102377C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272845-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,denx.de,ieee.org,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[gmail.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[phucducbui.gmail.com:query timed out];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.993];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The tsc200x driver already uses device_init_wakeup() to read the
"wakeup-source" property from the Device Tree. However, this property
is currently not documented in the DT binding schema.

In addition, the I2C core already handles wakeup initialization and
IRQ wake management automatically when the "wakeup-source" property
is present. Therefore, the manual wakeup IRQ handling currently done
in the driver is redundant for I2C-based devices (TSC2004).

This series makes the following changes:

 1. Document the "wakeup-source" property in the DT bindings.

 2. Delegate wakeup IRQ management to the I2C core when running on
    BUS_I2C, while keeping manual management for BUS_SPI (TSC2005)
    to ensure correct behavior across both interfaces.

Note:
These changes are based on code inspection and the documented behavior
of the I2C core. They have not been tested on physical hardware yet.

bui duc phuc (2):
  dt-bindings: input: touchscreen: ti,tsc2005: Add wakeup-source
  Input: Touchscreen: tsc200x - delegate wakeup IRQ management to I2C
    core

 .../bindings/input/touchscreen/ti,tsc2005.yaml |  7 +++++++
 drivers/input/touchscreen/tsc200x-core.c       | 18 +++++++++++++-----
 2 files changed, 20 insertions(+), 5 deletions(-)

-- 
2.43.0


