Return-Path: <devicetree+bounces-262648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uI5cL0NIg2mMkwMAu9opvQ
	(envelope-from <devicetree+bounces-262648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:23:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E18EE659F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0AB5E300C9B3
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B0E283FDD;
	Wed,  4 Feb 2026 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="O5V2PohT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B76A2773F0
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211392; cv=none; b=EQCh8xJ1YA+UqeJfTH2xbYm+esw2bZqB87jhVmYvVf2S1ZqgH4abxRK8HYMsdW+ECRLEzLmfSNapHn4xqbITnJcUJuqpw6M2QbxpI4YYPWP5GrV3vV/5nl/EmSaFB9oRU2/mJPin173oOwqq8zopKWWOc1FzY4lxLe0WsXXu8c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211392; c=relaxed/simple;
	bh=c68fJ7OMpslbItdQ9xgxFuKoYGVE3+0L9MTCQlxzlhs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Bilp2gu1EduYQJ1oFl7Ve5n+s19b5tgNfVyeBYNnFUGBSKqYxRqNEHflVEjI/3jvVCW6xXecHnDpgkBuI0V/PxZFsdx7Rf6Tw9IpQcfkh/mMo+k7MfdJT0Pf55lp84aKpHjEXGM4jlMkpFpW4sXt/PDf5n6yTIjzMJk82hmFy2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=O5V2PohT; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b704f08e73so541675eec.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770211392; x=1770816192; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kIfSdKgtKPIDZe3e+f9p01Ulu42xE4j1piPC/F3kvqE=;
        b=O5V2PohT7Av5kVh3H2mGN+HPgclIEuRitolJ6KPwXm8yyXgMLBs186i8Ut7uObttUq
         G12WGqY/5P07IK0MMgENmxWuXYWP/s0P2rSnajAz+lC/+hQuTlQGhh10cvNCpP7bpw3B
         Poib7BtnxvXFn0tErSzG5dt1mi1/4CA1/XCyHATnG0ZtgiiEDSoGolmq5ivO6yBUR4t4
         6pMZ3ka2gidt1t+KveNSN4Nx9FUE+6yAEY6HCGexDJAn24zXFYrnviYfcGqIxGDS2uO3
         lUe8O2vgA5f8fBV3GsR/4gbqwHnFwLDhzuopzX1iaFeCaXajNwIQfxqY3Yg7iNMsooRj
         a23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211392; x=1770816192;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kIfSdKgtKPIDZe3e+f9p01Ulu42xE4j1piPC/F3kvqE=;
        b=r9DxYFURNzZkKP+NavdxqHQkP4tqhsJ84WvQYftIfbrETQXeq0vSjO6mPni0QHVoQK
         o8nEmlAA6LqHEE7y7kRt6Yhztad420I+eYBp0KudqVMY2ekMZPyVmM6nEbMJPUS+zUio
         CZCQWRi/NAM4983+Ixwz6reAtyxYZUS+KfAhWO7j8OM5E9VSWzH3RLJNycB7J+t/U5/F
         k3JkVxSs8wF1wjltIgFhKWhhlqfxqgj0Fb7bbphDwn7knuT83vJAKQBj2oOCZt5MtT51
         0U3JXQA6UOiYE7u9KxbAdHB/kd2nzrqBqrD69JO2Dttn+/+mcLQDQtdzKnbffNOaRIMJ
         WzwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXN/L4XAJuu+5j/Jz51PIvLY4cpQ8MoGBTSqHNmNxNIa6tiApNrdZyDr3rZmi7OiEgX5RQ1EReVaxyA@vger.kernel.org
X-Gm-Message-State: AOJu0YwLtc8qY5sPMeKMbOoPztjc7hSIoZ8KPQhyv1XZc843AZrNQh/V
	/jEDkqB1MLcH62HkydAct7DK36szYdNTB1BFK20dILTpjXavwDjgbD6Qf3j4IZRb0ic=
X-Gm-Gg: AZuq6aI1hAKqsxi2v8ClfNj+cf3AGUpuA5Oxylz/9kaPEtwPgj39myTtkHgB9bwaSAR
	HY57ZZO2+GSjxGoejtZupQAUo1dUGglylOxBGnEGZaUyW8BQVX276Uux7/0YxPz3qDRAfqKQ3lj
	CL65/BA6w8dyrESAG+6UW/s/ZatnBV7+YYMax/665D6H5xMGVlIrpR4uYrvudKnu0ge/e26t6pY
	ePvHkFbPIkJhtlstCLP6JW6JuxVszzd3/YynoUwUt+ziX489ePp4qsPSuSfbqbxG6u+FC3d7tvO
	84Vod2MWwDQePteZpBlC7kVM845V+MIsI1LQwq1keufxEn0wB3KQjFd6ry99scmTmJt2z9mXbQk
	C0dLhJO0RC3dLO0SI5poWCru2zblg7+P1KIStA6kM16HPPi3KUko708y8ajruAeB78bKUc84URC
	LM9Fo39pYe2L88iGRHmugm6sTtPncCK30=
X-Received: by 2002:a05:7300:7301:b0:2b7:1dd3:585b with SMTP id 5a478bee46e88-2b820e47fe9mr2509188eec.7.1770211391556;
        Wed, 04 Feb 2026 05:23:11 -0800 (PST)
Received: from [127.0.1.1] ([2604:a840:3::303d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832fc1d50sm1416731eec.27.2026.02.04.05.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:23:11 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v3 0/3] regulator: spacemit-p1: Support board power tree
 via DT properties
Date: Wed, 04 Feb 2026 21:23:00 +0800
Message-Id: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADRIg2kC/22PQW7DIBBFr2KxLhWMGQxe9R5RF4CHmkViB6iVK
 vLdS5xNW3X5v/Ten7mzQjlRYWN3Z5m2VNJyaaF/6ViY3eWDeJpaZiBACwnAy+oCnVPlq+SO0Gq
 KZAxG1og1U0y3w3Z6f+ZM188mrc+Sra6GuSnHTqLyk4oDiEAoNE5ovDVmIhNh6EEMXikcgB5e7
 wrxsJzb7Nih1IosYkN69liZU6lL/jpe2OQx8++1m+SC98J6giH6GO1bTiWU6vJrcx+qDX7i6jc
 ODYdgtBdaW+XdH3zf928xwq3dTgEAAA==
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
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262648-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2E18EE659F
X-Rspamd-Action: no action

The patch (Patch 1 in v1 and v2) fixing hardware voltage constraints was
applied to regulator.git for-next, so it is dropped from this series.

Patch 1, 2 and 3 (previously 2-4) enables flexible power tree
configurations for the SpacemiT P1 PMIC. Hardcoded supply assumptions
are replaced with explicit devicetree properties. PMIC supply connections
are board-design decisions. Moving this to DT allows supporting varied
topologies without driver modifications.

The supply binding change is an ABI change. The breakage is acceptable:
Yixun Lan checked the DTS tree queued for v6.20 and found no consumers
of the P1/PMIC regulator yet [1]. For the two K1 boards in-tree
(BPI-F3 and Jupiter), initial power settings come from boot firmware and
a probe failure of pmic node "spacemit,p1" has minimal impact.

Link: https://lore.kernel.org/lkml/20260125110333-GYD71302@gentoo.org/ [1]

Changes in v3:
- Drop Patch 1 of previous series, already applied to regulator.git
    for-next (commit 41399c5d4761).
- Patch 1 (previous 2): Mark "vin-supply" as deprecated to avoid
    cross-tree warnings.
- Patch 2 (previous 3): Describe the ABI change explicitly. Add
    justification.
- Link to v2: https://lore.kernel.org/r/20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com

Changes in v2:
- Patch 2: dt-bindings, remove providers from the example dts.
- Patch 4: Added the pmic supply properties for K1 Milkv Jupiter.
           Updated the commit message accordingly.
- Link to v1: https://lore.kernel.org/r/20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (3):
      dt-bindings: mfd: spacemit,p1: Add individual regulator supply properties
      regulator: spacemit-p1: Update supply names
      riscv: dts: spacemit: Update PMIC supply properties for BPI-F3 and Jupiter

 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 53 +++++++++++++++++++++-
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    | 12 ++++-
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts  | 12 ++++-
 drivers/regulator/spacemit-p1.c                    | 25 +++++-----
 4 files changed, 86 insertions(+), 16 deletions(-)
---
base-commit: 5164e95565d3fd508ca8a95351323f5716dfb695
change-id: 20260122-spacemit-p1-ae596efe885f
prerequisite-patch-id: 154bd4f720ce5065d58b988de8f273207b44572e

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


