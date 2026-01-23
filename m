Return-Path: <devicetree+bounces-259116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJFcHlzTc2kCywAAu9opvQ
	(envelope-from <devicetree+bounces-259116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:00:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A5C7A6D2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 21:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B2A6301496C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69BDD21146C;
	Fri, 23 Jan 2026 20:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2xgJ2F8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4614D2110E
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 20:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769198424; cv=none; b=eWD+aP/OBi1UQuC21slcS1qlvbPSDB8czBZUl1P2F3HTrPsFStPsXjvpo/1cuZ9EIAptTia5QQfC35ahl6YvZOeHCemxv+janD5V/RPCz5nE1TnPk2ZXzJE9ToPRMiEjRwjDAnQYJvhGT6iGvEonwKVU0QKd35WJ1s/WA5bJg3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769198424; c=relaxed/simple;
	bh=U8CShDL+HLmggcuSs2HkcE9CVVxs2HO1HfWPj5PHjlA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lrv0FadPmTkGfzw1tpG/ptGxQjRfIoTboplzkfAWYbD26nfe+g/zB5J5ltgq9aFf5rLpVBio5QyJhExQXw7Prcwsc+ptGFvqJIQpViz6ZGSh0T2q4UP6gbepmz35vSigWLF0SoYBz7Ihvj8BTeBUEgWi+qRauedy0Zrf7Ge4UCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2xgJ2F8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC7C6C4CEF1;
	Fri, 23 Jan 2026 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769198423;
	bh=U8CShDL+HLmggcuSs2HkcE9CVVxs2HO1HfWPj5PHjlA=;
	h=From:Date:Subject:To:Cc:From;
	b=B2xgJ2F8xg/452CkkJj6fFPSUl6q6Y2wanezT63cUfBnAJCVrXViSOyOfpp0dzIy6
	 N594T5gpXhfOLblN0ShunDy8yIBxilTVL9eGkPdj2q2LKGZLUceRMIGLN1Z3LgGyS9
	 iPNCsZhsAPql4/9tstcmHwWI7LAYim9R8b5JaQDAc7KSuF7K/C6c+hynt8bjMBxKAH
	 VYbMq3gZfHZZfIhjiG9CPSOIdn0dzF0FoDeUjaegA8pdFxNKhN5lKzjdluTC9ZjiIw
	 2cXn5Gg+1XfavKg4LCmQ9xvLuNGv9NSPvWSmm11jZMD+EfkFFlGKfXf2VeuRKbm6Qv
	 w1MfF5pMBZ8hw==
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 23 Jan 2026 21:00:21 +0100
Subject: [PATCH] ARM: dts: gemini: Fix partition offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-gemini-fix-sq201-fis-offset-v1-1-a046625f8846@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x2MQQqDQAwAvyI5N7BJZQt+RTxYm9UcuuqmiLD4d
 0NvMzBMBZOiYtA1FYocarpmF3o0MC1jngX14w4cOAbiJ87y1ayY9ETbOZCT4ZqSyQ/Ta6JAI3N
 s3+CHrYh3/3s/XNcNeelQvm0AAAA=
X-Change-ID: 20260123-gemini-fix-sq201-fis-offset-f7c101a2264b
To: soc@vger.kernel.org, Hans Ulli Kroll <ulli.kroll@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259116-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: B7A5C7A6D2
X-Rspamd-Action: no action

These FIS partition offsets were never right: the comment clearly
states the FIS index is at 0xfe0000 and 0x7f * 0x200000 is
0xfe0000.

Tested on the iTian SQ201.

Fixes: d88b11ef91b1 ("ARM: dts: Fix up SQ201 flash access")
Fixes: b5a923f8c739 ("ARM: dts: gemini: Switch to redboot partition parsing")
Signed-off-by: Linus Walleij <linusw@kernel.org>
---
SoC folks: please apply this patch directly for fixes.
---
 arch/arm/boot/dts/gemini/gemini-sl93512r.dts | 2 +-
 arch/arm/boot/dts/gemini/gemini-sq201.dts    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
index 4992ec276de9..341dec9b636a 100644
--- a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
@@ -146,7 +146,7 @@ flash@30000000 {
 			partitions {
 				compatible = "redboot-fis";
 				/* Eraseblock at 0xfe0000 */
-				fis-index-block = <0x1fc>;
+				fis-index-block = <0x7f>;
 			};
 		};
 
diff --git a/arch/arm/boot/dts/gemini/gemini-sq201.dts b/arch/arm/boot/dts/gemini/gemini-sq201.dts
index f8c6f6e5cdea..bfd1e8581ad6 100644
--- a/arch/arm/boot/dts/gemini/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sq201.dts
@@ -134,7 +134,7 @@ flash@30000000 {
 			partitions {
 				compatible = "redboot-fis";
 				/* Eraseblock at 0xfe0000 */
-				fis-index-block = <0x1fc>;
+				fis-index-block = <0x7f>;
 			};
 		};
 

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260123-gemini-fix-sq201-fis-offset-f7c101a2264b

Best regards,
-- 
Linus Walleij <linusw@kernel.org>


