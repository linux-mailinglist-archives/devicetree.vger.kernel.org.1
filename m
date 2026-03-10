Return-Path: <devicetree+bounces-273425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMj5OX7pr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A06248D83
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F1BE3008290
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CB1425CE6;
	Tue, 10 Mar 2026 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUjxeBtI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9B244104A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773136192; cv=none; b=rZl5Fi3PQXyyOQkB6lVotTKbUJXGeK3UexFg0RbUWjMS8O6VWSSftvNuQ4sY/WB+hDFLl7vnwlpqrn/uiLQaaObJJPYfyUvhO5u7fL7v9BQv1Js+yVelDkjykAyQ30vj4ul3vdYiXg7F/s6qtbYjXuWJ+8U5jBh2oYIJ51ypLOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773136192; c=relaxed/simple;
	bh=lwETLfhCTVcdz3eoaOCi8pmBQa817MjhbI42mJmTS9Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bxfR+KcZlyCWcT864Ys31uWrboXRBs08OlErP+t1ixs4d38AUv8otk2vaO4cKJQEYmgZWwZ1EF952w9ez50Z+jyLk5fq+oMbmK5GfGE5BpEBK4iiL6kAuu2thQs896/Fpb+BJmibRYY0z/xpHqb5tmIThsD+XAGL4Sxq4UdplZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CUjxeBtI; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ae5423b02aso59441545ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773136188; x=1773740988; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zu+81jDXj9d0HvQyIrVJEIl9QbnoaIQZGWZhl1u/pfQ=;
        b=CUjxeBtIBvfVbx+R+tY+P2AQ4ERP/aMhvItQ9QnkC6vcwTqK/yCTIQIT5dsf+HvH0c
         d9uHkFVgBX8e0DigJ6gI/p24UKtwsr9n2/BR4Ku8oX+E7cRI6u9c29Xv0/w7ulkEkILi
         q2SrRY/0JIHVbycrQ3M+IcGMU+nUe3iP1ZlsxdDd0HCIPghQv1I9Os4Csy9LgKoHGCwi
         opW/IwafWxNBCsyqtRxGEBdbQQWBQ294ZMcyF5EUEShoBy0fYJnIq1kO/fOU2RDl61s4
         EmWvJSAFGkr1kFDAwt5bGZht2FIgGIRsC0bcBiGemN0z40kEUeL7C+WWCp6V8eXAfGRx
         r7YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773136188; x=1773740988;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zu+81jDXj9d0HvQyIrVJEIl9QbnoaIQZGWZhl1u/pfQ=;
        b=cQpHhnnw2wLrLEjCLpYDb+MpgUnXi+s9dy8jLUt9jbN2EgCOdxMXO/Os9Wvo58rSzR
         b5M9ShdUNFvDH7tOtGGqbRUMaolJzx5cZK2jpaeJxLpE4FIqULnLsL4H/vO4fgyhh6Ji
         hfNbtVevyqkpNvrWSlzOryOLWXCFlwW3PHGfEc7scGtvgr5N3aQPVDzcktPbcbRznS/i
         BXjcWZW6TRotBIcmnLtGnfyO6W8m6eOBOr6ZLBr5OcjcNFWdZGIiC2oDOimLqi26NjXG
         RA+lMurvgkuXfPLi+A/kPMBab/0zM8WWPlxjozwy1ibYI3LquwL/1Sv4WHYRNak2lDeI
         Parg==
X-Gm-Message-State: AOJu0Yw0t7gwSrxrYskFhenjovWpXslbPxZcRl9U0+88c1kVYQDy6wnl
	t5tdPOrDjH7M1ISQXdN07aZpNynNQ9c8kmjOiYsvLLqMrv2Q+oA10pOx
X-Gm-Gg: ATEYQzzqD8IJnIEHkJVlRrm4YDPgDjAPQN6EYiWvPvJ9hlfNIepEfjFeC9gpmNHZ5A8
	/hKkTK/KT8ZS9Zz6lUGf3je5iGLQXv0o34EBtp6/o36TokwEd6wpoJLB9FL891VDskIJNFyZpy9
	DClZe5peyr8cBuaznhKVyNT9wBdgs40floM33VBxxNptx/Hyjnofp86QFcBghBUbZdXhtgJq4Zf
	61BJX/i2PP28YaE2si7A+JWoy/ZB6PwTkg3ugOk5n2boeTTUneRO6+1qETrz1p2kxI3kCzIZco4
	yq/Ljqo3nDCgiImeJsHPruBu8mbx+vDVYPyAgrnCT6nju4REv25Ux6SRQZr5koPi3OTYDhSYm5X
	fg4BfC1bCCiMnNBrlGWinXrVGM+4UMAUpg7R94wWmLsRJ3bLqB6kAs3WV+evhvwV8uAWnYmGjic
	wZViId8z9DJS3aiqAesFA=
