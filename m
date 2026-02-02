Return-Path: <devicetree+bounces-261955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKJ7AvALgWkCDwMAu9opvQ
	(envelope-from <devicetree+bounces-261955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:41:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D85D1334
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 326803016C95
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F42303CB6;
	Mon,  2 Feb 2026 20:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgRURVy2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF53427F75F;
	Mon,  2 Feb 2026 20:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770064656; cv=none; b=RAONzn4TWFtStmERanqGujF4Ugjr7/bHyEKkN+OrjHCQ2v3oOXl1/9J8O5nP/TfCiDj7uiTLNyZ6kNOdU2wmhfTNlOZL/3LZ+bC3WiZSfJZzYx2eUlLFqJqZeWfLIelD0oHYcMNlaNidBsGXXpLB6EfhrRy9wnUY8uhz5jCMwZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770064656; c=relaxed/simple;
	bh=A1/zLNhJfjFpBOKRyqAz2kve72MPbHG7NLjWIiqjpsg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ml32tml7DPa74gWbCmJfRG51mQNJoTRuWPrmLxU/81FjbG9MPYz+u1Zl/WRq343fDWoeh19pc7SV5U5m4h+ZcnLa+9gnPOIkpLor5yEBA/hZvSLyuG5hjI0lrUOt2Jo8rcYMjrUGqqttE1dcLbq+dOjEt5MXZrtdk8Ig0rqk7I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgRURVy2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B15BC116C6;
	Mon,  2 Feb 2026 20:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770064655;
	bh=A1/zLNhJfjFpBOKRyqAz2kve72MPbHG7NLjWIiqjpsg=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=sgRURVy2I93F+eI8Coqcu55cjCX/IQdxGEYBnywl9hyGZ11iHFKpMj4cws7+tS8TF
	 DPqctMbCCT5GvlDbT7iTRRJbgTd1rZJwZhVas/c8q6MM918AxPA59Iru2KG2z7Vcrt
	 X1JWF2zKIkTw9maDX3mYNpYRchtICUo1xwa3btIGYZp8fw1veeLExh5CByfu84qA82
	 IZioCLKTWYWOikIiTgMl7oHQ5F+9T7ZjCN+RsfVHXp531UZZ9boRpNhrJ/KeZ/Xeng
	 yp/2oMZxrqXGkyjLzokK4BT3yx9rEwUPlUqSID8f4M5kbzAEGP6mxcSoi0YLveVkPm
	 cRIsn5n0x2f7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49B1FE7FDD2;
	Mon,  2 Feb 2026 20:37:35 +0000 (UTC)
From: Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>
Subject: [PATCH v9 0/7] i2c: xiic: use generic device property accessors
Date: Mon, 02 Feb 2026 20:37:17 +0000
Message-Id: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP0KgWkC/3XOTU7DMBCG4atUWePKHv93xT0Qi4k9Jl40qZwQB
 VW9O043GAWWI83z6rt3M5VMc3c53btCa57zNNbDv5y6MOD4QSzHenfAwXABwDIEtuUcmOzR+ZQ
 0oZddfb8VSnl7pt7e653KdGXLUAibgNCcg1PmDFo6zwTDPn6WgsMVx9eRtmWYbmfMe2/I8zKVr
 +eyFfbqHyNWYJwJqZKOVklyfRvZV6yylbKRskrqbYgKtIrpKNV/UlWpUFKPUgse6CB1K00jdZX
 OoTAIzoIIB2laaRtp9rUOCJJJRtujtK30jbRVWrCkpHLeUjpI9yOBi0a6KiP1EKPQLgr8JR+Px
 zd1YViDPQIAAA==
X-Change-ID: 20260122-i2c-xiic-3ba89ff5ea93
To: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abdurrahman Hussain <abdurrahman@nexthop.ai>, Andrew Lunn <andrew@lunn.ch>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770064654; l=2976;
 i=abdurrahman@nexthop.ai; s=20260119; h=from:subject:message-id;
 bh=A1/zLNhJfjFpBOKRyqAz2kve72MPbHG7NLjWIiqjpsg=;
 b=Ef7fK8HYs+2jpLp9KFy3BAz5ekxFj5yUdBTxuPbpnvohfr83RaFyw7Op/27m0Je1YyW8u/3mM
 fK6V5pWe0S4DXew9oUMSVGAFbknMiZ0Hi0FdYlSygTgRON+nQSnTWLC
X-Developer-Key: i=abdurrahman@nexthop.ai; a=ed25519;
 pk=S+ysnf+NwMcBdHBlyKIUEAtaFGSIhQwcJcgcXhq0osg=
X-Endpoint-Received: by B4 Relay for abdurrahman@nexthop.ai/20260119 with
 auth_id=608
X-Original-From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Reply-To: abdurrahman@nexthop.ai
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261955-lists,devicetree=lfdr.de,abdurrahman.nexthop.ai];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[abdurrahman@nexthop.ai];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nexthop.ai:replyto,nexthop.ai:email,nexthop.ai:mid]
X-Rspamd-Queue-Id: 82D85D1334
X-Rspamd-Action: no action

