Return-Path: <devicetree+bounces-277449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qK2UAen+ummAeAIAu9opvQ
	(envelope-from <devicetree+bounces-277449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:37:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E712C2123
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:37:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA11430D8DEC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B826D3F23CA;
	Wed, 18 Mar 2026 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUET6EFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834C23F23BA
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862600; cv=none; b=KxxDbB7bLsaJvyFCy+Xo1YXNVLxDlmTRS14SI6iqWPvnjqFFC66B/2DvBA+tFEchULvOVpELXIb5onElbMYAJHQ9V2E+MfOnWRfTBipmKoE3wFOdJn1iq+2atZwspMW7hAlqA4OKLcnrwvUWgUmxWp0KEu0pTYRR5JCR3xW6skk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862600; c=relaxed/simple;
	bh=KIYx3ubblGB9A8d7xMzpwnxUEgxAUrK3JLAEQnneah0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jv4wlmZ5KD6596nJQQElpzkrJRMOaRG0Q0I+KJBJxczEVLouCr2AmivFjKMa4ZHJYe/FA9a/Fltc/3dCgrJbEemFLYwRZw63fGXPyR/6gWLJKIvL9GcieHdWMf+ny7XVEh1UvROhhHTcih04lX2ddlvPJ9zKc1VAmgYQLLhLW/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CUET6EFW; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-35a1f3f07ebso159412a91.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773862599; x=1774467399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=89zezr+cQG9hF/sqreyXoLTpHCyu41LIeqhsQyRbrO0=;
        b=CUET6EFWAEa/9Ucdg7w1n/rb6rLwgt25XVuGgvzpAzKpLhG/DT2+x7wmOBqVkPXKXR
         oW77Cl+sEBzQ1J+POmDENqLEj0+OA8FHFw9PbOI64LMWb55J349y3aMSBb35XsAThlyA
         p2zaZVzm9Gje5QI5Nx2Id18mAVqRxNjZHeW/GatnOWUqziD1ZYJc7v0Y4RLEZs9sTEt1
         E2ur2pnaQgpzH2IeGJvvaKPuY7RZun9aLTgrOw4AZo4njcQIV1JcPFZRctjGXkqUBM/c
         fA3ahcDyv5tzx57I1X5y0gkEw25ULYxh1c3zRbOKtj9gMAQeydy7NIqU/jJJY29DyUgY
         7snQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773862599; x=1774467399;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89zezr+cQG9hF/sqreyXoLTpHCyu41LIeqhsQyRbrO0=;
        b=hdDMH6CIN1JXauxpRATuZ7HaNP/4gvXzBE1AcooQdFffG8y/hivrrPaiFNJfYzakvs
         cxnR8JxIlvAEdIi0eYpTXLbKOsMCsPPSKpLmyN2H09EzrEDmJY+5EcUvpxb1N/twZiNz
         V4DaaVze7TuCUmbrjJIA5UwgkmX5e2pjuRqB3/X5WLTthSGH+Smqyzrxel/jzq2yej8W
         OZnZ+z7y0vhJbiaZQmTnmncdnkdmyUXcLT7O2Fx7ooWH01TZ9VxjSw8DPTMXhsQJnJeN
         N0aS7+9aDSF7Z2sQ4QywcIGMb9fi4VbiJtU3tM/0H17rnjva387viq78P5b1E6pGP2G8
         ARKg==
X-Forwarded-Encrypted: i=1; AJvYcCXy3fU2MhYDEwVEVWErwo19G4H4lEDUwDlRn0A5wsHjnsao+Vcag1HewnnXXUpUxn0DKYW/z669kpxy@vger.kernel.org
X-Gm-Message-State: AOJu0YydeGUhkMtnPv9zX0iBnQ7P3ZwAjjeOV5mBdLMlXleSUOr3QkN4
	N7UkrxASkGQvrEZDQHFFhczNZx4+aBDNmpNheYfBM/2h3GiGqUDAkZue
X-Gm-Gg: ATEYQzyt24hYsfEod3KVE6zYeVJjClETHJUD3nXqTPPhyAw24LHl/4y3f/dYSOyM7cB
	rHv3KI9SJVm9SVhRG+QlzORGaVMKv0cbN/ZUXxZAZa9qvzW+na7R5FyyZwBbMesPB4WVFa8oq19
	NXWndZUg5WS6eoyK+P13u/suDLZG9cyDt5XXFeraG320jKFq+8m4k/HZagRYkZbkjcS8YBawfsZ
	KIIOSobM35Bd73EAe3/51yrKC1DdZmRPkwnUYL5cJzEYilbPlCO16KHUqSBk+6K/fauz74E2z4F
	heCJhYrfCCK5aUi+9JZAgm15XzfbXa2bq1a+F8D4f+BNC7+yHF9vy/ItjpoKOxVnjUpCsOM37/Z
	E5CVwXxg5ej+ic1JcXDfTb0+jMkfNrLeaiJ08zVh7mSRMs1geDpAupHaFm/KJW3Bp6suhS1DXOp
	LQi5XOYglVazOKXHN0THdROESH+pbJNu5UULlzhTMuD8zO3lZMCE/e3c+qcsiICSSx1TtqgCUJ/
	fVGJ7fcH2ljB/kcaperLjqFpRIsjZ5/JIdz8/c=
X-Received: by 2002:a17:90b:3f10:b0:35b:a418:698e with SMTP id 98e67ed59e1d1-35bb9d6cb2cmr3852750a91.0.1773862598753;
        Wed, 18 Mar 2026 12:36:38 -0700 (PDT)
Received: from visitorckw-work01.c.googlers.com.com (100.130.194.35.bc.googleusercontent.com. [35.194.130.100])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bb9ff59a4sm1521664a91.2.2026.03.18.12.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 12:36:38 -0700 (PDT)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	srini@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH 0/3] nvmem: Add Nuvoton NPCM OTP driver
Date: Wed, 18 Mar 2026 19:35:35 +0000
Message-ID: <20260318193538.246853-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,ccns.ncku.edu.tw,gmail.com,lists.infradead.org,lists.ozlabs.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277449-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[visitorckw@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.611];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 97E712C2123
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the OTP memory controllers found on Nuvoton NPCM7 SoCs.

This OTP is read-only and manages two independent arrays: Key Storage
and Fuse Array, which contain cryptographic keys, hardware strapping,
and calibration data. Each array provides 1024 bytes of storage.

You can use qemu-system-arm -M npcm750-evb to play around with it.

Kuan-Wei Chiu (3):
  dt-bindings: nvmem: add nuvoton,npcm750-otp
  nvmem: npcm-otp: Add Nuvoton NPCM OTP driver
  ARM: dts: nuvoton: Add OTP nodes for NPCM7xx

 .../bindings/nvmem/nuvoton,npcm750-otp.yaml   |  35 +++++
 MAINTAINERS                                   |   7 +
 .../dts/nuvoton/nuvoton-common-npcm7xx.dtsi   |  10 ++
 drivers/nvmem/Kconfig                         |  10 ++
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/npcm-otp.c                      | 129 ++++++++++++++++++
 6 files changed, 193 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nuvoton,npcm750-otp.yaml
 create mode 100644 drivers/nvmem/npcm-otp.c

-- 
2.53.0.851.ga537e3e6e9-goog