X-Received: by 2002:a17:903:ac4:b0:2ad:c66d:ad06 with SMTP id d9443c01a7336-2ae8249420dmr139061195ad.47.1773136187586;
        Tue, 10 Mar 2026 02:49:47 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f8a67esm199459775ad.61.2026.03.10.02.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:49:47 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Subject: [PATCH v3 0/3] ARM: dts: aspeed: anacapa: SGPIO updates and
 interrupt wiring
Date: Tue, 10 Mar 2026 17:49:34 +0800
Message-Id: <20260310-anacapa-dts-sgpio-v3-0-12d9b7f1202e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC7pr2kC/33NwQqDMAyA4VcZPa+jrbOWnfYeY4e0jRqYVlopG
 +K7r3ryMHYJ/IF8WVjCSJjY7bSwiJkShbFEdT4x18PYISdfmimhtCiDwwgOJuB+Tjx1EwWOVxQ
 Waqecr1m5myK29N7Nx7N0T2kO8bO/yHLb/tOy5JJDBY0VVpimFfduAHpdXBjYpmV1EJT+Jagit
 L7RRhkttTVHYV3XL7rXCx/0AAAA
X-Change-ID: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com, 
 Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773136185; l=2227;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=lwETLfhCTVcdz3eoaOCi8pmBQa817MjhbI42mJmTS9Q=;
 b=LwoyJoDM1URyDCkYkC0JUVd7eMBMGf8tVEmyKmbEUcD16BHR0o1X7SOg7DN8/xLhhWQiT3Ltf
 us/voIpeqrgAPzOsY0DDAabHvVGhmc7iovEZ4O09xR7b5la/jWLu3Yo
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Queue-Id: 65A06248D83
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.24:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series updates the SGPIO-related device tree definitions for the
Facebook Anacapa BMC platform.

The original change was submitted as a single patch. Based on reviewer
feedback, the update has been split into three logical patches to
separate concerns and improve reviewability:

1. Fix SGPIOM0 GPIO line naming for the RMC leak detect signal.
   This patch corrects the placement of LEAK_DETECT_RMC_N without
   changing functionality.

2. Update SGPIO GPIO line names and mappings.
   This patch reworks SGPIOM0 GPIO line names and signal assignments to
   match the current hardware wiring, improving correctness and clarity.

3. Add SGPIO interrupt wiring for PCA9555 GPIO expanders.
   This patch connects the PCA9555 gpio@24 nodes to the SGPIO interrupt
   controller to enable proper interrupt handling.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Changes in v3:
- Split the original patch into three smaller patches based on reviewer feedback.
- Remove references to external documents from commit messages. 
- Link to v2: https://lore.kernel.org/r/20260226-anacapa-dts-sgpio-v2-1-fd76828616b8@gmail.com

Changes in v2:
- Add interrupt-parent and interrupts properties to PCA9555 nodes to
  enable proper interrupt handling required by phosphor-gpio-monitor.
- Clarify DFT motivation in the commit message and mention the source
  mapping (Helios_SGPIO_BIT_MAP.xlsx rev: 2026-02-16).
- Minor wording cleanups in the commit message (line names vs. mappings).
- Rebase onto the latest tree to account for intervening commits.
- Link to v1: https://lore.kernel.org/r/20260202-anacapa-dts-sgpio-v1-1-a3a7b0b087f0@gmail.com

---
Colin Huang (3):
      ARM: dts: aspeed: anacapa: fix SGPIOM0 GPIO line naming for RMC leak detect
      ARM: dts: aspeed: anacapa: update SGPIO mappings for DFT integration
      ARM: dts: aspeed: anacapa: add SGPIO interrupt to PCA9555

 .../dts/aspeed/aspeed-bmc-facebook-anacapa.dts     | 149 ++++++++++++---------
 1 file changed, 89 insertions(+), 60 deletions(-)
---
base-commit: 710dbb13377c80a6e39ef049a517665841e3221e
change-id: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


