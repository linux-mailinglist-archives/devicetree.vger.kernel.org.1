Return-Path: <devicetree+bounces-259143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH56K7JKdGlu4QAAu9opvQ
	(envelope-from <devicetree+bounces-259143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:29:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 030167C787
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 05:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 781AD3018BE0
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 04:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D268D244670;
	Sat, 24 Jan 2026 04:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="g2wu9m5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5268A1EB19B
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228972; cv=none; b=HUK4cx070a++hcMLb9o/9NFGyECFVX08cuvhIk8ObDdaVP2vl0gd2N7t1hRob5N6dlaSiyHlYEZuW45+wKO9MjLiGlTdAW1LVCBp01SEH4O4MhUQM+LJ83L6nFGuq3KdzPUx7ayBpRX6RZrXCZ5cUquz+ahy171f59UwwJKkxDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228972; c=relaxed/simple;
	bh=z4sE7F+fReVLimxlI41zbzg0d+0RXl9Q5GteWlizyGA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZRsi06eEI5U1QG9uclFgef/E8NCGk1+7V5+hYzvWbqMJShD82f1FyK5z2jS3a6K6SoRKYboalLKpgL+lAdj9A5OKqhkf2wog9CQUcU7DWUBCCXmsfY8A1GzSVrjTCrr9sffB+4N0FQdkkiTs3ImyhPmX98jfiNdYMKny/ns+IYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=g2wu9m5c; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-82318702afbso1849293b3a.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769228970; x=1769833770; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O4MFr4awFPQFQ95TEp9Xx5V/NF5VvFij05h0W0v3UZY=;
        b=g2wu9m5cbcP0Ir7aYDaSvoFBCn7JXDHqQdJOyClJIABCBjttlZBzWCHAroovvJSc5H
         MpMrRvUAL0Y+Wbi9AmTkMEhc/4rNQhuoHQz/941rjLY5bFBUz7r+uEk07f7ia8pjbT6p
         2s8WqFQeu9oMr4xM+i0Km7M0dIOZYfRG+1XmfWVnN8S2KJYXPXSZVGKeq4IJn/dsTqAF
         RMybxKI4MCuGeo7T4wy6R5oW0aT4nCkORaEpmR1mjhqGTKdt6yYC/zaBu6XjchFkUid2
         kvSO4mPm18mNJsllCYHakqENVc8DdYIRwPbWFAdfizHMA0rpPkGNaCPwjJZ4YeXz6czk
         GnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769228970; x=1769833770;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O4MFr4awFPQFQ95TEp9Xx5V/NF5VvFij05h0W0v3UZY=;
        b=A6Akhc3yQTD7gL8XKnN3JvRzssw+V9X5TXuJLtgZQm7dTsJ1rhptDp3LAIwqAxgnh4
         FW2NmJBsXo/FzZ5F+F2pQNCb413pxzMJy/ad9NgRpqAkRSYd06UVSIXAiMouQsHCmrH2
         yspMGw1pJ9bpsJYaB10n7+g5VMTJ6wWVGPxXH1f9GZqc7MQ2bPqzf7S8IIi3cQQZ+1Zg
         TMW0uQmn/1peyIrKie6eC9B4OlS/Pw15pKV5vwOYjVOOeqAEjqQJDXIpW1EoB/gIaOjS
         VL7KFnAU4r5snfYGJCqTMGSF9YhDJxdojhn6p2a7l6Wjhd3ZUXpagBl2A2heZwG/wzeQ
         5KKA==
X-Forwarded-Encrypted: i=1; AJvYcCUmsaWxrXXnC4EnVQhcbdKJNged9+d6vQv4Vz8v6EGmt7sI6xSTmC33oGdAAQd0OLplWzQTrOqZt0ZL@vger.kernel.org
X-Gm-Message-State: AOJu0YxfMUo+z4OIfgfm1ECdssOwK6lryxvq9bXarPdeREkqMR5dBuh6
	jln6UQIWhWwTL8zxiPvn20m0BcFQoDptdQYZNENN9emD40tN9sUxqJrOtXUu0aa518o=
X-Gm-Gg: AZuq6aIHC5SgFF3fS6BlJJUz76Gh08tqdpxDERskn/toEmW1mqE8wrSPy59rMdaM+eu
	mMa4i1n78h19yK4TLnZQE8Zu9ADA4Ur2CLC+ZQ3DMrh20FrgFsi6bIwEzVlUFYjpI0xbWu32T81
	pWfZpe/dmMroc7oYPsVPXErB6s2oeHlRlHMc9+EphbxTlnmrKa6rq1Fe2rCyZx8t7ZUpVTgMYUf
	QnKyWDkKW6wuN0QJf4BEiuaUi04NU23ms875FeRnbOeahucqvLn3n5dDOQpQtuobIfm3+XTsIwK
	xf1yo7Hw1ecz0znVVG7JTJRXIDGeIM+sJM5eVGjtmQJ5BkaCDz4K3/d4yk/aj1pvt7Dbmoi4L7p
	DYJUunnByCJxVzrEgLja2TlrpJcn0auRCuta5zfk/Xxcq/nL6WO9X3LsSXExsMYZaV95Goy9k+q
	jd5uaYb63IM00MwNfbVVqLLfvU4KItWeM=
X-Received: by 2002:a05:6a00:428b:b0:823:943:391b with SMTP id d2e1a72fcca58-82317f1a119mr4451736b3a.60.1769228970505;
        Fri, 23 Jan 2026 20:29:30 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231871d51esm3469423b3a.38.2026.01.23.20.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 20:29:30 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v2 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Date: Sat, 24 Jan 2026 08:20:15 +0800
Message-Id: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEAQdGkC/22Oyw6DIBBFf8XMujSAhYqr/kfjAnGoLHyUoaaN8
 d9LddvluZl77qxAGAMS1MUKEZdAYRozyFMBrrfjA1noMoPkUnMhJaPZOhxCYrNgFpXR6LGqlIf
 cmCP68N5t9+bgiM9XlqYjhNYSMjcNWVAXSugLGqW06kr43feB0hQ/+zOL2At/dxfBOCu5aVFef
 eu9ucVAjpKN5+yGZtu2L24UNUnZAAAA
X-Change-ID: 20260122-spacemit-p1-ae596efe885f
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259143-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:mid,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 030167C787
X-Rspamd-Action: no action

This series fixes hardware voltage constraints and enables flexible power
tree configurations for the SpacemiT P1 PMIC.

In v2, rebased to Spacemit SoC's k1/dt-for-next and added power tree
definition for K1 Milkv Jupiter.

Patch 1, n_voltages is corrected to match hardware register widths, as the
previous values prevented regulators from reaching higher operational
voltages (e.g., 3.3V on LDOs).

Patch 2-4, hardcoded supply assumptions are replaced with explicit
devicetree properties. PMIC supply connections are board-design decisions.
Moving this to DT allows supporting varied topologies without driver
modifications.

Note: Patch 3 introduces a bisect breakage by transitioning to
pin-specific supply names. Probe failures will occur on existing boards
until Patch 4 updates the corresponding DTS file.

Changes in v2:
- Patch 2: dt-bindings, remove providers from the example dts.
- Patch 4: Added the pmic supply properties for K1 Milkv Jupiter.
           Updated the commit message accordingly.
- Link to v1: https://lore.kernel.org/r/20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (4):
      regulator: spacemit-p1: Fix n_voltages for BUCK and LDO regulators
      dt-bindings: mfd: spacemit,p1: Add individual regulator supply properties
      regulator: spacemit-p1: Update supply names
      riscv: dts: spacemit: Update PMIC supply properties for BPI-F3 and Jupiter

 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 +++++++++++++++++++++-
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    | 12 +++++-
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts  | 12 +++++-
 drivers/regulator/spacemit-p1.c                    | 25 ++++++-----
 4 files changed, 81 insertions(+), 17 deletions(-)
---
base-commit: 5164e95565d3fd508ca8a95351323f5716dfb695
change-id: 20260122-spacemit-p1-ae596efe885f

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


