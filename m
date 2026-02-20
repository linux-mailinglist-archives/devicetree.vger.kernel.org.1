Return-Path: <devicetree+bounces-267081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCg9EhHcmGmTNgMAu9opvQ
	(envelope-from <devicetree+bounces-267081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 23:11:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2A16B1FA
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 23:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B1CF3006D76
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63C730F931;
	Fri, 20 Feb 2026 22:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No7Q+WU6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30503033DE;
	Fri, 20 Feb 2026 22:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771625472; cv=none; b=DV8PvC77d7LU+m+qS0T8DiyxcFmRi79tH23evAOwTICywaXBkzE9u46mLlqNbWkWFu+R6kMChGouOWjMuhfcFtn4W0PlfhPg1D8ntukKQGAaRRKiYNqiIbvE1GFC4w+vCZVTlZS4l4JVZ8ojg/ZqM7SjfSAGk1f55TOcy4jeZnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771625472; c=relaxed/simple;
	bh=A8JWX2mo37q/Odckaz8jElFGUhZ78uxrv2CSjUGX9Bg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LASGDPTWyHnslh847OKsh2zPTEukZIwz++Q9btCudnh08JznW9O3JAeMK6FZ5KE7BWjcFI4tzNFGXVSYwx3TAbWUuuxi8jRXl498XQfZb0rUlRl6tFxTlT3zn3umgRi2iYkXxJS/3gxEhycgmATRyvkNAt40pQo3Ua+8f9UW5DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No7Q+WU6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44A23C116D0;
	Fri, 20 Feb 2026 22:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771625472;
	bh=A8JWX2mo37q/Odckaz8jElFGUhZ78uxrv2CSjUGX9Bg=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=No7Q+WU6nlH4hvOa7NBU87qctt1g04i/GpevmyVKOtjOCecsomWZyMftWEx6psXoS
	 fqcq5Yv2+b1rK5vqjMfa5dOqttTrjCnkJk7a1jaGNyp57nEWaakRQSOQeLMHJj682j
	 hSoRItKE/Fz5XCJ8Nxud2iXHwQlFaWCXGQba9UOeywaoihd2EhaFm2oOkKfqm0j24z
	 LoHEH7wIjJoVlKRPAd2lsIMF1aJ1rTff3x9Cv+YaWA4DWH1iaXnKsvWKfxWPYNS7ds
	 4lvYs3TYoZbn44XzlAOlh3kcwR5WPNEyj5RNJBLxa3m58HH6BTEp/A3T3ifkJDOtYd
	 8w4SllNtI06Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E7D4C5AD2C;
	Fri, 20 Feb 2026 22:11:12 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Fri, 20 Feb 2026 16:11:11 -0600
Subject: [PATCH] dt-bindings: vendor-prefixes: Add AYN Technologies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-ayn-vendor-v1-1-292cbbb682b3@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMD3cTKPN2y1LyU/CLdRENTY0Mzi2QjyyQjJaCGgqLUtMwKsGHRsbW
 1AHYwlvZcAAAA
X-Change-ID: 20260220-ayn-vendor-a153168c29b2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Xilin Wu <wuxilin123@gmail.com>, Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771625471; l=1366;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=geOwC291n5TffmOu0eiv9p98GOQQrv0IWSadxBAMpUw=;
 b=KuKtqAY6dXw2XeJHA0MtPkTKK6Q7BtFdiSxFULlV5lQQbMxqYfsIyboZ1zyigYoEZ68XwAdKr
 ioSULOPFowkCMHOlLNQ/5msP1eGB0Wj77Qkz7x1ZaZgYeyETG2vCYQ5
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
Reply-To: webgeek1234@gmail.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267081-lists,devicetree=lfdr.de,webgeek1234.gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[webgeek1234@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ayntec.com:url]
X-Rspamd-Queue-Id: 7AF2A16B1FA
X-Rspamd-Action: no action

From: Xilin Wu <wuxilin123@gmail.com>

Add an entry for AYN Technologies (https://www.ayntec.com/)

Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
This was originally submitted as part of the original Odin 2 submission
[0], but that series stalled, so submitting this separately. The prefix
was renamed to ayntec as per the review comment on that patch.

[0] https://lore.kernel.org/linux-arm-msm/20240424-ayn-odin2-initial-v1-8-e0aa05c991fd@gmail.com/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203936d4aa42d4ce6f2efee951b4023..4d08af7b6ceb98ffb330a6e71a8f908d9cb37c4b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -221,6 +221,8 @@ patternProperties:
     description: Axiado Corporation
   "^axis,.*":
     description: Axis Communications AB
+  "^ayntec,.*":
+    description: AYN Technologies Co., Ltd.
   "^azoteq,.*":
     description: Azoteq (Pty) Ltd
   "^azw,.*":

---
base-commit: fe9e3edb6a215515d1148d32a5c445c5bdd7916f
change-id: 20260220-ayn-vendor-a153168c29b2

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



