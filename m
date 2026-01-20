Return-Path: <devicetree+bounces-257318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAllI6gucGkEXAAAu9opvQ
	(envelope-from <devicetree+bounces-257318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:40:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 014324F39F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7DBA57E9478
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC09A41325D;
	Tue, 20 Jan 2026 11:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="wRK3W5lf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3923D7D62
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907471; cv=none; b=aXc0z5wNhfMF1RIqrorbXUJt12bjjSOfOoNWLvy+zYOdTw+oL9mXhqJTypEgsmxcA1WD4e/5FPsoj3hqCMm2avj7Lzcl3duw6Itmx6JCHapjk+fBrziN3V0+BqcFU+kbSv4a3Xr1ozZszP0xnx2uDGZYbm6+dx2KiLo5SyzqdwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907471; c=relaxed/simple;
	bh=cY/d2I/Kt0ylqYIDhKML6y6aDVTO/HHtkuI9wBxPxHI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aRg5tgU6eR0khchrmTewZdJ4M0i6EALn57qi/OlLR60YxMJoGOGdDhXC3C8gn8lehivJPPXI5Kx1PJ4d2r5HWJz1gMN1YrbYsGAN+WPbQ57T3uuB16LNUtyYRGafwYS/EXbo7ZYlaWGTWLl9BzuHT3VycVc+1L5GdENp28bQKd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=wRK3W5lf; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-81ed3e6b8e3so2484135b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768907469; x=1769512269; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vmdP9sVSN2cHqDVsJHM+ds9zx07/+5KgfWHAIVzEViY=;
        b=wRK3W5lf9DG1a4mvMiBCqbpiMbbmzEt58LdyTIY2keb3FZN8ladt/XdwjkVhFnkjeR
         v4R6uIje0nZk34/K7OraXtC0KmKjP2g3ySiZjy+fj/jlcQMZYGT+su+N0Oc+NFPQww/1
         EHVLqKQ8Q1qyKevZFaQcJLpdN36unjXXAvrBvB91Y9/ECHH696NvUo7DvS+tz7Y58hVI
         Y/YQa2QXOkTmNZIouuiQVfW+HbTYfhldcCDbXmqaa4X7T6gt4YMtHxyJpY6dGTZbPU2U
         pcpMJeR/zeaMkHn0jmDoQprwqSAIxmnWTa/kik3x3cLQ2rtP9xim5uQwGbrKs3vbZfND
         1dmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907469; x=1769512269;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmdP9sVSN2cHqDVsJHM+ds9zx07/+5KgfWHAIVzEViY=;
        b=f8Sw6yVaA6d0gWTtz38f7JGQt2C6P6tkTzJjXEP6+LEpWzSpZzS+sNF4pRXNq0pJT6
         grbc1m6vrFpmLjD053CQTQ5oWN1M1fvBWXkQwuOk1MyuUEsKYa2afzBZYKq9MaF2c98l
         N3uh8dSO6UUzAEB4xf2Tvaf0Ndama+gqeutVPVimj2IpS01l/akq4QifCC+ATtiuPvQy
         iAW881gf6akk31w2mV8f2fgPQAU9RxTZxS/j2LSWf5P3UpO50FugiyrCTetlqEPjTef0
         OQbYu1xZr2TnoO7GlQUrS5J1GoOrdQBo8fa6iWMEvpfE9rTpwXPUENYHvk4czk/Y2Tya
         bULw==
X-Forwarded-Encrypted: i=1; AJvYcCWpHFw0aZ+HkOUO4z6HJ+U2p/fxRoD1AUkSmFprkOBr/kdxovehxRQEwozTh4PuDukqvk+0awq5ohDI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0WDBMjRCJVVa8+pVvxm+EcSHWJerGW2ODX/8X6zyurLjKBr/G
	nX+Lst3MLQEisLh0aoSbc9I2jytWpueJKe/Bn65B9jP9qdkohZKEAPU63SMk6Acexsk=
X-Gm-Gg: AZuq6aK1a+FcabJk1QBp9Mr8+bDrlIf9BIC5y/FrBN4rPCGbKggI9H5Xe2SQ80d+YfQ
	l1wCKN2AuUxKaekwCND3GP/YE2ylqk0WXSj1Ws1RusxCR96c8NK2j5Hjese3gOiXteFwmWximMF
	MmkFSRKZau60puDJYYI9pnhQWDF3v7bggfvdR4JCIMPzjAQw3DV03idRQ0mxcKNu8YfvnaPlw8n
	/F/ZSzP/3UvP2gSU29z4ZNk2V1voAtAcrKJQuuCt2RrfUDteUOfvacN+44eKuvPgyxe2V0h1ZLe
	g6rGItqGYKX7tOlijcwv+lO6nM4nzEalvUg2BohxHwJTAHwZpz+EfuWoY85U7wQsyypACyGoefF
	fw2kDen7ATgOTaglY46HQd6Vsp15Qjb+a4OnvzTqExpL5EWkCU5qTezJ12iNPJi6H0Wv5aWBeic
	WmMeiWhJ1DADk1RLk6h5O5gk8mV68Zw6c=
X-Received: by 2002:a05:6a00:1797:b0:81f:9b0a:812a with SMTP id d2e1a72fcca58-81fa1780e68mr11976552b3a.14.1768907468605;
        Tue, 20 Jan 2026 03:11:08 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4015])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10efc6bsm11398349b3a.29.2026.01.20.03.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 03:11:08 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v3 0/4] reset: spacemit: Add support for SpacemiT K3 SoC
