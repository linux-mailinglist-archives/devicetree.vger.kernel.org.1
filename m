Return-Path: <devicetree+bounces-307851-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id piP1Ot2tJWqRKQIAu9opvQ
	(envelope-from <devicetree+bounces-307851-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 19:43:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C38865118F
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 19:43:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LEeL4tbW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307851-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307851-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F0E130125EE
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 17:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0AEF311946;
	Sun,  7 Jun 2026 17:43:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BA43009E1
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 17:43:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780854228; cv=none; b=Dlf0ar91HLM9RS2s1Mor2oI5Q0hTavdB0enAgrFQoJoNLQCNysZLkN32rG80e7SoH1dLgCmmc7ZllYviJvfVF9x0CUfvArJDI5L7VtDb11nyLWXl4sY8GidoxZuxwUAxAzxL3daQnyDrnaxzLfWEgG0RhZtpz91FP1iKOjuVYBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780854228; c=relaxed/simple;
	bh=i0ja/GMMnsxqkiiz4bzIDMyK41VkQXbc7b1PuWg5hTs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=s8LKUiimeBdSd9bkkwvTlHquYZ0MR6aZr4nGvTilW7e4wKpv6vt/XkVm6nuYJAk40BJITmLBEx3JqfQvTRUCkRTZ2WGX2n+T4DSxwUhI6LUCN3M8kl9max5O1qsL2n/euqttaSt2ASy9M97457nq5GRuOzESy8nUVMuJQh78PJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LEeL4tbW; arc=none smtp.client-ip=209.85.214.170
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2bf77d4a4e2so23845725ad.1
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 10:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780854226; x=1781459026; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ljEzNr/52XcURxVXWbkwKLpno+BGAmwJA55/cYldv40=;
        b=LEeL4tbW1tVdPyFTBYLwyHrwlCwMVA2zRPS1cmr8sqH9kw0mMzsuin4SBPWYaGeHOY
         Q+VxrEbABtG17v1e1XD5AhIQ2CEyT3sHhhqjWNZvDM7KV44YEbIydC0G465+LyY1U7N/
         UjL7YRtKZNGL+8DpOijJVGwm8Rp8Onv1fv3ZutpqOjz8mMZEAyfmIfZU5Hp2PYg1pnuQ
         ZTdL5GZDB+wrNlF6IQibU2VgcuoiJZ42kgE+2oWtpOOHE+iGlfLVoRlunyRfy0bzaSag
         dC2BNOOI53rvDTtgjRltO29c2oNqRcN11VOn0K/42hqlzik7xA4DEaQw2mAYldAchP+e
         8Wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780854226; x=1781459026;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ljEzNr/52XcURxVXWbkwKLpno+BGAmwJA55/cYldv40=;
        b=dxNEPGo0pa1jvRhtjhwgH4uIcNortcyAYMabEcdWfBABy83ZdHOTxnc8ZgL5qPzUsg
         GUJ/KMw2Jz9X3Mw5GXpBXt/f31f1rtM0QQzUluiRWgtLUOTh+zyEEcssJJp1SHdCqtjX
         08lH0LoXaEyN8tEEAhWAZlfzS+4z29SvhGW7JPsbew3ms9rVIriAxba/crptHoKbUEka
         qA4eREkRwOqFLdEg6kdyosRM9si7xCS3uQXeWlS0HwNMoUe6+cR82Vcpzs71HKu48wY8
         UiwQ5Ci8zIvVghvkeJFvu8/TDSDP4XQqwNXfd+imm4kqMroG6tQit8A8RpLC9+LF22zR
         CEMw==
X-Forwarded-Encrypted: i=1; AFNElJ9L8lU491ujz1uIp2FN/fpqnuvtVMoY6MYMccIZ6rbhMbpClwvcVyIpJeRF7C0ycH5ICrfk9Lvr24wG@vger.kernel.org
X-Gm-Message-State: AOJu0YxIwHzLU9tVXw59CPFFsjF4e/kFoXPmymFedZyMeEHrIL8PYSzE
	Pdha5lG8PvPWJYjOaRbw11P37BHAkK+/pb98HcaydRa8/hOMC8IDcM9r
X-Gm-Gg: Acq92OFAZI7JBuHmcA5cAffLGOG5+RUsxUVkOkBrWnoRYtXvC2eHa3OSxc7XFKcfd2P
	vH0CLcX+YjqAmsoIvYeyQCoWSXGX4GcZx5x12LtxJlrAHX9wj6PzE+NyWhteHglhKSt3cqmnzd5
	fckAVUTQfhpudjlibjW9HPijFZujAXhOMBi0RdOMedoa8167nswm8ptDNPgygpcBIY9UJY5WGnT
	uqpX7B+pIFvG8rmlSETiJi683seSvbNxg1vdIDxSTkNBCjvgtTNBGa3EbUHtDqdYiupCzBp/+vq
	4FiQ0SjBv7qB7RsLurc2Mm2ukTwFQpiq13CbH4RhbLAMw1jLIuawwpD97LW71q11tyWPvqplB5K
	O4JC6GQX2+RjbsG6Q+fA0xAhrZ5ErcMUjYtULdLt+JWabm6kJilTsryICVuCVNysx0+a0ZsDNdH
	QhfUqnziYo
X-Received: by 2002:a17:903:2385:b0:2c0:dc5c:9069 with SMTP id d9443c01a7336-2c1ec54cc43mr105352365ad.2.1780854226544;
        Sun, 07 Jun 2026 10:43:46 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::305d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16649ab01sm149171185ad.71.2026.06.07.10.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 10:43:46 -0700 (PDT)
From: Guodong Xu <docular.xu@gmail.com>
Subject: [PATCH 0/2] dt-bindings: Add SpacemiT K1 PDMA request-number
 header and use it in DT
Date: Sun, 07 Jun 2026 13:41:29 -0400
Message-Id: <20260607-b4-k1-pdma-req-macros-v1-0-5b2a3955007c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEmtJWoC/yXMTQ6CQAxA4auQrm0yMzED8SrGxTAtUgg/tmhMC
 Hd31OW3eG8HYxU2uFQ7KL/EZJkL/KmC3Kf5zihUDMGF6KKrsT3j6HGlKaHyA6eUdTFsKNSRnA+
 ROijtqtzJ+/e93v62Zztw3r4zOI4Pd+e503kAAAA=
X-Change-ID: 20260607-b4-k1-pdma-req-macros-8d276d0126df
To: Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <docular.xu@gmail.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1161; i=docular.xu@gmail.com;
 h=from:subject:message-id; bh=i0ja/GMMnsxqkiiz4bzIDMyK41VkQXbc7b1PuWg5hTs=;
 b=owGbwMvMwCXWtEl1Z3CGpCDjabUkhizVtcf+RTEYiyef1bl9dN0G04D/ube/TrVbUX45bs733
 K+z78tqd5SyMIhxMciKKbIcPtqSvfWVT7Tvc84fMHNYmUCGMHBxCsBEioQZ/srpuqX/tzrjbmTV
 Hr3FuMZ4eYexo2uVd2LgE8FAgdZzHAz/AwM7/+b+yk9NPjLj5yf1wG6HYpPr3pKrI1d/PHeppE2
 aAQA=
X-Developer-Key: i=docular.xu@gmail.com; a=openpgp;
 fpr=90B1DC3DF0BD10FD1227BD6344F254AF42F143EE
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307851-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:linux-kernel@vger.kernel.org,m:dmaengine@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:docular.xu@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:docularxu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C38865118F

Currently, K1 device trees specify PDMA peripheral requests as raw numbers.
Add a dt-bindings header naming those request lines, point the binding's
dma-cells description at it, and convert the current user (the K1 SPI3
node) to the new K1_PDMA_* macros.

Patch 1 adds include/dt-bindings/dma/spacemit,k1-pdma.h with the
  K1_PDMA_* request-number macros and update the spacemit,k1-pdma binding's
  dma-cells description.
Patch 2 updates the current pdma user in k1.dtsi to use these request
  number macros.

Signed-off-by: Guodong Xu <docular.xu@gmail.com>
---
Guodong Xu (2):
      dt-bindings: dmaengine: Add SpacemiT K1 PDMA request numbers
      riscv: dts: spacemit: Use symbolic PDMA request numbers on K1

 .../devicetree/bindings/dma/spacemit,k1-pdma.yaml  |  4 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi               |  3 +-
 include/dt-bindings/dma/spacemit,k1-pdma.h         | 56 ++++++++++++++++++++++
 3 files changed, 61 insertions(+), 2 deletions(-)
---
base-commit: 793cc54475b49b5b558902b5c13e4bfe66530a50
change-id: 20260607-b4-k1-pdma-req-macros-8d276d0126df

Best regards,
--  
Guodong Xu <docular.xu@gmail.com>


