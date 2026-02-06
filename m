Return-Path: <devicetree+bounces-263208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LuSKBFThWmV/wMAu9opvQ
	(envelope-from <devicetree+bounces-263208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:33:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B77F958D
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 03:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F0E23026C1B
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 02:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B0A2652A2;
	Fri,  6 Feb 2026 02:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ok9PEuTy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E03156CA
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 02:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770345142; cv=none; b=ey76/IjTHUkOTn9mxBOT6Vpl3Be0wkHFovphEZ3Lk1xZ00caGPvl1uY21cQux6owif7xSW6WJUELm0NX15q0RILoTNJ80arwO9BES5sgHUWiJyosp5l3f6yIVtpIg2Tz1A4Wgzl5nAUMLHHkWS6Knr2c5CvduYvKAdTB1CX91jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770345142; c=relaxed/simple;
	bh=8Vw1pU0PF8xf3HXr9YA8x1cCFIwTu/dwwQOjdfVYzq0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jBiaN+7ViYNVhJ+ftsmepbDnCfmRueyzCVyGlz6YEVKobtVYbpMo48ooly6XJLp3EMWvL/jWJ5xjP5iCOGf0tlGyXETXmypgPddmo5d1o2UDdRmmqXftiQ+qQGpjKA1KBj5J9vrFVO7O8jVCE5Jbkhbv/9MKLT0KCfHbUPpugvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ok9PEuTy; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c698873a1deso746069a12.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 18:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770345142; x=1770949942; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rTv5aR1WBOedsI7siHmth1ku2vaQ77x2+ptDw28qK8s=;
        b=ok9PEuTyNc/tYxacBmP0P5/XlViBzmQ+6Jyb+xLvHUyfMxuFPkMChCJf0RdE4cmVzS
         rgAnZzczY/Oa11bRWPaG3MTlo9M8AhA6bN4VyVNwsS3NpN7bWDhPquV82gLuiqbUwxpL
         B6qsF15h3+JIOUL2FwOzpjMDESC+TiHbb5noJUEx+Goo/u3bJzbU5mlQuaKHcR1ZUi+U
         JnzM0tFQcbWVM8ghbZumP7X6PAsP8dRQwYs9pXJsNOAaO0rC9ZEw48gIxtF2cKNIpWgQ
         RWpU9fucNVJAAKd1UYLWG5dXh+BVrKZvuxMmB4KdzbLDU0mYmxQ1byCNt3TVZPTs6NF+
         8y6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770345142; x=1770949942;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTv5aR1WBOedsI7siHmth1ku2vaQ77x2+ptDw28qK8s=;
        b=NNAKvv4l9yGAD4FvNOv4XimUlM+TOw804H+Up3/rrZXTNbyVsUSw2wLcMV0d4a5WY8
         qBJOUusN1p/Cwm6sxFNnHYQj6lVfl2IcgeVN0NgCS0TZn6WW5eL0v6lPxDCXN8H9d0ou
         qrvF1mrORJzbaG9qng48O0k24jI3O2oFk1W2nxLexxefX6R5dlpPR/WLu/SsuWV+QdKc
         ICbeFu0N+VFDOmqZYqWEYP+WvjfvvUCAGWjSw6gdH5RRhO2wZR135YcsFh9StN0nCciQ
         kT2SvbCWCLp1fCe4spvY2uens5GJHUc1qN7yQCUdLxC7PqJyCPn3IZzKm7Az1fKBADh5
         6XFA==
X-Forwarded-Encrypted: i=1; AJvYcCUWtvSCBXiVU7o3YRhIz29wwNjh9KqaGtXAFFsnPypgFg27QW34XFXM5lm1IW2xEp2ABjZu/SIkBNXc@vger.kernel.org
X-Gm-Message-State: AOJu0YxT1ZMVWG3YSesPsza9Fdc/pLQNOmxrMz254oVRQNlGb2u7nGdn
	66LeE8+puioKdxEUP0MPHj57byF3mCabtVeOzVaUtu/eEOuR09GhXEE3s1NT7K3ZETQ=
X-Gm-Gg: AZuq6aIzhdD7GoUgFlhyVj20773rGaImFwa89mQCy6ZFu0kF2Lu3Io7EE2F1U8WjqvV
	VWtr51KxCGTm/vPHeNK/Ft4ZJCXOWHWkJ3cLGyDd6610h+fGY/7/QYX0bT60KBCKD44zemhhmr5
	UhjXVVEdv64GzlaQgrjVkDZdv+bd1sbSBbcRg5mrhfn65or8RKGvgiP02am7L9G4/Cc/B9kULA4
	e7CR0dfGW1G1GhOleWxTs5wRCj1t+cqJymaS+/nL1p0UA5ae0DTW7pJx2NcyKOXZFKUicAVbEN5
	laIWIO2VHK7YBTKcY5okQLJ8SQ8wTeloSaVzDFFGhV8wLvrUIrvDWsxxVbi04/IttZnrUkNDfkr
	kDgUi5qgrfqumFB9iuXcKrImt/+LvYXYKkR+/4DVDGMiACqc/OBgjYEM6O7xZzjaODvdDe781+t
	AAdM5SK9q5kh5O8uD6B3edLdfxIZNqj1vAmtuSJeLe0RCC0g5qm5WVxE4rLb8uCVqwsZWXibfNy
	OLD/rmHj5TGFYRYZ/I=
X-Received: by 2002:a17:90b:1e08:b0:34a:b1ea:664e with SMTP id 98e67ed59e1d1-354b3c8c50fmr1174536a91.15.1770345141658;
        Thu, 05 Feb 2026 18:32:21 -0800 (PST)
Received: from [127.0.1.1] (61-221-120-110.hinet-ip.hinet.net. [61.221.120.110])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b64a8a9esm158419a91.1.2026.02.05.18.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 18:32:21 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 0/3] regulator: spacemit-p1: Support board power tree
 via DT properties
