Return-Path: <devicetree+bounces-261629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLn5BcM+gGkY5QIAu9opvQ
	(envelope-from <devicetree+bounces-261629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:05:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF682C8755
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 482B83001FFD
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCFF2F28F6;
	Mon,  2 Feb 2026 06:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ENaN6ce8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836F148CFC
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770012349; cv=none; b=gNZ9T64QxfmwOhFwkvbNTlWZV8dJFV7zEp+vj6d5OCcaeI3ff2havaZMsnUyBE2flLQ5kZGtSE3lqeuxl4zsZG3JNImDQ3V4vq/p3Nkx5NzqL+9pKVcEoZxNcEvdR4t06WHqCHVn7Eo+RlLETynkvCYDBmYfZ6bQ5+7Vgrd/QsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770012349; c=relaxed/simple;
	bh=n/w//Nuxlr+/ykO3WHyVzyFaLLe6UAbemJnx2mm0Xvk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Zjo2+7dRPgcPqWK/hPeymHUmi8T5wYhzyA9uiNIg2xmUB69cVKfjOtt4ksCEibpZsVOMop8FYqnKmj1EqA0DAHOFY2sivcKbVukGI33xYT2ovsxixGs6mRefo1XL+gxP808m37w2XTG3jjAHFjqEz8gzKZ5Ogb5ZO6tOvVb8McQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ENaN6ce8; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a9004e4239so4864905ad.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770012347; x=1770617147; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7cFeh0F4AhLzGOrxCS14dOc5yv3VBPRg4l3srErLLzk=;
        b=ENaN6ce897uyi4PYG98jcPmHxM8mm18QfgIHkSeMvEB3CxqPQf85BAdZYGhYMvH6FC
         5mn1AkcFVwF2dhpTxFgQ0kJG4p1d4U86OrOMwYnojl/aAu43ZNmpJ2szN6Z+3SjrLthd
         O0O6mB9/GtWFbQfvTjCxNnQ2XGn22DL/CHlP0Hyn1wmJlzm8Kr+vBdtA8S/ml5R9Cs6W
         Wg+LHZGeUtqBqC1dUAsq201Omwxkf20jLpNJG5SGQabwyqEqW3SfXKcWapKMzhnwUdQc
         YMOP3CoSci/7CgkgpCuHbxwJKUkBRYxxs9myr+GMYPGlR+69f2SIRoILoTVbR60b332G
         36hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770012347; x=1770617147;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cFeh0F4AhLzGOrxCS14dOc5yv3VBPRg4l3srErLLzk=;
        b=BviO0oTL5Lm6w1lnw90TmRY//JFROHCx0XkUP7jZvkwgcw7pkNoBzxAvPL/zV/CAOc
         g5WK0Kc5axWJPKm0EgOb3QvPQDHPjlc8QFTkT2aV2m5ZkV3iSBGC4I2U0y0T7WMRgtJr
         Q9h2kOI6ZDBOa5sctG4dEXLrjauPCCPJYtBCHyNwwkRQHyrSbhC3R68e/Mpbf18icQll
         A14F915XDsjKzSkaClPNj17YTIvBoSx5Cr1Q6cLM/mg6iUHWwohTABLcdZzMSetLoUBK
         ycfzNBZFuSW0GjYfYSuwXgViIIR6g6Mq4GvqI/WhGbQy2pwVvMVR9rIQiM5sd1tn3czL
         9pxw==
X-Gm-Message-State: AOJu0YxYVhmpLZNGaF39MeYzt3cf5pvsJ67OL4bbjs+rVO7pg/oPhwxg
	woNurrkTzGaP+6/qzCMey3Su1gDZd5+H7df0SkyVfRjqwsY/7tjkEVmo
X-Gm-Gg: AZuq6aKJE39kQFbB5NtujsykxzApaYKyPKrucd0cHasQLE3XgiXNzh0Ow0gMaSraB1p
	ZX4V5X36/UsxhdkIACrbwxAuiEYqHlxYaUbkZzHVeojeu2U3Puiqb/h/wBbeZxxwM8ldsMiq4dx
	+qsOQMaj5bqaYaKAjVMOmpOZ0sqhNXR9/Q97O0tOG7jAQXQoCCd/daWFGdBdPz0YbPzqHVLy27u
	u/gTxhCiDnE+7d8wKFCEy1i4/VqOYCJl7wH+w02CAcVoHvOEHipkQtanZM1k5pXIVclMxGOPwFi
	NgkIA26qOkAfJDhyLlmhXGbRL4MS7q7VrOF0S8SNDdixAoxWr/748QznPFoVC/FEX697mm4GIek
	DdET/L5xcWhNcoZ/kRyIqRIaM1R6fNsn5alYax9EBD6ZbjSCLu42ySiGIOAYSK5d6jyi/Jz2jV4
	ZcdJ4fvN9UOw3D1rAN1lUwR3K3gel5SGhRISTl+JzJaJnMP/YAt39qgt2ghVYj4+4=
X-Received: by 2002:a17:903:f8c:b0:2a1:3ee7:cc75 with SMTP id d9443c01a7336-2a8d96b0b3fmr102479305ad.19.1770012347504;
        Sun, 01 Feb 2026 22:05:47 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d99eesm132926135ad.78.2026.02.01.22.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 22:05:47 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Subject: [PATCH 0/2] Add Meta (Facebook) SanMiguel BMC (AST2620)
Date: Mon, 02 Feb 2026 14:03:15 +0800
Message-Id: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACM+gGkC/x2M0QpAMBRAf2XdZ6uZEL8iie3iFqNdpNb+3fJy6
 jycE4DREzK0IoDHh5gOlyTPBJh1dAtKsslBK12pBMmj22m5cRvI0TXYi2XdGDsVhSmVLSGFp8e
 Z3n/a9TF+tv5nHWQAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, 
 Potin Lai <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770012344; l=707;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=n/w//Nuxlr+/ykO3WHyVzyFaLLe6UAbemJnx2mm0Xvk=;
 b=WdN+eQh0JqxC5Ye/37ngcek31btboBmbn5k+V4pSQgqp7f8zakKS34ssJuZjwoH8vmU3r3F03
 NItOTLQGf9SBp0ZFjAdmWh6kAve3n8zOUhbxxD8tZCEeuenYy35Tazx
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261629-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[potinlaipt@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF682C8755
X-Rspamd-Action: no action

Add Linux device tree entries for Meta (Facebook) SanMiguel specific
devices connected to the AST2620 BMC SoC.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Potin Lai (2):
      dt-bindings: arm: aspeed: add Meta SanMiguel BMC
      ARM: dts: aspeed: add Meta SanMiguel BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts   | 1163 ++++++++++++++++++++
 3 files changed, 1165 insertions(+)
---
base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
change-id: 20260202-sanmiguel_init_dts-79cdb33c50d5

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>