- Switch to generic device property accessors.
- Switch to managed devm_ functions to simplify error handling.
- General cleanups.
- Skip clock setup on non-OF systems where clock is not specified via
firmware.

Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
Changes in v9:
- Fix an issue found by the test robot in the cleanup patch.
- Reworded the clock change description.
- Add a patch to switch to i2c_add_numbered_adapter().
- Link to v8: https://lore.kernel.org/r/20260201-i2c-xiic-v8-0-deb2dd158d1a@nexthop.ai

Changes in v8:
- Made the clock change the last patch in the series.
- Reworded the clock change description.
- Changed dev->fwnode to dev_fwnode(dev).
- Link to v7: https://lore.kernel.org/r/20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai

Changes in v7:
- Drop the dt-bindings patch.
- Skip clock setup on non-OF systems.
- Minor commit body rewording.
- Applied code-review trailers with `b4 trailers -u`
- Link to v6: https://lore.kernel.org/r/20260127-i2c-xiic-v6-0-e82e2f6f657c@nexthop.ai

Changes in v6:
- Cosmetic changes to address the comments.
- Added a patch to use resource format specifier in debug log.
- Link to v5: https://lore.kernel.org/r/20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai

Changes in v5:
- Reorder the cosmetic patch to be the last in the series.
- Added a documentation patch to describe the optional clock.
- Minor commit body rewording.
- Link to v4: https://lore.kernel.org/r/20260123-i2c-xiic-v4-0-4a3eba3510ce@nexthop.ai

Changes in v4:
- Reorder the cosmetic patch to be the first in the series.
- Amend the mutex_init patch to also switch to the managed pm_runtime_
  variant.
- Link to v3: https://lore.kernel.org/r/20260123-i2c-xiic-v3-0-eb7cd4254dfb@nexthop.ai

Changes in v3:
- Reorder the "optional clock" patch to be the first in the series. 
- Add a patch to switch to devm_mutex_init().
- Remove dup message in error path.
- Cosmetic: use temporary dev variable.
- Link to v2: https://lore.kernel.org/r/20260122-i2c-xiic-v2-0-134f5d743e8b@nexthop.ai

Changes in v2:
- Split the patch into two independent changes.
- Added struct device *dev at the top of probe() and remove() to re-use.
- Switched to device_set_node(...)

---
Abdurrahman Hussain (7):
      i2c: xiic: switch to devres managed APIs
      i2c: xiic: remove duplicate error message
      i2c: xiic: switch to generic device property accessors
      i2c: xiic: cosmetic cleanup
      i2c: xiic: cosmetic: use resource format specifier in debug log
      i2c: xiic: use numbered adapter registration
      i2c: xiic: skip input clock setup on non-OF systems

 drivers/i2c/busses/i2c-xiic.c | 99 +++++++++++++++++++------------------------
 1 file changed, 43 insertions(+), 56 deletions(-)
---
base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
change-id: 20260122-i2c-xiic-3ba89ff5ea93

Best regards,
-- 
Abdurrahman Hussain <abdurrahman@nexthop.ai>