Date: Tue, 20 Jan 2026 19:10:48 +0800
Message-Id: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALhib2kC/2WOSw7CIBBAr9KwFsOn2NKV9zAuaBksMW0VkNQ0v
 btIY2J0+Sbz3syCPDgLHjXFghxE6+00JuC7AnW9Gi+ArU6MGGGCMibxlWMHHgKutWwrQcFwSVF
 avzkwds6p03ljB/dHKoZtiFrlAXfTMNjQFCPMAafqgVAq0VvorQ+Te+ZXIs3G/9VIMcGgFanKq
 tWg+dFZ3/mg3D6Vcyeyj5vapP5yWXJLUWnDuAAD8sdd1/UFdJX0pBABAAA=
X-Change-ID: 20251229-k3-reset-8d9b751ef391
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257318-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,riscstar.com:email,riscstar.com:mid]
X-Rspamd-Queue-Id: 014324F39F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the reset controller found on the SpacemiT
K3 SoC.

The clock driver changes, which defined new auxiliary device name
patterns for reset on K1 and K3, have been applied to the clock tree.
To facilitate merging, Yixun Lan has created an immutable tag
(spacemit-clkrst-v6.20-3) within his pull request to the clock
subsystem [1]. Hence, the dependencies mentioned in v2 have now
been deblocked, making the reset driver ready to be applied, if it
gets approval from review.

In this version (v3), the entire series has been rebased and tested
on top of the linux-next tag: next-20260119.

General informaiton about the series:

The K3 reset controller shares the same architecture as the K1. To
facilitate support for both and future SoCs, the existing K1 reset
driver is refactored with the following changes:

1. The existing K1 driver is moved to a dedicated 'drivers/reset/spacemit/'
   directory.
2. Common reset operations are extracted into reset-spacemit-common.{c,h}

The K3 driver is implemented using this common infrastructure.

Link: https://lore.kernel.org/linux-clk/20260114060410.3340540-1-yixun.lan@gmail.com/ [1]

Changes in v3:
 - Updated dependency status and base information.
 - Patch 1:
     Add Acked-by from Krzysztof and Alex.
 - Patch 2:
     Removed trailing blank line from Makefile.
 - Patch 1/2/3/4:
     Add Acked-by / Reviewed-by from Alex Elder.

- Link to v2: https://lore.kernel.org/r/20260108-k3-reset-v2-0-457df235efe9@riscstar.com

Changes in v2:
 - Patch 1:
     Update the commit message to explain the why.
     Update the spacemit,k1-syscon.yaml to point to k3 reset IDs
     header file.
 - Patch 3:
     Use dev->driver->owner for the reset controller owner instead of
     THIS_MODULE to fix the module reference counting issue pointed out
     by Krzysztof Kozlowski.
 - Patch 3 and 4:
     Update the K1_AUX_DEV_ID and K3_AUX_DEV_ID macros to a simpler but direct
     form, one benefit is to improve the code readability. More discussion
     can be found in Link [4].
Link to v1: https://lore.kernel.org/r/20251229-k3-reset-v1-0-eda0747bded3@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (4):
      dt-bindings: soc: spacemit: Add K3 reset support and IDs
      reset: Create subdirectory for SpacemiT drivers
      reset: spacemit: Extract common K1 reset code
      reset: spacemit: Add SpacemiT K3 reset driver

 .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   8 +-
 drivers/reset/Kconfig                              |  12 +-
 drivers/reset/Makefile                             |   2 +-
 drivers/reset/spacemit/Kconfig                     |  36 ++++
 drivers/reset/spacemit/Makefile                    |   5 +
 drivers/reset/spacemit/reset-spacemit-common.c     |  77 +++++++
 drivers/reset/spacemit/reset-spacemit-common.h     |  42 ++++
 .../reset-spacemit-k1.c}                           | 107 +---------
 drivers/reset/spacemit/reset-spacemit-k3.c         | 233 +++++++++++++++++++++
 include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++
 10 files changed, 583 insertions(+), 110 deletions(-)
---
base-commit: 6ada99659c6d6a0cde83e6c0f4ed0ef0ba1867e1
change-id: 20251229-k3-reset-8d9b751ef391

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