Date: Fri, 06 Feb 2026 10:32:01 +0800
Message-Id: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKFShWkC/23PzU7EIBQF4FdpWIuhl/+ufA/jAujFsphphdpoJ
 n1373QW6mSWh/CdAxfWsBZsbOgurOJWWpnPFNRTx9IUzu/Iy0iZgQAjegDelpDwVFa+9Dyg9gY
 zOqczI7FUzOXraHt9u+WKH59Uut4O2RLWNFHl0PVaxVFlCyKhFkaP2kXv3Igug5UgbFRKW8Brb
 wwNeZpPNDt0ujcKvdZEJLuuTKWtc/0+vrD1x8zD1249F1wKHxFsjjn7l1paamuoz9R9VG3wl6v
 /HIhDciYKY7yK4QGXvxzEHZfEgyMohbZ0447v+/4D+GvG840BAAA=
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
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263208-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 03B77F958D
X-Rspamd-Action: no action

The patch (Patch 1 in v1 and v2) fixing hardware voltage constraints was
applied to regulator.git for-next, so is no longer part of this series.

Patch 1, 2 and 3 (previously 2-4) enable flexible power tree
configurations for the SpacemiT P1 PMIC. Hardcoded supply assumptions
are replaced with explicit devicetree properties. PMIC supply connections
are board-design decisions. Moving this to DT allows supporting varied
topologies without driver modifications.

The supply binding change is an ABI change. The breakage is acceptable:
Yixun Lan checked the DTS tree queued for v6.20 and found no consumers
of the P1/PMIC regulator yet [1]. For the two K1 boards in-tree
(BPI-F3 and Jupiter), initial power settings come from boot firmware and
a probe failure of pmic node "spacemit,p1" has minimal impact.

In v4, the old "vin-supply" property is dropped from the binding
document as the updated driver no longer parses it and there is no
fallback logic. Only the per-rail names ("vin1-supply", "vin2-supply",
...) are supported going forward.

Intermittent dtbs_check warnings are expected while the binding and DTS
changes land through different trees, but will resolve once both are
merged.

Link: https://lore.kernel.org/lkml/20260125110333-GYD71302@gentoo.org/ [1]

Changes in v4:
- Patch 1: Drop "vin-supply" from binding.
- Link to v3: https://lore.kernel.org/r/20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com

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

 .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 +++++++++++++++++++++-
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    | 12 +++++-
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts  | 12 +++++-
 drivers/regulator/spacemit-p1.c                    | 25 ++++++-----
 4 files changed, 81 insertions(+), 17 deletions(-)
---
base-commit: 5164e95565d3fd508ca8a95351323f5716dfb695
change-id: 20260122-spacemit-p1-ae596efe885f
prerequisite-patch-id: 154bd4f720ce5065d58b988de8f273207b44572e

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


