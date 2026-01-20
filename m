Return-Path: <devicetree+bounces-257394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOrQEFQwcGkSXAAAu9opvQ
	(envelope-from <devicetree+bounces-257394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:48:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E44E64F534
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 717DA62D24C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD0FC42980E;
	Tue, 20 Jan 2026 12:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MYfjS2yy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534C8429800
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913445; cv=none; b=spJ/26z9lQ7nEl5n3365ejZbylgfVjfQWKtxGYR1Ux/fEf2Djr5ccF9dyBmcpoIs0cKnE6KENJJ+RuhrVEHn8YDPdeae32WDbTP2acZOehDexoHKWcdfrNcidNDkqP3xoKASvmCCfKulAfa+lpGQq4Swh5Moeu6V38GlF+ZpdOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913445; c=relaxed/simple;
	bh=6sMqGXnBsWs7Qtna1yPZgI8g0wHllWWzrqehilIX0J4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sYMrrIpievmI+9LHYrd0iO51AeWQ7nryzH9gUdSta/V0F4W3rDtmJbref5Q3f2zAG2npfMSH6clKe02WmLJjKzOjSGI7jHzq1j+D+NiuAYGixhGIVHI4pHO8Wtm4l1p4hpgvMb6M8hNCHlVnH44bC7i8ZEt/KTP7oIgh7PeViDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MYfjS2yy; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a12ebe4b74so51106495ad.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768913444; x=1769518244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJYUWQwQhgkeAbC/dM1w7lsNUkVncAvp21VUFc05s9E=;
        b=MYfjS2yyNT3EgyCloriC6EOaPE4vKXLkAjxfqTCmte2Ls/zCzZKJk9p90e7f1LquGL
         f2bCEOyOGziLUZuP8Dy7yBoTSV1DQ4AHNrPu5hkd7AeEhpDENNwKS+K8RXQctTUIg32v
         dKc+0oVX9MIM3ArcRR/EUH62OLEH3Q6H4r0mSJc36usfYJ06Mq6vKbMQUabZA4vrEU/j
         FqJ90OACA9cE/BAAwXL7d9LXUMBbJYl8W2tD2N9GagMb87LZWFPBgHGRyD0m/dd0/yaK
         eOl505ERFcC1/eT1VJ0GNBU/wU7TVP4mksc0q3lfd9cBRcG/ste7VDnx68psnBamMbg6
         7SqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913444; x=1769518244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJYUWQwQhgkeAbC/dM1w7lsNUkVncAvp21VUFc05s9E=;
        b=Pktz/QZVSmE1sB1GMfoVvsR89xCZgj/F26Q1H9nd6HnSpGezl8bpVBvUxdoET58w1w
         5juNf4bH/cUL3rp1fPF7hGzlw0/UztlJRcfyFptjb2dvOM0DDnlDSAGqwxlm7GEfaOaW
         iVojDAwOqQ6MGqgBZRUJXn9WcALKCqbxsE7x+iYhmD/1D91H40tVUGpClJiFD6TaL8aw
         MtIjNky7gMzga2pV1VGi4tFLNenZIEDfLO1odPnSd3zbIQvDLQZFR4ZDfKmPczk49q2e
         JNPxBhODPd5mrRtVtFntIG9okpNoawDnZeP9M7iaUgLCzF2I6HRx0sKjG5SWz0Euxk+w
         xDpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWG1FneGke06L9Yhz5VF4QFHb7AZMJPP2EuAOWakA6R+Iprla0FgWwccZ9vE0nkAS4QQinFxRkRdHlF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjmj/oOsUOVUXLUFMdOXDsAraM9S346GFNJXCltIPVmFKPbtUd
	DSYCu4bCkJB30nUSarlGTVR0YvFPY3vqXpb0EV6qQ9vtD+AqWdarlfzg
X-Gm-Gg: AZuq6aJEZFsYasyfgH68zA9QvbQMd8XLCc9Mk7t25DeP3Rxh6EB4GnG1c5Eg1PYOW31
	qdZ2P54lEBPKOCIg74zlFTYDEXvKISpT0pBJfoRiFo0jV5LqK7n3w9rA36v5w3AsHF3xb80LCFy
	XnjutT9X9Yl+pABEoNmGHzAcQKJ9i2WnsBPvQ+KULTt1zxIgUwRERAMK5FhvUW4D+ZxTqmqc8Qj
	bp8W9T474QmAKK2jXYe+Tq1ec6QvNpx4vAi8hqkvAdvW1qkFuLTSU0CBkD4YqgeqNOCdzcTVzm/
	noJ5W5S/3A9Kl8poh/WUR4mKIro6hH1EIu5pjkEXoRFQJyq+SWXfVY8lkDQ6y3iNh1AHhjS6nKj
	4aytV7yDHWVFOjToWUZPCxP5HtQkdoZRoo1/pEw7gpxqBLHRJZHudSsdcmUIyhFI1cgrHkZQ086
	1LyslBLRcYf8rQWWFMFIoMjEv6VHIcvA1YAhHe
X-Received: by 2002:a17:903:1447:b0:298:2afa:796d with SMTP id d9443c01a7336-2a76b26ccd2mr17322155ad.61.1768913443613;
        Tue, 20 Jan 2026 04:50:43 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dd582sm124973815ad.52.2026.01.20.04.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:50:43 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: lee@kernel.org,
	danielt@kernel.org,
	jingoohan1@gmail.com
Cc: deller@gmx.de,
	pavel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2 0/2] backlight: gpio: add support for multiple GPIOs for backlight control
Date: Tue, 20 Jan 2026 18:20:34 +0530
Message-Id: <20260120125036.2203995-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-257394-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmx.de,kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E44E64F534
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all,

This patch extends the gpio-backlight driver and its Device Tree
bindings to support multiple GPIOs for controlling a single
backlight device.

Some panels require more than one GPIO to enable or disable the
backlight, and previously the driver only supported a single GPIO.
With this change:
 - The driver now handles an array of GPIOs and updates all of them
   based on brightness state.
 - The Device Tree binding has been updated to allow specifying one
   or more GPIOs for a gpio-backlight node.

This approach avoids describing multiple backlight devices in DT for a
single panel.

Changes in v2:
 - Used devm_gpiod_get_array() and struct gpio_descs
 - Replaced per-index GPIO handling with descriptor array access
 - Moved the bitmap allocation to probe using devm_kcalloc().
 - Updated commit messages.

Thanks,
Anusha

Sudarshan Shetty (2):
  dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
  backlight: gpio: add support for multiple GPIOs for backlight control

 .../leds/backlight/gpio-backlight.yaml        | 24 ++++++-
 drivers/video/backlight/gpio_backlight.c      | 66 +++++++++++++------
 2 files changed, 67 insertions(+), 23 deletions(-)

-- 
2.34.1


