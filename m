Return-Path: <devicetree+bounces-258223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KM5/L3LScWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AAF62821
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D01F7561F8C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3513C320393;
	Thu, 22 Jan 2026 07:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="wlR4dEPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB01148035D
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067025; cv=none; b=gd7cWcsD7V3LK9qC7yP6nzBD/Gt7gQKIPYnGmCdF5o9hm9YHzpels4PBVO74Lf8dARNQz95RqmYMqBm8LGn79ojmAUsSwC2MGDYk2zCjA9nhz6WltA0df+KXcduP6yVgMN8HkRtES+BFcprMkbDLQ3QjYCyLZshWGMUhVkIbz78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067025; c=relaxed/simple;
	bh=//BOLOVEfaty+6g7ise3XsMFATmAfMCf0V2RukYrm9w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UeAqP1WQ3+br9nhQE8EHlhRtfWPzzjsDpID+NUl3MXilYPqUDIejkrQsae4KV/MNX4zAJJe913lLzd+2x3Cn1U12MhW2wB7d5np3wVLJjsw0i53MxLrLenBYQWMVzdRjQqE8YG9rGiHqTOriWyZbi7TBPZQ+ca0VPpCn6FmffjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=wlR4dEPI; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a07fac8aa1so5556875ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769067015; x=1769671815; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rr//05gnIsnuXVsjz8imH47FYtOzf0eSZEjsWbe6eJ4=;
        b=wlR4dEPI4Or02SBEnvHZnvD8D8y/kgolv6mXz3CN86RZVnx+Xxc/f6VxgN0kKEHdu5
         WmTQMCMzxnFhyUe0SgxOto+nIO96xiGEa5fxiykUZE5d4ONAFlFsGDD/apHHRWQ2CQ6o
         +Z3902qEOLWtalkusMSOgYSyDdDdijlcD/ZG/ZRiSMta3VAUCAAuMi95TZC5wev5jUmb
         aXinJGrp22oD4K51NAECBZkNaS3DDypC1Z25VSkdqd6KyFknwf9sCz23aM5eJJbR6tdq
         KtXd/cfHnb05pD4bM57S2kSXK1rSNYnnOv37BmVcFiilaBCce3R9Q9+twGOgKlMdGrZI
         XKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769067015; x=1769671815;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rr//05gnIsnuXVsjz8imH47FYtOzf0eSZEjsWbe6eJ4=;
        b=Urju/HkEa4FMc+OUi7+DV13N6Db3gKQJrkFyzwUFPZAHu5/yYfL25UNV5utGwTav9u
         rJkqNxjDKD+c1f/HRP+JYhP3lLHzDhrXD8h1BlZCefizBMTW3A1mjCH7OW63xc4O+/M3
         uvao9jR5/2BZ40VTu2V4jkKD0uNUyd6/IjADF13naEM6QVJII/EUcgu/Lt7SzPzZ3mOh
         sWVELtWWjXUC9ZWVmqz55Gum/UCQ3besHsby6vg8Zbx52RZbjLNnSxcmK4TMyopIza0W
         cePXu22+zMmD0knTUmwb1C2XWU08n5HfsWhsn/ngQqst/7OQ0CUohdAGQPVPI8wULF3F
         6iUw==
X-Forwarded-Encrypted: i=1; AJvYcCXAD2QTKWYssneKrBX7PBScP2surd3PP4TAaiEw0BlkigiVTqlCwasGHoaRpwobC5INX0Ub2zbzvDW7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0h9TXAovFZrKLnwLeCtAKaKbO9+D0i3wEWM4ifkTiZDKDn6My
	hDLJc5dvVCPGrQsvt89ZlSDGoUf9mNoO0Q6sUwOTSF4CDclTQib+3UeqRndewHXP24w=
X-Gm-Gg: AZuq6aLz0Ygn5pdWxodEsGILajDfXa/GglsvMD283co0ar5vqwbhWMjCRDONjkO0Yw8
	Yf4wHV0brHlKvV5oIJ3BrAc56k6H/KUmZqgBOZ9GJNBuXq7IRvtnyYBC99b5VvH16q4tzZnMzbM
	rT8tDf9t4TcE3C1uGz5kb1Psl7IRaOasu6ITQIHMdDiT9ppY+S/jApKTG2/Q6JmaoLPFK76VSWu
	qdkQHnB8qbYGDYwXiTZo6FUw6Vnl7EutRbcN2GLAeksXGRnJPeGWaCrXVlTlpmOMN80rFYTTX0K
	3Cq5ZaM0h2bnyuNuUhCyqLpOwBIAMYtFGCb5KxrIkUeJNabl4IU7FmIwVv/CMByaTsE4t7BX9QJ
	i+JVkKn9FREG3RxeZEEm3R5UPjZCKWbWO2TzYAqidVBPxCN1ybU+bDQMOxgqjh2eBDXNFA388S2
	spNMIu6oB27qmRggO+pNkW10WLuav+L+U=
X-Received: by 2002:a17:902:e84b:b0:2a0:d4e3:7181 with SMTP id d9443c01a7336-2a76b1693d2mr79306355ad.49.1769067014961;
        Wed, 21 Jan 2026 23:30:14 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm171691845ad.23.2026.01.21.23.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 23:30:14 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and support
 board power tree
Date: Thu, 22 Jan 2026 17:43:41 +0800
Message-Id: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE3xcWkC/yXMwQqDMBCE4VcJe+4WEzCor1I8pOmk3YOabqwUx
 HdvqMd/YL6dClRQaDA7KTYpssw17MVQfIX5CZZHbXKN8411jksOEZOsnC0HtL1HQte1ieojK5J
 8/9ptPFvx/lR0PUe6hwKOy1SBwWz+anvW6Gk8jh8j8q9vigAAAA==
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
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.14 / 15.00];
	DATE_IN_FUTURE(4.00)[2];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258223-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 59AAF62821
X-Rspamd-Action: no action

This series fixes hardware voltage constraints and enables flexible power
tree configurations for the SpacemiT P1 PMIC.

Patch 1, n_voltages is corrected to match hardware register widths, as the
previous values prevented regulators from reaching higher operational
voltages (e.g., 3.3V on LDOs).

Patch 2-4, hardcoded supply assumptions are replaced with explicit
devicetree properties. PMIC supply connections are board-design decisions.
Moving this to DT allows supporting varied topologies without driver
modifications.

Note: Patch 3 introduces a bisect breakage by transitioning to
pin-specific supply names. Probe failures will occur on existing board
(K1 Bananapi F3) until Patch 4 updates the corresponding DTS file.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (4):
      regulator: spacemit-p1: Fix n_voltages for BUCK and LDO regulators
      dt-bindings: mfd: spacemit,p1: Add individual regulator supply properties
      regulator: spacemit-p1: Update supply names
      riscv: dts: spacemit: k1-bananapi-f3: Update PMIC supply properties

 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 58 +++++++++++++++++++++-
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    | 12 ++++-
 drivers/regulator/spacemit-p1.c                    | 25 ++++++----
 3 files changed, 80 insertions(+), 15 deletions(-)
---
base-commit: c8a4a774a9b0d2c86593492625874e27e9cbc9a9
change-id: 20260122-spacemit-p1-ae596efe885f

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


